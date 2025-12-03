@interface CRLUSDZLayout
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space;
- (CGRect)alignmentFrame;
- (CGRect)boundsForStandardKnobs;
- (CGRect)boundsInRoot;
- (CGRect)rectInRootForSelectionPath:(id)path;
- (CRLBezierPath)pathForClippingConnectionLines;
- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry;
- (id)computeLayoutGeometry;
- (id)computeWrapPath;
@end

@implementation CRLUSDZLayout

- (CGRect)boundsInRoot
{
  v2 = sub_1008B7E04(self, a2, sub_1008B7A38);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)alignmentFrame
{
  v2 = sub_1008B7E04(self, a2, sub_1008B7C20);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)rectInRootForSelectionPath:(id)path
{
  selfCopy = self;
  pureGeometryInRoot = [(CRLCanvasLayout *)selfCopy pureGeometryInRoot];
  if (pureGeometryInRoot)
  {
    v9 = pureGeometryInRoot;
    [(CRLCanvasLayoutGeometry *)pureGeometryInRoot frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v5 = v11;
    v6 = v13;
    v7 = v15;
    v8 = v17;
  }

  else
  {
    __break(1u);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)boundsForStandardKnobs
{
  v2 = sub_1008B7E04(self, a2, sub_1008B7E68);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)computeLayoutGeometry
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLUSDZLayout();
  v2 = v7.receiver;
  result = [(CRLCanvasLayout *)&v7 computeLayoutGeometry];
  if (result)
  {
    v4 = result;
    v5 = sub_1008BA188();
    if (v5)
    {
      v6 = v5;
      [v4 frame];
      [v6 setNaturalBounds:?];
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry
{
  geometryCopy = geometry;
  selfCopy = self;
  v7 = sub_1008B855C(geometry);

  return v7;
}

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space
{
  v4 = *&a4->c;
  *&retstr->a = *&a4->a;
  *&retstr->c = v4;
  *&retstr->tx = *&a4->tx;
  return self;
}

- (id)computeWrapPath
{
  selfCopy = self;
  v3 = sub_1008B88B4();

  return v3;
}

- (CRLBezierPath)pathForClippingConnectionLines
{
  selfCopy = self;
  result = [(CRLUSDZLayout *)selfCopy computeWrapPath];
  if (result)
  {
    v4 = result;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end