@interface SAPersonAttribute(STContactAddress)
- (STContactAddress)st_contactAddressValue;
@end

@implementation SAPersonAttribute(STContactAddress)

- (STContactAddress)st_contactAddressValue
{
  v2 = [a1 data];
  v3 = [a1 object];
  v4 = [v3 internalGUID];

  if ([v2 length] || objc_msgSend(v4, "length"))
  {
    v5 = [STContactAddress alloc];
    v6 = [a1 object];
    v7 = [v6 identifier];
    v8 = [(STContactAddress *)v5 initWithType:0 stringValue:v2 contactIdentifier:v7 contactInternalGUID:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end