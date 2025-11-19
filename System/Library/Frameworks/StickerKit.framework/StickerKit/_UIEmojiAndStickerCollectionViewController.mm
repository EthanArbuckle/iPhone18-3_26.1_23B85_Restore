@interface _UIEmojiAndStickerCollectionViewController
+ (id)newInstanceWithConfiguration:(id)a3;
- (_UIEmojiAndStickerCollectionViewControllerDelegate)delegate;
@end

@implementation _UIEmojiAndStickerCollectionViewController

+ (id)newInstanceWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(NSClassFromString(&cfstr_Uiemojiandstic.isa)) initWithConfiguration:v3];

  return v4;
}

- (_UIEmojiAndStickerCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end