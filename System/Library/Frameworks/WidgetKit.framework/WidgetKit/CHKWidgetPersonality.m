@interface CHKWidgetPersonality
- (BOOL)isEqual:(id)a3;
- (CHKWidgetPersonality)init;
- (NSString)description;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHKWidgetPersonality

- (int64_t)hash
{
  sub_192228B40();
  v3 = *(self + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier);
  v4 = *(self + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier + 8);
  v5 = self;
  sub_1922279B0();
  v6 = *(v5 + OBJC_IVAR___CHKWidgetPersonality_kind);
  v7 = *(v5 + OBJC_IVAR___CHKWidgetPersonality_kind + 8);
  sub_1922279B0();
  v8 = sub_192228B20();

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_192166B8C(v8);

  sub_192030F04(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_192166F4C(v4);
}

- (NSString)description
{
  v2 = *(self + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier);
  v3 = *(self + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier + 8);
  v4 = self;
  MEMORY[0x193B0A990](v2, v3);
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  MEMORY[0x193B0A990](*(v4 + OBJC_IVAR___CHKWidgetPersonality_kind), *(v4 + OBJC_IVAR___CHKWidgetPersonality_kind + 8));
  MEMORY[0x193B0A990](93, 0xE100000000000000);

  v5 = sub_192227930();

  return v5;
}

- (CHKWidgetPersonality)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end