@interface NSNumber
- (id)tui_identifierByAppendingIndex:(unint64_t)a3;
- (id)tui_identifierByAppendingString:(id)a3;
- (id)tui_identifierByPrependingUUID:(id)a3;
- (id)tui_identifierDescribeForDebuggingWithPackage:(id)a3;
@end

@implementation NSNumber

- (id)tui_identifierByAppendingIndex:(unint64_t)a3
{
  v6[0] = [(NSNumber *)self unsignedIntegerValue];
  v6[1] = a3;
  v4 = [NSIndexPath indexPathWithIndexes:v6 length:2];

  return v4;
}

- (id)tui_identifierByAppendingString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [_TUIIdentifier alloc];
    v6 = [NSIndexPath indexPathWithIndex:[(NSNumber *)self unsignedIntegerValue]];
    v7 = [(_TUIIdentifier *)v5 initWithUUID:0 indexPath:v6 identifier:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tui_identifierByPrependingUUID:(id)a3
{
  v4 = a3;
  v5 = [[_TUIIdentifierNumberWithUUID alloc] initWithUUID:v4 value:[(NSNumber *)self unsignedIntegerValue]];

  return v5;
}

- (id)tui_identifierDescribeForDebuggingWithPackage:(id)a3
{
  v4 = a3;
  v5 = [TUIIdentifierMap describeForDebuggingIdentifierIndex:[(NSNumber *)self unsignedIntegerValue] package:v4];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

@end