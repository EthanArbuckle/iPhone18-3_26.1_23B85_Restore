@interface AVTStickerRecentsPlaceholderItem
- (void)discardContent;
@end

@implementation AVTStickerRecentsPlaceholderItem

- (void)discardContent
{
  discardableContentHandler = self->discardableContentHandler;
  if (discardableContentHandler)
  {
    discardableContentHandler[2](discardableContentHandler, self);
  }
}

@end