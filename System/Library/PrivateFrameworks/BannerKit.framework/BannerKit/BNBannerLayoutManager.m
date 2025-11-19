@interface BNBannerLayoutManager
+ (CGRect)_dismissedFrameForContentWithPreferredSize:(CGSize)a3 inUseableContainerFrame:(CGRect)a4 containerBounds:(CGRect)a5 layoutInfo:(BNBannerLayoutInfoV2 *)a6 overshoot:(BOOL)a7 scale:(double)a8;
+ (CGRect)_presentedFrameForContentWithFrame:(CGRect)a3 afterContentWithFrame:(CGRect)a4 layoutInfo:(BNBannerLayoutInfoV2 *)a5;
+ (CGRect)_presentedFrameForContentWithPreferredSize:(CGSize)a3 inUseableContainerFrame:(CGRect)a4 containerBounds:(CGRect)a5 layoutInfo:(BNBannerLayoutInfoV2 *)a6 scale:(double)a7;
+ (CGRect)_useableContainerFrameInContainerBounds:(CGRect)a3 inWindow:(id)a4;
+ (CGRect)_useableContainerFrameInContainerBounds:(CGRect)a3 onScreen:(id)a4;
+ (CGRect)_useableContainerFrameInContainerBounds:(CGRect)a3 onScreen:(id)a4 interfaceOrientation:(int64_t)a5;
+ (void)initialize;
- (BNBannerLayoutInfo)layoutInfo;
- (BNBannerLayoutInfoV2)_effectiveLayoutInfo;
- (BNBannerLayoutInfoV2)layoutInfoV2;
- (BNBannerLayoutManager)init;
- (CGRect)dismissedFrameForContentWithPreferredSize:(CGSize)a3 inUseableContainerFrame:(CGRect)a4 containerBounds:(CGRect)a5 overshoot:(BOOL)a6 scale:(double)a7;
- (CGRect)presentedFrameForContentWithFrame:(CGRect)a3 afterContentWithFrame:(CGRect)a4;
- (CGRect)presentedFrameForContentWithPreferredSize:(CGSize)a3 inUseableContainerFrame:(CGRect)a4 containerBounds:(CGRect)a5 scale:(double)a6;
- (CGRect)useableContainerFrameInContainerBounds:(CGRect)a3 inWindow:(id)a4;
- (CGRect)useableContainerFrameInContainerBounds:(CGRect)a3 onScreen:(id)a4;
- (CGRect)useableContainerFrameInContainerBounds:(CGRect)a3 onScreen:(id)a4 interfaceOrientation:(int64_t)a5;
- (void)setLayoutInfo:(BNBannerLayoutInfo *)a3;
- (void)setLayoutInfoV2:(BNBannerLayoutInfoV2 *)a3;
@end

@implementation BNBannerLayoutManager

- (BNBannerLayoutInfoV2)_effectiveLayoutInfo
{
  [(BNBannerLayoutManager *)self layoutInfoV2];
  if (v13)
  {
    return [(BNBannerLayoutManager *)self layoutInfoV2];
  }

  v5 = vmovn_s32(vuzp1q_s32(vceqq_f64(v14, *MEMORY[0x1E69DDCE0]), vceqq_f64(v15, *(MEMORY[0x1E69DDCE0] + 16))));
  v5.i16[0] = vminv_u16(v5);
  if ((v5.i8[0] & 1) == 0)
  {
    return [(BNBannerLayoutManager *)self layoutInfoV2];
  }

  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (v16 != *MEMORY[0x1E695F060] || v17 != v6)
  {
    return [(BNBannerLayoutManager *)self layoutInfoV2];
  }

  v5 = *&v18;
  if (v18 != 0.0)
  {
    return [(BNBannerLayoutManager *)self layoutInfoV2];
  }

  [(BNBannerLayoutManager *)self layoutInfo:v18];
  retstr->presentationEdge = v12;
  [(BNBannerLayoutManager *)self layoutInfo];
  *&retstr->contentInsets.top = v10;
  *&retstr->contentInsets.bottom = v11;
  result = [(BNBannerLayoutManager *)self layoutInfo];
  retstr->maximumContentSize = v9;
  retstr->interBannerSpacing = 8.0;
  return result;
}

- (BNBannerLayoutInfoV2)layoutInfoV2
{
  v3 = *&self[1].contentInsets.left;
  *&retstr->presentationEdge = *&self[1].presentationEdge;
  *&retstr->contentInsets.left = v3;
  v4 = *&self[1].maximumContentSize.height;
  *&retstr->contentInsets.right = *&self[1].contentInsets.right;
  *&retstr->maximumContentSize.height = v4;
  return self;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    BNRegisterBannerKitLogging();
  }
}

