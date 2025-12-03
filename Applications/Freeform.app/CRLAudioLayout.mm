@interface CRLAudioLayout
- (CGRect)computeAlignmentFrameInRoot:(BOOL)root;
- (CGSize)minimumSize;
- (CRLAudioLayout)initWithInfo:(id)info;
- (_TtC8Freeform12CRLMovieItem)movieInfo;
- (id)computeLayoutGeometry;
@end

@implementation CRLAudioLayout

- (CRLAudioLayout)initWithInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = CRLAudioLayout;
  v3 = [(CRLMediaLayout *)&v7 initWithInfo:info];
  v4 = v3;
  if (v3)
  {
    movieInfo = [(CRLAudioLayout *)v3 movieInfo];
    if (!movieInfo)
    {

      v4 = 0;
    }

    [(CRLCanvasLayout *)v4 invalidateFrame];
  }

  return v4;
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)root
{
  rootCopy = root;
  memset(&v13, 0, sizeof(v13));
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v6 = geometry;
  if (geometry)
  {
    [geometry fullTransform];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  if (rootCopy)
  {
    parent = [(CRLCanvasAbstractLayout *)self parent];

    if (parent)
    {
      parent2 = [(CRLCanvasAbstractLayout *)self parent];
      v9 = parent2;
      if (parent2)
      {
        [parent2 transformInRoot];
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      v10 = v13;
      CGAffineTransformConcat(&v12, &v10, &t2);
      v13 = v12;
    }
  }

  v12 = v13;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 1.0;
  v14.size.height = 1.0;
  return CGRectApplyAffineTransform(v14, &v12);
}

- (CGSize)minimumSize
{
  +[_TtC8Freeform12CRLMovieItem defaultAudioItemSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC8Freeform12CRLMovieItem)movieInfo
{
  v3 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, info);

  return v5;
}

- (id)computeLayoutGeometry
{
  layoutGeometryFromInfo = [(CRLBoardItemLayout *)self layoutGeometryFromInfo];
  v4 = objc_opt_class();
  stroke = [(CRLMediaLayout *)self stroke];
  v6 = sub_100014370(v4, stroke);

  if (v6 && [v6 shouldRender])
  {
    [v6 renderedWidth];
    v8 = [layoutGeometryFromInfo geometryByOutsettingBy:{v7 * 0.5, v7 * 0.5}];

    layoutGeometryFromInfo = v8;
  }

  [layoutGeometryFromInfo size];
  [(CRLMediaLayout *)self setBoundsForStandardKnobs:sub_10011ECB4()];

  return layoutGeometryFromInfo;
}

@end