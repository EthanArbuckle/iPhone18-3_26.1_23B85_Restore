@interface NSString
+ (NSString)stringWithDuration:(double)a3 explicitPositive:(BOOL)a4 adjustedForRate:(double)a5;
+ (NSString)stringWithDuration:(double)a3 unitStyle:(int64_t)a4 explicitPositive:(BOOL)a5 showsHours:(BOOL *)a6;
+ (id)UUID;
+ (id)_readingProgressFormatter;
+ (id)bc_formattedReadingProgress:(id)a3 isFinished:(BOOL)a4;
+ (id)bc_formattedReadingProgress:(id)a3 max:(float)a4;
+ (id)queryStringFromDictionary:(id)a3;
+ (id)stringForBCContentType:(int64_t)a3;
- (BOOL)bc_hasMatchInRegexPatterns:(id)a3;
- (BOOL)imIsDefaultWritingMode;
- (BOOL)isWhitespace;
- (NSString)bc_redactedCFIString;
- (NSString)stringWithPercentEscape;
- (id)URLFragmentString;
- (id)flattenedAnnotationString;
- (id)imSanitizedFontFamilyName;
- (id)im_stringByCollapsingRunsOfWhitespaceAndNewlines;
- (id)im_stringByReplacingNewLinesWithHTMLBreaks;
- (id)im_stringByStrippingHTML;
- (id)im_stringByUnescapingHTMLEntities;
- (id)im_stringWithPathRelativeTo:(id)a3;
- (id)im_stringWithPathRelativeTo:(id)a3 allowBacktracking:(BOOL)a4;
- (id)im_uppercaseStringWithLocale:(id)a3;
- (id)stringByConvertingControlCharactersToSpace;
- (id)stringByConvertingNewlineCharacterSetToSpace;
- (id)stringByEnclosingInQuotes;
- (id)stringByRemovingEnclosingQuotations;
- (id)stringByRemovingURLFragment;
- (id)stringByTruncatingToLength:(unint64_t)a3 options:(unint64_t)a4 truncationString:(id)a5;
- (int64_t)bcAssetContentType;
- (unint64_t)ae_occurrenceCountOfString:(id)a3;
- (unint64_t)tokenCountWithEnumerationOptions:(unint64_t)a3 maxTokenCount:(unint64_t)a4 outLimitLength:(unint64_t *)a5;
- (unint64_t)unsignedLongLongValue;
@end

@implementation NSString

+ (id)_readingProgressFormatter
{
  if (qword_342268 != -1)
  {
    sub_1E65B8();
  }

  v3 = qword_342260;

  return v3;
}

+ (id)UUID
{
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  CFRelease(v2);

  return v3;
}

- (NSString)bc_redactedCFIString
{
  v2 = self;
  if ([(NSString *)v2 hasPrefix:@"epubcfi(")]
  {
    v10 = 0;
    v3 = [NSRegularExpression regularExpressionWithPattern:@"\\[\\w+\\]" options:1 error:&v10];
    v4 = v10;
    if (!v3)
    {
      v5 = BCIMLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1E65CC(v4, v5);
      }
    }

    v6 = [v3 stringByReplacingMatchesInString:v2 options:0 range:0 withTemplate:{-[NSString length](v2, "length"), @"[redacted]"}];
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v2;
  }

  v8 = v7;

  return v7;
}

- (id)URLFragmentString
{
  v3 = [(NSString *)self rangeOfString:@"#"];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSString *)self substringFromIndex:v3 + 1];
  }

  return v4;
}

- (id)stringByRemovingURLFragment
{
  v2 = self;
  v3 = [(NSString *)v2 rangeOfString:@"#"];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(NSString *)v2 substringToIndex:v3];

    v2 = v4;
  }

  return v2;
}

