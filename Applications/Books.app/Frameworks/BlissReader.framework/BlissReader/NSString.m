@interface NSString
+ (NSString)stringWithUUID;
+ (id)stringFromNSIndexPath:(id)a3;
+ (int64_t)normalizedCompare:(id)a3 with:(id)a4;
- (CGSize)sizeWithParagraphStyle:(id)a3;
- (id)normalizedStringForSearch;
- (id)normalizedStringsForPrefixSearch;
- (id)stringByTransformingForTHNotesSectionHeader;
@end

@implementation NSString

+ (id)stringFromNSIndexPath:(id)a3
{
  v4 = [a3 length];
  v5 = +[NSMutableString string];
  if (v4)
  {
    v6 = v4 - 1;
    if (v6)
    {
      v7 = v6;
      do
      {
        [v5 appendFormat:@"%lu.", objc_msgSend(a3, "indexAtPosition:", 0)];
        --v7;
      }

      while (v7);
    }

    [v5 appendFormat:@"%lu", objc_msgSend(a3, "indexAtPosition:", v6)];
  }

  return v5;
}

- (CGSize)sizeWithParagraphStyle:(id)a3
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  v5 = [[NSAttributedString alloc] initWithString:self paragraphStyle:a3];
  v6 = CTTypesetterCreateWithAttributedString(v5);
  if (v6)
  {
    v7 = v6;
    v16.length = [(__CFAttributedString *)v5 length];
    v16.location = 0;
    Line = CTTypesetterCreateLine(v7, v16);
    if (Line)
    {
      v9 = Line;
      v14 = 0.0;
      ascent = 0.0;
      TypographicBounds = CTLineGetTypographicBounds(Line, &ascent, &v14, 0);
      width = ceilf(TypographicBounds);
      v11 = ascent + v14;
      height = ceilf(v11);
      CFRelease(v9);
    }

    CFRelease(v7);
  }

  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (int64_t)normalizedCompare:(id)a3 with:(id)a4
{
  if (a3 == a4)
  {
    return 0;
  }

  v12 = v5;
  v13 = v4;
  if (!a3)
  {
    v9 = &stru_471858;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = &stru_471858;
    goto LABEL_8;
  }

  v9 = [a3 normalizedStringForSearch];
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = [a4 normalizedStringForSearch];
LABEL_8:

  return [(__CFString *)v9 localizedCaseInsensitiveCompare:v10];
}

- (id)normalizedStringForSearch
{
  v3 = [[(NSString *)self stringByFoldingWithOptions:1 locale:+[NSLocale currentLocale](NSLocale componentsSeparatedByCharactersInSet:"componentsSeparatedByCharactersInSet:", +[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  v4 = [[NSMutableString alloc] initWithCapacity:{-[NSString length](self, "length")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 length])
        {
          if ([v4 length])
          {
            [v4 appendString:@" "];
          }

          [v4 appendString:v9];
        }
      }

      v6 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)normalizedStringsForPrefixSearch
{
  v2 = [[(NSString *)self stringByFoldingWithOptions:1 locale:+[NSLocale currentLocale](NSLocale componentsSeparatedByCharactersInSet:"componentsSeparatedByCharactersInSet:", +[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v2, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 length])
        {
          if ([v3 count])
          {
            v9 = 0;
            do
            {
              [v3 replaceObjectAtIndex:v9 withObject:{objc_msgSend(objc_msgSend(v3, "objectAtIndex:", v9), "stringByAppendingFormat:", @" %@", v8)}];
              ++v9;
            }

            while (v9 < [v3 count]);
          }

          [v3 addObject:v8];
        }
      }

      v5 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)stringByTransformingForTHNotesSectionHeader
{
  v3 = +[NSCharacterSet whitespaceCharacterSet];

  return [(NSString *)self stringByTrimmingCharactersInSet:v3];
}

+ (NSString)stringWithUUID
{
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  CFRelease(v2);

  return v3;
}

@end