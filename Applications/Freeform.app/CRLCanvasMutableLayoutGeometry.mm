@interface CRLCanvasMutableLayoutGeometry
- (void)outsetBy:(CGSize)a3;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)transformBy:(CGAffineTransform *)a3;
@end

@implementation CRLCanvasMutableLayoutGeometry

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v4[0] = *&a3->a;
  v4[1] = v3;
  v4[2] = *&a3->tx;
  [(CRLCanvasLayoutGeometry *)self i_setTransform:v4];
}

- (void)transformBy:(CGAffineTransform *)a3
{
  [(CRLCanvasLayoutGeometry *)self transform];
  v5 = *&a3->c;
  *&v6.a = *&a3->a;
  *&v6.c = v5;
  *&v6.tx = *&a3->tx;
  CGAffineTransformConcat(&v8, &t1, &v6);
  [(CRLCanvasLayoutGeometry *)self i_setTransform:&v8];
}

- (void)outsetBy:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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