@interface PKToolPickerItem
- (BOOL)isEqual:(id)equal;
- (NSDictionary)_dictionaryRepresentation;
- (PKToolPickerItem)initWithTool:(id)tool identifier:(id)identifier;
- (UIColor)color;
- (double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_reloadImage;
- (void)_setColor:(id)color shouldCallObserver:(BOOL)observer;
- (void)_setWidth:(double)width shouldCallObserver:(BOOL)observer;
- (void)_updateTool:(id)tool shouldCallObserver:(BOOL)observer;
@end

@implementation PKToolPickerItem

- (NSDictionary)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"identifier";
  _tool = [(PKToolPickerItem *)self _tool];
  v3 = [_tool ink];
  identifier = [v3 identifier];
  v8[0] = identifier;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (PKToolPickerItem)initWithTool:(id)tool identifier:(id)identifier
{
  toolCopy = tool;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PKToolPickerItem;
  v9 = [(PKToolPickerItem *)&v13 init];
  if (v9)
  {
    if (identifierCopy)
    {
      [toolCopy _setToolPickerItemIdentifier:identifierCopy];
    }

    objc_storeStrong(&v9->__tool, tool);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = weakObjectsHashTable;
  }

  return v9;
}

- (UIColor)color
{
  _configuration = [(PKTool *)self->__tool _configuration];
  supportsColor = [_configuration supportsColor];

  if (supportsColor)
  {
    _color = [(PKTool *)self->__tool _color];
    v6 = _color;
    if (_color)
    {
      blackColor = _color;
    }

    else
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
    }

    blackColor2 = blackColor;
  }

  else
  {
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  }

  return blackColor2;
}

- (void)_setColor:(id)color shouldCallObserver:(BOOL)observer
{
  observerCopy = observer;
  colorCopy = color;
  _configuration = [(PKTool *)self->__tool _configuration];
  supportsColor = [_configuration supportsColor];

  if (supportsColor)
  {
    color = [(PKToolPickerItem *)self color];
    v9 = color;
    v10 = colorCopy;
    ConvertedToSRGB = DKUCGColorCreateConvertedToSRGB([color CGColor]);
    cGColor = [v10 CGColor];

    v13 = DKUCGColorCreateConvertedToSRGB(cGColor);
    IsEqualToColorIgnoringOpacityWithTolerance = DKUColorIsEqualToColorIgnoringOpacityWithTolerance(ConvertedToSRGB, v13, 0, 0.000000999999997);
    CGColorRelease(ConvertedToSRGB);
    CGColorRelease(v13);

    if (!IsEqualToColorIgnoringOpacityWithTolerance)
    {
      v15 = [(PKToolPickerItem *)self _toolCopyWithColor:v10];
      [(PKToolPickerItem *)self _updateTool:v15 shouldCallObserver:observerCopy];
    }
  }
}

- (double)width
{
  _configuration = [(PKTool *)self->__tool _configuration];
  supportsStrokeWeight = [_configuration supportsStrokeWeight];

  if (!supportsStrokeWeight)
  {
    return 0.0;
  }

  tool = self->__tool;

  [(PKTool *)tool _width];
  return result;
}

- (void)_setWidth:(double)width shouldCallObserver:(BOOL)observer
{
  observerCopy = observer;
  _configuration = [(PKTool *)self->__tool _configuration];
  supportsStrokeWeight = [_configuration supportsStrokeWeight];

  if (supportsStrokeWeight)
  {
    [(PKToolPickerItem *)self width];
    if (vabdd_f64(v9, width) >= 0.01)
    {
      v10 = [(PKToolPickerItem *)self _toolCopyWithWidth:width];
      [(PKToolPickerItem *)self _updateTool:v10 shouldCallObserver:observerCopy];
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

- (void)_updateTool:(id)tool shouldCallObserver:(BOOL)observer
{
  observerCopy = observer;
  v18 = *MEMORY[0x1E69E9840];
  toolCopy = tool;
  if (toolCopy)
  {
    objc_storeStrong(&self->__tool, tool);
    if (observerCopy)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  tool = self->__tool;

  return [v4 initWithTool:tool];
}

- (unint64_t)hash
{
  identifier = [(PKToolPickerItem *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _tool = [(PKToolPickerItem *)self _tool];
    _tool2 = [equalCopy _tool];
    v7 = [_tool isEqual:_tool2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end