@interface NSRegularExpression(ENAGRegex)
+ (id)enRegexWithPattern:()ENAGRegex;
- (BOOL)enFindInString:()ENAGRegex;
- (id)enCapturedSubstringsOfString:()ENAGRegex;
- (id)enReplaceWithString:()ENAGRegex inString:;
- (uint64_t)enMatchesString:()ENAGRegex;
@end

@implementation NSRegularExpression(ENAGRegex)

- (id)enReplaceWithString:()ENAGRegex inString:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{objc_msgSend(v6, "length"), v7}];

  return v8;
}

- (id)enCapturedSubstringsOfString:()ENAGRegex
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = [MEMORY[0x277CBEB18] array];
  v5 = [v4 length];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__NSRegularExpression_ENAGRegex__enCapturedSubstringsOfString___block_invoke;
  v9[3] = &unk_278C190A0;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [a1 enumerateMatchesInString:v6 options:0 range:0 usingBlock:{v5, v9}];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (uint64_t)enMatchesString:()ENAGRegex
{
  v4 = a3;
  v5 = [v4 length];
  v6 = [a1 firstMatchInString:v4 options:0 range:{0, v5}];

  if (v6)
  {
    if ([v6 range])
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == v5;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)enFindInString:()ENAGRegex
{
  v4 = a3;
  v5 = [a1 firstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

  return v5 != 0;
}

+ (id)enRegexWithPattern:()ENAGRegex
{
  v3 = a3;
  v8 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v3 options:0 error:&v8];
  v5 = v8;
  v6 = v5;
  if (!v4)
  {
    NSLog(&cfstr_Regularexpress.isa, v3, v5);
  }

  return v4;
}

@end