- (BNBannerLayoutManager)init
{
  v3.receiver = self;
  v3.super_class = BNBannerLayoutManager;
  result = [(BNBannerLayoutManager *)&v3 init];
  if (result)
  {
    result->_layoutInfoV2.presentationEdge = 1;
    *&result->_layoutInfoV2.contentInsets.top = xmmword_1C430F560;
    *&result->_layoutInfoV2.contentInsets.bottom = xmmword_1C430F560;
    result->_layoutInfoV2.maximumContentSize = xmmword_1C430F570;
    result->_layoutInfoV2.interBannerSpacing = 8.0;
  }

  return result;
}

+ (CGRect)_useableContainerFrameInContainerBounds:(CGRect)a3 onScreen:(id)a4 interfaceOrientation:(int64_t)a5
{
  [a4 _bn_portraitPeripheryInsets];
  UIEdgeInsetsRotate();

  UIRectInset();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (CGRect)_useableContainerFrameInContainerBounds:(CGRect)a3 onScreen:(id)a4
{
  [a4 _peripheryInsets];

  UIRectInset();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)_useableContainerFrameInContainerBounds:(CGRect)a3 inWindow:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [v9 screen];
  v11 = [v9 interfaceOrientation];

  [a1 _useableContainerFrameInContainerBounds:v10 onScreen:v11 interfaceOrientation:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

+ (CGRect)_presentedFrameForContentWithPreferredSize:(CGSize)a3 inUseableContainerFrame:(CGRect)a4 containerBounds:(CGRect)a5 layoutInfo:(BNBannerLayoutInfoV2 *)a6 scale:(double)a7
{
  width = a4.size.width;
  height = a4.size.height;
  x = a4.origin.x;
  y = a4.origin.y;
  v8 = a5.size.height;
  v10 = a5.origin.x;
  v9 = a5.origin.y;
  v11 = a5.size.width;
  CGRectGetWidth(a5);
  CGRectGetHeight(a5);
  UISizeRoundToScale();
  v13 = v12;
  v15 = v14;
  UISizeRoundToScale();
  if (v13 != v17 || v15 != v16)
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    CGRectGetWidth(v33);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    CGRectGetHeight(v34);
    BSRectWithSize();
    UIRectCenteredXInRectScale();
    v10 = v20;
    v11 = v21;
    v8 = v22;
    if (a6->presentationEdge == 4)
    {
      v23 = v19;
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      CGRectGetMaxY(v35);
      v36.origin.x = v10;
      v36.origin.y = v23;
      v36.size.width = v11;
      v36.size.height = v8;
      CGRectGetHeight(v36);
    }

    else
    {
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      CGRectGetMinY(v37);
    }

    UIRoundToScale();
    v9 = v24;
  }

  v25 = v10;
  v26 = v9;
  v27 = v11;
  v28 = v8;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

+ (CGRect)_dismissedFrameForContentWithPreferredSize:(CGSize)a3 inUseableContainerFrame:(CGRect)a4 containerBounds:(CGRect)a5 layoutInfo:(BNBannerLayoutInfoV2 *)a6 overshoot:(BOOL)a7 scale:(double)a8
{
  v8 = a7;
  v10 = *&a6->contentInsets.left;
  v29[0] = *&a6->presentationEdge;
  v29[1] = v10;
  v11 = *&a6->maximumContentSize.height;
  v29[2] = *&a6->contentInsets.right;
  v29[3] = v11;
  [a1 _presentedFrameForContentWithPreferredSize:v29 inUseableContainerFrame:a3.width containerBounds:a3.height layoutInfo:a4.origin.x scale:{a4.origin.y, a4.size.width, a4.size.height, *&a5.origin.x, *&a5.origin.y, *&a5.size.width, *&a5.size.height, *&a8}];
  v16 = v12;
  v17 = v14;
  v18 = v15;
  if ((v14 != a5.size.width || v15 != a5.size.height) && (a6->presentationEdge & 5) != 0)
  {
    Height = CGRectGetHeight(*&v12);
    v20 = Height * 0.5;
    if (!v8)
    {
      v20 = 0.0;
    }

    v21 = Height + v20;
    x = a5.origin.x;
    y = a5.origin.y;
    width = a5.size.width;
    v25 = a5.size.height;
    if (a6->presentationEdge == 4)
    {
      v13 = v21 + CGRectGetMaxY(*&x);
    }

    else
    {
      v13 = CGRectGetMinY(*&x) - v21;
    }
  }

  v26 = v16;
  v27 = v17;
  v28 = v18;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v13;
  result.origin.x = v26;
  return result;
}

+ (CGRect)_presentedFrameForContentWithFrame:(CGRect)a3 afterContentWithFrame:(CGRect)a4 layoutInfo:(BNBannerLayoutInfoV2 *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.x;
  presentationEdge = a5->presentationEdge;
  if ((a5->presentationEdge & 5) == 0)
  {
    [(BNBannerLayoutManager *)a2 _presentedFrameForContentWithFrame:a1 afterContentWithFrame:a5 layoutInfo:&v22];
    presentationEdge = v22;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  if (presentationEdge == 4)
  {
    v18 = CGRectGetMinY(*&v14) - a5->interBannerSpacing;
  }

  else
  {
    v18 = CGRectGetMaxY(*&v14) + a5->interBannerSpacing;
  }

  v19 = v12;
  v20 = v11;
  v21 = v10;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v18;
  result.origin.x = v19;
  return result;
}

- (CGRect)useableContainerFrameInContainerBounds:(CGRect)a3 onScreen:(id)a4 interfaceOrientation:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  [objc_opt_class() _useableContainerFrameInContainerBounds:v10 onScreen:a5 interfaceOrientation:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)useableContainerFrameInContainerBounds:(CGRect)a3 onScreen:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  [objc_opt_class() _useableContainerFrameInContainerBounds:v8 onScreen:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)useableContainerFrameInContainerBounds:(CGRect)a3 inWindow:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  [objc_opt_class() _useableContainerFrameInContainerBounds:v8 inWindow:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)dismissedFrameForContentWithPreferredSize:(CGSize)a3 inUseableContainerFrame:(CGRect)a4 containerBounds:(CGRect)a5 overshoot:(BOOL)a6 scale:(double)a7
{
  v7 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3.height;
  v13 = a3.width;
  v15 = objc_opt_class();
  [(BNBannerLayoutManager *)self _effectiveLayoutInfo];
  [v15 _dismissedFrameForContentWithPreferredSize:v20 inUseableContainerFrame:v7 containerBounds:v13 layoutInfo:v12 overshoot:x scale:{y, width, height, *&a5.origin.x, *&a5.origin.y, *&a5.size.width, *&a5.size.height, *&a7}];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)presentedFrameForContentWithPreferredSize:(CGSize)a3 inUseableContainerFrame:(CGRect)a4 containerBounds:(CGRect)a5 scale:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.height;
  v11 = a3.width;
  v13 = objc_opt_class();
  [(BNBannerLayoutManager *)self _effectiveLayoutInfo];
  [v13 _presentedFrameForContentWithPreferredSize:v18 inUseableContainerFrame:v11 containerBounds:v10 layoutInfo:x scale:{y, width, height, *&a5.origin.x, *&a5.origin.y, *&a5.size.width, *&a5.size.height, *&a6}];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)presentedFrameForContentWithFrame:(CGRect)a3 afterContentWithFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v13 = objc_opt_class();
  [(BNBannerLayoutManager *)self _effectiveLayoutInfo];
  [v13 _presentedFrameForContentWithFrame:&v18 afterContentWithFrame:v11 layoutInfo:{v10, v9, v8, x, y, width, height}];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)setLayoutInfo:(BNBannerLayoutInfo *)a3
{
  v3 = MEMORY[0x1E69DDCE0];
  self->_layoutInfoV2.presentationEdge = 0;
  v4 = v3[1];
  *&self->_layoutInfoV2.contentInsets.top = *v3;
  v5 = MEMORY[0x1E695F060];
  *&self->_layoutInfoV2.contentInsets.bottom = v4;
  self->_layoutInfoV2.maximumContentSize = *v5;
  self->_layoutInfoV2.interBannerSpacing = 0.0;
  v7 = *&a3->contentInsets.left;
  v6 = *&a3->contentInsets.right;
  height = a3->maximumContentSize.height;
  *&self->_layoutInfo.presentationEdge = *&a3->presentationEdge;
  self->_layoutInfo.maximumContentSize.height = height;
  *&self->_layoutInfo.contentInsets.right = v6;
  *&self->_layoutInfo.contentInsets.left = v7;
}

- (BNBannerLayoutInfo)layoutInfo
{
  v3 = *&self->contentInsets.bottom;
  *&retstr->presentationEdge = *&self->contentInsets.top;
  *&retstr->contentInsets.left = v3;
  *&retstr->contentInsets.right = self->maximumContentSize;
  *&retstr->maximumContentSize.height = self[1].presentationEdge;
  return self;
}

- (void)setLayoutInfoV2:(BNBannerLayoutInfoV2 *)a3
{
  v3 = *&a3->presentationEdge;
  v4 = *&a3->contentInsets.left;
  v5 = *&a3->maximumContentSize.height;
  *&self->_layoutInfoV2.contentInsets.right = *&a3->contentInsets.right;
  *&self->_layoutInfoV2.maximumContentSize.height = v5;
  *&self->_layoutInfoV2.presentationEdge = v3;
  *&self->_layoutInfoV2.contentInsets.left = v4;
}

+ (void)_presentedFrameForContentWithFrame:(void *)a3 afterContentWithFrame:(void *)a4 layoutInfo:.cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"BNBannerLayoutManager.m" lineNumber:110 description:@"Only 'UIRectEdgeTop' and 'UIRectEdgeBottom' are currently supported"];

  *a4 = *a3;
}

@end