@interface FMTableViewCellImageContainer.MaskingContext
- (BOOL)isEqual:(id)a3;
- (_TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext)init;
- (int64_t)hash;
@end

@implementation FMTableViewCellImageContainer.MaskingContext

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1002E69F8(v8);

  sub_10000D2C0(v8);
  return v6;
}

- (int64_t)hash
{
  Hasher.init()();
  Hasher._combine(_:)(0x4000000000000000uLL);
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_badgeViewFrame);
  v4 = *&self->knockoutSize[OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_badgeViewFrame];
  v5 = *&self->badgeViewFrame[OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_badgeViewFrame];
  v6 = *&self->badgeViewFrame[OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_badgeViewFrame + 8];
  v7 = self;
  sub_1002E6C08(v3, v4, v5, v6);
  sub_1002E6C08(*(&v7->super.isa + OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_maskViewFrame), *&v7->knockoutSize[OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_maskViewFrame], *&v7->badgeViewFrame[OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_maskViewFrame], *&v7->badgeViewFrame[OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_maskViewFrame + 8]);
  v8 = Hasher.finalize()();

  return v8;
}

- (_TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end