@interface UIImage
- (CGRect)bk_frameForImageFittedInFrame:(CGRect)a3;
@end

@implementation UIImage

- (CGRect)bk_frameForImageFittedInFrame:(CGRect)a3
{
  v3 = self;
  [(UIImage *)v3 size];
  CGRectMakeWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIImage *)v3 alignmentRectInsets];
  sub_1002840F0(v5, v7, v9, v11, v12, v13);
  BCNormalizedInsetsForRects();
  CGRectFitRectInRectAbsoluteNoRounding();
  BCRectByApplyingNormalizedInsets();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

@end