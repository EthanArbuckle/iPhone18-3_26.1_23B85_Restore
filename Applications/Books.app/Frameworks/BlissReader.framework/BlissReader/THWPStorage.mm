@interface THWPStorage
- (THWPStorage)initWithContext:(id)context;
- (_NSRange)closestMatchForString:(id)string leftContext:(id)context rightContext:(id)rightContext startCharIndex:(unint64_t)index;
- (_NSRange)p_closestMatchForString:(id)string startCharIndex:(unint64_t)index;
- (_NSRange)rangeOfInterest;
- (__CFDictionary)createFilteredCoreTextAttributes:(__CFDictionary *)attributes effectiveRange:(_NSRange *)range filterDelegate:(id)delegate;
- (double)filteredCoreTextAttributesFontScaleEffectiveRange:(_NSRange *)range filterDelegate:(id)delegate;
- (double)p_applicationFontScaleWithFilterDelegate:(id)delegate;
- (id)documentRoot;
- (unint64_t)wordCountInRange:(_NSRange)range;
- (void)annotationsChangedInRange:(_NSRange)range;
- (void)contextualStringsForSelection:(_NSRange)selection prefix:(id *)prefix suffix:(id *)suffix;
- (void)dealloc;
- (void)p_freeAnnotationRanges;
- (void)p_reloadAnnotations;
- (void)setAnnotationSource:(id)source;
- (void)updateAnnotationSourceWithContentNode:(id)node;
@end

@implementation THWPStorage

- (THWPStorage)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = THWPStorage;
  result = [(THWPStorage *)&v4 initWithContext:context];
  if (result)
  {
    result->_fontSize = 0x7FFFFFFFFFFFFFFFLL;
    result->_applyTheme = 1;
  }

  return result;
}

- (unint64_t)wordCountInRange:(_NSRange)range
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL || range.length == 0)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  string = [(THWPStorage *)self string];
  v11.location = location;
  v11.length = length;
  v7 = CFStringTokenizerCreate(0, string, v11, 0, 0);
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

- (void)contextualStringsForSelection:(_NSRange)selection prefix:(id *)prefix suffix:(id *)suffix
{
  if (selection.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = selection.length;
    if (selection.length <= 0x100)
    {
      if (prefix | suffix)
      {
        location = selection.location;
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
              if (prefix)
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
                      *prefix = [(THWPStorage *)self substringWithRange:v23, location - v23];
                    }
                  }
                }
              }

              if (suffix)
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
                      *suffix = [(THWPStorage *)self substringWithRange:v24, &v28[-v24]];
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

- (void)updateAnnotationSourceWithContentNode:(id)node
{
  if (!self->_annotationSourceOnceToken)
  {
    objc_sync_enter(self);
    if (!self->_annotationSourceOnceToken)
    {
      objc_opt_class();
      [-[THWPStorage context](self "context")];
      v5 = TSUDynamicCast();
      v6 = [node annotationIDForInfo:self];
      if (v6)
      {
        v7 = -[THCoreDataAnnotationSource initWithAnnotationController:contentNode:storageId:storageLength:]([THCoreDataAnnotationSource alloc], "initWithAnnotationController:contentNode:storageId:storageLength:", [v5 annotationController], node, v6, -[THWPStorage length](self, "length"));
        [(THWPStorage *)self setAnnotationSource:v7];

        self->_annotationSourceOnceToken = 1;
      }
    }

    objc_sync_exit(self);
  }
}

- (void)setAnnotationSource:(id)source
{
  mAnnotationSource = self->mAnnotationSource;
  if (mAnnotationSource != source)
  {
    sourceCopy = source;
    self->mAnnotationSource = sourceCopy;
    [(THWPAnnotationSource *)sourceCopy addInterest:self];
    if (mAnnotationSource)
    {
      [(THWPAnnotationSource *)mAnnotationSource removeInterest:self];
    }

    [(THWPStorage *)self p_reloadAnnotations];
  }
}

- (void)annotationsChangedInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
  annotationSource = [(THWPStorage *)self annotationSource];
  rangeOfInterest = [(THWPStorage *)self rangeOfInterest];
  v6 = [(THWPAnnotationSource *)annotationSource annotationsForRange:rangeOfInterest, v5];
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
        annotationStyle = [v13 annotationStyle];
        v15 = 0;
        annotationStorageRange = 0x7FFFFFFFFFFFFFFFLL;
        if (annotationStyle && annotationStyle != 6)
        {
          annotationStorageRange = [v13 annotationStorageRange];
        }

        *(p_length - 1) = annotationStorageRange;
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

- (double)p_applicationFontScaleWithFilterDelegate:(id)delegate
{
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [delegate fontSizeForTextSource:self];
    v6 = +[THApplicationSettings sharedSettings];
    fontSize2 = v5;
LABEL_9:

    [v6 flowFontScaleForFontSize:fontSize2];
    return result;
  }

  fontSize = [(THWPStorage *)self fontSize];
  v9 = +[THApplicationSettings sharedSettings];
  v10 = v9;
  if (fontSize != 0x7FFFFFFFFFFFFFFFLL)
  {
    fontSize2 = [(THWPStorage *)self fontSize];
    v6 = v10;
    goto LABEL_9;
  }

  [v9 flowFontScale];
  return result;
}

