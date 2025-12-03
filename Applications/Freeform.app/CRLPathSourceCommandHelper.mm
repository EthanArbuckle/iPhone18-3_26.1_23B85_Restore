@interface CRLPathSourceCommandHelper
+ (double)adjustedCalloutTailPositionXWithValue:(double)value isAnchoredAtRight:(BOOL)right layoutGeometry:(id)geometry;
+ (id)commandForSettingArrowHead:(double)head withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout;
+ (id)commandForSettingArrowHead:(double)head withPathSource:(id)source shapeItem:(id)item;
+ (id)commandForSettingArrowIndent:(double)indent withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout;
+ (id)commandForSettingArrowIndent:(double)indent withPathSource:(id)source shapeItem:(id)item;
+ (id)commandForSettingCalloutCornerRadius:(double)radius withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout;
+ (id)commandForSettingCalloutCornerRadius:(double)radius withPathSource:(id)source shapeItem:(id)item;
+ (id)commandForSettingCalloutTailPositionX:(double)x withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout isAnchoredAtRight:(BOOL)right layoutGeometry:(id)geometry;
+ (id)commandForSettingCalloutTailPositionX:(double)x withPathSource:(id)source shapeItem:(id)item isAnchoredAtRight:(BOOL)right layoutGeometry:(id)geometry;
+ (id)commandForSettingCalloutTailPositionY:(double)y withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout;
+ (id)commandForSettingCalloutTailPositionY:(double)y withPathSource:(id)source shapeItem:(id)item;
+ (id)commandForSettingCalloutTailSize:(double)size withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout;
+ (id)commandForSettingCalloutTailSize:(double)size withPathSource:(id)source shapeItem:(id)item;
+ (id)commandForSettingStarPoints:(double)points withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout;
+ (id)commandForSettingStarPoints:(double)points withPathSource:(id)source shapeItem:(id)item;
+ (id)commandForSettingStarRadius:(double)radius withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout;
+ (id)commandForSettingStarRadius:(double)radius withPathSource:(id)source shapeItem:(id)item;
+ (id)p_calloutPathSourceForCommandWithPathSource:(id)source;
+ (id)p_commandForSettingPathSourcePointValue:(CGPoint)value onPathSource:(id)source imageItem:(id)item maskLayout:(id)layout;
+ (id)p_commandForSettingPathSourcePointValue:(CGPoint)value onPathSource:(id)source shapeItem:(id)item;
+ (id)p_commandToSetPathSourceScalarValue:(double)value withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout;
+ (id)p_commandToSetPathSourceScalarValue:(double)value withPathSource:(id)source shapeItem:(id)item;
@end

@implementation CRLPathSourceCommandHelper

+ (double)adjustedCalloutTailPositionXWithValue:(double)value isAnchoredAtRight:(BOOL)right layoutGeometry:(id)geometry
{
  if (right)
  {
    [geometry frame];
    return v6 - value;
  }

  return value;
}

+ (id)commandForSettingStarPoints:(double)points withPathSource:(id)source shapeItem:(id)item
{
  itemCopy = item;
  sourceCopy = source;
  v10 = objc_opt_class();
  v11 = sub_100014370(v10, sourceCopy);

  [v11 point];
  v12 = [self p_commandForSettingPathSourcePointValue:v11 onPathSource:itemCopy shapeItem:points];

  return v12;
}

+ (id)commandForSettingStarRadius:(double)radius withPathSource:(id)source shapeItem:(id)item
{
  itemCopy = item;
  sourceCopy = source;
  v9 = objc_opt_class();
  v10 = sub_100014370(v9, sourceCopy);

  [v10 point];
  v11 = [self p_commandForSettingPathSourcePointValue:v10 onPathSource:itemCopy shapeItem:?];

  return v11;
}

+ (id)commandForSettingArrowHead:(double)head withPathSource:(id)source shapeItem:(id)item
{
  itemCopy = item;
  sourceCopy = source;
  v10 = objc_opt_class();
  v11 = sub_100014370(v10, sourceCopy);

  [v11 point];
  v12 = [self p_commandForSettingPathSourcePointValue:v11 onPathSource:itemCopy shapeItem:head];

  return v12;
}

