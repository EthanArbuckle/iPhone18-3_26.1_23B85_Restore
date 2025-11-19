@interface NSURL
+ (id)jsa_queryStringForParameters:(id)a3 escapedValues:(BOOL)a4;
- (BOOL)jsa_isSafeExternalURL;
- (id)jsa_parametrize:(id)a3;
@end

@implementation NSURL

- (BOOL)jsa_isSafeExternalURL
{
  v2 = self;
  v3 = NSURL.isSafeExternalURL.getter();

  return v3 & 1;
}

- (id)jsa_parametrize:(id)a3
{
  v4 = sub_8434C();
  v5 = self;
  NSURL.parametrize(_:)(v6, v4);
  v8 = v7;

  return v8;
}

+ (id)jsa_queryStringForParameters:(id)a3 escapedValues:(BOOL)a4
{
  v4 = a4;
  v5 = sub_8434C();
  _sSo5NSURLC5JSAppE11queryString3for13escapedValuesSSSDys11AnyHashableVypG_SbtFZ_0(v5, v4);

  v6 = sub_8437C();

  return v6;
}

@end