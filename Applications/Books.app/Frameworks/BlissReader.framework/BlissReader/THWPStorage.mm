@interface THWPStorage
- (THWPStorage)initWithContext:(id)a3;
- (_NSRange)closestMatchForString:(id)a3 leftContext:(id)a4 rightContext:(id)a5 startCharIndex:(unint64_t)a6;
- (_NSRange)p_closestMatchForString:(id)a3 startCharIndex:(unint64_t)a4;
- (_NSRange)rangeOfInterest;
- (__CFDictionary)createFilteredCoreTextAttributes:(__CFDictionary *)a3 effectiveRange:(_NSRange *)a4 filterDelegate:(id)a5;
- (double)filteredCoreTextAttributesFontScaleEffectiveRange:(_NSRange *)a3 filterDelegate:(id)a4;
- (double)p_applicationFontScaleWithFilterDelegate:(id)a3;
- (id)documentRoot;
- (unint64_t)wordCountInRange:(_NSRange)a3;
- (void)annotationsChangedInRange:(_NSRange)a3;
- (void)contextualStringsForSelection:(_NSRange)a3 prefix:(id *)a4 suffix:(id *)a5;
- (void)dealloc;
- (void)p_freeAnnotationRanges;
- (void)p_reloadAnnotations;
- (void)setAnnotationSource:(id)a3;
- (void)updateAnnotationSourceWithContentNode:(id)a3;
@end

@implementation THWPStorage

- (THWPStorage)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = THWPStorage;
  result = [(THWPStorage *)&v4 initWithContext:a3];
  if (result)
  {
    result->_fontSize = 0x7FFFFFFFFFFFFFFFLL;
    result->_applyTheme = 1;
  }

  return result;
}

- (unint64_t)wordCountInRange:(_NSRange)a3
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL || a3.length == 0)
  {
    return 0;
  }

  length = a3.length;
  location = a3.location;
  v6 = [(THWPStorage *)self string];
  v11.location = location;
  v11.length = length;
  v7 = CFStringTokenizerCreate(0, v6, v11, 0, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = -1;
  do
  {
    ++v9;
  }

  while (CFStringTokenizerAdvanceToNextToken(v8));
  CFRelease(v8);
  return v9;
}