- (id)stringByConvertingControlCharactersToSpace
{
  v3 = +[NSCharacterSet controlCharacterSet];
  v4 = [(NSString *)self rangeOfCharacterFromSet:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = self;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6 = [NSMutableString stringWithString:self];
    v9 = &v7[v8];
    v10 = ([(NSString *)v6 length]- &v7[v8]);
    do
    {
      [(NSString *)v6 replaceCharactersInRange:v7 withString:v8, @" "];
      v11 = [(NSString *)v6 rangeOfCharacterFromSet:v3 options:0 range:v9, v10];
      v13 = &v11[v12 - &v7[v8]];
      v9 += v13;
      v10 -= v13;
      v8 = v12;
      v7 = v11;
    }

    while (v11 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v6;
}

- (id)stringByConvertingNewlineCharacterSetToSpace
{
  v3 = +[NSCharacterSet newlineCharacterSet];
  v4 = [(NSString *)self rangeOfCharacterFromSet:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = self;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6 = [NSMutableString stringWithString:self];
    v9 = &v7[v8];
    v10 = ([(NSString *)v6 length]- &v7[v8]);
    do
    {
      [(NSString *)v6 replaceCharactersInRange:v7 withString:v8, @" "];
      v11 = [(NSString *)v6 rangeOfCharacterFromSet:v3 options:0 range:v9, v10];
      v13 = &v11[v12 - &v7[v8]];
      v9 += v13;
      v10 -= v13;
      v8 = v12;
      v7 = v11;
    }

    while (v11 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v6;
}

- (NSString)stringWithPercentEscape
{
  v2 = CFURLCreateStringByAddingPercentEscapes(0, self, @"#", @"\uFFFC=,!$&'()*+;@?\n<>\t :", 0x8000100u);

  return v2;
}

- (BOOL)isWhitespace
{
  v3 = +[NSCharacterSet whitespaceCharacterSet];
  v4 = [(NSString *)self stringByTrimmingCharactersInSet:v3];
  v5 = [v4 length] == 0;

  return v5;
}

+ (id)bc_formattedReadingProgress:(id)a3 isFinished:(BOOL)a4
{
  LODWORD(v4) = 1065185444;
  if (a4)
  {
    *&v4 = 1.0;
  }

  return [a1 bc_formattedReadingProgress:a3 max:v4];
}

+ (id)bc_formattedReadingProgress:(id)a3 max:(float)a4
{
  v6 = a3;
  [v6 floatValue];
  if (*&v7 <= a4)
  {
    [v6 floatValue];
    if (v9 >= 0.01)
    {
      goto LABEL_6;
    }

    v8 = &off_2EF438;
  }

  else
  {
    *&v7 = a4;
    v8 = [NSNumber numberWithFloat:v7];
  }

  v6 = v8;
LABEL_6:
  v10 = [a1 _readingProgressFormatter];
  v11 = [v10 stringFromNumber:v6];

  return v11;
}

+ (NSString)stringWithDuration:(double)a3 unitStyle:(int64_t)a4 explicitPositive:(BOOL)a5 showsHours:(BOOL *)a6
{
  v10 = fabs(a3) + 0.5;
  v11 = objc_opt_new();
  v12 = +[NSCalendar currentCalendar];
  [v11 setCalendar:v12];

  [v11 setUnitsStyle:a4];
  if (v10 >= 60.0)
  {
    v13 = 224;
  }

  else
  {
    v13 = 192;
  }

  [v11 setAllowedUnits:v13];
  [v11 setZeroFormattingBehavior:2 * (v10 >= 60.0)];
  if (a6)
  {
    *a6 = v10 > 3600.0;
  }

  v14 = [v11 stringFromTimeInterval:v10];
  if (v10 < 1.0)
  {
    goto LABEL_7;
  }

  if (a3 >= 0.0 && a5)
  {
    v16 = @"+%@";
  }

  else
  {
    if (a3 >= 0.0)
    {
LABEL_7:
      v15 = @"%@";
      goto LABEL_14;
    }

    v16 = @"-%@";
  }

  v17 = IMCommonCoreBundle();
  v15 = [v17 localizedStringForKey:v16 value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

LABEL_14:
  v18 = [NSString stringWithFormat:v15, v14];

  return v18;
}

+ (NSString)stringWithDuration:(double)a3 explicitPositive:(BOOL)a4 adjustedForRate:(double)a5
{
  if (fabs(a5) < 0.00999999978)
  {
    a5 = 1.0;
  }

  return [NSString stringWithDuration:a4 explicitPositive:0 showsHours:a3 / a5];
}

+ (id)queryStringFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [NSMutableString stringWithCapacity:16];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = @"%@=%@";
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v5 objectForKey:v11];
        [v4 appendFormat:v9, v11, v12, v14];

        v9 = @"&%@=%@";
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v9 = @"&%@=%@";
    }

    while (v7);
  }

  return v4;
}

- (unint64_t)tokenCountWithEnumerationOptions:(unint64_t)a3 maxTokenCount:(unint64_t)a4 outLimitLength:(unint64_t *)a5
{
  if (a5)
  {
    *a5 = [(NSString *)self length];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_5EC90;
  v11[3] = &unk_2C9F78;
  v11[4] = &v12;
  v11[5] = a4;
  v11[6] = a5;
  [(NSString *)self enumerateSubstringsInRange:0 options:[(NSString *)self length] usingBlock:a3, v11];
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (id)stringByTruncatingToLength:(unint64_t)a3 options:(unint64_t)a4 truncationString:(id)a5
{
  v8 = a5;
  if ([(NSString *)self length]<= a3)
  {
    v13 = self;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v9 = [(NSString *)self length];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_5EE58;
    v16[3] = &unk_2C9FA0;
    v19 = a3;
    v10 = v8;
    v17 = v10;
    v18 = &v20;
    [(NSString *)self enumerateSubstringsInRange:0 options:v9 usingBlock:a4, v16];
    v11 = v21[3];
    if (!v11)
    {
      v21[3] = a3;
      v11 = a3;
    }

    v12 = [(NSString *)self substringToIndex:v11];
    v13 = v12;
    if (v10)
    {
      v14 = [(NSString *)v12 stringByAppendingString:v10];

      v13 = v14;
    }

    _Block_object_dispose(&v20, 8);
  }

  return v13;
}

- (id)stringByEnclosingInQuotes
{
  v2 = [(NSString *)self stringByRemovingEnclosingQuotations];
  v3 = IMCommonCoreBundle();
  v4 = [v3 localizedStringForKey:@"\\U201C%@\\U201D" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v5 = [NSString stringWithFormat:v4, v2];

  return v5;
}

- (id)im_uppercaseStringWithLocale:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(NSString *)self uppercaseStringWithLocale:v4];
  }

  else
  {
    v6 = [[NSMutableString alloc] initWithString:self];
    CFStringUppercase(v6, v4);

    v5 = 0;
  }

  return v5;
}

- (id)im_stringWithPathRelativeTo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSString *)self stringByStandardizingPath];
    v6 = [v5 pathComponents];

    v7 = [v4 stringByStandardizingPath];
    v8 = [v7 pathComponents];

    v9 = [v6 count];
    v10 = [v8 count];
    if (v9 < v10)
    {
      goto LABEL_10;
    }

    v11 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    v12 = 0;
    v13 = 1;
    do
    {
      v14 = [v8 objectAtIndex:v12];
      v15 = [v6 objectAtIndex:v12];
      v16 = [v14 isEqualToString:v15];

      if ((v16 & 1) == 0)
      {
        break;
      }

      v12 = v13;
    }

    while (v11 > v13++);
    if (v11 != v12)
    {
LABEL_10:
      v18 = 0;
    }

    else
    {
LABEL_8:
      if (v9 == v11)
      {
        v18 = &stru_2D2930;
      }

      else
      {
        v19 = [v6 subarrayWithRange:{v11, &v9[-v11]}];
        v18 = [NSString pathWithComponents:v19];
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)im_stringWithPathRelativeTo:(id)a3 allowBacktracking:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [(NSString *)self stringByStandardizingPath];
    v8 = [v7 pathComponents];

    v9 = [v6 stringByStandardizingPath];
    v10 = [v9 pathComponents];

    v11 = [v8 count];
    v12 = [v10 count];
    v13 = v12;
    if (v12 >= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [v10 objectAtIndex:v15];
        v18 = [v8 objectAtIndex:v15];
        v19 = [v17 isEqualToString:v18];

        if (!v19)
        {
          break;
        }

        v15 = ++v16;
      }

      while (v14 > v16);
    }

    else
    {
      v16 = 0;
    }

    v21 = v13 - v16;
    if (v13 <= v16)
    {
      v23 = &stru_2D2930;
    }

    else
    {
      v22 = &stru_2D2930;
      do
      {
        v23 = [(__CFString *)v22 stringByAppendingPathComponent:@".."];

        v22 = v23;
        --v21;
      }

      while (v21);
    }

    if (v16 >= v11)
    {
      v20 = v23;
    }

    else
    {
      do
      {
        v24 = [v8 objectAtIndex:v16];
        v20 = [(__CFString *)v23 stringByAppendingPathComponent:v24];

        ++v16;
        v23 = v20;
      }

      while (v11 != v16);
    }
  }

  else
  {
    v20 = [(NSString *)self im_stringWithPathRelativeTo:v6];
  }

  return v20;
}

