@interface NSMutableString(AXMExtras)
+ (id)axmIndentationString:()AXMExtras;
- (void)axmAppendIndentation:()AXMExtras;
@end

@implementation NSMutableString(AXMExtras)

- (void)axmAppendIndentation:()AXMExtras
{
  v2 = [MEMORY[0x1E696AD60] axmIndentationString:?];
  [self appendString:v2];
}

+ (id)axmIndentationString:()AXMExtras
{
  string = [MEMORY[0x1E696AD60] string];
  if (a3 >= 1)
  {
    do
    {
      [string appendString:@" "];
      --a3;
    }

    while (a3);
  }

  return string;
}

@end