@interface SpacerTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index;
- (_TtC20ProductPageExtensionP33_BBE9CE4405D81F204470D7CB156CD67520SpacerTextAttachment)initWithCoder:(id)coder;
- (_TtC20ProductPageExtensionP33_BBE9CE4405D81F204470D7CB156CD67520SpacerTextAttachment)initWithData:(id)data ofType:(id)type;
@end

@implementation SpacerTextAttachment

- (_TtC20ProductPageExtensionP33_BBE9CE4405D81F204470D7CB156CD67520SpacerTextAttachment)initWithCoder:(id)coder
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index
{
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_BBE9CE4405D81F204470D7CB156CD67520SpacerTextAttachment_width);
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  result.size.height = v9;
  result.size.width = v6;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (_TtC20ProductPageExtensionP33_BBE9CE4405D81F204470D7CB156CD67520SpacerTextAttachment)initWithData:(id)data ofType:(id)type
{
  if (data)
  {
    dataCopy = data;
    v5 = sub_10075DB9C();
    sub_100316100(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end