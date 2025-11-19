@interface NSIndexPath
+ (id)tui_indexPathForRow:(int64_t)a3 inSection:(int64_t)a4;
- (id)tui_identifierByAppendingString:(id)a3;
- (id)tui_identifierByPrependingUUID:(id)a3;
- (id)tui_identifierDescribeForDebuggingWithPackage:(id)a3;
- (id)tui_identifierToString;
- (void)tui_appendToString:(id)a3;
@end

@implementation NSIndexPath

- (id)tui_identifierByAppendingString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_TUIIdentifier alloc] initWithUUID:0 indexPath:self identifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tui_identifierByPrependingUUID:(id)a3
{
  v4 = a3;
  v5 = [[_TUIIdentifierIndexPathWithUUID alloc] initWithUUID:v4 indexPath:self];

  return v5;
}

- (void)tui_appendToString:(id)a3
{
  v6 = a3;
  v4 = [(NSIndexPath *)self length];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      [v6 appendFormat:@"/%lu", -[NSIndexPath indexAtPosition:](self, "indexAtPosition:", i)];
    }
  }
}

- (id)tui_identifierToString
{
  v3 = [[NSMutableString alloc] initWithCapacity:64];
  [(NSIndexPath *)self tui_appendToString:v3];
  v4 = [v3 copy];

  return v4;
}

- (id)tui_identifierDescribeForDebuggingWithPackage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(NSIndexPath *)self length];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [TUIIdentifierMap describeForDebuggingIdentifierIndex:[(NSIndexPath *)self indexAtPosition:i] package:v4];
      [v5 addObject:v8];
    }
  }

  v9 = [v5 copy];

  return v9;
}

+ (id)tui_indexPathForRow:(int64_t)a3 inSection:(int64_t)a4
{
  v6[0] = a4;
  v6[1] = a3;
  v4 = [objc_opt_class() indexPathWithIndexes:v6 length:2];

  return v4;
}

@end