- (double)filteredCoreTextAttributesFontScaleEffectiveRange:(_NSRange *)range filterDelegate:(id)delegate
{
  if (delegate)
  {
    v7 = [delegate shouldFilterTextSource:self];
    if (!range)
    {
      return 1.0;
    }
  }

  else
  {
    v7 = 1;
    if (!range)
    {
      return 1.0;
    }
  }

  if (!v7 || !range->length || !-[THWPStorage usesApplicationFontScaling](self, "usesApplicationFontScaling") && (!delegate || (objc_opt_respondsToSelector() & 1) == 0 || ![delegate useApplicationFontScaleForTextSource:self]))
  {
    return 1.0;
  }

  [(THWPStorage *)self p_applicationFontScaleWithFilterDelegate:delegate];
  return result;
}

- (__CFDictionary)createFilteredCoreTextAttributes:(__CFDictionary *)attributes effectiveRange:(_NSRange *)range filterDelegate:(id)delegate
{
  if (delegate)
  {
    v9 = [delegate shouldFilterTextSource:self];
    if (!range)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v9 = 1;
    if (!range)
    {
LABEL_40:
      CFRetain(attributes);
      return attributes;
    }
  }

  if (!v9 || !range->length)
  {
    goto LABEL_40;
  }

  if ((-[THWPStorage usesApplicationFontScaling](self, "usesApplicationFontScaling") || delegate && (objc_opt_respondsToSelector() & 1) != 0 && [delegate useApplicationFontScaleForTextSource:self]) && (-[THWPStorage p_applicationFontScaleWithFilterDelegate:](self, "p_applicationFontScaleWithFilterDelegate:", delegate), v10 != 1.0) && (v11 = CFDictionaryGetValue(attributes, kCTFontAttributeName)) != 0)
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
        v19 = NSIntersectionRange(*range, v17);
        if (v19.length)
        {
          if (range->location >= location)
          {
            length = v19.length;
          }

          else
          {
            length = 0;
          }

          v21 = v19.location + length - range->location;
          if (v21)
          {
            range->length = v21;
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
  v22 = CFDictionaryGetValue(attributes, kCTForegroundColorAttributeName);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, attributes);
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
  context = [(THWPStorage *)self context];

  return [context documentRoot];
}

- (_NSRange)p_closestMatchForString:(id)string startCharIndex:(unint64_t)index
{
  indexCopy = index;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  string = [(THWPStorage *)self string];
  v8 = [string length];
  if (v8 <= [string length] && objc_msgSend(string, "length") && objc_msgSend(string, "length"))
  {
    v9 = [string length];
    if (&v9[indexCopy] > [string length])
    {
      v10 = [string length];
      indexCopy = v10 - [string length];
    }

    if (([objc_msgSend(string substringWithRange:{indexCopy, v9), "isEqualToString:", string}] & 1) == 0)
    {
      v11 = [string rangeOfString:string options:1 range:{indexCopy, objc_msgSend(string, "length") - indexCopy}];
      v13 = v12;
      v14 = [string rangeOfString:string options:5 range:{0, &v9[indexCopy]}];
      v15 = v14;
      v9 = v16;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          indexCopy = v14;
        }

        else
        {
          v9 = v13;
          indexCopy = v11;
        }
      }

      else
      {
        v17 = (indexCopy - v14);
        if (indexCopy < v14 || v11 < indexCopy)
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }

        if (&v11[-indexCopy] > v17)
        {
          indexCopy = v15;
        }

        else
        {
          v9 = v13;
          indexCopy = v11;
        }
      }
    }
  }

  else
  {
    v9 = 0;
    indexCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  v18 = indexCopy;
  v19 = v9;
  result.length = v19;
  result.location = v18;
  return result;
}

- (_NSRange)closestMatchForString:(id)string leftContext:(id)context rightContext:(id)rightContext startCharIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!string)
  {
    string = &stru_471858;
  }

  if (!context)
  {
    context = &stru_471858;
  }

  if (!rightContext)
  {
    rightContext = &stru_471858;
  }

  if (![context length] && !objc_msgSend(rightContext, "length"))
  {
    goto LABEL_21;
  }

  rightContext = [[NSString alloc] initWithFormat:@"%@%@%@", context, string, rightContext];
  if ([context length] >= index)
  {
    v12 = 0;
  }

  else
  {
    v12 = index - [context length];
  }

  v13 = [(THWPStorage *)self p_closestMatchForString:rightContext startCharIndex:v12];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_21;
  }

  v15 = v13;
  v16 = v14;
  if (v14 != [rightContext length])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v17 = [context length];
  if (v16 < &v17[[rightContext length]])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v18 = &v15[[context length]];
  v19 = [context length];
  v20 = [rightContext length];

  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_21:
    v18 = [(THWPStorage *)self p_closestMatchForString:string startCharIndex:index];
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