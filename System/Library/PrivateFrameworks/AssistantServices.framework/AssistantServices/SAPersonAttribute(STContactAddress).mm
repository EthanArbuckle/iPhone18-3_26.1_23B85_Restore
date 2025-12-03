@interface SAPersonAttribute(STContactAddress)
- (STContactAddress)st_contactAddressValue;
@end

@implementation SAPersonAttribute(STContactAddress)

- (STContactAddress)st_contactAddressValue
{
  data = [self data];
  object = [self object];
  internalGUID = [object internalGUID];

  if ([data length] || objc_msgSend(internalGUID, "length"))
  {
    v5 = [STContactAddress alloc];
    object2 = [self object];
    identifier = [object2 identifier];
    v8 = [(STContactAddress *)v5 initWithType:0 stringValue:data contactIdentifier:identifier contactInternalGUID:internalGUID];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end