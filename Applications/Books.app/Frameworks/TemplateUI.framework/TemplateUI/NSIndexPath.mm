@interface NSIndexPath
+ (id)tui_indexPathForRow:(int64_t)row inSection:(int64_t)section;
- (id)tui_identifierByAppendingString:(id)string;
- (id)tui_identifierByPrependingUUID:(id)d;
- (id)tui_identifierDescribeForDebuggingWithPackage:(id)package;
- (id)tui_identifierToString;
- (void)tui_appendToString:(id)string;
@end

@implementation NSIndexPath

- (id)tui_identifierByAppendingString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v5 = [[_TUIIdentifier alloc] initWithUUID:0 indexPath:self identifier:stringCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tui_identifierByPrependingUUID:(id)d
{
  dCopy = d;
  v5 = [[_TUIIdentifierIndexPathWithUUID alloc] initWithUUID:dCopy indexPath:self];

  return v5;
}

- (void)tui_appendToString:(id)string
{
  stringCopy = string;
  v4 = [(NSIndexPath *)self length];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      [stringCopy appendFormat:@"/%lu", -[NSIndexPath indexAtPosition:](self, "indexAtPosition:", i)];
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

- (id)tui_identifierDescribeForDebuggingWithPackage:(id)package
{
  packageCopy = package;
  v5 = objc_opt_new();
  v6 = [(NSIndexPath *)self length];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [TUIIdentifierMap describeForDebuggingIdentifierIndex:[(NSIndexPath *)self indexAtPosition:i] package:packageCopy];
      [v5 addObject:v8];
    }
  }

  v9 = [v5 copy];

  return v9;
}

+ (id)tui_indexPathForRow:(int64_t)row inSection:(int64_t)section
{
  v6[0] = section;
  v6[1] = row;
  v4 = [objc_opt_class() indexPathWithIndexes:v6 length:2];

  return v4;
}

@end