@interface XMLStringSimplifier
+ (id)simplifiedStringFromString:(id)string isXML:(BOOL)l;
- (id)simplifiedStringFromString:(id)string isXML:(BOOL)l;
@end

@implementation XMLStringSimplifier

+ (id)simplifiedStringFromString:(id)string isXML:(BOOL)l
{
  lCopy = l;
  stringCopy = string;
  v6 = objc_alloc_init(objc_opt_class());
  v7 = [v6 simplifiedStringFromString:stringCopy isXML:lCopy];

  return v7;
}

- (id)simplifiedStringFromString:(id)string isXML:(BOOL)l
{
  lCopy = l;
  stringCopy = string;
  v6 = [[NSScanner alloc] initWithString:stringCopy];
  v7 = +[NSCharacterSet alphanumericCharacterSet];
  v8 = [v7 mutableCopy];
  [v8 invert];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (lCopy)
  {
    [v9 addCharactersInString:@"<"];
    [v8 removeCharactersInString:@"<"];
  }

  [v6 setCharactersToBeSkipped:0];
  v11 = +[NSMutableString string];
  if ([stringCopy length])
  {
    while (1)
    {
      if ([v6 isAtEnd])
      {
        v18 = [v11 copy];
        goto LABEL_15;
      }

      scanLocation = [v6 scanLocation];
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
        string = [v6 string];
        v17 = [string substringWithRange:{objc_msgSend(v6, "scanLocation"), 1}];

        LODWORD(string) = [v17 isEqualToString:@"<"];
        if (string)
        {
          [v6 scanUpToString:@">" intoString:0];
          [v6 scanString:@">" intoString:0];
        }
      }

      [v6 scanCharactersFromSet:v8 intoString:0];
      if ([v6 scanLocation] == scanLocation)
      {
        break;
      }
    }

    NSLog(@"We didn't move at all in that iteration. That's not expected. Failing.");

    v19 = 0;
  }

  else
  {
    v18 = stringCopy;
LABEL_15:
    v19 = v18;
  }

  return v19;
}

@end