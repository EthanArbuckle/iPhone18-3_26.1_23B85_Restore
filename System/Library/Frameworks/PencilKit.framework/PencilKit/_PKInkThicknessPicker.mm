@interface _PKInkThicknessPicker
+ (CGSize)sizeWithButtonCount:(unint64_t)count buttonSize:(CGSize)result;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_sortedWeights;
- (void)buttonTapped:(id)tapped;
- (void)initWithToolConfiguration:(void *)configuration;
- (void)initWithWeightsToButtonImages:(void *)images sortedWeights:;
- (void)layoutSubviews;
- (void)setToolConfiguration:(void *)configuration;
- (void)setWeightsToButtonImages:(uint64_t)images;
@end

@implementation _PKInkThicknessPicker

- (void)initWithToolConfiguration:(void *)configuration
{
  v3 = a2;
  if (configuration)
  {
    v6.receiver = configuration;
    v6.super_class = _PKInkThicknessPicker;
    v4 = objc_msgSendSuper2(&v6, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    configuration = v4;
    if (v4)
    {
      [(_PKInkThicknessPicker *)v4 setToolConfiguration:v3];
    }
  }

  return configuration;
}

- (void)setToolConfiguration:(void *)configuration
{
  if (configuration)
  {
    v3 = a2;
    [v3 strokeWeightButtonSize];
    configuration[63] = v4;
    configuration[64] = v5;
    weightButtonTintColorOverride = [v3 weightButtonTintColorOverride];
    v7 = configuration[60];
    configuration[60] = weightButtonTintColorOverride;

    strokeWeightsToButtonImages = [v3 strokeWeightsToButtonImages];

    [(_PKInkThicknessPicker *)configuration setWeightsToButtonImages:strokeWeightsToButtonImages];
  }
}

- (void)initWithWeightsToButtonImages:(void *)images sortedWeights:
{
  v5 = a2;
  imagesCopy = images;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = _PKInkThicknessPicker;
    self = objc_msgSendSuper2(&v13, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    if (self)
    {
      +[PKLayoutConstants inkThicknessButtonSize];
      self[63] = v7;
      self[64] = v8;
      v9 = self[60];
      self[60] = 0;

      v10 = [imagesCopy copy];
      v11 = self[59];
      self[59] = v10;

      [(_PKInkThicknessPicker *)self setWeightsToButtonImages:v5];
    }
  }

  return self;
}

- (void)setWeightsToButtonImages:(uint64_t)images
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (images && ([*(images + 488) isEqualToDictionary:v4] & 1) == 0)
  {
    v30 = v4;
    objc_storeStrong((images + 488), a2);
    v5 = *(images + 456);
    *(images + 456) = 0;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    thicknessButtons = [images thicknessButtons];
    v7 = [thicknessButtons countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v38;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(thicknessButtons);
          }

          [*(*(&v37 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [thicknessButtons countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v8);
    }

    array = [MEMORY[0x1E695DF70] array];
    v12 = *(images + 488);
    _sortedWeights = [(_PKInkThicknessPicker *)images _sortedWeights];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = _sortedWeights;
    v14 = [_sortedWeights countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v42;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v41 + 1) + 8 * j);
          v19 = [v12 objectForKeyedSubscript:{v18, v30}];
          v20 = [v19 imageWithRenderingMode:2];

          v21 = [_PKInkThicknessButton alloc];
          [v18 floatValue];
          v23 = [(_PKInkThicknessButton *)&v21->super.super.super.super.super.isa initWithAssetImage:v20 weight:v22 buttonSize:*(images + 504), *(images + 512)];
          [(_PKInkThicknessButton *)v23 setImageTintColorOverride:?];
          [array addObject:v23];
        }

        v15 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v15);
    }

    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = [array countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(array);
          }

          v28 = *(*(&v33 + 1) + 8 * k);
          [v28 addTarget:images action:sel_buttonTapped_ forControlEvents:{64, v30}];
          [images addSubview:v28];
        }

        v25 = [array countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v25);
    }

    v29 = [array copy];
    [images setThicknessButtons:v29];

    [images setNeedsLayout];
    v4 = v31;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(_PKInkThicknessPicker *)self thicknessButtons:fits.width];
  v5 = [v4 count];

  v6 = objc_opt_class();
  if (self)
  {
    width = self->_buttonSize.width;
    height = self->_buttonSize.height;
  }

  else
  {
    height = 0.0;
    width = 0.0;
  }

  [v6 sizeWithButtonCount:v5 buttonSize:{width, height}];
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)sizeWithButtonCount:(unint64_t)count buttonSize:(CGSize)result
{
  v4 = result.width * count;
  if (count > 1)
  {
    v4 = v4 + (12 * count - 12);
  }

  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = _PKInkThicknessPicker;
  [(_PKInkThicknessPicker *)&v23 layoutSubviews];
  if (self)
  {
    weight = self->_weight;
    _sortedWeights = [(_PKInkThicknessPicker *)self _sortedWeights];
    if ([_sortedWeights count])
    {
      v5 = 0;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      v7 = INFINITY;
      do
      {
        v8 = [_sortedWeights objectAtIndexedSubscript:v5];
        [v8 doubleValue];
        v10 = vabdd_f64(v9, weight);
        if (v10 < v7)
        {
          v7 = v10;
          v6 = v5;
        }

        ++v5;
      }

      while (v5 < [_sortedWeights count]);
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v6 = 0;
  }

  thicknessButtons = [(_PKInkThicknessPicker *)self thicknessButtons];
  v12 = [thicknessButtons count];

  if (v12)
  {
    v13 = 0;
    do
    {
      thicknessButtons2 = [(_PKInkThicknessPicker *)self thicknessButtons];
      v15 = [thicknessButtons2 objectAtIndexedSubscript:v13];

      v16 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      if (self)
      {
        if (self->_buttonSize.width <= 40.0)
        {
          v20 = 12.0;
        }

        else
        {
          v20 = 15.0;
        }

        v19 = DKDCenterRectOverRect(0.0, 0.0, self->_buttonSize.width, self->_buttonSize.height, (self->_buttonSize.width + v20) * v13, 0.0, self->_buttonSize.width, self->_buttonSize.height);
      }

      [v15 setFrame:{v19, v18, v17, v16}];
      [v15 setSelected:v6 == v13];

      ++v13;
      thicknessButtons3 = [(_PKInkThicknessPicker *)self thicknessButtons];
      v22 = [thicknessButtons3 count];
    }

    while (v13 < v22);
  }
}

- (void)buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  thicknessButtons = [(_PKInkThicknessPicker *)self thicknessButtons];
  v6 = [thicknessButtons indexOfObject:tappedCopy];

  if (self)
  {
    _sortedWeights = [(_PKInkThicknessPicker *)self _sortedWeights];
    v8 = [_sortedWeights objectAtIndexedSubscript:v6];
    [v8 floatValue];
    v10 = v9;

    self->_weight = v10;
    [(_PKInkThicknessPicker *)self setNeedsLayout];
  }

  [(_PKInkThicknessPicker *)self sendActionsForControlEvents:4096];

  [(_PKInkThicknessPicker *)self setNeedsLayout];
}

- (id)_sortedWeights
{
  v1 = *(self + 472);
  if (!v1)
  {
    v1 = *(self + 456);
    if (!v1)
    {
      allKeys = [*(self + 488) allKeys];
      v4 = [allKeys sortedArrayUsingSelector:sel_compare_];
      v5 = *(self + 456);
      *(self + 456) = v4;

      v1 = *(self + 456);
    }
  }

  v6 = v1;

  return v6;
}

@end