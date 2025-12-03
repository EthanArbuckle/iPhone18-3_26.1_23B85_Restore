@interface CarCardLayout
+ (id)defaultLayout;
+ (id)layoutAtEdge:(unint64_t)edge primaryAxis:(int64_t)axis pinnedEdges:(unint64_t)edges primaryAxisFillMode:(unint64_t)mode secondaryAxisFillMode:(unint64_t)fillMode;
+ (id)layoutInCorner:(unint64_t)corner primaryAxis:(int64_t)axis pinnedEdges:(unint64_t)edges primaryAxisFillMode:(unint64_t)mode secondaryAxisFillMode:(unint64_t)fillMode;
- (UIEdgeInsets)margins;
@end

@implementation CarCardLayout

- (UIEdgeInsets)margins
{
  top = self->_margins.top;
  left = self->_margins.left;
  bottom = self->_margins.bottom;
  right = self->_margins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

+ (id)layoutAtEdge:(unint64_t)edge primaryAxis:(int64_t)axis pinnedEdges:(unint64_t)edges primaryAxisFillMode:(unint64_t)mode secondaryAxisFillMode:(unint64_t)fillMode
{
  v12 = objc_alloc_init(CarCardLayout);
  [(CarCardLayout *)v12 setEdgePosition:edge];
  [(CarCardLayout *)v12 setCornerPosition:0];
  [(CarCardLayout *)v12 setPrimaryAxis:axis];
  [(CarCardLayout *)v12 setPinnedEdges:edges];
  [(CarCardLayout *)v12 setPrimaryAxisFillMode:mode];
  if ((mode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    *&v13 = 1000.0;
  }

  else
  {
    *&v13 = 1.0;
  }

  [(CarCardLayout *)v12 setPrimaryAxisFillModePriority:v13];
  [(CarCardLayout *)v12 setSecondaryAxisFillMode:fillMode];
  if ((fillMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    *&v14 = 1000.0;
  }

  else
  {
    *&v14 = 1.0;
  }

  [(CarCardLayout *)v12 setSecondaryAxisFillModePriority:v14];
  [(CarCardLayout *)v12 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
  [(CarCardLayout *)v12 setFlipForRightHandDrive:1];
  v15 = v12;
  primaryAxis = [(CarCardLayout *)v15 primaryAxis];
  cornerPosition = [(CarCardLayout *)v15 cornerPosition];
  if (primaryAxis == 1)
  {
    if (cornerPosition == 4 || [(CarCardLayout *)v15 cornerPosition]== 1 || [(CarCardLayout *)v15 edgePosition]== 2)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    if ([(CarCardLayout *)v15 cornerPosition]== 8 || [(CarCardLayout *)v15 cornerPosition]== 2 || [(CarCardLayout *)v15 edgePosition]== 8)
    {
      v18 |= 2uLL;
    }

    if ([(CarCardLayout *)v15 edgePosition]== 1)
    {
      v18 |= 4uLL;
    }

    v19 = v18 | ([(CarCardLayout *)v15 edgePosition]== 4);
  }

  else
  {
    v19 = cornerPosition == 4 || [(CarCardLayout *)v15 cornerPosition]== 8 || [(CarCardLayout *)v15 edgePosition]== 4;
    if ([(CarCardLayout *)v15 cornerPosition]== 1 || [(CarCardLayout *)v15 cornerPosition]== 2 || [(CarCardLayout *)v15 edgePosition]== 1)
    {
      v19 |= 4uLL;
    }

    if ([(CarCardLayout *)v15 edgePosition]== 2)
    {
      v19 |= 8uLL;
    }

    if ([(CarCardLayout *)v15 edgePosition]== 8)
    {
      v19 |= 2uLL;
    }
  }

  [(CarCardLayout *)v15 setEdgesAffectingMapInsets:v19];
  [(CarCardLayout *)v15 setHorizontallyCenterMapInsets:0];

  return v15;
}

+ (id)layoutInCorner:(unint64_t)corner primaryAxis:(int64_t)axis pinnedEdges:(unint64_t)edges primaryAxisFillMode:(unint64_t)mode secondaryAxisFillMode:(unint64_t)fillMode
{
  v12 = objc_alloc_init(CarCardLayout);
  [(CarCardLayout *)v12 setEdgePosition:0];
  [(CarCardLayout *)v12 setCornerPosition:corner];
  [(CarCardLayout *)v12 setPrimaryAxis:axis];
  [(CarCardLayout *)v12 setPinnedEdges:edges];
  [(CarCardLayout *)v12 setPrimaryAxisFillMode:mode];
  if ((mode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    *&v13 = 1000.0;
  }

  else
  {
    *&v13 = 1.0;
  }

  [(CarCardLayout *)v12 setPrimaryAxisFillModePriority:v13];
  [(CarCardLayout *)v12 setSecondaryAxisFillMode:fillMode];
  if ((fillMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    *&v14 = 1000.0;
  }

  else
  {
    *&v14 = 1.0;
  }

  [(CarCardLayout *)v12 setSecondaryAxisFillModePriority:v14];
  [(CarCardLayout *)v12 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
  [(CarCardLayout *)v12 setFlipForRightHandDrive:1];
  v15 = v12;
  primaryAxis = [(CarCardLayout *)v15 primaryAxis];
  cornerPosition = [(CarCardLayout *)v15 cornerPosition];
  if (primaryAxis == 1)
  {
    if (cornerPosition == 4 || [(CarCardLayout *)v15 cornerPosition]== 1 || [(CarCardLayout *)v15 edgePosition]== 2)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    if ([(CarCardLayout *)v15 cornerPosition]== 8 || [(CarCardLayout *)v15 cornerPosition]== 2 || [(CarCardLayout *)v15 edgePosition]== 8)
    {
      v18 |= 2uLL;
    }

    if ([(CarCardLayout *)v15 edgePosition]== 1)
    {
      v18 |= 4uLL;
    }

    v19 = v18 | ([(CarCardLayout *)v15 edgePosition]== 4);
  }

  else
  {
    v19 = cornerPosition == 4 || [(CarCardLayout *)v15 cornerPosition]== 8 || [(CarCardLayout *)v15 edgePosition]== 4;
    if ([(CarCardLayout *)v15 cornerPosition]== 1 || [(CarCardLayout *)v15 cornerPosition]== 2 || [(CarCardLayout *)v15 edgePosition]== 1)
    {
      v19 |= 4uLL;
    }

    if ([(CarCardLayout *)v15 edgePosition]== 2)
    {
      v19 |= 8uLL;
    }

    if ([(CarCardLayout *)v15 edgePosition]== 8)
    {
      v19 |= 2uLL;
    }
  }

  [(CarCardLayout *)v15 setEdgesAffectingMapInsets:v19];
  [(CarCardLayout *)v15 setHorizontallyCenterMapInsets:0];

  return v15;
}

+ (id)defaultLayout
{
  v2 = objc_alloc_init(CarCardLayout);
  [(CarCardLayout *)v2 setEdgePosition:0];
  [(CarCardLayout *)v2 setCornerPosition:4];
  [(CarCardLayout *)v2 setPrimaryAxis:1];
  [(CarCardLayout *)v2 setPinnedEdges:0];
  [(CarCardLayout *)v2 setPrimaryAxisFillMode:3];
  LODWORD(v3) = 1148846080;
  [(CarCardLayout *)v2 setPrimaryAxisFillModePriority:v3];
  [(CarCardLayout *)v2 setSecondaryAxisFillMode:2];
  LODWORD(v4) = 1148846080;
  [(CarCardLayout *)v2 setSecondaryAxisFillModePriority:v4];
  [(CarCardLayout *)v2 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
  [(CarCardLayout *)v2 setFlipForRightHandDrive:1];
  v5 = v2;
  primaryAxis = [(CarCardLayout *)v5 primaryAxis];
  cornerPosition = [(CarCardLayout *)v5 cornerPosition];
  if (primaryAxis == 1)
  {
    if (cornerPosition == 4 || [(CarCardLayout *)v5 cornerPosition]== 1 || [(CarCardLayout *)v5 edgePosition]== 2)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if ([(CarCardLayout *)v5 cornerPosition]== 8 || [(CarCardLayout *)v5 cornerPosition]== 2 || [(CarCardLayout *)v5 edgePosition]== 8)
    {
      v8 |= 2uLL;
    }

    if ([(CarCardLayout *)v5 edgePosition]== 1)
    {
      v8 |= 4uLL;
    }

    v9 = v8 | ([(CarCardLayout *)v5 edgePosition]== 4);
  }

  else
  {
    v9 = cornerPosition == 4 || [(CarCardLayout *)v5 cornerPosition]== 8 || [(CarCardLayout *)v5 edgePosition]== 4;
    if ([(CarCardLayout *)v5 cornerPosition]== 1 || [(CarCardLayout *)v5 cornerPosition]== 2 || [(CarCardLayout *)v5 edgePosition]== 1)
    {
      v9 |= 4uLL;
    }

    if ([(CarCardLayout *)v5 edgePosition]== 2)
    {
      v9 |= 8uLL;
    }

    if ([(CarCardLayout *)v5 edgePosition]== 8)
    {
      v9 |= 2uLL;
    }
  }

  [(CarCardLayout *)v5 setEdgesAffectingMapInsets:v9];
  [(CarCardLayout *)v5 setHorizontallyCenterMapInsets:0];

  return v5;
}

@end