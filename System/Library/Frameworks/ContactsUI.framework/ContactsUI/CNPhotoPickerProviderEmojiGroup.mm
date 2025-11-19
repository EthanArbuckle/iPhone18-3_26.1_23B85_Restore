@interface CNPhotoPickerProviderEmojiGroup
- (CNPhotoPickerProviderEmojiGroup)initWithProviders:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5;
@end

@implementation CNPhotoPickerProviderEmojiGroup

- (CNPhotoPickerProviderEmojiGroup)initWithProviders:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerProviderEmojiGroup;
  v5 = [(CNPhotoPickerProviderGroup *)&v9 initWithProviders:a3 groupType:3 environment:a4 allowAddItem:a5];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

@end