@interface CTXPCUuidPlaceholder
- (CTXPCUuidPlaceholder)initWithUUID:(id)d;
@end

@implementation CTXPCUuidPlaceholder

- (CTXPCUuidPlaceholder)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = CTXPCUuidPlaceholder;
  v6 = [(CTXPCUuidPlaceholder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
  }

  return v7;
}

@end