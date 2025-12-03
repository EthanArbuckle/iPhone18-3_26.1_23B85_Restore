@interface CRLPencilKitRenderer
+ (void)drawStrokes:(id)strokes inContext:(CGContext *)context overTransparentCanvas:(BOOL)canvas;
@end

@implementation CRLPencilKitRenderer

+ (void)drawStrokes:(id)strokes inContext:(CGContext *)context overTransparentCanvas:(BOOL)canvas
{
  strokesCopy = strokes;
  v8 = objc_autoreleasePoolPush();
  v9 = [PKDrawing alloc];
  v10 = objc_alloc_init(PKDrawing);
  v11 = [v9 initWithStrokes:strokesCopy fromDrawing:v10];

  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  ClipBoundingBox = CGContextGetClipBoundingBox(context);
  v50.origin.x = v13;
  v50.origin.y = v15;
  v50.size.width = v17;
  v50.size.height = v19;
  v51 = CGRectIntersection(v50, ClipBoundingBox);
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  if (!CGRectIsEmpty(v51) && sub_10012082C(x, y, width, height))
  {
    v24 = sub_100510A7C(context);
    v25 = v24;
    if (v24 <= 0.0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137F880();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137F894();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137F91C();
      }

      v26 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v26);
      }

      v27 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPencilKitRenderer drawStrokes:inContext:overTransparentCanvas:]");
      v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPencilKitRenderer.m"];
      [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:347 isFatal:0 description:"CGContext has an invalid associated screen scale."];

      v25 = 1.0;
    }

    if (sub_100510804(context))
    {
      v24 = 3.0;
    }

    CGContextGetCTM(&v49, context);
    v29 = v24 * (sub_100139A00(&v49.a) / v25);
    if (v29 > 0.0)
    {
      v52.origin.x = sub_1001227AC(x, y, width, height, v29);
      v53 = CGRectInset(v52, -1.0 / v29, -1.0 / v29);
      v30 = v53.origin.x;
      v31 = v53.origin.y;
      v32 = v53.size.width;
      v33 = v53.size.height;
      v34 = sub_10011F340(v53.size.width, v53.size.height, v29);
      v36 = v35;
      v37 = sub_100510804(context);
      v38 = sub_100510090(context);
      v39 = sub_1005101CC(context);
      v40 = sub_100510308(context);
      v41 = v40 | v37 | canvas & ~(v38 | v39);
      if ((v40 | v37))
      {
        v42 = v40;
      }

      else
      {
        v42 = canvas & ~(v38 | v39);
      }

      v43 = +[CRLPKImageRendererPool sharedPool];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1004A1C0C;
      v44[3] = &unk_1018674E8;
      *&v44[6] = v30;
      *&v44[7] = v31;
      *&v44[8] = v32;
      *&v44[9] = v33;
      v45 = v42;
      v44[4] = v11;
      v44[5] = context;
      *&v44[10] = v29;
      v46 = v37;
      v47 = v38;
      v48 = v39;
      [v43 provideImageRendererOfMinimumSize:(v41 & 1) == 0 sixChannelBlending:0 transparentBlending:v44 inBlock:{v34, v36}];
    }
  }

  objc_autoreleasePoolPop(v8);
}

@end