@interface BoundingShapeContext
- (_TtC10ContactsUI20BoundingShapeContext)init;
- (_TtC10ContactsUI20BoundingShapeContext)initWithContact:(id)a3 showName:(BOOL)a4;
- (_TtC10ContactsUI20BoundingShapeContext)initWithNameVariations:(id)a3 preferredNameStyle:(unint64_t)a4 horizontalTitleBoundingRect:(CGRect)a5 verticalTitleBoundingRect:(CGRect)a6 imageAssetID:(id)a7 personalPoster:(BOOL)a8;
@end

@implementation BoundingShapeContext

- (_TtC10ContactsUI20BoundingShapeContext)initWithNameVariations:(id)a3 preferredNameStyle:(unint64_t)a4 horizontalTitleBoundingRect:(CGRect)a5 verticalTitleBoundingRect:(CGRect)a6 imageAssetID:(id)a7 personalPoster:(BOOL)a8
{
  v8 = a8;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a5.size.height;
  v14 = a5.size.width;
  v15 = a5.origin.y;
  v16 = a5.origin.x;
  if (a7)
  {
    sub_199DF9F8C();
    v20 = a3;
    v21 = sub_199DF9F5C();
  }

  else
  {
    v22 = a3;
    v21 = 0;
  }

  v25.receiver = self;
  v25.super_class = type metadata accessor for BoundingShapeContext();
  v23 = [(CNPRUISIncomingCallPosterContext *)&v25 initWithNameVariations:a3 preferredNameStyle:a4 horizontalTitleBoundingRect:v21 verticalTitleBoundingRect:v8 imageAssetID:v16 personalPoster:v15, v14, v13, x, y, width, height];

  return v23;
}

- (_TtC10ContactsUI20BoundingShapeContext)initWithContact:(id)a3 showName:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BoundingShapeContext();
  return [(CNPRUISIncomingCallPosterContext *)&v7 initWithContact:a3 showName:v4];
}

- (_TtC10ContactsUI20BoundingShapeContext)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BoundingShapeContext();
  return [(BoundingShapeContext *)&v3 init];
}

@end