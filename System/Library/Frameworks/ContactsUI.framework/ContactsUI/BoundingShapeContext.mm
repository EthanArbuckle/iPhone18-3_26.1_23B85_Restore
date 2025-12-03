@interface BoundingShapeContext
- (_TtC10ContactsUI20BoundingShapeContext)init;
- (_TtC10ContactsUI20BoundingShapeContext)initWithContact:(id)contact showName:(BOOL)name;
- (_TtC10ContactsUI20BoundingShapeContext)initWithNameVariations:(id)variations preferredNameStyle:(unint64_t)style horizontalTitleBoundingRect:(CGRect)rect verticalTitleBoundingRect:(CGRect)boundingRect imageAssetID:(id)d personalPoster:(BOOL)poster;
@end

@implementation BoundingShapeContext

- (_TtC10ContactsUI20BoundingShapeContext)initWithNameVariations:(id)variations preferredNameStyle:(unint64_t)style horizontalTitleBoundingRect:(CGRect)rect verticalTitleBoundingRect:(CGRect)boundingRect imageAssetID:(id)d personalPoster:(BOOL)poster
{
  posterCopy = poster;
  height = boundingRect.size.height;
  width = boundingRect.size.width;
  y = boundingRect.origin.y;
  x = boundingRect.origin.x;
  v13 = rect.size.height;
  v14 = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  if (d)
  {
    sub_199DF9F8C();
    variationsCopy = variations;
    v21 = sub_199DF9F5C();
  }

  else
  {
    variationsCopy2 = variations;
    v21 = 0;
  }

  v25.receiver = self;
  v25.super_class = type metadata accessor for BoundingShapeContext();
  height = [(CNPRUISIncomingCallPosterContext *)&v25 initWithNameVariations:variations preferredNameStyle:style horizontalTitleBoundingRect:v21 verticalTitleBoundingRect:posterCopy imageAssetID:v16 personalPoster:v15, v14, v13, x, y, width, height];

  return height;
}

- (_TtC10ContactsUI20BoundingShapeContext)initWithContact:(id)contact showName:(BOOL)name
{
  nameCopy = name;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BoundingShapeContext();
  return [(CNPRUISIncomingCallPosterContext *)&v7 initWithContact:contact showName:nameCopy];
}

- (_TtC10ContactsUI20BoundingShapeContext)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BoundingShapeContext();
  return [(BoundingShapeContext *)&v3 init];
}

@end