+ (id)commandForSettingArrowIndent:(double)indent withPathSource:(id)source shapeItem:(id)item
{
  itemCopy = item;
  sourceCopy = source;
  v9 = objc_opt_class();
  v10 = sub_100014370(v9, sourceCopy);

  [v10 point];
  v11 = [self p_commandForSettingPathSourcePointValue:v10 onPathSource:itemCopy shapeItem:?];

  return v11;
}

+ (id)commandForSettingCalloutCornerRadius:(double)radius withPathSource:(id)source shapeItem:(id)item
{
  itemCopy = item;
  v9 = [self p_calloutPathSourceForCommandWithPathSource:source];
  v10 = v9;
  if (v9)
  {
    [v9 setCornerRadius:radius];
    v11 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:itemCopy pathSource:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)commandForSettingCalloutTailSize:(double)size withPathSource:(id)source shapeItem:(id)item
{
  itemCopy = item;
  v9 = [self p_calloutPathSourceForCommandWithPathSource:source];
  v10 = v9;
  if (v9)
  {
    [v9 setTailSize:size];
    v11 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:itemCopy pathSource:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)commandForSettingCalloutTailPositionX:(double)x withPathSource:(id)source shapeItem:(id)item isAnchoredAtRight:(BOOL)right layoutGeometry:(id)geometry
{
  rightCopy = right;
  itemCopy = item;
  geometryCopy = geometry;
  v14 = [self p_calloutPathSourceForCommandWithPathSource:source];
  v15 = v14;
  if (v14)
  {
    [v14 tailKnobPosition];
    [self adjustedCalloutTailPositionXWithValue:rightCopy isAnchoredAtRight:geometryCopy layoutGeometry:x];
    [v15 setTailKnobPosition:?];
    v16 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:itemCopy pathSource:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)commandForSettingCalloutTailPositionY:(double)y withPathSource:(id)source shapeItem:(id)item
{
  itemCopy = item;
  v8 = [self p_calloutPathSourceForCommandWithPathSource:source];
  v9 = v8;
  if (v8)
  {
    [v8 tailKnobPosition];
    [v9 setTailKnobPosition:?];
    v10 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:itemCopy pathSource:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)commandForSettingStarPoints:(double)points withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout
{
  layoutCopy = layout;
  itemCopy = item;
  sourceCopy = source;
  v13 = objc_opt_class();
  v14 = sub_100014370(v13, sourceCopy);

  [v14 point];
  v15 = [self p_commandForSettingPathSourcePointValue:v14 onPathSource:itemCopy imageItem:layoutCopy maskLayout:points];

  return v15;
}

+ (id)commandForSettingStarRadius:(double)radius withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout
{
  layoutCopy = layout;
  itemCopy = item;
  sourceCopy = source;
  v12 = objc_opt_class();
  v13 = sub_100014370(v12, sourceCopy);

  [v13 point];
  v14 = [self p_commandForSettingPathSourcePointValue:v13 onPathSource:itemCopy imageItem:layoutCopy maskLayout:?];

  return v14;
}

+ (id)commandForSettingArrowHead:(double)head withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout
{
  layoutCopy = layout;
  itemCopy = item;
  sourceCopy = source;
  v13 = objc_opt_class();
  v14 = sub_100014370(v13, sourceCopy);

  [v14 point];
  v15 = [self p_commandForSettingPathSourcePointValue:v14 onPathSource:itemCopy imageItem:layoutCopy maskLayout:head];

  return v15;
}

+ (id)commandForSettingArrowIndent:(double)indent withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout
{
  layoutCopy = layout;
  itemCopy = item;
  sourceCopy = source;
  v12 = objc_opt_class();
  v13 = sub_100014370(v12, sourceCopy);

  [v13 point];
  v14 = [self p_commandForSettingPathSourcePointValue:v13 onPathSource:itemCopy imageItem:layoutCopy maskLayout:?];

  return v14;
}

+ (id)commandForSettingCalloutCornerRadius:(double)radius withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout
{
  itemCopy = item;
  layoutCopy = layout;
  v12 = [self p_calloutPathSourceForCommandWithPathSource:source];
  v13 = v12;
  if (v12)
  {
    [v12 setCornerRadius:radius];
    v14 = [CRLMaskInfo alloc];
    infoGeometry = [layoutCopy infoGeometry];
    v16 = [(CRLMaskInfo *)v14 initWithImageItem:itemCopy geometry:infoGeometry pathSource:v13];

    v17 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:itemCopy maskInfo:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)commandForSettingCalloutTailSize:(double)size withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout
{
  itemCopy = item;
  layoutCopy = layout;
  v12 = [self p_calloutPathSourceForCommandWithPathSource:source];
  v13 = v12;
  if (v12)
  {
    [v12 setTailSize:size];
    v14 = [CRLMaskInfo alloc];
    infoGeometry = [layoutCopy infoGeometry];
    v16 = [(CRLMaskInfo *)v14 initWithImageItem:itemCopy geometry:infoGeometry pathSource:v13];

    v17 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:itemCopy maskInfo:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)commandForSettingCalloutTailPositionX:(double)x withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout isAnchoredAtRight:(BOOL)right layoutGeometry:(id)geometry
{
  rightCopy = right;
  itemCopy = item;
  layoutCopy = layout;
  geometryCopy = geometry;
  v17 = [self p_calloutPathSourceForCommandWithPathSource:source];
  v18 = v17;
  if (v17)
  {
    [v17 tailKnobPosition];
    [self adjustedCalloutTailPositionXWithValue:rightCopy isAnchoredAtRight:geometryCopy layoutGeometry:x];
    [v18 setTailKnobPosition:?];
    v19 = [CRLMaskInfo alloc];
    infoGeometry = [layoutCopy infoGeometry];
    v21 = [(CRLMaskInfo *)v19 initWithImageItem:itemCopy geometry:infoGeometry pathSource:v18];

    v22 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:itemCopy maskInfo:v21];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)commandForSettingCalloutTailPositionY:(double)y withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout
{
  itemCopy = item;
  layoutCopy = layout;
  v11 = [self p_calloutPathSourceForCommandWithPathSource:source];
  v12 = v11;
  if (v11)
  {
    [v11 tailKnobPosition];
    [v12 setTailKnobPosition:?];
    v13 = [CRLMaskInfo alloc];
    infoGeometry = [layoutCopy infoGeometry];
    v15 = [(CRLMaskInfo *)v13 initWithImageItem:itemCopy geometry:infoGeometry pathSource:v12];

    v16 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:itemCopy maskInfo:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)p_commandToSetPathSourceScalarValue:(double)value withPathSource:(id)source shapeItem:(id)item
{
  itemCopy = item;
  sourceCopy = source;
  v9 = objc_opt_class();
  v10 = sub_100014370(v9, sourceCopy);

  if (v10)
  {
    v11 = [v10 copy];
    [v11 setScalar:value];
    v12 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:itemCopy pathSource:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)p_commandForSettingPathSourcePointValue:(CGPoint)value onPathSource:(id)source shapeItem:(id)item
{
  sourceCopy = source;
  if (source)
  {
    y = value.y;
    x = value.x;
    itemCopy = item;
    v9 = [(CRLCommandSetPathSource *)sourceCopy copy];
    [v9 setPoint:{x, y}];
    sourceCopy = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:itemCopy pathSource:v9];
  }

  return sourceCopy;
}

+ (id)p_commandToSetPathSourceScalarValue:(double)value withPathSource:(id)source imageItem:(id)item maskLayout:(id)layout
{
  itemCopy = item;
  layoutCopy = layout;
  sourceCopy = source;
  v12 = objc_opt_class();
  v13 = sub_100014370(v12, sourceCopy);

  if (v13)
  {
    v14 = [v13 copy];
    [v14 setScalar:value];
    maskInfo = [layoutCopy maskInfo];
    v16 = [maskInfo mutableCopy];

    [v16 setPathSource:v14];
    v17 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:itemCopy maskInfo:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)p_commandForSettingPathSourcePointValue:(CGPoint)value onPathSource:(id)source imageItem:(id)item maskLayout:(id)layout
{
  sourceCopy = source;
  if (source)
  {
    y = value.y;
    x = value.x;
    layoutCopy = layout;
    itemCopy = item;
    v12 = [(CRLCommandSetMask *)sourceCopy copy];
    [v12 setPoint:{x, y}];
    v13 = [_TtC8Freeform17CRLCommandSetMask alloc];
    infoGeometry = [layoutCopy infoGeometry];

    sourceCopy = [(CRLCommandSetMask *)v13 initWithImageItem:itemCopy maskGeometry:infoGeometry maskPath:v12];
  }

  return sourceCopy;
}

+ (id)p_calloutPathSourceForCommandWithPathSource:(id)source
{
  sourceCopy = source;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, sourceCopy);

  if (v5)
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end