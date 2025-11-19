@interface APExtension
- (APExtension)initWithExtensionUUID:(id)a3 bundleIdentifier:(id)a4;
- (BOOL)isFirstParty;
@end

@implementation APExtension

- (APExtension)initWithExtensionUUID:(id)a3 bundleIdentifier:(id)a4
{
  v4 = sub_185B67AFC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B67ADC();
  v9 = sub_185B67E4C();
  return sub_185B5B4F0(v8, v9, v10);
}

- (BOOL)isFirstParty
{
  v2 = self;
  v3 = _sSo11APExtensionC13AppProtectionE10firstPartySbvg_0();

  return v3 & 1;
}

@end