- (void)contextualStringsForSelection:(_NSRange)a3 prefix:(id *)a4 suffix:(id *)a5
{
  if (a3.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = a3.length;
    if (a3.length <= 0x100)
    {
      if (a4 | a5)
      {
        location = a3.location;
        v10 = [(THWPStorage *)self selectionRangeForCharIndex:?];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = v11;
          if (v11)
          {
            v13 = v10;
            if ([(THWPStorage *)self wordCountInRange:location, length]>= 9)
            {
              v17 = [(THWPStorage *)self paragraphIndexRangeForCharRange:location, length];
              if (v17 == 0x7FFFFFFFFFFFFFFFLL || v18 != 1)
              {
                return;
              }

              v15 = [(THWPStorage *)self textRangeForParagraphAtIndex:v17];
              v16 = v19;
              v14 = v19 != 0;
            }

            else
            {
              v14 = 1;
              v15 = v13;
              v16 = v12;
            }

            if (v15 != 0x7FFFFFFFFFFFFFFFLL && v14)
            {
              if (a4)
              {
                v20 = location <= (v15 + 64) ? v15 : (location - 64);
                if (v20 < location)
                {
                  v21 = [(THWPStorage *)self wordAtCharIndex:v20 includePreviousWord:0];
                  if (v21 != 0x7FFFFFFFFFFFFFFFLL || (v21 = [(THWPStorage *)self nextWordFromIndex:v20 forward:1], v21 != 0x7FFFFFFFFFFFFFFFLL))
                  {
                    v23 = v21;
                    if (v21 < v20)
                    {
                      v23 = [(THWPStorage *)self nextWordFromIndex:v21 forward:1];
                    }

                    if (v23 != 0x7FFFFFFFFFFFFFFFLL && v23 >= v15 && &v23[v22] <= location)
                    {
                      *a4 = [(THWPStorage *)self substringWithRange:v23, location - v23];
                    }
                  }
                }
              }

              if (a5)
              {
                v24 = location + length;
                v25 = v24 + 64 >= &v15[v16] ? &v15[v16] : (v24 + 64);
                if (v25 > v24 && v25 <= &v13[v12])
                {
                  v26 = [(THWPStorage *)self wordAtCharIndex:v25 includePreviousWord:1];
                  if (v26 != 0x7FFFFFFFFFFFFFFFLL || (v26 = [(THWPStorage *)self nextWordFromIndex:v25 forward:0], v26 != 0x7FFFFFFFFFFFFFFFLL))
                  {
                    v28 = &v26[v27];
                    if (&v26[v27] > v25)
                    {
                      v26 = [THWPStorage nextWordFromIndex:"nextWordFromIndex:forward:" forward:?];
                      if (v26 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        return;
                      }

                      v28 = &v26[v29];
                    }

                    if (v26 >= v24 && v28 <= &v15[v16])
                    {
                      *a5 = [(THWPStorage *)self substringWithRange:v24, &v28[-v24]];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)p_freeAnnotationRanges
{
  self->mAnnotationCount = 0;
  mAnnotationRanges = self->mAnnotationRanges;
  if (mAnnotationRanges)
  {
    free(mAnnotationRanges);
    self->mAnnotationRanges = 0;
  }
}

- (void)dealloc
{
  [(THWPAnnotationSource *)self->mAnnotationSource removeInterest:self];

  self->mAnnotationSource = 0;
  [(THWPStorage *)self p_freeAnnotationRanges];
  v3.receiver = self;
  v3.super_class = THWPStorage;
  [(THWPStorage *)&v3 dealloc];
}

- (void)updateAnnotationSourceWithContentNode:(id)a3
{
  if (!self->_annotationSourceOnceToken)
  {
    objc_sync_enter(self);
    if (!self->_annotationSourceOnceToken)
    {
      objc_opt_class();
      [-[THWPStorage context](self "context")];
      v5 = TSUDynamicCast();
      v6 = [a3 annotationIDForInfo:self];
      if (v6)
      {
        v7 = -[THCoreDataAnnotationSource initWithAnnotationController:contentNode:storageId:storageLength:]([THCoreDataAnnotationSource alloc], "initWithAnnotationController:contentNode:storageId:storageLength:", [v5 annotationController], a3, v6, -[THWPStorage length](self, "length"));
        [(THWPStorage *)self setAnnotationSource:v7];

        self->_annotationSourceOnceToken = 1;
      }
    }

    objc_sync_exit(self);
  }
}

- (void)setAnnotationSource:(id)a3
{
  mAnnotationSource = self->mAnnotationSource;
  if (mAnnotationSource != a3)
  {
    v5 = a3;
    self->mAnnotationSource = v5;
    [(THWPAnnotationSource *)v5 addInterest:self];
    if (mAnnotationSource)
    {
      [(THWPAnnotationSource *)mAnnotationSource removeInterest:self];
    }

    [(THWPStorage *)self p_reloadAnnotations];
  }
}

- (void)annotationsChangedInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (length)
  {
    [(THWPStorage *)self p_reloadAnnotations];

    [(THWPStorage *)self styleDidChangeInRange:location, length];
  }
}

- (void)p_reloadAnnotations
{
  objc_sync_enter(self);
  [(THWPStorage *)self p_freeAnnotationRanges];
  v3 = [(THWPStorage *)self annotationSource];
  v4 = [(THWPStorage *)self rangeOfInterest];
  v6 = [(THWPAnnotationSource *)v3 annotationsForRange:v4, v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 count];
    v9 = v8;
    if (v8)
    {
      v10 = malloc_type_malloc(16 * v8, 0x1000040451B5BE8uLL);
      v11 = 0;
      p_length = &v10->length;
      do
      {
        v13 = [v7 objectAtIndex:v11];
        v14 = [v13 annotationStyle];
        v15 = 0;
        v16 = 0x7FFFFFFFFFFFFFFFLL;
        if (v14 && v14 != 6)
        {
          v16 = [v13 annotationStorageRange];
        }

        *(p_length - 1) = v16;
        *p_length = v15;
        ++v11;
        p_length += 2;
      }

      while (v9 != v11);
      self->mAnnotationCount = v9;
      self->mAnnotationRanges = v10;
    }
  }

  objc_sync_exit(self);
}

- (_NSRange)rangeOfInterest
{
  v2 = [(THWPStorage *)self length];
  v3 = 0;
  result.length = v2;
  result.location = v3;
  return result;
}

- (double)p_applicationFontScaleWithFilterDelegate:(id)a3
{
  if (a3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [a3 fontSizeForTextSource:self];
    v6 = +[THApplicationSettings sharedSettings];
    v7 = v5;
LABEL_9:

    [v6 flowFontScaleForFontSize:v7];
    return result;
  }

  v8 = [(THWPStorage *)self fontSize];
  v9 = +[THApplicationSettings sharedSettings];
  v10 = v9;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(THWPStorage *)self fontSize];
    v6 = v10;
    goto LABEL_9;
  }

  [v9 flowFontScale];
  return result;
}

- (double)filteredCoreTextAttributesFontScaleEffectiveRange:(_NSRange *)a3 filterDelegate:(id)a4
{
  if (a4)
  {
    v7 = [a4 shouldFilterTextSource:self];
    if (!a3)
    {
      return 1.0;
    }
  }

  else
  {
    v7 = 1;
    if (!a3)
    {
      return 1.0;
    }
  }

  if (!v7 || !a3->length || !-[THWPStorage usesApplicationFontScaling](self, "usesApplicationFontScaling") && (!a4 || (objc_opt_respondsToSelector() & 1) == 0 || ![a4 useApplicationFontScaleForTextSource:self]))
  {
    return 1.0;
  }

  [(THWPStorage *)self p_applicationFontScaleWithFilterDelegate:a4];
  return result;
}

- (__CFDictionary)createFilteredCoreTextAttributes:(__CFDictionary *)a3 effectiveRange:(_NSRange *)a4 filterDelegate:(id)a5
{
  if (a5)
  {
    v9 = [a5 shouldFilterTextSource:self];
    if (!a4)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v9 = 1;
    if (!a4)
    {
LABEL_40:
      CFRetain(a3);
      return a3;
    }
  }

  if (!v9 || !a4->length)
  {
    goto LABEL_40;
  }

  if ((-[THWPStorage usesApplicationFontScaling](self, "usesApplicationFontScaling") || a5 && (objc_opt_respondsToSelector() & 1) != 0 && [a5 useApplicationFontScaleForTextSource:self]) && (-[THWPStorage p_applicationFontScaleWithFilterDelegate:](self, "p_applicationFontScaleWithFilterDelegate:", a5), v10 != 1.0) && (v11 = CFDictionaryGetValue(a3, kCTFontAttributeName)) != 0)
  {
    v12 = v11;
    CTFontGetSize(v11);
    v13 = CTFontCopyPostScriptName(v12);
    value = TSWPCreateFontWithName();
  }

  else
  {
    value = 0;
  }

  objc_sync_enter(self);
  if (self->mAnnotationCount)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      mAnnotationRanges = self->mAnnotationRanges;
      v17.length = mAnnotationRanges[v14].length;
      if (v17.length)
      {
        location = mAnnotationRanges[v14].location;
        v17.location = location;
        v19 = NSIntersectionRange(*a4, v17);
        if (v19.length)
        {
          if (a4->location >= location)
          {
            length = v19.length;
          }

          else
          {
            length = 0;
          }

          v21 = v19.location + length - a4->location;
          if (v21)
          {
            a4->length = v21;
          }

          else
          {
            [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
          }
        }
      }

      ++v15;
      ++v14;
    }

    while (v15 < self->mAnnotationCount);
  }

  objc_sync_exit(self);
  v22 = CFDictionaryGetValue(a3, kCTForegroundColorAttributeName);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
  objc_opt_class();
  [-[THWPStorage context](self "context")];
  v24 = TSUDynamicCast();
  if (-[THWPStorage applyTheme](self, "applyTheme") && [v24 themeProvider])
  {
    v25 = [TSUColor colorWithCGColor:v22];
    if (-[TSUColor isAlmostEqualToColor:](v25, "isAlmostEqualToColor:", +[TSUColor blackColor](TSUColor, "blackColor")) & 1) != 0 || ([objc_msgSend(v24 "themeProvider")])
    {
      goto LABEL_36;
    }

    -[TSUColor relativeLuminance](+[TSUColor colorWithCGColor:](TSUColor, "colorWithCGColor:", [objc_msgSend(v24 "themeProvider")]), "relativeLuminance");
    v27 = v26;
    [(TSUColor *)v25 relativeLuminance];
    if (v28 <= v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = v28;
    }

    v30 = v29 + 0.05;
    if (v28 >= v27)
    {
      v28 = v27;
    }

    if (v30 / (v28 + 0.05) < 1.4)
    {
LABEL_36:
      v22 = [objc_msgSend(v24 "themeProvider")];
    }
  }

  CFDictionarySetValue(MutableCopy, kCTForegroundColorAttributeName, v22);
  if (value)
  {
    CFDictionarySetValue(MutableCopy, kCTFontAttributeName, value);
    CFRelease(value);
  }

  if (!MutableCopy)
  {
    goto LABEL_40;
  }

  return MutableCopy;
}

- (id)documentRoot
{
  v2 = [(THWPStorage *)self context];

  return [v2 documentRoot];
}

- (_NSRange)p_closestMatchForString:(id)a3 startCharIndex:(unint64_t)a4
{
  v4 = a4;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v7 = [(THWPStorage *)self string];
  v8 = [a3 length];
  if (v8 <= [v7 length] && objc_msgSend(a3, "length") && objc_msgSend(v7, "length"))
  {
    v9 = [a3 length];
    if (&v9[v4] > [v7 length])
    {
      v10 = [v7 length];
      v4 = v10 - [a3 length];
    }

    if (([objc_msgSend(v7 substringWithRange:{v4, v9), "isEqualToString:", a3}] & 1) == 0)
    {
      v11 = [v7 rangeOfString:a3 options:1 range:{v4, objc_msgSend(v7, "length") - v4}];
      v13 = v12;
      v14 = [v7 rangeOfString:a3 options:5 range:{0, &v9[v4]}];
      v15 = v14;
      v9 = v16;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v4 = v14;
        }

        else
        {
          v9 = v13;
          v4 = v11;
        }
      }

      else
      {
        v17 = (v4 - v14);
        if (v4 < v14 || v11 < v4)
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }

        if (&v11[-v4] > v17)
        {
          v4 = v15;
        }

        else
        {
          v9 = v13;
          v4 = v11;
        }
      }
    }
  }

  else
  {
    v9 = 0;
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v18 = v4;
  v19 = v9;
  result.length = v19;
  result.location = v18;
  return result;
}

- (_NSRange)closestMatchForString:(id)a3 leftContext:(id)a4 rightContext:(id)a5 startCharIndex:(unint64_t)a6
{
  if (a6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!a3)
  {
    a3 = &stru_471858;
  }

  if (!a4)
  {
    a4 = &stru_471858;
  }

  if (!a5)
  {
    a5 = &stru_471858;
  }

  if (![a4 length] && !objc_msgSend(a5, "length"))
  {
    goto LABEL_21;
  }

  v11 = [[NSString alloc] initWithFormat:@"%@%@%@", a4, a3, a5];
  if ([a4 length] >= a6)
  {
    v12 = 0;
  }

  else
  {
    v12 = a6 - [a4 length];
  }

  v13 = [(THWPStorage *)self p_closestMatchForString:v11 startCharIndex:v12];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_21;
  }

  v15 = v13;
  v16 = v14;
  if (v14 != [v11 length])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v17 = [a4 length];
  if (v16 < &v17[[a5 length]])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v18 = &v15[[a4 length]];
  v19 = [a4 length];
  v20 = [a5 length];

  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_21:
    v18 = [(THWPStorage *)self p_closestMatchForString:a3 startCharIndex:a6];
    v22 = v21;
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v22 = v16 - &v20[v19];
LABEL_24:
  if (&v18[v22] > [(THWPStorage *)self length])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v23 = v18;
LABEL_27:
  v24 = v22;
  result.length = v24;
  result.location = v23;
  return result;
}

@end