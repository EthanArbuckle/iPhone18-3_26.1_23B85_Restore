@interface NSString
+ (NSString)stringWithDuration:(double)duration explicitPositive:(BOOL)positive adjustedForRate:(double)rate;
+ (NSString)stringWithDuration:(double)duration unitStyle:(int64_t)style explicitPositive:(BOOL)positive showsHours:(BOOL *)hours;
+ (id)UUID;
+ (id)_readingProgressFormatter;
+ (id)bc_formattedReadingProgress:(id)progress isFinished:(BOOL)finished;
+ (id)bc_formattedReadingProgress:(id)progress max:(float)max;
+ (id)queryStringFromDictionary:(id)dictionary;
+ (id)stringForBCContentType:(int64_t)type;
- (BOOL)bc_hasMatchInRegexPatterns:(id)patterns;
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
- (id)im_stringWithPathRelativeTo:(id)to;
- (id)im_stringWithPathRelativeTo:(id)to allowBacktracking:(BOOL)backtracking;
- (id)im_uppercaseStringWithLocale:(id)locale;
- (id)stringByConvertingControlCharactersToSpace;
- (id)stringByConvertingNewlineCharacterSetToSpace;
- (id)stringByEnclosingInQuotes;
- (id)stringByRemovingEnclosingQuotations;
- (id)stringByRemovingURLFragment;
- (id)stringByTruncatingToLength:(unint64_t)length options:(unint64_t)options truncationString:(id)string;
- (int64_t)bcAssetContentType;
- (unint64_t)ae_occurrenceCountOfString:(id)string;
- (unint64_t)tokenCountWithEnumerationOptions:(unint64_t)options maxTokenCount:(unint64_t)count outLimitLength:(unint64_t *)length;
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
  selfCopy = self;
  if ([(NSString *)selfCopy hasPrefix:@"epubcfi(")]
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

    v6 = [v3 stringByReplacingMatchesInString:selfCopy options:0 range:0 withTemplate:{-[NSString length](selfCopy, "length"), @"[redacted]"}];
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
    v7 = selfCopy;
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
  selfCopy = self;
  v3 = [(NSString *)selfCopy rangeOfString:@"#"];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(NSString *)selfCopy substringToIndex:v3];

    selfCopy = v4;
  }

  return selfCopy;
}

