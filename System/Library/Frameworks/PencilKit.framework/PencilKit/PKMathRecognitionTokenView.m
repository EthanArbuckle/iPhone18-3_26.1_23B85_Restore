@interface PKMathRecognitionTokenView
+ (BOOL)shouldAddViewForToken:(id)a3;
+ (PKMathRecognitionTokenView)viewForToken:(void *)a3 item:;
- (void)updateFrameForDrawingTransform:(uint64_t)a1;
@end

@implementation PKMathRecognitionTokenView

+ (BOOL)shouldAddViewForToken:(id)a3
{
  v3 = a3;
  v4 = [v3 errors];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 alternatives];
    v5 = [v6 count] != 0;
  }

  return v5;
}

+ (PKMathRecognitionTokenView)viewForToken:(void *)a3 item:
{
  v5 = a2;
  v6 = a3;
  if ([objc_opt_self() shouldAddViewForToken:v5])
  {
    v7 = [v5 characterRange];
    v9 = [(PKMathRecognitionItem *)v6 _strokeIndexesForCharacterRange:v7, v8];
    if ([v9 count])
    {
      v10 = objc_alloc_init(PKMathRecognitionTokenView);
      [(PKMathRecognitionTokenView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKMathRecognitionTokenView *)v10 setUserInteractionEnabled:0];
      v11 = [MEMORY[0x1E69DC888] clearColor];
      [(PKMathRecognitionTokenView *)v10 setBackgroundColor:v11];

      objc_storeStrong(&v10->_item, a3);
      objc_storeStrong(&v10->_token, a2);
      v10->_strokeBounds.origin.x = [(PKMathRecognitionItem *)v6 _boundsForStrokeIndexes:v9];
      v10->_strokeBounds.origin.y = v12;
      v10->_strokeBounds.size.width = v13;
      v10->_strokeBounds.size.height = v14;
      v10->_timestamp = CACurrentMediaTime();
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateFrameForDrawingTransform:(uint64_t)a1
{
  if (a1)
  {
    v15 = *(a1 + 440);
    v3 = a2[1];
    *&v14.a = *a2;
    *&v14.c = v3;
    *&v14.tx = a2[2];
    v16 = CGRectApplyAffineTransform(v15, &v14);
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    [a1 frame];
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    if (!CGRectEqualToRect(v17, v22))
    {
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      v19 = CGRectInset(v18, -4.0, -4.0);
      [a1 setFrame:{v19.origin.x, v19.origin.y, v19.size.width, v19.size.height}];
      if (!*(a1 + 408))
      {
        v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
        v9 = *(a1 + 408);
        *(a1 + 408) = v8;

        [*(a1 + 408) setLineWidth:2.0];
        [*(a1 + 408) setLineJoin:*MEMORY[0x1E6979E98]];
        [*(a1 + 408) setLineCap:*MEMORY[0x1E6979E78]];
        v10 = [MEMORY[0x1E69DC888] clearColor];
        [*(a1 + 408) setFillColor:{objc_msgSend(v10, "CGColor")}];

        [*(a1 + 408) setLineDashPattern:&unk_1F47C1DD8];
        v11 = [a1 layer];
        [v11 addSublayer:*(a1 + 408)];
      }

      if ([*(a1 + 416) type] == 4)
      {
        [MEMORY[0x1E69DC888] systemBlueColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] systemRedColor];
      }
      v12 = ;
      [*(a1 + 408) setStrokeColor:{objc_msgSend(v12, "CGColor")}];

      [a1 bounds];
      v21 = CGRectInset(v20, 1.0, 1.0);
      v13 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v21.origin.x cornerRadius:{v21.origin.y, v21.size.width, v21.size.height, 4.0}];
      [*(a1 + 408) setPath:{objc_msgSend(v13, "CGPath")}];
    }
  }
}

@end