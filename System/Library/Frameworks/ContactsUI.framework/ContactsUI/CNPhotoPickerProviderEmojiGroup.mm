@interface CNPhotoPickerProviderEmojiGroup
- (CNPhotoPickerProviderEmojiGroup)initWithProviders:(id)providers environment:(id)environment allowAddItem:(BOOL)item;
@end

@implementation CNPhotoPickerProviderEmojiGroup

- (CNPhotoPickerProviderEmojiGroup)initWithProviders:(id)providers environment:(id)environment allowAddItem:(BOOL)item
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerProviderEmojiGroup;
  v5 = [(CNPhotoPickerProviderGroup *)&v9 initWithProviders:providers groupType:3 environment:environment allowAddItem:item];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

@end