- (id)stringByConvertingControlCharactersToSpace
{
  v3 = +[NSCharacterSet controlCharacterSet];
  v4 = [(NSString *)self rangeOfCharacterFromSet:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    selfCopy = [NSMutableString stringWithString:self];
    v9 = &v7[v8];
    v10 = ([(NSString *)selfCopy length]- &v7[v8]);
    do
    {
      [(NSString *)selfCopy replaceCharactersInRange:v7 withString:v8, @" "];
      v11 = [(NSString *)selfCopy rangeOfCharacterFromSet:v3 options:0 range:v9, v10];
      v13 = &v11[v12 - &v7[v8]];
      v9 += v13;
      v10 -= v13;
      v8 = v12;
      v7 = v11;
    }

    while (v11 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return selfCopy;
}

- (id)stringByConvertingNewlineCharacterSetToSpace
{
  v3 = +[NSCharacterSet newlineCharacterSet];
  v4 = [(NSString *)self rangeOfCharacterFromSet:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    selfCopy = [NSMutableString stringWithString:self];
    v9 = &v7[v8];
    v10 = ([(NSString *)selfCopy length]- &v7[v8]);
    do
    {
      [(NSString *)selfCopy replaceCharactersInRange:v7 withString:v8, @" "];
      v11 = [(NSString *)selfCopy rangeOfCharacterFromSet:v3 options:0 range:v9, v10];
      v13 = &v11[v12 - &v7[v8]];
      v9 += v13;
      v10 -= v13;
      v8 = v12;
      v7 = v11;
    }

    while (v11 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return selfCopy;
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

+ (id)bc_formattedReadingProgress:(id)progress isFinished:(BOOL)finished
{
  LODWORD(v4) = 1065185444;
  if (finished)
  {
    *&v4 = 1.0;
  }

  return [self bc_formattedReadingProgress:progress max:v4];
}

+ (id)bc_formattedReadingProgress:(id)progress max:(float)max
{
  progressCopy = progress;
  [progressCopy floatValue];
  if (*&v7 <= max)
  {
    [progressCopy floatValue];
    if (v9 >= 0.01)
    {
      goto LABEL_6;
    }

    v8 = &off_2EF438;
  }

  else
  {
    *&v7 = max;
    v8 = [NSNumber numberWithFloat:v7];
  }

  progressCopy = v8;
LABEL_6:
  _readingProgressFormatter = [self _readingProgressFormatter];
  v11 = [_readingProgressFormatter stringFromNumber:progressCopy];

  return v11;
}

+ (NSString)stringWithDuration:(double)duration unitStyle:(int64_t)style explicitPositive:(BOOL)positive showsHours:(BOOL *)hours
{
  v10 = fabs(duration) + 0.5;
  v11 = objc_opt_new();
  v12 = +[NSCalendar currentCalendar];
  [v11 setCalendar:v12];

  [v11 setUnitsStyle:style];
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
  if (hours)
  {
    *hours = v10 > 3600.0;
  }

  v14 = [v11 stringFromTimeInterval:v10];
  if (v10 < 1.0)
  {
    goto LABEL_7;
  }

  if (duration >= 0.0 && positive)
  {
    v16 = @"+%@";
  }

  else
  {
    if (duration >= 0.0)
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

+ (NSString)stringWithDuration:(double)duration explicitPositive:(BOOL)positive adjustedForRate:(double)rate
{
  if (fabs(rate) < 0.00999999978)
  {
    rate = 1.0;
  }

  return [NSString stringWithDuration:positive explicitPositive:0 showsHours:duration / rate];
}

+ (id)queryStringFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [NSMutableString stringWithCapacity:16];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = dictionaryCopy;
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

- (unint64_t)tokenCountWithEnumerationOptions:(unint64_t)options maxTokenCount:(unint64_t)count outLimitLength:(unint64_t *)length
{
  if (length)
  {
    *length = [(NSString *)self length];
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
  v11[5] = count;
  v11[6] = length;
  [(NSString *)self enumerateSubstringsInRange:0 options:[(NSString *)self length] usingBlock:options, v11];
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (id)stringByTruncatingToLength:(unint64_t)length options:(unint64_t)options truncationString:(id)string
{
  stringCopy = string;
  if ([(NSString *)self length]<= length)
  {
    selfCopy = self;
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
    lengthCopy = length;
    v10 = stringCopy;
    v17 = v10;
    v18 = &v20;
    [(NSString *)self enumerateSubstringsInRange:0 options:v9 usingBlock:options, v16];
    lengthCopy2 = v21[3];
    if (!lengthCopy2)
    {
      v21[3] = length;
      lengthCopy2 = length;
    }

    v12 = [(NSString *)self substringToIndex:lengthCopy2];
    selfCopy = v12;
    if (v10)
    {
      v14 = [(NSString *)v12 stringByAppendingString:v10];

      selfCopy = v14;
    }

    _Block_object_dispose(&v20, 8);
  }

  return selfCopy;
}

- (id)stringByEnclosingInQuotes
{
  stringByRemovingEnclosingQuotations = [(NSString *)self stringByRemovingEnclosingQuotations];
  v3 = IMCommonCoreBundle();
  v4 = [v3 localizedStringForKey:@"\\U201C%@\\U201D" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v5 = [NSString stringWithFormat:v4, stringByRemovingEnclosingQuotations];

  return v5;
}

- (id)im_uppercaseStringWithLocale:(id)locale
{
  localeCopy = locale;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(NSString *)self uppercaseStringWithLocale:localeCopy];
  }

  else
  {
    v6 = [[NSMutableString alloc] initWithString:self];
    CFStringUppercase(v6, localeCopy);

    v5 = 0;
  }

  return v5;
}

- (id)im_stringWithPathRelativeTo:(id)to
{
  toCopy = to;
  if (toCopy)
  {
    stringByStandardizingPath = [(NSString *)self stringByStandardizingPath];
    pathComponents = [stringByStandardizingPath pathComponents];

    stringByStandardizingPath2 = [toCopy stringByStandardizingPath];
    pathComponents2 = [stringByStandardizingPath2 pathComponents];

    v9 = [pathComponents count];
    v10 = [pathComponents2 count];
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
      v14 = [pathComponents2 objectAtIndex:v12];
      v15 = [pathComponents objectAtIndex:v12];
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
        v19 = [pathComponents subarrayWithRange:{v11, &v9[-v11]}];
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

- (id)im_stringWithPathRelativeTo:(id)to allowBacktracking:(BOOL)backtracking
{
  toCopy = to;
  if (backtracking)
  {
    stringByStandardizingPath = [(NSString *)self stringByStandardizingPath];
    pathComponents = [stringByStandardizingPath pathComponents];

    stringByStandardizingPath2 = [toCopy stringByStandardizingPath];
    pathComponents2 = [stringByStandardizingPath2 pathComponents];

    v11 = [pathComponents count];
    v12 = [pathComponents2 count];
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
        v17 = [pathComponents2 objectAtIndex:v15];
        v18 = [pathComponents objectAtIndex:v15];
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
        v24 = [pathComponents objectAtIndex:v16];
        v20 = [(__CFString *)v23 stringByAppendingPathComponent:v24];

        ++v16;
        v23 = v20;
      }

      while (v11 != v16);
    }
  }

  else
  {
    v20 = [(NSString *)self im_stringWithPathRelativeTo:toCopy];
  }

  return v20;
}

- (id)imSanitizedFontFamilyName
{
  v2 = [(NSString *)self stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"." withString:@"_"];

  return v3;
}

- (BOOL)bc_hasMatchInRegexPatterns:(id)patterns
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  patternsCopy = patterns;
  v5 = [patternsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(patternsCopy);
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
        v6 = [patternsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

  selfCopy = self;
  v4 = [(NSString *)selfCopy rangeOfCharacterFromSet:qword_342270 options:0 range:0, 1];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NSString *)selfCopy stringByReplacingCharactersInRange:v4 withString:v5, &stru_2D2930];

    selfCopy = v6;
  }

  if ([(NSString *)selfCopy length]>= 2)
  {
    v7 = [(NSString *)selfCopy rangeOfCharacterFromSet:qword_342270 options:0 range:[(NSString *)selfCopy length]- 1, 1];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [(NSString *)selfCopy stringByReplacingCharactersInRange:v7 withString:v8, &stru_2D2930];

      selfCopy = v9;
    }
  }

  return selfCopy;
}

- (unint64_t)unsignedLongLongValue
{
  uTF8String = [(NSString *)self UTF8String];

  return strtoull(uTF8String, 0, 0);
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

  im_stringByUnescapingHTMLEntities = [v9 im_stringByUnescapingHTMLEntities];

  return im_stringByUnescapingHTMLEntities;
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

- (unint64_t)ae_occurrenceCountOfString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v5 = [(NSString *)self length];
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [(NSString *)self rangeOfString:stringCopy options:2 range:v7, v5];
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

+ (id)stringForBCContentType:(int64_t)type
{
  if (type > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_2CD9F8 + type);
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
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

@end