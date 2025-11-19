@interface NSNumber
- (id)bkdsml_nonZeroString;
@end

@implementation NSNumber

- (id)bkdsml_nonZeroString
{
  if ([(NSNumber *)self intValue])
  {
    v3 = [(NSNumber *)self stringValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end