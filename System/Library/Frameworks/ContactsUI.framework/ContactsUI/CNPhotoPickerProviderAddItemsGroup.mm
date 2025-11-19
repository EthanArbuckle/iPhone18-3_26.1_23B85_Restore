@interface CNPhotoPickerProviderAddItemsGroup
- (CNPhotoPickerProviderAddItemsGroup)initWithProviders:(id)a3 environment:(id)a4;
@end

@implementation CNPhotoPickerProviderAddItemsGroup

- (CNPhotoPickerProviderAddItemsGroup)initWithProviders:(id)a3 environment:(id)a4
{
  v8.receiver = self;
  v8.super_class = CNPhotoPickerProviderAddItemsGroup;
  v4 = [(CNPhotoPickerProviderGroup *)&v8 initWithProviders:a3 groupType:0 environment:a4 allowAddItem:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end