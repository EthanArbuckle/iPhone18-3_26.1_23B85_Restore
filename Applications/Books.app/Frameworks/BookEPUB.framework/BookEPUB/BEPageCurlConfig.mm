@interface BEPageCurlConfig
+ (id)shared;
- (BEPageCurlDelegate)pageCurlDelegate;
- (id)defaults:(id)defaults colorForStrengthKey:(id)key opacityKey:(id)opacityKey;
- (void)apply:(id)apply forKeyPath:(id)path toFilter:(id)filter;
- (void)applyToFilter:(id)filter;
- (void)setBaseColor:(id)color;
@end

@implementation BEPageCurlConfig

- (void)setBaseColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_baseColor, color);
  if (([colorCopy getRed:&self->_red green:&self->_green blue:&self->_blue alpha:&self->_alpha] & 1) == 0)
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

- (id)defaults:(id)defaults colorForStrengthKey:(id)key opacityKey:(id)opacityKey
{
  opacityKeyCopy = opacityKey;
  defaultsCopy = defaults;
  [defaultsCopy doubleForKey:key];
  v11 = v10;
  [defaultsCopy doubleForKey:opacityKeyCopy];
  v13 = v12;

  v14 = v11 * self->_red;
  v15 = v11 * self->_green;
  v16 = v11 * self->_blue;
  v17 = v13 * self->_alpha;

  return [UIColor colorWithRed:v14 green:v15 blue:v16 alpha:v17];
}

- (void)applyToFilter:(id)filter
{
  backColor0 = self->backColor0;
  filterCopy = filter;
  [(BEPageCurlConfig *)self apply:backColor0 forKeyPath:@"inputBackColor0" toFilter:filterCopy];
  [(BEPageCurlConfig *)self apply:self->backColor1 forKeyPath:@"inputBackColor1" toFilter:filterCopy];
  [(BEPageCurlConfig *)self apply:self->shadowColor forKeyPath:@"inputShadowColor" toFilter:filterCopy];
}

- (void)apply:(id)apply forKeyPath:(id)path toFilter:(id)filter
{
  if (apply)
  {
    applyCopy = apply;
    filterCopy = filter;
    pathCopy = path;
    [filterCopy setValue:objc_msgSend(apply forKeyPath:{"CGColor"), pathCopy}];
  }
}

- (BEPageCurlDelegate)pageCurlDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pageCurlDelegate);

  return WeakRetained;
}

@end