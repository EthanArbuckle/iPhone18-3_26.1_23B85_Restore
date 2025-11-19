@interface SystemInfoInternal
+ (BOOL)firstRunSinceReboot;
+ (NSString)bundleIdentifier;
+ (NSString)locale;
+ (NSString)longBuildVersion;
+ (NSString)osIdentifier;
+ (NSString)osName;
+ (NSString)shortBuildVersion;
- (SystemInfoInternal)init;
@end

@implementation SystemInfoInternal

+ (NSString)osIdentifier
{
  v2 = sub_1BAF8EC28();

  return v2;
}

+ (NSString)osName
{
  v2 = sub_1BAF8EC28();

  return v2;
}

+ (NSString)longBuildVersion
{
  v2 = [objc_opt_self() kBuildVersionString];
  v3 = MGGetStringAnswer();

  if (v3)
  {

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (NSString)shortBuildVersion
{
  _s12APFoundation10SystemInfoC17shortBuildVersionSSSgvgZ_0();
  if (v2)
  {
    v3 = sub_1BAF8EC28();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (NSString)bundleIdentifier
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    sub_1BAF8EC38();

    v3 = sub_1BAF8EC28();
  }

  return v3;
}

+ (NSString)locale
{
  v2 = sub_1BAF8E7C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF8E7B8();
  sub_1BAF8E798();
  (*(v3 + 8))(v6, v2);
  v7 = sub_1BAF8EC28();

  return v7;
}

+ (BOOL)firstRunSinceReboot
{
  if (qword_1EDBA3850 != -1)
  {
    swift_once();
  }

  return byte_1EDBA3858;
}

- (SystemInfoInternal)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SystemInfo();
  return [(SystemInfoInternal *)&v3 init];
}

@end