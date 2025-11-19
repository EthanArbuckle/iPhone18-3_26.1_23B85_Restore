@interface MFGetAccountsIntentResponse
- (MFGetAccountsIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation MFGetAccountsIntentResponse

- (int64_t)code
{
  _objc_retain(self);
  v4 = MFGetAccountsIntentResponse.code.getter();
  _objc_release(self);
  return v4;
}

- (void)setCode:(int64_t)a3
{
  _objc_retain(self);
  sub_1000797A0(a3);
  _objc_release(self);
}

- (MFGetAccountsIntentResponse)initWithPropertiesByName:(id)a3
{
  _objc_retain(a3);
  if (a3)
  {
    v4 = sub_10007D7D8();
    _objc_release(a3);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return MFGetAccountsIntentResponse.init(propertiesByName:)(v5);
}

@end