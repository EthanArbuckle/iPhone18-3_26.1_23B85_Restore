@interface NSSymbolWiggleEffect
+ (double)_normalizeAngle:(double)result;
+ (id)effect;
+ (id)wiggleBackwardEffect;
+ (id)wiggleClockwiseEffect;
+ (id)wiggleCounterClockwiseEffect;
+ (id)wiggleCustomAngleEffect:(double)a3;
+ (id)wiggleDownEffect;
+ (id)wiggleForwardEffect;
+ (id)wiggleLeftEffect;
+ (id)wiggleRightEffect;
+ (id)wiggleUpEffect;
- (NSSymbolWiggleEffect)effectWithByLayer;
- (NSSymbolWiggleEffect)effectWithWholeSymbol;
- (id)_rbOptionsMutable;
- (id)_withStyle:(int64_t)a3 angle:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSSymbolWiggleEffect

- (id)_withStyle:(int64_t)a3 angle:(double)a4
{
  *(self + 3) = a3;
  *(self + 4) = a4;
  return self;
}

+ (id)effect
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSSymbolWiggleEffect;
  v2 = objc_msgSendSuper2(&v4, sel__effectWithType_, 9);
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;

  return v2;
}

+ (id)wiggleClockwiseEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withStyle:1 angle:0.0];

  return v3;
}

+ (id)wiggleCounterClockwiseEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withStyle:2 angle:0.0];

  return v3;
}

+ (id)wiggleLeftEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withStyle:3 angle:180.0];

  return v3;
}

+ (id)wiggleRightEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withStyle:3 angle:0.0];

  return v3;
}

+ (id)wiggleUpEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withStyle:3 angle:-90.0];

  return v3;
}

+ (id)wiggleDownEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withStyle:3 angle:90.0];

  return v3;
}

+ (id)wiggleForwardEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withStyle:4 angle:0.0];

  return v3;
}

+ (id)wiggleBackwardEffect
{
  v2 = [a1 effect];
  v3 = [v2 _withStyle:5 angle:0.0];

  return v3;
}

+ (id)wiggleCustomAngleEffect:(double)a3
{
  v4 = [a1 effect];
  v5 = [v4 _withStyle:3 angle:a3];

  return v5;
}

- (NSSymbolWiggleEffect)effectWithByLayer
{
  v2 = [(NSSymbolWiggleEffect *)self copyWithZone:0];
  v2[2] = 1;

  return v2;
}

- (NSSymbolWiggleEffect)effectWithWholeSymbol
{
  v2 = [(NSSymbolWiggleEffect *)self copyWithZone:0];
  v2[2] = 2;

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = NSSymbolWiggleEffect;
  result = [(NSSymbolEffect *)&v5 copyWithZone:a3];
  *(result + 2) = self->_layerBehavior;
  *(result + 3) = self->_style;
  *(result + 4) = *&self->_angle;
  return result;
}

+ (double)_normalizeAngle:(double)result
{
  if (result <= -180.0 || result > 180.0)
  {
    v3 = fmod(result, 360.0);
    result = fmod(v3 + 360.0, 360.0);
    if (result > 180.0)
    {
      return result + -360.0;
    }
  }

  return result;
}

- (id)_rbOptionsMutable
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [objc_opt_class() _addLayerBehavior:self->_layerBehavior ToOptions:v3];
  style = self->_style;
  switch(style)
  {
    case 1:
      v6 = 19;
      goto LABEL_16;
    case 2:
      v6 = 35;
      goto LABEL_16;
    case 3:
      [objc_opt_class() _normalizeAngle:self->_angle];
      if (v5 == 0.0)
      {
        v6 = 17;
        goto LABEL_16;
      }

      if (v5 == 90.0)
      {
        v6 = 18;
        goto LABEL_16;
      }

      if (v5 == -90.0)
      {
        v6 = 34;
        goto LABEL_16;
      }

      if (v5 == 180.0)
      {
        v6 = 33;
        goto LABEL_16;
      }

      v7 = v5 * 0.0174532925;
      *&v7 = v7;
      v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
      [v3 setObject:v8 forKeyedSubscript:@"wiggleAngle"];

      break;
  }

  v6 = 0;
LABEL_16:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69C7280]];

  return v3;
}

@end