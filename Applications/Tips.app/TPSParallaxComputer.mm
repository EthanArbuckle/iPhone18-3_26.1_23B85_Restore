@interface TPSParallaxComputer
- (CGPoint)contentParallaxOffsetForViewFrame:(CGRect)a3 visibleRect:(CGRect)a4;
@end

@implementation TPSParallaxComputer

- (CGPoint)contentParallaxOffsetForViewFrame:(CGRect)a3 visibleRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v32.origin.x = v11;
    v32.origin.y = v10;
    v32.size.width = v9;
    v32.size.height = v8;
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    if (CGRectIntersectsRect(v32, v41))
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10001AA30;
      v30[3] = &unk_1000A32D8;
      v30[4] = self;
      v13 = objc_retainBlock(v30);
      v14 = [(TPSParallaxComputer *)self axis];
      v15 = v14;
      v29 = height;
      if (v14)
      {
        v37.origin.x = v11;
        v37.origin.y = v10;
        v37.size.width = v9;
        v37.size.height = v8;
        MinX = CGRectGetMinX(v37);
        v38.origin.x = v11;
        v38.origin.y = v10;
        v38.size.width = v9;
        v38.size.height = v8;
        MaxX = CGRectGetMaxX(v38);
        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = width;
        v39.size.height = height;
        v21 = CGRectGetMinX(v39);
        v40.size.height = height;
        v22 = v21;
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v23 = CGRectGetMaxX(v40);
        v16 = (v13[2])(v13, MinX, MaxX, v22, v23);
        if ((v15 & 2) != 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = CGPointZero.x;
        if ((v14 & 2) != 0)
        {
LABEL_5:
          v33.origin.x = v11;
          v33.origin.y = v10;
          v33.size.width = v9;
          v33.size.height = v8;
          MinY = CGRectGetMinY(v33);
          v34.origin.x = v11;
          v34.origin.y = v10;
          v34.size.width = v9;
          v34.size.height = v8;
          MaxY = CGRectGetMaxY(v34);
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = v29;
          v18 = CGRectGetMinY(v35);
          v36.origin.x = x;
          v36.origin.y = y;
          v36.size.width = width;
          v36.size.height = v29;
          v19 = CGRectGetMaxY(v36);
          v20 = (v13[2])(v13, MinY, MaxY, v18, v19);
LABEL_9:

          goto LABEL_10;
        }
      }

      v20 = CGPointZero.y;
      goto LABEL_9;
    }
  }

  v16 = CGPointZero.x;
  v20 = CGPointZero.y;
LABEL_10:
  v24 = v16;
  v25 = v20;
  result.y = v25;
  result.x = v24;
  return result;
}

@end