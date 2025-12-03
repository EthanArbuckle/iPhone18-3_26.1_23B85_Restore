@interface ViewTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index;
- (_TtC23ShelfKitCollectionViewsP33_905A70485746288452852FB911153C6C18ViewTextAttachment)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViewsP33_905A70485746288452852FB911153C6C18ViewTextAttachment)initWithData:(id)data ofType:(id)type;
@end

@implementation ViewTextAttachment

- (_TtC23ShelfKitCollectionViewsP33_905A70485746288452852FB911153C6C18ViewTextAttachment)initWithCoder:(id)coder
{
  result = sub_30D648();
  __break(1u);
  return result;
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index
{
  containerCopy = container;
  selfCopy = self;
  v9 = sub_1B49A0();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (_TtC23ShelfKitCollectionViewsP33_905A70485746288452852FB911153C6C18ViewTextAttachment)initWithData:(id)data ofType:(id)type
{
  if (data)
  {
    dataCopy = data;
    v5 = sub_301CD8();
    sub_45264(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end