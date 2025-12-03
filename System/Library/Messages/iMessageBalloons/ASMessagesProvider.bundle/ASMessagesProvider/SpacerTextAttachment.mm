@interface SpacerTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index;
- (_TtC18ASMessagesProviderP33_75E758F81AC50D744B9F822CE8FE04E120SpacerTextAttachment)initWithCoder:(id)coder;
- (_TtC18ASMessagesProviderP33_75E758F81AC50D744B9F822CE8FE04E120SpacerTextAttachment)initWithData:(id)data ofType:(id)type;
@end

@implementation SpacerTextAttachment

- (_TtC18ASMessagesProviderP33_75E758F81AC50D744B9F822CE8FE04E120SpacerTextAttachment)initWithCoder:(id)coder
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index
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

- (_TtC18ASMessagesProviderP33_75E758F81AC50D744B9F822CE8FE04E120SpacerTextAttachment)initWithData:(id)data ofType:(id)type
{
  if (data)
  {
    dataCopy = data;
    v5 = sub_7570C0();
    sub_30CC30(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end