- (id)imSanitizedFontFamilyName
{
  v2 = [(NSString *)self stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"." withString:@"_"];

  return v3;
}

- (BOOL)bc_hasMatchInRegexPatterns:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = [NSRegularExpression alloc];
      v11 = 1;
      v12 = [v10 initWithPattern:v9 options:1 error:{0, v15}];
      v13 = [v12 rangeOfFirstMatchInString:self options:0 range:{0, -[NSString length](self, "length")}];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (id)stringByRemovingEnclosingQuotations
{
  if (qword_342278 != -1)
  {
    sub_1E6644();
  }

  v3 = self;
  v4 = [(NSString *)v3 rangeOfCharacterFromSet:qword_342270 options:0 range:0, 1];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NSString *)v3 stringByReplacingCharactersInRange:v4 withString:v5, &stru_2D2930];

    v3 = v6;
  }

  if ([(NSString *)v3 length]>= 2)
  {
    v7 = [(NSString *)v3 rangeOfCharacterFromSet:qword_342270 options:0 range:[(NSString *)v3 length]- 1, 1];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [(NSString *)v3 stringByReplacingCharactersInRange:v7 withString:v8, &stru_2D2930];

      v3 = v9;
    }
  }

  return v3;
}

- (unint64_t)unsignedLongLongValue
{
  v2 = [(NSString *)self UTF8String];

  return strtoull(v2, 0, 0);
}

