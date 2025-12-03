@interface CRLCanvasMutableLayoutGeometry
- (void)outsetBy:(CGSize)by;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)transformBy:(CGAffineTransform *)by;
@end

@implementation CRLCanvasMutableLayoutGeometry

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v4[0] = *&transform->a;
  v4[1] = v3;
  v4[2] = *&transform->tx;
  [(CRLCanvasLayoutGeometry *)self i_setTransform:v4];
}

- (void)transformBy:(CGAffineTransform *)by
{
  [(CRLCanvasLayoutGeometry *)self transform];
  v5 = *&by->c;
  *&v6.a = *&by->a;
  *&v6.c = v5;
  *&v6.tx = *&by->tx;
  CGAffineTransformConcat(&v8, &t1, &v6);
  [(CRLCanvasLayoutGeometry *)self i_setTransform:&v8];
}

- (void)outsetBy:(CGSize)by
{
  height = by.height;
  width = by.width;
  [(CRLCanvasLayoutGeometry *)self size];
  v7 = v6;
  v9 = v8;
  v10 = sub_10011F340(width, height, 2.0);
  [(CRLCanvasLayoutGeometry *)self i_setSize:sub_10011F334(v7, v9, v10)];
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, -width, -height);
  [(CRLCanvasLayoutGeometry *)self transform];
  v11 = v14;
  CGAffineTransformConcat(&v13, &v11, &t2);
  [(CRLCanvasLayoutGeometry *)self i_setTransform:&v13];
}

@end