@interface PDFCoachMark
- (PDFCoachMark)initWithFrame:(CGRect)frame;
- (double)effectTimeLeft;
- (void)playEffect:(id)effect;
@end

@implementation PDFCoachMark

- (PDFCoachMark)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = PDFCoachMark;
  v7 = [(PDFCoachMark *)&v11 init];
  if (v7)
  {
    date = [MEMORY[0x1E695DF00] date];
    creationTime = v7->creationTime;
    v7->creationTime = date;

    v7->frame.origin.x = x;
    v7->frame.origin.y = y;
    v7->frame.size.width = width;
    v7->frame.size.height = height;
  }

  return v7;
}

- (void)playEffect:(id)effect
{
  v35[3] = *MEMORY[0x1E69E9840];
  effectCopy = effect;
  v5 = [PDFPageLayerEffect createPDFCoachmarkLayerEffectsWithFrame:effectCopy withLayer:self->frame.origin.x, self->frame.origin.y, self->frame.size.width, self->frame.size.height];
  layerEffect = self->layerEffect;
  self->layerEffect = v5;

  if (self->layerEffect)
  {
    v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v7 setBeginTime:CACurrentMediaTime() + 0.8];
    LODWORD(v8) = 1.0;
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    [v7 setFromValue:v9];

    v10 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    [v7 setToValue:v10];

    [v7 setDuration:0.4];
    LODWORD(v11) = 1.0;
    [v7 setRepeatCount:v11];
    [v7 setRemovedOnCompletion:0];
    [v7 setFillMode:*MEMORY[0x1E69797E8]];
    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E6979518];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __27__PDFCoachMark_playEffect___block_invoke;
    v31[3] = &unk_1E81510E8;
    objc_copyWeak(&v33, &location);
    v32 = effectCopy;
    [v12 setCompletionBlock:v31];
    v13 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
    v28 = *(MEMORY[0x1E69792E8] + 80);
    *&v30.m31 = *(MEMORY[0x1E69792E8] + 64);
    v29 = *&v30.m31;
    *&v30.m33 = v28;
    v26 = *(MEMORY[0x1E69792E8] + 112);
    *&v30.m41 = *(MEMORY[0x1E69792E8] + 96);
    v27 = *&v30.m41;
    *&v30.m43 = v26;
    v24 = *(MEMORY[0x1E69792E8] + 16);
    *&v30.m11 = *MEMORY[0x1E69792E8];
    v25 = *&v30.m11;
    *&v30.m13 = v24;
    v22 = *(MEMORY[0x1E69792E8] + 48);
    *&v30.m21 = *(MEMORY[0x1E69792E8] + 32);
    v23 = *&v30.m21;
    *&v30.m23 = v22;
    v14 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v30];
    v35[0] = v14;
    v15 = MEMORY[0x1E696B098];
    CATransform3DMakeScale(&v30, 2.0, 2.0, 1.0);
    v16 = [v15 valueWithCATransform3D:&v30];
    v35[1] = v16;
    *&v30.m31 = v29;
    *&v30.m33 = v28;
    *&v30.m41 = v27;
    *&v30.m43 = v26;
    *&v30.m11 = v25;
    *&v30.m13 = v24;
    *&v30.m21 = v23;
    *&v30.m23 = v22;
    v17 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v30];
    v35[2] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
    [v13 setValues:v18];

    [v13 setDuration:0.2];
    LODWORD(v19) = 1.0;
    [v13 setRepeatCount:v19];
    sublayers = [(PDFPageLayerEffect *)self->layerEffect sublayers];
    firstObject = [sublayers firstObject];

    [firstObject addAnimation:v7 forKey:@"fadeAnimation"];
    [firstObject addAnimation:v13 forKey:@"scaleAnimation"];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }
}

void __27__PDFCoachMark_playEffect___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained[6] UUID];
    [v3 removePageLayerEffectForID:v4];

    WeakRetained = v5;
  }
}

- (double)effectTimeLeft
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->creationTime];
  v5 = 1.2 - v4;

  return v5;
}

@end