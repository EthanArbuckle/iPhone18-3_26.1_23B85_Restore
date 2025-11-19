@interface THImagerWPShapeLayout
- (CGRect)frameForCulling;
@end

@implementation THImagerWPShapeLayout

- (CGRect)frameForCulling
{
  v15.receiver = self;
  v15.super_class = THImagerWPShapeLayout;
  [(THImagerWPShapeLayout *)&v15 frameForCulling];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if (-[THImagerWPShapeLayout containedLayout](self, "containedLayout") && [objc_msgSend(-[THImagerWPShapeLayout info](self "info")])
  {
    [-[THImagerWPShapeLayout containedLayout](self "containedLayout")];
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v17 = CGRectUnion(v16, v19);
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end