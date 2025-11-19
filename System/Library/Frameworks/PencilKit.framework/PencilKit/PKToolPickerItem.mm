@interface PKToolPickerItem
- (BOOL)isEqual:(id)a3;
- (NSDictionary)_dictionaryRepresentation;
- (PKToolPickerItem)initWithTool:(id)a3 identifier:(id)a4;
- (UIColor)color;
- (double)width;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_reloadImage;
- (void)_setColor:(id)a3 shouldCallObserver:(BOOL)a4;
- (void)_setWidth:(double)a3 shouldCallObserver:(BOOL)a4;
- (void)_updateTool:(id)a3 shouldCallObserver:(BOOL)a4;
@end

@implementation PKToolPickerItem

- (NSDictionary)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"identifier";
  v2 = [(PKToolPickerItem *)self _tool];
  v3 = [v2 ink];
  v4 = [v3 identifier];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (PKToolPickerItem)initWithTool:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PKToolPickerItem;
  v9 = [(PKToolPickerItem *)&v13 init];
  if (v9)
  {
    if (v8)
    {
      [v7 _setToolPickerItemIdentifier:v8];
    }

    objc_storeStrong(&v9->__tool, a3);
    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = v10;
  }

  return v9;
}

- (UIColor)color
{
  v3 = [(PKTool *)self->__tool _configuration];
  v4 = [v3 supportsColor];

  if (v4)
  {
    v5 = [(PKTool *)self->__tool _color];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] blackColor];
    }

    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] blackColor];
  }

  return v8;
}

- (void)_setColor:(id)a3 shouldCallObserver:(BOOL)a4
{
  v4 = a4;
  v16 = a3;
  v6 = [(PKTool *)self->__tool _configuration];
  v7 = [v6 supportsColor];

  if (v7)
  {
    v8 = [(PKToolPickerItem *)self color];
    v9 = v8;
    v10 = v16;
    ConvertedToSRGB = DKUCGColorCreateConvertedToSRGB([v8 CGColor]);
    v12 = [v10 CGColor];

    v13 = DKUCGColorCreateConvertedToSRGB(v12);
    IsEqualToColorIgnoringOpacityWithTolerance = DKUColorIsEqualToColorIgnoringOpacityWithTolerance(ConvertedToSRGB, v13, 0, 0.000000999999997);
    CGColorRelease(ConvertedToSRGB);
    CGColorRelease(v13);

    if (!IsEqualToColorIgnoringOpacityWithTolerance)
    {
      v15 = [(PKToolPickerItem *)self _toolCopyWithColor:v10];
      [(PKToolPickerItem *)self _updateTool:v15 shouldCallObserver:v4];
    }
  }
}

- (double)width
{
  v3 = [(PKTool *)self->__tool _configuration];
  v4 = [v3 supportsStrokeWeight];

  if (!v4)
  {
    return 0.0;
  }

  tool = self->__tool;

  [(PKTool *)tool _width];
  return result;
}

- (void)_setWidth:(double)a3 shouldCallObserver:(BOOL)a4
{
  v4 = a4;
  v7 = [(PKTool *)self->__tool _configuration];
  v8 = [v7 supportsStrokeWeight];

  if (v8)
  {
    [(PKToolPickerItem *)self width];
    if (vabdd_f64(v9, a3) >= 0.01)
    {
      v10 = [(PKToolPickerItem *)self _toolCopyWithWidth:a3];
      [(PKToolPickerItem *)self _updateTool:v10 shouldCallObserver:v4];
    }
  }
}

- (void)_reloadImage
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) toolPickerItemReloadImage:{self, v8}];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateTool:(id)a3 shouldCallObserver:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    objc_storeStrong(&self->__tool, a3);
    if (v4)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = self->_observers;
      v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v13 + 1) + 8 * v12++) toolPickerItemDidChange:{self, v13}];
          }

          while (v10 != v12);
          v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  tool = self->__tool;

  return [v4 initWithTool:tool];
}

- (unint64_t)hash
{
  v2 = [(PKToolPickerItem *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKToolPickerItem *)self _tool];
    v6 = [v4 _tool];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end