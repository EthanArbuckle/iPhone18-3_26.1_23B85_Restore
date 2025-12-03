@interface GKCollectionViewFlowLayoutAttributes
+ (id)layoutAttributesForDecorationViewOfKind:(id)kind withIndexPath:(id)path;
@end

@implementation GKCollectionViewFlowLayoutAttributes

+ (id)layoutAttributesForDecorationViewOfKind:(id)kind withIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___GKCollectionViewFlowLayoutAttributes;
  v4 = objc_msgSendSuper2(&v7, "layoutAttributesForDecorationViewOfKind:withIndexPath:", kind, path);
  v5 = +[UIColor siriui_snippetBackgroundColor];
  [v4 setColor:v5];

  return v4;
}

@end