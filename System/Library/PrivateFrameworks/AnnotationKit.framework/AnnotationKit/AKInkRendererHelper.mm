@interface AKInkRendererHelper
+ (double)_calculateMaxRenderingSize;
+ (double)maxRenderingSize;
+ (id)_createFullSizeRenderer;
+ (id)_sharedOfflineInkRendererSmallSize;
+ (id)renderDrawing:(id)drawing clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale;
+ (void)purgeSharedRenderer;
@end

@implementation AKInkRendererHelper

+ (id)renderDrawing:(id)drawing clippedToStrokeSpaceRect:(CGRect)rect scale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  drawingCopy = drawing;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_23F445DF8;
  v32 = sub_23F445E08;
  v33 = 0;
  v12 = objc_autoreleasePoolPush();
  v13 = qword_27E39B618;
  if (!qword_27E39B618)
  {
    v14 = dispatch_group_create();
    v15 = qword_27E39B618;
    qword_27E39B618 = v14;

    v13 = qword_27E39B618;
  }

  dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_enter(qword_27E39B618);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_23F445DF8;
  v26 = sub_23F445E08;
  v27 = dispatch_semaphore_create(0);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v16 = CGRectGetWidth(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v17 = CGRectGetHeight(v36);
  if (v16 >= v17)
  {
    v17 = v16;
  }

  if ((ceil(v17) + 2.0) * scale >= 128.0)
  {
    [self _createFullSizeRenderer];
  }

  else
  {
    +[AKInkRendererHelper _sharedOfflineInkRendererSmallSize];
  }
  v18 = ;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23F445E10;
  v21[3] = &unk_278C7BC48;
  v21[4] = &v28;
  v21[5] = &v22;
  [v18 renderDrawing:drawingCopy clippedToStrokeSpaceRect:v21 scale:x completion:{y, width, height, scale}];
  dispatch_semaphore_wait(v23[5], 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(&v22, 8);
  objc_autoreleasePoolPop(v12);
  v19 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v19;
}

+ (void)purgeSharedRenderer
{
  if (qword_27E39B618)
  {
    dispatch_group_notify(qword_27E39B618, MEMORY[0x277D85CD0], &unk_28519E5F0);
  }
}

+ (double)maxRenderingSize
{
  result = *&qword_27E39B620;
  if (*&qword_27E39B620 == 0.0)
  {
    [self _calculateMaxRenderingSize];
    qword_27E39B620 = *&result;
  }

  return result;
}

+ (id)_sharedOfflineInkRendererSmallSize
{
  v2 = qword_27E39B610;
  if (!qword_27E39B610)
  {
    v3 = [objc_alloc(MEMORY[0x277CD9630]) initWithSize:128.0 scale:{128.0, 1.0}];
    v4 = qword_27E39B610;
    qword_27E39B610 = v3;

    v2 = qword_27E39B610;
  }

  return v2;
}

+ (id)_createFullSizeRenderer
{
  [self maxRenderingSize];
  v3 = [objc_alloc(MEMORY[0x277CD9630]) initWithSize:v2 scale:{v2, 1.0}];

  return v3;
}

+ (double)_calculateMaxRenderingSize
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v17.origin.x = v7;
  v17.origin.y = v9;
  v17.size.width = v11;
  v17.size.height = v13;
  v14 = v4 * CGRectGetWidth(v17);
  v18.origin.x = v7;
  v18.origin.y = v9;
  v18.size.width = v11;
  v18.size.height = v13;
  v15 = v4 * CGRectGetHeight(v18);
  if (v14 >= v15)
  {
    v15 = v14;
  }

  result = v15 * 1.5;
  if (result > 2048.0)
  {
    NSLog(&cfstr_AskingForAFram.isa, 0x40A0000000000000, *&result);
    return 2048.0;
  }

  return result;
}

@end