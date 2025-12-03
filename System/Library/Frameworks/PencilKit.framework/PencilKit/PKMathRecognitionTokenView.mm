@interface PKMathRecognitionTokenView
+ (BOOL)shouldAddViewForToken:(id)token;
+ (PKMathRecognitionTokenView)viewForToken:(void *)token item:;
- (void)updateFrameForDrawingTransform:(uint64_t)transform;
@end

@implementation PKMathRecognitionTokenView

+ (BOOL)shouldAddViewForToken:(id)token
{
  tokenCopy = token;
  errors = [tokenCopy errors];
  if ([errors count])
  {
    v5 = 1;
  }

  else
  {
    alternatives = [tokenCopy alternatives];
    v5 = [alternatives count] != 0;
  }

  return v5;
}

+ (PKMathRecognitionTokenView)viewForToken:(void *)token item:
{
  v5 = a2;
  tokenCopy = token;
  if ([objc_opt_self() shouldAddViewForToken:v5])
  {
    characterRange = [v5 characterRange];
    v9 = [(PKMathRecognitionItem *)tokenCopy _strokeIndexesForCharacterRange:characterRange, v8];
    if ([v9 count])
    {
      v10 = objc_alloc_init(PKMathRecognitionTokenView);
      [(PKMathRecognitionTokenView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKMathRecognitionTokenView *)v10 setUserInteractionEnabled:0];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(PKMathRecognitionTokenView *)v10 setBackgroundColor:clearColor];

      objc_storeStrong(&v10->_item, token);
      objc_storeStrong(&v10->_token, a2);
      v10->_strokeBounds.origin.x = [(PKMathRecognitionItem *)tokenCopy _boundsForStrokeIndexes:v9];
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

- (void)updateFrameForDrawingTransform:(uint64_t)transform
{
  if (transform)
  {
    v15 = *(transform + 440);
    v3 = a2[1];
    *&v14.a = *a2;
    *&v14.c = v3;
    *&v14.tx = a2[2];
    v16 = CGRectApplyAffineTransform(v15, &v14);
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    [transform frame];
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
      [transform setFrame:{v19.origin.x, v19.origin.y, v19.size.width, v19.size.height}];
      if (!*(transform + 408))
      {
        v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
        v9 = *(transform + 408);
        *(transform + 408) = v8;

        [*(transform + 408) setLineWidth:2.0];
        [*(transform + 408) setLineJoin:*MEMORY[0x1E6979E98]];
        [*(transform + 408) setLineCap:*MEMORY[0x1E6979E78]];
        clearColor = [MEMORY[0x1E69DC888] clearColor];
        [*(transform + 408) setFillColor:{objc_msgSend(clearColor, "CGColor")}];

        [*(transform + 408) setLineDashPattern:&unk_1F47C1DD8];
        layer = [transform layer];
        [layer addSublayer:*(transform + 408)];
      }

      if ([*(transform + 416) type] == 4)
      {
        [MEMORY[0x1E69DC888] systemBlueColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] systemRedColor];
      }
      v12 = ;
      [*(transform + 408) setStrokeColor:{objc_msgSend(v12, "CGColor")}];

      [transform bounds];
      v21 = CGRectInset(v20, 1.0, 1.0);
      v13 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v21.origin.x cornerRadius:{v21.origin.y, v21.size.width, v21.size.height, 4.0}];
      [*(transform + 408) setPath:{objc_msgSend(v13, "CGPath")}];
    }
  }
}

@end