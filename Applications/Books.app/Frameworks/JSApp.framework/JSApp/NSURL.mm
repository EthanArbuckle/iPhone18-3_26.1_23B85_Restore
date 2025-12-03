@interface NSURL
+ (id)jsa_queryStringForParameters:(id)parameters escapedValues:(BOOL)values;
- (BOOL)jsa_isSafeExternalURL;
- (id)jsa_parametrize:(id)jsa_parametrize;
@end

@implementation NSURL

- (BOOL)jsa_isSafeExternalURL
{
  selfCopy = self;
  v3 = NSURL.isSafeExternalURL.getter();

  return v3 & 1;
}

- (id)jsa_parametrize:(id)jsa_parametrize
{
  v4 = sub_8434C();
  selfCopy = self;
  NSURL.parametrize(_:)(v6, v4);
  v8 = v7;

  return v8;
}

+ (id)jsa_queryStringForParameters:(id)parameters escapedValues:(BOOL)values
{
  valuesCopy = values;
  v5 = sub_8434C();
  _sSo5NSURLC5JSAppE11queryString3for13escapedValuesSSSDys11AnyHashableVypG_SbtFZ_0(v5, valuesCopy);

  v6 = sub_8437C();

  return v6;
}

@end