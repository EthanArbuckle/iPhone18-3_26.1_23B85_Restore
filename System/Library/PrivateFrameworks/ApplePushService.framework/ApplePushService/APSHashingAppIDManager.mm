@interface APSHashingAppIDManager
- (id)loadAppIdForEnvironmentName:(id)name topic:(id)topic identifier:(id)identifier;
- (id)loadOrCreateAppIdForEnvironmentName:(id)name topic:(id)topic identifier:(id)identifier;
@end

@implementation APSHashingAppIDManager

- (id)loadAppIdForEnvironmentName:(id)name topic:(id)topic identifier:(id)identifier
{
  v8 = 0;
  v5 = sub_1000056C0(identifier);
  [v5 getBytes:&v8 length:2];
  v6 = [NSNumber numberWithUnsignedShort:v8];

  return v6;
}

- (id)loadOrCreateAppIdForEnvironmentName:(id)name topic:(id)topic identifier:(id)identifier
{
  v8 = 0;
  v5 = sub_1000056C0(identifier);
  [v5 getBytes:&v8 length:2];
  v6 = [NSNumber numberWithUnsignedShort:v8];

  return v6;
}

@end