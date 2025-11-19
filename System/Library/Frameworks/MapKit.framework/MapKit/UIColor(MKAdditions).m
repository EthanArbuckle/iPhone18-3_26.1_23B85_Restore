@interface UIColor(MKAdditions)
+ (id)_mapkit_colorNamed:()MKAdditions compatibleWithTraitCollection:;
+ (id)_mapkit_userLocationAccuracyRingFillColor;
+ (id)_mapkit_userLocationAccuracyRingStrokeColor;
+ (id)_mapkit_userLocationAccuracyRingStrokeColorSatellite;
- (double)_mapkit_getRed:()MKAdditions green:blue:alpha:;
- (id)_mapkit_blendedColorWithFraction:()MKAdditions ofColor:;
- (id)_mapkit_colorResolvedForView:()MKAdditions;
- (uint64_t)_mapkit_isWhite;
@end

@implementation UIColor(MKAdditions)

- (uint64_t)_mapkit_isWhite
{
  v8 = 0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if ([a1 getWhite:&v9 alpha:0])
  {
    v2 = v9;
    if (v9 >= 1.0)
    {
      return 1;
    }
  }

  v4 = [a1 getHue:&v8 saturation:&v7 brightness:&v6 alpha:{0, v2}];
  if (v7 <= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v6 >= 1.0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (id)_mapkit_colorResolvedForView:()MKAdditions
{
  v4 = [a3 traitCollection];
  v5 = [a1 resolvedColorWithTraitCollection:v4];

  return v5;
}

- (id)_mapkit_blendedColorWithFraction:()MKAdditions ofColor:
{
  v6 = a4;
  v7 = v6;
  if (a2 >= 1.0)
  {
    v8 = v6;
    goto LABEL_8;
  }

  if (a2 <= 0.0)
  {
    v8 = a1;
    goto LABEL_8;
  }

  v18 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v11 = 0.0;
  if ([v6 _mapkit_getRed:&v18 green:&v17 blue:&v16 alpha:&v15] && objc_msgSend(a1, "_mapkit_getRed:green:blue:alpha:", &v14, &v13, &v12, &v11))
  {
    v8 = [MEMORY[0x1E69DC888] colorWithRed:(1.0 - a2) * v14 + v18 * a2 green:(1.0 - a2) * v13 + v17 * a2 blue:(1.0 - a2) * v12 + v16 * a2 alpha:(1.0 - a2) * v11 + v15 * a2];
LABEL_8:
    v9 = v8;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (double)_mapkit_getRed:()MKAdditions green:blue:alpha:
{
  if (([a1 getRed:? green:? blue:? alpha:?] & 1) == 0)
  {
    v12 = 0.0;
    if ([a1 getWhite:&v12 alpha:a6])
    {
      if (a3)
      {
        result = v12;
        *a3 = v12;
      }

      if (a4)
      {
        result = v12;
        *a4 = v12;
      }

      if (a5)
      {
        result = v12;
        *a5 = v12;
      }
    }
  }

  return result;
}

+ (id)_mapkit_colorNamed:()MKAdditions compatibleWithTraitCollection:
{
  v6 = MEMORY[0x1E696AAE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 _mapkitBundle];
  v10 = [a1 colorNamed:v8 inBundle:v9 compatibleWithTraitCollection:v7];

  return v10;
}

+ (id)_mapkit_userLocationAccuracyRingFillColor
{
  v0 = _mapkit_userLocationAccuracyRingFillColor__userLocationAccuracyRingFillColor;
  if (!_mapkit_userLocationAccuracyRingFillColor__userLocationAccuracyRingFillColor)
  {
    v1 = [MEMORY[0x1E69DC888] colorWithRed:0.101960784 green:0.454901961 blue:0.988235294 alpha:0.100000001];
    v2 = _mapkit_userLocationAccuracyRingFillColor__userLocationAccuracyRingFillColor;
    _mapkit_userLocationAccuracyRingFillColor__userLocationAccuracyRingFillColor = v1;

    v0 = _mapkit_userLocationAccuracyRingFillColor__userLocationAccuracyRingFillColor;
  }

  return v0;
}

+ (id)_mapkit_userLocationAccuracyRingStrokeColorSatellite
{
  if (_mapkit_userLocationAccuracyRingStrokeColorSatellite_once != -1)
  {
    dispatch_once(&_mapkit_userLocationAccuracyRingStrokeColorSatellite_once, &__block_literal_global_1201);
  }

  v1 = _mapkit_userLocationAccuracyRingStrokeColorSatellite_color;

  return v1;
}

+ (id)_mapkit_userLocationAccuracyRingStrokeColor
{
  v0 = _mapkit_userLocationAccuracyRingStrokeColor__userLocationAccuracyRingStrokeColor;
  if (!_mapkit_userLocationAccuracyRingStrokeColor__userLocationAccuracyRingStrokeColor)
  {
    v1 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.341176471 blue:0.815686275 alpha:0.5];
    v2 = _mapkit_userLocationAccuracyRingStrokeColor__userLocationAccuracyRingStrokeColor;
    _mapkit_userLocationAccuracyRingStrokeColor__userLocationAccuracyRingStrokeColor = v1;

    v0 = _mapkit_userLocationAccuracyRingStrokeColor__userLocationAccuracyRingStrokeColor;
  }

  return v0;
}

@end