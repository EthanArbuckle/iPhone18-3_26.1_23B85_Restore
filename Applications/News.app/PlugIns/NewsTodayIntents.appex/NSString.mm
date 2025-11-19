@interface NSString
- (BOOL)fr_hasPrefixEquivalentToString:(id)a3;
- (double)heightConstrainedToWidth:(double)a3 font:(id)a4 singleLine:(BOOL)a5;
- (id)fr_StringByTrimmingLeadingWhiteSpace;
- (id)fr_accessibilityAttributedStringWithLowPitchPrefix:(id)a3;
- (id)fr_convertNewlinesToPTags;
- (id)fr_encodeHTMLEntities;
- (id)fr_lowerCaseStringByTrimmingWhiteSpace;
- (id)fr_stringByDecodingHTMLEntities;
- (id)fr_stringInitials;
- (id)fr_stripHTMLTags;
@end

@implementation NSString

- (id)fr_stringInitials
{
  v3 = +[NSMutableString string];
  v4 = [NSSet setWithArray:&off_100021660];
  v5 = +[NSMutableArray array];
  v6 = [(NSString *)self length];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100002798;
  v23[3] = &unk_100020A28;
  v7 = v4;
  v24 = v7;
  v8 = v5;
  v25 = v8;
  [(NSString *)self enumerateSubstringsInRange:0 options:v6 usingBlock:3, v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ([v14 length])
        {
          v15 = [v14 substringWithRange:{0, 1}];
          v16 = [v15 uppercaseString];
          [v3 appendString:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v11);
  }

  v17 = [v3 copy];

  return v17;
}

- (id)fr_convertNewlinesToPTags
{
  v2 = [(NSString *)self componentsSeparatedByString:@"\n"];
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [NSString stringWithFormat:@"<p>%@</p>", *(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:@"\n"];

  return v10;
}

- (id)fr_encodeHTMLEntities
{
  v2 = [(NSString *)self stringByReplacingOccurrencesOfString:@"&" withString:@"&amp"];;
  v3 = [v2 stringByReplacingOccurrencesOfString:@"<" withString:@"&lt"];;

  v4 = [v3 stringByReplacingOccurrencesOfString:@">" withString:@"&gt"];;

  return v4;
}

- (id)fr_stripHTMLTags
{
  v2 = [(NSString *)self stringByReplacingOccurrencesOfString:@"&" withString:@"&amp"];;
  v3 = [NSString stringWithFormat:@"<root>%@</root>", v2];

  v4 = [v3 dataUsingEncoding:{objc_msgSend(v3, "fastestEncoding")}];
  v5 = [[NSXMLParser alloc] initWithData:v4];
  v6 = objc_alloc_init(FRHTMLStrippingXMLDelegate);
  [v5 setDelegate:v6];
  [v5 parse];
  v7 = [(FRHTMLStrippingXMLDelegate *)v6 strippedString];
  v8 = [v7 fr_stringByDecodingHTMLEntities];

  v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  return v10;
}

- (id)fr_stringByDecodingHTMLEntities
{
  v3 = +[NSMutableString string];
  v4 = [NSScanner scannerWithString:self];
  [v4 setCharactersToBeSkipped:0];
  if (([v4 isAtEnd] & 1) == 0)
  {
    do
    {
      v21 = 0;
      v5 = [v4 scanUpToString:@"&" intoString:&v21];
      v6 = v21;
      if (v5)
      {
        [v3 appendString:v6];
      }

      if (![v4 scanString:@"&" intoString:0])
      {
        goto LABEL_29;
      }

      v7 = [v4 scanLocation];
      if ([v4 scanString:@"#" intoString:0])
      {
        if ([v4 scanString:@"x" intoString:0])
        {
          v20 = 0;
          v8 = [v4 scanHexInt:&v20];
          v9 = v8;
          v10 = v20;
          v11 = v8 == 0;
        }

        else
        {
          v20 = 0;
          v15 = [v4 scanInt:&v20];
          v10 = v20;
          v16 = v20 >= 0;
          v9 = v15 & v16;
          v11 = (v15 & v16) == 0;
        }

        if (v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10;
        }

        if (![v4 scanString:@";" intoString:0] || (v9 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v19 = v6;
        v12 = [v4 scanUpToString:@";" intoString:&v19];
        v13 = v19;

        if (!v12 || ![v4 scanString:@";" intoString:0])
        {
LABEL_27:
          v6 = v13;
LABEL_28:
          v17 = -[NSString substringWithRange:](self, "substringWithRange:", v7, [v4 scanLocation] - v7);
          [v3 appendString:v17];

          goto LABEL_29;
        }

        if ([v13 isEqualToString:@"amp"])
        {
          v14 = 38;
        }

        else if ([v13 isEqualToString:@"quot"])
        {
          v14 = 34;
        }

        else if ([v13 isEqualToString:@"lt"])
        {
          v14 = 60;
        }

        else
        {
          if (([v13 isEqualToString:@"gt"] & 1) == 0)
          {
            goto LABEL_27;
          }

          v14 = 62;
        }

        v6 = v13;
      }

      [v3 appendFormat:@"%C", v14];
LABEL_29:
    }

    while (![v4 isAtEnd]);
  }

  return v3;
}

- (id)fr_accessibilityAttributedStringWithLowPitchPrefix:(id)a3
{
  v10[0] = a3;
  v10[1] = self;
  v3 = a3;
  v4 = [NSArray arrayWithObjects:v10 count:2];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = [[NSMutableAttributedString alloc] initWithString:v5];
  v7 = [v3 length];

  [v6 fr_accessibilityApplyLowerPitchTokenToRange:{0, v7}];
  v8 = [v6 copy];

  return v8;
}

- (id)fr_StringByTrimmingLeadingWhiteSpace
{
  if ([(NSString *)self length])
  {
    v3 = 0;
    if ([(NSString *)self length])
    {
      do
      {
        v4 = +[NSCharacterSet whitespaceCharacterSet];
        v5 = [v4 characterIsMember:{-[NSString characterAtIndex:](self, "characterAtIndex:", v3)}];

        if (!v5)
        {
          break;
        }

        ++v3;
      }

      while (v3 < [(NSString *)self length]);
    }

    v6 = [(NSString *)self substringFromIndex:v3];
  }

  else
  {
    v6 = [(NSString *)self copy];
  }

  return v6;
}

- (id)fr_lowerCaseStringByTrimmingWhiteSpace
{
  if ([(NSString *)self length])
  {
    v3 = +[NSCharacterSet whitespaceCharacterSet];
    v4 = [(NSString *)self stringByTrimmingCharactersInSet:v3];
    v5 = [v4 lowercaseString];
  }

  else
  {
    v5 = [(NSString *)self copy];
  }

  return v5;
}

- (BOOL)fr_hasPrefixEquivalentToString:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = v5 <= -[NSString length](self, "length") && -[NSString compare:options:range:](self, "compare:options:range:", v4, 385, 0, [v4 length]) == NSOrderedSame;

  return v6;
}

- (double)heightConstrainedToWidth:(double)a3 font:(id)a4 singleLine:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = objc_alloc_init(NSStringDrawingContext);
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

  v15 = NSFontAttributeName;
  v16 = v8;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  [(NSString *)self boundingRectWithSize:v10 options:v11 attributes:v9 context:a3, 1.79769313e308];
  v13 = v12;

  return v13;
}

@end