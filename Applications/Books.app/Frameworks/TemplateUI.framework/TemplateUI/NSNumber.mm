@interface NSNumber
- (id)tui_identifierByAppendingIndex:(unint64_t)index;
- (id)tui_identifierByAppendingString:(id)string;
- (id)tui_identifierByPrependingUUID:(id)d;
- (id)tui_identifierDescribeForDebuggingWithPackage:(id)package;
@end

@implementation NSNumber

- (id)tui_identifierByAppendingIndex:(unint64_t)index
{
  v6[0] = [(NSNumber *)self unsignedIntegerValue];
  v6[1] = index;
  v4 = [NSIndexPath indexPathWithIndexes:v6 length:2];

  return v4;
}

- (id)tui_identifierByAppendingString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v5 = [_TUIIdentifier alloc];
    v6 = [NSIndexPath indexPathWithIndex:[(NSNumber *)self unsignedIntegerValue]];
    v7 = [(_TUIIdentifier *)v5 initWithUUID:0 indexPath:v6 identifier:stringCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tui_identifierByPrependingUUID:(id)d
{
  dCopy = d;
  v5 = [[_TUIIdentifierNumberWithUUID alloc] initWithUUID:dCopy value:[(NSNumber *)self unsignedIntegerValue]];

  return v5;
}

- (id)tui_identifierDescribeForDebuggingWithPackage:(id)package
{
  packageCopy = package;
  v5 = [TUIIdentifierMap describeForDebuggingIdentifierIndex:[(NSNumber *)self unsignedIntegerValue] package:packageCopy];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

@end