@interface SpacerTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(int64_t)a6;
- (_TtC22SubscribePageExtensionP33_6837BF917F8C839CA68F136674C7E50F20SpacerTextAttachment)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtensionP33_6837BF917F8C839CA68F136674C7E50F20SpacerTextAttachment)initWithData:(id)a3 ofType:(id)a4;
@end

@implementation SpacerTextAttachment

- (_TtC22SubscribePageExtensionP33_6837BF917F8C839CA68F136674C7E50F20SpacerTextAttachment)initWithCoder:(id)a3
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(int64_t)a6
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

- (_TtC22SubscribePageExtensionP33_6837BF917F8C839CA68F136674C7E50F20SpacerTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  if (a3)
  {
    v4 = a3;
    v5 = sub_100741274();
    sub_100386870(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end