@interface GAXEllipseShapeRecognizer
+ (id)smoothPathForFingerPath:(id)a3 probabilityOfMatch:(double *)a4;
@end

@implementation GAXEllipseShapeRecognizer

+ (id)smoothPathForFingerPath:(id)a3 probabilityOfMatch:(double *)a4
{
  v5 = a3;
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 boundsCenter];
  v15 = v14;
  v17 = v16;
  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  Width = CGRectGetWidth(v28);
  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  Height = CGRectGetHeight(v29);
  v20 = 0;
  if (Width > 0.0 && Height > 0.0)
  {
    v21 = *&CGAffineTransformIdentity.c;
    *&v26.a = *&CGAffineTransformIdentity.a;
    *&v26.c = v21;
    *&v26.tx = *&CGAffineTransformIdentity.tx;
    *&v25.a = *&v26.a;
    *&v25.c = v21;
    *&v25.tx = *&v26.tx;
    CGAffineTransformScale(&v26, &v25, Height / Width, 1.0);
    v24 = v26;
    CGAffineTransformTranslate(&v25, &v24, -v15, -v17);
    v26 = v25;
    v22 = [v5 copy];
    v25 = v26;
    [v22 applyTransform:&v25];
    v20 = [GAXCircleShapeRecognizer smoothPathForFingerPath:v22 probabilityOfMatch:a4];
    v24 = v26;
    CGAffineTransformInvert(&v25, &v24);
    [v20 applyTransform:&v25];
  }

  return v20;
}

@end