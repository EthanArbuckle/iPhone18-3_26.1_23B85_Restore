@interface TUIImageBox
- ($E297CC25127479E857BE23A4F8632EA4)intrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)intrinsicWidth;
- (NSString)blendMode;
- (NSString)contentsGravity;
- (NSString)filter;
- (NSString)resourceKind;
- (NSString)urlString;
- (NSURL)baseURL;
- (TUIImageBox)init;
- (UIColor)fallbackColor;
- (UIColor)maskColor;
- (double)cornerRadius;
- (double)opacity;
- (id)resourceInstance;
- (id)resourceOptions;
- (void)setContinuousCorners:(BOOL)corners;
- (void)setCornerRadius:(double)radius;
- (void)setCrossfadesContents:(BOOL)contents;
- (void)setHflipForRTL:(BOOL)l;
- (void)setIntrinsicHeight:(id *)height;
- (void)setIntrinsicWidth:(id *)width;
- (void)setOpacity:(double)opacity;
- (void)setShouldRasterize:(BOOL)rasterize;
@end

@implementation TUIImageBox

- (TUIImageBox)init
{
  v3.receiver = self;
  v3.super_class = TUIImageBox;
  result = [(TUIBox *)&v3 init];
  if (result)
  {
    result->super._storage._data = TUIImageBoxStorageDataset | 1;
  }

  return result;
}

- (void)setHflipForRTL:(BOOL)l
{
  if (l)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->super._flags = *&self->super._flags & 0xFBFFFFFF | v3;
}

- (void)setCrossfadesContents:(BOOL)contents
{
  if (contents)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->super._flags = *&self->super._flags & 0xF7FFFFFF | v3;
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

  *&self->super._flags = *&self->super._flags & 0xEFFFFFFF | v3;
}

- (void)setShouldRasterize:(BOOL)rasterize
{
  if (rasterize)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->super._flags = *&self->super._flags & 0xDFFFFFFF | v3;
}

- (void)setIntrinsicWidth:(id *)width
{
  v4 = v3;
  if ((v3 & 0x7000000000000) == 0x2000000000000)
  {
    v7 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super._storage, 6u);
    if (!v7)
    {
      return;
    }

    DataForKey = v7;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super._storage._data, 6u);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super._storage, 6u, 0x10uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = width;
  DataForKey[1] = v4;
}

- ($E297CC25127479E857BE23A4F8632EA4)intrinsicWidth
{
  v3 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super._storage, 6u);
  v4 = &TUILengthNull;
  if (v3)
  {
    v4 = v3;
  }

  return *v4;
}

- (void)setIntrinsicHeight:(id *)height
{
  v4 = v3;
  if ((v3 & 0x7000000000000) == 0x2000000000000)
  {
    v7 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super._storage, 5u);
    if (!v7)
    {
      return;
    }

    DataForKey = v7;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super._storage._data, 5u);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super._storage, 5u, 0x10uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = height;
  DataForKey[1] = v4;
}

- ($E297CC25127479E857BE23A4F8632EA4)intrinsicHeight
{
  v3 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super._storage, 5u);
  v4 = &TUILengthNull;
  if (v3)
  {
    v4 = v3;
  }

  return *v4;
}

- (NSString)resourceKind
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super._storage, 0x19u);

  return ObjectForKey;
}

- (id)resourceInstance
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super._storage, 0x18u);

  return ObjectForKey;
}

- (id)resourceOptions
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super._storage, 0x29u);

  return ObjectForKey;
}

- (NSString)urlString
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super._storage, 4u);

  return ObjectForKey;
}

- (NSURL)baseURL
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super._storage, 3u);

  return ObjectForKey;
}

- (UIColor)maskColor
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super._storage, 0xCu);

  return ObjectForKey;
}

- (UIColor)fallbackColor
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super._storage, 0xFu);

  return ObjectForKey;
}

- (NSString)contentsGravity
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super._storage, 2u);

  return ObjectForKey;
}

- (NSString)filter
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super._storage, 0x10u);

  return ObjectForKey;
}

- (NSString)blendMode
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super._storage, 1u);

  return ObjectForKey;
}

- (void)setCornerRadius:(double)radius
{
  radiusCopy = radius;
  if (radiusCopy == 0.0)
  {
    v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super._storage, 0x14u);
    if (!v5)
    {
      return;
    }

    DataForKey = v5;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super._storage._data, 0x14u);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super._storage, 0x14u, 4uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = radiusCopy;
}

- (double)cornerRadius
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super._storage, 0x14u);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0.0;
  }
}

- (void)setOpacity:(double)opacity
{
  opacityCopy = opacity;
  if (opacityCopy == 1.0)
  {
    v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super._storage, 0x2Du);
    if (!v5)
    {
      return;
    }

    DataForKey = v5;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super._storage._data, 0x2Du);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super._storage, 0x2Du, 4uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = opacityCopy;
}

- (double)opacity
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super._storage, 0x2Du);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 1.0;
  }
}

@end