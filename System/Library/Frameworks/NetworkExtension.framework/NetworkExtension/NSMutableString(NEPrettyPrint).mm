@interface NSMutableString(NEPrettyPrint)
- (uint64_t)appendToStringAtColumnWithContent:()NEPrettyPrint column:content:appendAsNewLine:addNewLine:;
- (void)appendPrettyBOOL:()NEPrettyPrint withName:andIndent:options:;
- (void)appendPrettyHex:()NEPrettyPrint withName:andIndent:options:;
- (void)appendPrettyInt:()NEPrettyPrint withName:andIndent:options:;
- (void)appendPrettyObject:()NEPrettyPrint withName:andIndent:options:;
@end

@implementation NSMutableString(NEPrettyPrint)

- (uint64_t)appendToStringAtColumnWithContent:()NEPrettyPrint column:content:appendAsNewLine:addNewLine:
{
  v11 = a4;
  if (a4 && a6)
  {
    v12 = a3;
    v13 = a4;
    do
    {
      v14 = *v12++;
      [a1 appendFormat:@"%-*s", v14, ""];
      --v13;
    }

    while (v13);
  }

  result = [a1 appendFormat:@"%-*s", a3[v11], a5];
  if (a7)
  {

    return [a1 appendString:@"\n"];
  }

  return result;
}

- (void)appendPrettyHex:()NEPrettyPrint withName:andIndent:options:
{
  if ((a6 & 0xC) != 4)
  {
    return [result appendFormat:@"\n%*s%@ = %llX", (4 * a5 + 4), " ", a4, a3, v6, v7];
  }

  return result;
}

- (void)appendPrettyInt:()NEPrettyPrint withName:andIndent:options:
{
  if ((a6 & 0xC) != 4)
  {
    return [result appendFormat:@"\n%*s%@ = %lld", (4 * a5 + 4), " ", a4, a3, v6, v7];
  }

  return result;
}

- (void)appendPrettyBOOL:()NEPrettyPrint withName:andIndent:options:
{
  if ((a6 & 0xC) != 4)
  {
    v8 = @"NO";
    if (a3)
    {
      v8 = @"YES";
    }

    return [result appendFormat:@"\n%*s%@ = %@", (4 * a5 + 4), " ", a4, v8, v6, v7];
  }

  return result;
}

- (void)appendPrettyObject:()NEPrettyPrint withName:andIndent:options:
{
  if (a3)
  {
    if ((a6 & 0xC) != 4)
    {
      [(NSMutableString *)a1 appendPrettyObject:a3 withName:a4 andIndent:a5 options:a6 depth:1uLL];
    }
  }
}

@end