- (BOOL)imIsDefaultWritingMode
{
  if ([(NSString *)self imIsVerticalWritingMode])
  {
    return 0;
  }

  else
  {
    return ![(NSString *)self imIsHorizontalWritingMode];
  }
}

- (id)im_stringByCollapsingRunsOfWhitespaceAndNewlines
{
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [(NSString *)self componentsSeparatedByCharactersInSet:v3];

  v5 = [v4 bu_objectsMatching:&stru_2CA000];
  v6 = [v5 componentsJoinedByString:@" "];

  return v6;
}

- (id)im_stringByStrippingHTML
{
  v2 = [(NSString *)self copy];
  v3 = [v2 rangeOfString:@"<br[ /]*>" options:1024];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v2;
  }

  else
  {
    v6 = v3;
    do
    {
      v5 = [v2 stringByReplacingCharactersInRange:v6 withString:{v4, @"\n"}];

      v6 = [v5 rangeOfString:@"<br[ /]*>" options:1024];
      v2 = v5;
    }

    while (v6 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v7 = [v5 rangeOfString:@"<[^>]+>" options:1024];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v5;
  }

  else
  {
    v10 = v7;
    do
    {
      v9 = [v5 stringByReplacingCharactersInRange:v10 withString:{v8, &stru_2D2930}];

      v10 = [v9 rangeOfString:@"<[^>]+>" options:1024];
      v5 = v9;
    }

    while (v10 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v11 = [v9 im_stringByUnescapingHTMLEntities];

  return v11;
}

- (id)im_stringByUnescapingHTMLEntities
{
  v2 = BC_CFXMLCreateStringByUnescapingEntities(kCFAllocatorDefault, self, 0);

  return v2;
}

- (id)im_stringByReplacingNewLinesWithHTMLBreaks
{
  v3 = [(NSString *)self length];

  return [(NSString *)self stringByReplacingOccurrencesOfString:@"\n" withString:@"<br>\n" options:2 range:0, v3];
}

- (id)flattenedAnnotationString
{
  if (qword_342870 != -1)
  {
    sub_1E9798();
  }

  v3 = [(NSString *)self componentsSeparatedByCharactersInSet:qword_342868];
  v4 = [v3 componentsJoinedByString:@" "];

  return v4;
}

- (unint64_t)ae_occurrenceCountOfString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSString *)self length];
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [(NSString *)self rangeOfString:v4 options:2 range:v7, v5];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v6;
      v7 = &v8[v9];
      v10 = [(NSString *)self length];
      v5 = v10 - v7;
    }

    while (v10 <= [(NSString *)self length]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)stringForBCContentType:(int64_t)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_2CD9F8 + a3);
  }
}

- (int64_t)bcAssetContentType
{
  if (qword_345E68 != -1)
  {
    sub_1EA58C();
  }

  v3 = [qword_345E60 objectForKey:self];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end