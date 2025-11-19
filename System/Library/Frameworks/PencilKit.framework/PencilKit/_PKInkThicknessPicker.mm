@interface _PKInkThicknessPicker
+ (CGSize)sizeWithButtonCount:(unint64_t)a3 buttonSize:(CGSize)result;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)_sortedWeights;
- (void)buttonTapped:(id)a3;
- (void)initWithToolConfiguration:(void *)a1;
- (void)initWithWeightsToButtonImages:(void *)a3 sortedWeights:;
- (void)layoutSubviews;
- (void)setToolConfiguration:(void *)a1;
- (void)setWeightsToButtonImages:(uint64_t)a1;
@end

@implementation _PKInkThicknessPicker

- (void)initWithToolConfiguration:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = _PKInkThicknessPicker;
    v4 = objc_msgSendSuper2(&v6, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    a1 = v4;
    if (v4)
    {
      [(_PKInkThicknessPicker *)v4 setToolConfiguration:v3];
    }
  }

  return a1;
}

- (void)setToolConfiguration:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    [v3 strokeWeightButtonSize];
    a1[63] = v4;
    a1[64] = v5;
    v6 = [v3 weightButtonTintColorOverride];
    v7 = a1[60];
    a1[60] = v6;

    v8 = [v3 strokeWeightsToButtonImages];

    [(_PKInkThicknessPicker *)a1 setWeightsToButtonImages:v8];
  }
}

- (void)initWithWeightsToButtonImages:(void *)a3 sortedWeights:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = _PKInkThicknessPicker;
    a1 = objc_msgSendSuper2(&v13, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    if (a1)
    {
      +[PKLayoutConstants inkThicknessButtonSize];
      a1[63] = v7;
      a1[64] = v8;
      v9 = a1[60];
      a1[60] = 0;

      v10 = [v6 copy];
      v11 = a1[59];
      a1[59] = v10;

      [(_PKInkThicknessPicker *)a1 setWeightsToButtonImages:v5];
    }
  }

  return a1;
}

- (void)setWeightsToButtonImages:(uint64_t)a1
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1 && ([*(a1 + 488) isEqualToDictionary:v4] & 1) == 0)
  {
    v30 = v4;
    objc_storeStrong((a1 + 488), a2);
    v5 = *(a1 + 456);
    *(a1 + 456) = 0;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v6 = [a1 thicknessButtons];
    v7 = [v6 countByEnumeratingWithState:&v37 objects:v46 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v37 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [v6 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v8);
    }

    v11 = [MEMORY[0x1E695DF70] array];
    v12 = *(a1 + 488);
    v13 = [(_PKInkThicknessPicker *)a1 _sortedWeights];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v13;
    v14 = [v13 countByEnumeratingWithState:&v41 objects:v47 count:16];
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
          v23 = [(_PKInkThicknessButton *)&v21->super.super.super.super.super.isa initWithAssetImage:v20 weight:v22 buttonSize:*(a1 + 504), *(a1 + 512)];
          [(_PKInkThicknessButton *)v23 setImageTintColorOverride:?];
          [v11 addObject:v23];
        }

        v15 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v15);
    }

    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = [v11 countByEnumeratingWithState:&v33 objects:v45 count:16];
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
            objc_enumerationMutation(v11);
          }

          v28 = *(*(&v33 + 1) + 8 * k);
          [v28 addTarget:a1 action:sel_buttonTapped_ forControlEvents:{64, v30}];
          [a1 addSubview:v28];
        }

        v25 = [v11 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v25);
    }

    v29 = [v11 copy];
    [a1 setThicknessButtons:v29];

    [a1 setNeedsLayout];
    v4 = v31;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(_PKInkThicknessPicker *)self thicknessButtons:a3.width];
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

+ (CGSize)sizeWithButtonCount:(unint64_t)a3 buttonSize:(CGSize)result
{
  v4 = result.width * a3;
  if (a3 > 1)
  {
    v4 = v4 + (12 * a3 - 12);
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
    v4 = [(_PKInkThicknessPicker *)self _sortedWeights];
    if ([v4 count])
    {
      v5 = 0;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      v7 = INFINITY;
      do
      {
        v8 = [v4 objectAtIndexedSubscript:v5];
        [v8 doubleValue];
        v10 = vabdd_f64(v9, weight);
        if (v10 < v7)
        {
          v7 = v10;
          v6 = v5;
        }

        ++v5;
      }

      while (v5 < [v4 count]);
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

  v11 = [(_PKInkThicknessPicker *)self thicknessButtons];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = [(_PKInkThicknessPicker *)self thicknessButtons];
      v15 = [v14 objectAtIndexedSubscript:v13];

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
      v21 = [(_PKInkThicknessPicker *)self thicknessButtons];
      v22 = [v21 count];
    }

    while (v13 < v22);
  }
}

- (void)buttonTapped:(id)a3
{
  v4 = a3;
  v5 = [(_PKInkThicknessPicker *)self thicknessButtons];
  v6 = [v5 indexOfObject:v4];

  if (self)
  {
    v7 = [(_PKInkThicknessPicker *)self _sortedWeights];
    v8 = [v7 objectAtIndexedSubscript:v6];
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
  v1 = *(a1 + 472);
  if (!v1)
  {
    v1 = *(a1 + 456);
    if (!v1)
    {
      v3 = [*(a1 + 488) allKeys];
      v4 = [v3 sortedArrayUsingSelector:sel_compare_];
      v5 = *(a1 + 456);
      *(a1 + 456) = v4;

      v1 = *(a1 + 456);
    }
  }

  v6 = v1;

  return v6;
}

@end