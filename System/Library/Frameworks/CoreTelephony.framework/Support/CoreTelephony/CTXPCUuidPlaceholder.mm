@interface CTXPCUuidPlaceholder
- (CTXPCUuidPlaceholder)initWithUUID:(id)a3;
@end

@implementation CTXPCUuidPlaceholder

- (CTXPCUuidPlaceholder)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CTXPCUuidPlaceholder;
  v6 = [(CTXPCUuidPlaceholder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
  }

  return v7;
}

@end