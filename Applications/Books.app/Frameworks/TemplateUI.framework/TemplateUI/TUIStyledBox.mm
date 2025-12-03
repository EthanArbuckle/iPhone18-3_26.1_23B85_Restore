@interface TUIStyledBox
- (CGSize)shadowOffset;
- (NSString)blendMode;
- (TUIStyledBox)init;
- (UIColor)backgroundColor;
- (UIColor)borderColor;
- (UIColor)shadowColor;
- (UIEdgeInsets)insets;
- (double)borderWidth;
- (double)cornerRadius;
- (double)shadowOpacity;
- (double)shadowRadius;
- (void)setAllowsGroupBlending:(BOOL)blending;
- (void)setBorderWidth:(double)width;
- (void)setClipsToBounds:(BOOL)bounds;
- (void)setContinuousCorners:(BOOL)corners;
- (void)setCornerRadius:(double)radius;
- (void)setInsets:(UIEdgeInsets)insets;
- (void)setShadowOffset:(CGSize)offset;
- (void)setShadowOpacity:(double)opacity;
- (void)setShadowRadius:(double)radius;
@end

@implementation TUIStyledBox

- (TUIStyledBox)init
{
  v3.receiver = self;
  v3.super_class = TUIStyledBox;
  result = [(TUIBox *)&v3 init];
  if (result)
  {
    result->super.super._storage._data = TUIStyledBoxStorageDataset | 1;
  }

  return result;
}

- (void)setInsets:(UIEdgeInsets)insets
{
  top = insets.top;
  left = insets.left;
  bottom = insets.bottom;
  right = insets.right;
  if (TUIInsets32Equal(top, left, bottom, right, 0.0, 0.0, 0.0, 0.0))
  {
    v8 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0x1Fu);
    if (!v8)
    {
      return;
    }

    DataForKey = v8;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super.super._storage._data, 0x1Fu);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super.super._storage, 0x1Fu, 0x10uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = top;
  DataForKey[1] = left;
  DataForKey[2] = bottom;
  DataForKey[3] = right;
}

- (UIEdgeInsets)insets
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0x1Fu);
  v3 = &TUIInsets32Zero;
  if (v2)
  {
    v3 = v2;
  }

  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIColor)backgroundColor
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super.super._storage, 0x11u);

  return ObjectForKey;
}

- (void)setCornerRadius:(double)radius
{
  radiusCopy = radius;
  if (radiusCopy == 0.0)
  {
    v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0x14u);
    if (!v5)
    {
      return;
    }

    DataForKey = v5;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super.super._storage._data, 0x14u);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super.super._storage, 0x14u, 4uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = radiusCopy;
}

- (double)cornerRadius
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0x14u);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0.0;
  }
}

- (UIColor)shadowColor
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super.super._storage, 0x1Cu);

  return ObjectForKey;
}

- (void)setShadowOffset:(CGSize)offset
{
  width = offset.width;
  height = offset.height;
  if (TUISize32Equal(width, height, 0.0, 0.0))
  {
    v6 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0x1Bu);
    if (!v6)
    {
      return;
    }

    DataForKey = v6;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super.super._storage._data, 0x1Bu);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super.super._storage, 0x1Bu, 8uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = width;
  DataForKey[1] = height;
}

- (CGSize)shadowOffset
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0x1Bu);
  v3 = &TUISize32Zero;
  if (v2)
  {
    v3 = v2;
  }

  v4 = *v3;
  v5 = v3[1];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setShadowOpacity:(double)opacity
{
  opacityCopy = opacity;
  if (opacityCopy == 1.0)
  {
    v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 7u);
    if (!v5)
    {
      return;
    }

    DataForKey = v5;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super.super._storage._data, 7u);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super.super._storage, 7u, 4uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = opacityCopy;
}

- (double)shadowOpacity
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 7u);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 1.0;
  }
}

- (UIColor)borderColor
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super.super._storage, 0x16u);

  return ObjectForKey;
}

- (NSString)blendMode
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super.super._storage, 1u);

  return ObjectForKey;
}

- (void)setContinuousCorners:(BOOL)corners
{
  if (corners)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->super.super._flags = *&self->super.super._flags & 0xEFFFFFFF | v3;
}

- (void)setClipsToBounds:(BOOL)bounds
{
  if (bounds)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->super.super._flags + 2) = *(&self->super.super._flags + 2) & 0xFFEF | v3;
}

- (void)setAllowsGroupBlending:(BOOL)blending
{
  if (blending)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->super.super._flags + 2) = *(&self->super.super._flags + 2) & 0xFFDF | v3;
}

- (void)setShadowRadius:(double)radius
{
  radiusCopy = radius;
  if (radiusCopy == 0.0)
  {
    v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0x1Au);
    if (!v5)
    {
      return;
    }

    DataForKey = v5;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super.super._storage._data, 0x1Au);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super.super._storage, 0x1Au, 4uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = radiusCopy;
}

- (double)shadowRadius
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0x1Au);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0.0;
  }
}

- (void)setBorderWidth:(double)width
{
  widthCopy = width;
  if (widthCopy == 0.0)
  {
    v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0x15u);
    if (!v5)
    {
      return;
    }

    DataForKey = v5;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super.super._storage._data, 0x15u);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super.super._storage, 0x15u, 4uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = widthCopy;
}

- (double)borderWidth
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0x15u);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0.0;
  }
}

@end