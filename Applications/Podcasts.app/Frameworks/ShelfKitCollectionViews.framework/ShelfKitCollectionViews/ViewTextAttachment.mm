@interface ViewTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(int64_t)a6;
- (_TtC23ShelfKitCollectionViewsP33_905A70485746288452852FB911153C6C18ViewTextAttachment)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViewsP33_905A70485746288452852FB911153C6C18ViewTextAttachment)initWithData:(id)a3 ofType:(id)a4;
@end

@implementation ViewTextAttachment

- (_TtC23ShelfKitCollectionViewsP33_905A70485746288452852FB911153C6C18ViewTextAttachment)initWithCoder:(id)a3
{
  result = sub_30D648();
  __break(1u);
  return result;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(int64_t)a6
{
  v7 = a3;
  v8 = self;
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

- (_TtC23ShelfKitCollectionViewsP33_905A70485746288452852FB911153C6C18ViewTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  if (a3)
  {
    v4 = a3;
    v5 = sub_301CD8();
    sub_45264(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end