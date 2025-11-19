@interface AUHelperFunctions
+ (id)localizedDisplayNameForTCCService:(const __CFString *)a3;
- (_TtC19AppSystemSettingsUI17AUHelperFunctions)init;
@end

@implementation AUHelperFunctions

- (_TtC19AppSystemSettingsUI17AUHelperFunctions)init
{
  result = sub_21BB2324C();
  __break(1u);
  return result;
}

+ (id)localizedDisplayNameForTCCService:(const __CFString *)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_21BB20B5C();
  v6 = v5;

  if (v6)
  {
    v7 = sub_21BB22FAC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end