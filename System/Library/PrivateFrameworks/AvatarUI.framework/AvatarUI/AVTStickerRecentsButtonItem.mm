@interface AVTStickerRecentsButtonItem
- (AVTStickerRecentsButtonItem)initWithLocalizedDescription:(id)description;
- (void)discardContent;
@end

@implementation AVTStickerRecentsButtonItem

- (AVTStickerRecentsButtonItem)initWithLocalizedDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = AVTStickerRecentsButtonItem;
  v6 = [(AVTStickerRecentsButtonItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localizedDescription, description);
  }

  return v7;
}

- (void)discardContent
{
  discardableContentHandler = self->discardableContentHandler;
  if (discardableContentHandler)
  {
    discardableContentHandler[2](discardableContentHandler, self);
  }
}

@end