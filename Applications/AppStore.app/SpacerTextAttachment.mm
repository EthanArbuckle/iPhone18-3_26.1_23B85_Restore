@interface SpacerTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index;
- (_TtC8AppStoreP33_D572B0067BF63E82624B4FEE97AFF75B20SpacerTextAttachment)initWithCoder:(id)coder;
- (_TtC8AppStoreP33_D572B0067BF63E82624B4FEE97AFF75B20SpacerTextAttachment)initWithData:(id)data ofType:(id)type;
@end

@implementation SpacerTextAttachment

- (_TtC8AppStoreP33_D572B0067BF63E82624B4FEE97AFF75B20SpacerTextAttachment)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index
{
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC8AppStoreP33_D572B0067BF63E82624B4FEE97AFF75B20SpacerTextAttachment_width);
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  result.size.height = v9;
  result.size.width = v6;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (_TtC8AppStoreP33_D572B0067BF63E82624B4FEE97AFF75B20SpacerTextAttachment)initWithData:(id)data ofType:(id)type
{
  if (data)
  {
    dataCopy = data;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100061EE8(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end