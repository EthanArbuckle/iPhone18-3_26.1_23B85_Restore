@interface THSimpleCFI
+ (id)fragmentFromPathString:(id)string;
+ (id)p_transcribeWithoutAssertions:(id)assertions;
+ (id)pathStringFromFragment:(id)fragment;
+ (id)simpleCFIWithString:(id)string;
- (BOOL)hasParent;
- (THSimpleCFI)initWithComponents:(id)components;
- (THSimpleCFI)initWithString:(id)string;
- (id)p_parseFromString:(id)string;
- (id)parent;
- (void)dealloc;
@end

@implementation THSimpleCFI

- (THSimpleCFI)initWithString:(id)string
{
  v7.receiver = self;
  v7.super_class = THSimpleCFI;
  v4 = [(THSimpleCFI *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THSimpleCFI *)v4 setValid:0];
    [(THSimpleCFI *)v5 setOriginalCFIString:string];
    [(THSimpleCFI *)v5 setComponents:[NSArray arrayWithArray:[(THSimpleCFI *)v5 p_parseFromString:string]]];
    [(THSimpleCFI *)v5 setCfiString:[(NSArray *)[(THSimpleCFI *)v5 components] componentsJoinedByString:&stru_471858]];
  }

  return v5;
}

- (THSimpleCFI)initWithComponents:(id)components
{
  v7.receiver = self;
  v7.super_class = THSimpleCFI;
  v4 = [(THSimpleCFI *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THSimpleCFI *)v4 setValid:1];
    [(THSimpleCFI *)v5 setComponents:[NSArray arrayWithArray:components]];
    [(THSimpleCFI *)v5 setCfiString:[(NSArray *)[(THSimpleCFI *)v5 components] componentsJoinedByString:&stru_471858]];
    [(THSimpleCFI *)v5 setOriginalCFIString:[(THSimpleCFI *)v5 description]];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THSimpleCFI;
  [(THSimpleCFI *)&v3 dealloc];
}

- (BOOL)hasParent
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  reverseObjectEnumerator = [(NSArray *)[(THSimpleCFI *)self components] reverseObjectEnumerator];
  v3 = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        if ([*(*(&v8 + 1) + 8 * v6) isAcceptableLeaf])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (id)parent
{
  v3 = [(NSArray *)[(THSimpleCFI *)self components] count];
  if (v3 < 2)
  {
    return 0;
  }

  for (i = v3 - 1; ; --i)
  {
    v5 = i - 1;
    if ([-[NSArray objectAtIndex:](-[THSimpleCFI components](self "components")])
    {
      break;
    }

    if (v5 <= 0)
    {
      return 0;
    }
  }

  v7 = [[THSimpleCFI alloc] initWithComponents:[(NSArray *)[(THSimpleCFI *)self components] subarrayWithRange:0, i]];

  return v7;
}

- (id)p_parseFromString:(id)string
{
  v4 = [objc_opt_class() p_transcribeWithoutAssertions:string];
  v5 = +[NSMutableArray array];
  v6 = [NSScanner scannerWithString:v4];
  v7 = [NSCharacterSet characterSetWithCharactersInString:@"/:^~@[], "];
  v8 = [NSCharacterSet characterSetWithCharactersInString:@"!"];
  v15 = +[NSString string];
  if ([(NSScanner *)v6 isAtEnd])
  {
    goto LABEL_26;
  }

  while (1)
  {
    if ([(NSScanner *)v6 scanCharactersFromSet:v8 intoString:&v15]&& [(NSString *)v15 length])
    {
      v9 = +[THSimpleCFIIndirection indirection];
LABEL_16:
      [v5 addObject:v9];
      goto LABEL_17;
    }

    if (![(NSScanner *)v6 scanCharactersFromSet:v7 intoString:&v15]|| [(NSString *)v15 length]!= &dword_0 + 1)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      goto LABEL_26;
    }

    v10 = [(NSString *)v15 characterAtIndex:0];
    v14 = 0;
    v11 = v10;
    if (v11 > 57)
    {
      break;
    }

    if (v11 != 47)
    {
      if (v11 == 44)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    if ([(NSScanner *)v6 scanInteger:&v14]&& (v14 & 0x8000000000000000) == 0)
    {
      v9 = [THSimpleCFIChild childWithIndex:?];
      goto LABEL_16;
    }

LABEL_17:
    if ([(NSScanner *)v6 isAtEnd])
    {
      goto LABEL_26;
    }
  }

  if (v11 == 58)
  {
    if (![(NSScanner *)v6 scanInteger:&v14]|| v14 < 0)
    {
      goto LABEL_17;
    }

    v9 = [THSimpleCFICharacterOffset characterOffsetWithOffset:?];
    goto LABEL_16;
  }

  v12 = v10 - 64;
  if ((v11 - 64) <= 0x3E)
  {
    if (((1 << v12) & 0x4000000040000001) != 0)
    {
LABEL_25:
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      goto LABEL_26;
    }

    if (((1 << v12) & 0x28000000) != 0)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      goto LABEL_26;
    }
  }

LABEL_27:
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
LABEL_26:
  [(THSimpleCFI *)self setValid:[(NSScanner *)v6 isAtEnd]];
  return v5;
}

+ (id)pathStringFromFragment:(id)fragment
{
  if (![fragment hasPrefix:{@"#epubcfi(", "hasSuffix:", @")"}])
  {
    return 0;
  }

  v4 = [fragment length] - 10;

  return [fragment substringWithRange:{9, v4}];
}

+ (id)fragmentFromPathString:(id)string
{
  v3 = objc_msgSend(@"#epubcfi("), "stringByAppendingString:", string;

  return [v3 stringByAppendingString:@""]);
}

+ (id)simpleCFIWithString:(id)string
{
  v3 = [[THSimpleCFI alloc] initWithString:string];

  return v3;
}

+ (id)p_transcribeWithoutAssertions:(id)assertions
{
  v3 = [NSScanner scannerWithString:assertions];
  v4 = +[NSMutableArray array];
  v8 = 0;
  if (![(NSScanner *)v3 isAtEnd:+[NSString] string]
  {
    do
    {
      v8 = +[NSString string];
      v5 = [(NSScanner *)v3 scanUpToString:@"[" intoString:&v8];
      [v4 addObject:v8];
      if (v5 && [(NSScanner *)v3 scanUpToString:@"]" intoString:&v7])
      {
        [(NSScanner *)v3 scanString:@"]" intoString:&v7];
      }
    }

    while (![(NSScanner *)v3 isAtEnd]);
  }

  return [v4 componentsJoinedByString:&stru_471858];
}

@end