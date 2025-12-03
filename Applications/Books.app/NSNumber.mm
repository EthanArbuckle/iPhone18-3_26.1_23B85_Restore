@interface NSNumber
- (id)bkdsml_nonZeroString;
@end

@implementation NSNumber

- (id)bkdsml_nonZeroString
{
  if ([(NSNumber *)self intValue])
  {
    stringValue = [(NSNumber *)self stringValue];
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

@end