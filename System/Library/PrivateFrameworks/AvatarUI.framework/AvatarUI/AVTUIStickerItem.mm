@interface AVTUIStickerItem
- (AVTUIStickerItem)initWithIdentifier:(id)a3 localizedName:(id)a4 resourceProvider:(id)a5;
- (CGRect)clippingRect;
- (NSString)description;
- (void)clearCachedItems;
- (void)discardContent;
@end

@implementation AVTUIStickerItem

- (AVTUIStickerItem)initWithIdentifier:(id)a3 localizedName:(id)a4 resourceProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = AVTUIStickerItem;
  v11 = [(AVTUIStickerItem *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    localizedName = v11->_localizedName;
    v11->_localizedName = v14;

    v16 = [v10 copy];
    resourceProvider = v11->_resourceProvider;
    v11->_resourceProvider = v16;
  }

  return v11;
}

- (void)clearCachedItems
{
  [(AVTUIStickerItem *)self setCachedMSSticker:0];

  [(AVTUIStickerItem *)self setCachedImage:0];
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = AVTUIStickerItem;
  v3 = [(AVTUIStickerItem *)&v10 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTUIStickerItem *)self localizedName];
  [v4 appendFormat:@" name: %@", v5];

  if ([(AVTUIStickerItem *)self hasBeenRendered])
  {
    [v4 appendString:@" hasBeenRendered"];
  }

  v6 = [(AVTUIStickerItem *)self cachedMSSticker];

  if (v6)
  {
    [v4 appendString:@" has cached MSSticker"];
  }

  v7 = [(AVTUIStickerItem *)self cachedImage];

  if (v7)
  {
    [v4 appendString:@" and cached image"];
  }

  v8 = [v4 copy];

  return v8;
}

- (void)discardContent
{
  [(AVTUIStickerItem *)self clearCachedItems];
  discardableContentHandler = self->discardableContentHandler;
  if (discardableContentHandler)
  {
    v4 = *(discardableContentHandler + 2);

    v4();
  }
}

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end