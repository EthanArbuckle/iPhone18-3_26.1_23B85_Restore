@interface _UIEmojiAndStickerCollectionViewController
+ (id)newInstanceWithConfiguration:(id)configuration;
- (_UIEmojiAndStickerCollectionViewControllerDelegate)delegate;
@end

@implementation _UIEmojiAndStickerCollectionViewController

+ (id)newInstanceWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [objc_alloc(NSClassFromString(&cfstr_Uiemojiandstic.isa)) initWithConfiguration:configurationCopy];

  return v4;
}

- (_UIEmojiAndStickerCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end