@interface CNMemojiBackgroundParameters
+ (id)defaultBackgroundColorDescription;
- (CGPoint)endPointForLayerAtIndex:(int64_t)index;
- (CGPoint)startPointForLayerAtIndex:(int64_t)index;
- (CNMemojiBackgroundParameters)initWithColorDescription:(id)description;
- (double)locationForColorAtIndex:(int64_t)index forLayer:(int64_t)layer;
- (id)backgroundLayerColorForIndex:(int64_t)index;
- (id)colorAtIndex:(int64_t)index forLayer:(int64_t)layer;
- (id)colorLayerColorForIndex:(int64_t)index;
- (id)description;
- (id)topGradientLayerColorForIndex:(int64_t)index;
- (int64_t)numberOfColorsForLayer:(int64_t)layer;
@end

@implementation CNMemojiBackgroundParameters

+ (id)defaultBackgroundColorDescription
{
  v2 = [[CNMemojiBackgroundColor alloc] initWithDefaultColorWithAlpha:0.0];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(CNMemojiBackgroundColor *)v2 red];
  v5 = v4;
  [(CNMemojiBackgroundColor *)v2 green];
  v7 = v6;
  [(CNMemojiBackgroundColor *)v2 blue];
  v9 = [v3 initWithFormat:@"%f:%f:%f", v5, v7, v8];

  return v9;
}

- (CNMemojiBackgroundParameters)initWithColorDescription:(id)description
{
  descriptionCopy = description;
  v10.receiver = self;
  v10.super_class = CNMemojiBackgroundParameters;
  v5 = [(CNMemojiBackgroundParameters *)&v10 init];
  if (v5)
  {
    v6 = [[CNMemojiBackgroundColor alloc] initWithColorDescription:descriptionCopy alpha:0.4];
    contentColor = v5->_contentColor;
    v5->_contentColor = v6;

    v8 = v5;
  }

  return v5;
}

- (int64_t)numberOfColorsForLayer:(int64_t)layer
{
  if (layer > 2)
  {
    return 0;
  }

  else
  {
    return qword_19567B1B0[layer];
  }
}

- (id)colorAtIndex:(int64_t)index forLayer:(int64_t)layer
{
  if (layer == 2)
  {
    v4 = [(CNMemojiBackgroundParameters *)self topGradientLayerColorForIndex:index];
  }

  else if (layer == 1)
  {
    v4 = [(CNMemojiBackgroundParameters *)self colorLayerColorForIndex:index];
  }

  else if (layer)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(CNMemojiBackgroundParameters *)self backgroundLayerColorForIndex:index];
  }

  return v4;
}

- (id)backgroundLayerColorForIndex:(int64_t)index
{
  if (index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[CNMemojiBackgroundColor alloc] initWithRed:255.0 green:255.0 blue:255.0 alpha:0.9, v3];
  }

  return v5;
}

- (id)colorLayerColorForIndex:(int64_t)index
{
  if (index)
  {
    contentColor = 0;
  }

  else
  {
    contentColor = [(CNMemojiBackgroundParameters *)self contentColor];
  }

  return contentColor;
}

- (id)topGradientLayerColorForIndex:(int64_t)index
{
  if (!index)
  {
    v3 = 0.3;
    goto LABEL_5;
  }

  if (index == 1)
  {
    v3 = 0.0;
LABEL_5:
    v4 = [[CNMemojiBackgroundColor alloc] initWithRed:255.0 green:255.0 blue:255.0 alpha:v3];
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (double)locationForColorAtIndex:(int64_t)index forLayer:(int64_t)layer
{
  v4 = layer == 2 && index == 1;
  result = 0.0;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

- (CGPoint)startPointForLayerAtIndex:(int64_t)index
{
  v3 = 0.5;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)endPointForLayerAtIndex:(int64_t)index
{
  v3 = 0.5;
  v4 = 1.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  if ([(CNMemojiBackgroundParameters *)self numberOfLayers]>= 1)
  {
    v4 = 0;
    do
    {
      if ([(CNMemojiBackgroundParameters *)self numberOfColorsForLayer:v4]>= 1)
      {
        v5 = 0;
        do
        {
          v6 = [(CNMemojiBackgroundParameters *)self colorAtIndex:v5 forLayer:v4];
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Layer %ld Color %ld", v4, v5];
          v8 = MEMORY[0x1E696AEC0];
          [v6 red];
          v10 = v9;
          [v6 green];
          v12 = v11;
          [v6 blue];
          v14 = v13;
          [v6 alpha];
          v16 = [v8 stringWithFormat:@"%f, %f, %f, %f", v10, v12, v14, v15];
          v17 = [v3 appendObject:v16 withName:v7];

          ++v5;
        }

        while (v5 < [(CNMemojiBackgroundParameters *)self numberOfColorsForLayer:v4]);
      }

      ++v4;
    }

    while (v4 < [(CNMemojiBackgroundParameters *)self numberOfLayers]);
  }

  build = [v3 build];

  return build;
}

@end