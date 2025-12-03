@interface CNPhotoPickerProviderAddItemsGroup
- (CNPhotoPickerProviderAddItemsGroup)initWithProviders:(id)providers environment:(id)environment;
@end

@implementation CNPhotoPickerProviderAddItemsGroup

- (CNPhotoPickerProviderAddItemsGroup)initWithProviders:(id)providers environment:(id)environment
{
  v8.receiver = self;
  v8.super_class = CNPhotoPickerProviderAddItemsGroup;
  v4 = [(CNPhotoPickerProviderGroup *)&v8 initWithProviders:providers groupType:0 environment:environment allowAddItem:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end