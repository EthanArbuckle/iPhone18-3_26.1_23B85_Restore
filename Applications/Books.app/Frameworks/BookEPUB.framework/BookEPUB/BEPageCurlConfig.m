@interface BEPageCurlConfig
+ (id)shared;
- (BEPageCurlDelegate)pageCurlDelegate;
- (id)defaults:(id)a3 colorForStrengthKey:(id)a4 opacityKey:(id)a5;
- (void)apply:(id)a3 forKeyPath:(id)a4 toFilter:(id)a5;
- (void)applyToFilter:(id)a3;
- (void)setBaseColor:(id)a3;
@end

@implementation BEPageCurlConfig

- (void)setBaseColor:(id)a3
{
  v17 = a3;
  objc_storeStrong(&self->_baseColor, a3);
  if (([v17 getRed:&self->_red green:&self->_green blue:&self->_blue alpha:&self->_alpha] & 1) == 0)
  {
    NSLog(@"Cannot use this color.");
    __asm { FMOV            V0.2D, #1.0 }

    *&self->_red = _Q0;
    *&self->_blue = _Q0;
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [(BEPageCurlConfig *)self defaults:v10 colorForStrengthKey:@"kCurlInputBack0Strength" opacityKey:@"kCurlInputBack0Opacity"];
  backColor0 = self->backColor0;
  self->backColor0 = v11;

  v13 = [(BEPageCurlConfig *)self defaults:v10 colorForStrengthKey:@"kCurlInputBack1Strength" opacityKey:@"kCurlInputBack1Opacity"];
  backColor1 = self->backColor1;
  self->backColor1 = v13;

  v15 = [(BEPageCurlConfig *)self defaults:v10 colorForStrengthKey:@"kCurlInputShadowStrength" opacityKey:@"kCurlInputShadowOpacity"];
  shadowColor = self->shadowColor;
  self->shadowColor = v15;
}

+ (id)shared
{
  if (qword_36AAB8 != -1)
  {
    sub_2639C4();
  }

  v3 = qword_36AAB0;

  return v3;
}

- (id)defaults:(id)a3 colorForStrengthKey:(id)a4 opacityKey:(id)a5
{
  v8 = a5;
  v9 = a3;
  [v9 doubleForKey:a4];
  v11 = v10;
  [v9 doubleForKey:v8];
  v13 = v12;

  v14 = v11 * self->_red;
  v15 = v11 * self->_green;
  v16 = v11 * self->_blue;
  v17 = v13 * self->_alpha;

  return [UIColor colorWithRed:v14 green:v15 blue:v16 alpha:v17];
}

- (void)applyToFilter:(id)a3
{
  backColor0 = self->backColor0;
  v5 = a3;
  [(BEPageCurlConfig *)self apply:backColor0 forKeyPath:@"inputBackColor0" toFilter:v5];
  [(BEPageCurlConfig *)self apply:self->backColor1 forKeyPath:@"inputBackColor1" toFilter:v5];
  [(BEPageCurlConfig *)self apply:self->shadowColor forKeyPath:@"inputShadowColor" toFilter:v5];
}

- (void)apply:(id)a3 forKeyPath:(id)a4 toFilter:(id)a5
{
  if (a3)
  {
    v8 = a3;
    v9 = a5;
    v10 = a4;
    [v9 setValue:objc_msgSend(a3 forKeyPath:{"CGColor"), v10}];
  }
}

- (BEPageCurlDelegate)pageCurlDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pageCurlDelegate);

  return WeakRetained;
}

@end