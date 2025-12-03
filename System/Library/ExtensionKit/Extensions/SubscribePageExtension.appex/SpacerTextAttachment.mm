@interface SpacerTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index;
- (_TtC22SubscribePageExtensionP33_6837BF917F8C839CA68F136674C7E50F20SpacerTextAttachment)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtensionP33_6837BF917F8C839CA68F136674C7E50F20SpacerTextAttachment)initWithData:(id)data ofType:(id)type;
@end

@implementation SpacerTextAttachment

- (_TtC22SubscribePageExtensionP33_6837BF917F8C839CA68F136674C7E50F20SpacerTextAttachment)initWithCoder:(id)coder
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index
{
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_6837BF917F8C839CA68F136674C7E50F20SpacerTextAttachment_width);
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  result.size.height = v9;
  result.size.width = v6;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (_TtC22SubscribePageExtensionP33_6837BF917F8C839CA68F136674C7E50F20SpacerTextAttachment)initWithData:(id)data ofType:(id)type
{
  if (data)
  {
    dataCopy = data;
    v5 = sub_100741274();
    sub_100386870(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end