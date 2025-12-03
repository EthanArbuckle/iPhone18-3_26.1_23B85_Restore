@interface GAXCircleShapeRecognizer
+ (id)smoothPathForFingerPath:(id)path probabilityOfMatch:(double *)match;
@end

@implementation GAXCircleShapeRecognizer

+ (id)smoothPathForFingerPath:(id)path probabilityOfMatch:(double *)match
{
  pathCopy = path;
  [pathCopy bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [pathCopy boundsCenter];
  v15 = v14;
  v17 = v16;
  v34.origin.x = v7;
  v34.origin.y = v9;
  v34.size.width = v11;
  v34.size.height = v13;
  Width = CGRectGetWidth(v34);
  v35.origin.x = v7;
  v35.origin.y = v9;
  v35.size.width = v11;
  v35.size.height = v13;
  v19 = (Width + CGRectGetHeight(v35)) * 0.5;
  v20 = v19 * 0.5;
  if (v19 * 0.5 <= 0.0)
  {
    v22 = 0;
    v25 = 0.0;
    if (!match)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1B3E0;
    v27[3] = &unk_5D890;
    *&v27[6] = v15;
    *&v27[7] = v17;
    v27[4] = v32;
    v27[5] = &v28;
    *&v27[8] = v19 * 0.5;
    *&v27[9] = v19;
    [pathCopy enumerateElementsUsingBlock:v27];
    v21 = v29[3];
    if (v21 >= 0.2)
    {
      v22 = 0;
    }

    else
    {
      v22 = +[UIBezierPath bezierPath];
      for (i = 0; i != 60; ++i)
      {
        v24 = __sincos_stret(i / 60.0 * 6.28318531);
        [v22 appendElementOfType:1 withSinglePoint:{v15 + v20 * v24.__cosval, v17 + v20 * v24.__sinval}];
      }

      [v22 closePath];
      v21 = v29[3];
    }

    v25 = v21 / -0.2 * 2.0 + 1.0;
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(v32, 8);
    if (!match)
    {
      goto LABEL_8;
    }
  }

  *match = v25;
LABEL_8:

  return v22;
}

@end