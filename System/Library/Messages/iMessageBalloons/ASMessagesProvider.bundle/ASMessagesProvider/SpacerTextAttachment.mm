@interface SpacerTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(int64_t)a6;
- (_TtC18ASMessagesProviderP33_75E758F81AC50D744B9F822CE8FE04E120SpacerTextAttachment)initWithCoder:(id)a3;
- (_TtC18ASMessagesProviderP33_75E758F81AC50D744B9F822CE8FE04E120SpacerTextAttachment)initWithData:(id)a3 ofType:(id)a4;
@end

@implementation SpacerTextAttachment

- (_TtC18ASMessagesProviderP33_75E758F81AC50D744B9F822CE8FE04E120SpacerTextAttachment)initWithCoder:(id)a3
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(int64_t)a6
{
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_75E758F81AC50D744B9F822CE8FE04E120SpacerTextAttachment_width);
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  result.size.height = v9;
  result.size.width = v6;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (_TtC18ASMessagesProviderP33_75E758F81AC50D744B9F822CE8FE04E120SpacerTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  if (a3)
  {
    v4 = a3;
    v5 = sub_7570C0();
    sub_30CC30(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end