@interface MFGetMailboxIntentResponse
- (MFGetMailboxIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation MFGetMailboxIntentResponse

- (int64_t)code
{
  _objc_retain(self);
  v4 = MFGetMailboxIntentResponse.code.getter();
  _objc_release(self);
  return v4;
}

- (void)setCode:(int64_t)code
{
  _objc_retain(self);
  sub_100078250(code);
  _objc_release(self);
}

- (MFGetMailboxIntentResponse)initWithPropertiesByName:(id)name
{
  _objc_retain(name);
  if (name)
  {
    v4 = sub_10007D7D8();
    _objc_release(name);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return MFGetMailboxIntentResponse.init(propertiesByName:)(v5);
}

@end