@interface XMLStringSimplifier
+ (id)simplifiedStringFromString:(id)a3 isXML:(BOOL)a4;
- (id)simplifiedStringFromString:(id)a3 isXML:(BOOL)a4;
@end

@implementation XMLStringSimplifier

+ (id)simplifiedStringFromString:(id)a3 isXML:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(objc_opt_class());
  v7 = [v6 simplifiedStringFromString:v5 isXML:v4];

  return v7;
}

- (id)simplifiedStringFromString:(id)a3 isXML:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[NSScanner alloc] initWithString:v5];
  v7 = +[NSCharacterSet alphanumericCharacterSet];
  v8 = [v7 mutableCopy];
  [v8 invert];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v4)
  {
    [v9 addCharactersInString:@"<"];
    [v8 removeCharactersInString:@"<"];
  }

  [v6 setCharactersToBeSkipped:0];
  v11 = +[NSMutableString string];
  if ([v5 length])
  {
    while (1)
    {
      if ([v6 isAtEnd])
      {
        v18 = [v11 copy];
        goto LABEL_15;
      }

      v12 = [v6 scanLocation];
      v21 = 0;
      v13 = [v6 scanUpToCharactersFromSet:v10 intoString:&v21];
      v14 = v21;
      v15 = v14;
      if (v13 && [v14 length])
      {
        [v11 appendString:v15];
      }

      if (([v6 isAtEnd] & 1) == 0)
      {
        v16 = [v6 string];
        v17 = [v16 substringWithRange:{objc_msgSend(v6, "scanLocation"), 1}];

        LODWORD(v16) = [v17 isEqualToString:@"<"];
        if (v16)
        {
          [v6 scanUpToString:@">" intoString:0];
          [v6 scanString:@">" intoString:0];
        }
      }

      [v6 scanCharactersFromSet:v8 intoString:0];
      if ([v6 scanLocation] == v12)
      {
        break;
      }
    }

    NSLog(@"We didn't move at all in that iteration. That's not expected. Failing.");

    v19 = 0;
  }

  else
  {
    v18 = v5;
LABEL_15:
    v19 = v18;
  }

  return v19;
}

@end