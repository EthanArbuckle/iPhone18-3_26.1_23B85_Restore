@interface WFImageCropAction
+ (id)imageByCroppingImage:(id)a3 toRect:(CGRect)a4;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFImageCropAction

+ (id)imageByCroppingImage:(id)a3 toRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  memset(&v29, 0, sizeof(v29));
  v9 = [v8 orientation];
  switch(v9)
  {
    case 3:
      CGAffineTransformMakeRotation(&v28, -3.14159265);
      [v8 sizeInPoints];
      v15 = -v14;
      [v8 sizeInPoints];
      v11 = -v16;
      v12 = v15;
      goto LABEL_7;
    case 6:
      CGAffineTransformMakeRotation(&v28, -1.57079633);
      [v8 sizeInPoints];
      v12 = -v13;
      v11 = 0.0;
      goto LABEL_7;
    case 8:
      CGAffineTransformMakeRotation(&v28, 1.57079633);
      [v8 sizeInPoints];
      v11 = -v10;
      v12 = 0.0;
LABEL_7:
      CGAffineTransformTranslate(&v29, &v28, v12, v11);
      goto LABEL_9;
  }

  v17 = *(MEMORY[0x277CBF2C0] + 16);
  *&v29.a = *MEMORY[0x277CBF2C0];
  *&v29.c = v17;
  *&v29.tx = *(MEMORY[0x277CBF2C0] + 32);
LABEL_9:
  [v8 scale];
  v19 = v18;
  [v8 scale];
  v27 = v29;
  CGAffineTransformScale(&v28, &v27, v19, v20);
  v29 = v28;
  v21 = [v8 CGImage];
  v28 = v29;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v32 = CGRectApplyAffineTransform(v31, &v28);
  v22 = CGImageCreateWithImageInRect(v21, v32);
  v23 = MEMORY[0x277D79FC8];
  [v8 scale];
  v25 = [v23 imageWithCGImage:v22 scale:objc_msgSend(v8 orientation:{"orientation"), v24}];
  CGImageRelease(v22);

  return v25;
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__WFImageCropAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C211D0;
  v6[4] = self;
  [v4 generateCollectionByCoercingToItemClass:v5 completionHandler:v6];
}

void __48__WFImageCropAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v8 = [*(a1 + 32) parameterValueForKey:@"WFImageCropPosition" ofClass:objc_opt_class()];
    v9 = [*(a1 + 32) parameterValueForKey:@"WFImageCropWidth" ofClass:objc_opt_class()];
    [v9 floatValue];
    v11 = fmax(v10, 0.0);

    v12 = [*(a1 + 32) parameterValueForKey:@"WFImageCropHeight" ofClass:objc_opt_class()];
    [v12 floatValue];
    v14 = fmax(v13, 0.0);

    v15 = [*(a1 + 32) parameterValueForKey:@"WFImageCropX" ofClass:objc_opt_class()];
    [v15 floatValue];
    v17 = fmax(v16, 0.0);

    v18 = [*(a1 + 32) parameterValueForKey:@"WFImageCropY" ofClass:objc_opt_class()];
    [v18 floatValue];
    v20 = fmax(v19, 0.0);

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __48__WFImageCropAction_runAsynchronouslyWithInput___block_invoke_2;
    v24[3] = &unk_278C1B6E8;
    v27 = v11;
    v28 = v14;
    v29 = v17;
    v30 = v20;
    v21 = *(a1 + 32);
    v25 = v8;
    v26 = v21;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__WFImageCropAction_runAsynchronouslyWithInput___block_invoke_6;
    v23[3] = &unk_278C21E70;
    v23[4] = v21;
    v22 = v8;
    [v6 transformItemsUsingBlock:v24 completionHandler:v23];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v7];
  }
}

void __48__WFImageCropAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__WFImageCropAction_runAsynchronouslyWithInput___block_invoke_3;
  v12[3] = &unk_278C1B6C0;
  v16 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v17 = *(a1 + 48);
  v18 = v8;
  v9 = *(a1 + 40);
  v13 = v7;
  v14 = v9;
  v15 = v5;
  v10 = v5;
  v11 = v6;
  [v10 getFileRepresentation:v12 forType:0];
}

void __48__WFImageCropAction_runAsynchronouslyWithInput___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

void __48__WFImageCropAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WFImageSizeFromFile();
    v18 = v5;
    v19 = v4;
    if ([*(a1 + 32) isEqualToString:@"Center"])
    {
      v6.f64[0] = v19;
      v6.f64[1] = v18;
      v7 = vsubq_f64(v6, *(a1 + 64));
      __asm { FMOV            V1.2D, #0.5 }
    }

    else if ([*(a1 + 32) isEqualToString:@"Top Right"])
    {
      v13 = v19 - *(a1 + 64);
    }

    else if ([*(a1 + 32) isEqualToString:@"Bottom Left"])
    {
      v14 = v18 - *(a1 + 72);
    }

    else if ([*(a1 + 32) isEqualToString:@"Bottom Right"])
    {
      v15.f64[0] = v19;
      v15.f64[1] = v18;
      v16 = vsubq_f64(v15, *(a1 + 64));
    }

    else if ([*(a1 + 32) isEqualToString:@"Custom"])
    {
      v17 = *(a1 + 80);
    }

    v22 = *(a1 + 40);
    v23 = *(a1 + 64);
    v24 = *(a1 + 72);
    v21 = *(a1 + 56);
    v20 = *(a1 + 48);
    WFAsyncTransformedImageFromImage();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __48__WFImageCropAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);
  v14 = a3;
  v15 = a2;
  v16 = [objc_opt_class() imageByCroppingImage:v15 toRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  [v16 drawInContext:v14 inRect:{a4, a5, a6, a7}];
}

void __48__WFImageCropAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v13 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CFC2F8];
    v8 = *(a1 + 32);
    v9 = a3;
    v10 = [v8 attributionSet];
    v11 = [v7 itemWithFile:v13 attributionSet:v10];
    (*(v6 + 16))(v6, v11, v9);
  }

  else
  {
    v12 = *(v6 + 16);
    v10 = a3;
    v12(v6, 0, v10);
  }
}

@end