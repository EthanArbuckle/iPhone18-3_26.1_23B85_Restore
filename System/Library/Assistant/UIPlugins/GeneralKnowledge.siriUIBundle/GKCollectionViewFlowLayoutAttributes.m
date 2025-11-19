@interface GKCollectionViewFlowLayoutAttributes
+ (id)layoutAttributesForDecorationViewOfKind:(id)a3 withIndexPath:(id)a4;
@end

@implementation GKCollectionViewFlowLayoutAttributes

+ (id)layoutAttributesForDecorationViewOfKind:(id)a3 withIndexPath:(id)a4
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___GKCollectionViewFlowLayoutAttributes;
  v4 = objc_msgSendSuper2(&v7, "layoutAttributesForDecorationViewOfKind:withIndexPath:", a3, a4);
  v5 = +[UIColor siriui_snippetBackgroundColor];
  [v4 setColor:v5];

  return v4;
}

@end