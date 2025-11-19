@interface CNPhotoPickerProviderInjectedItemsGroup
- (CNPhotoPickerProviderInjectedItemsGroup)initWithEnvironment:(id)a3;
@end

@implementation CNPhotoPickerProviderInjectedItemsGroup

- (CNPhotoPickerProviderInjectedItemsGroup)initWithEnvironment:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNPhotoPickerProviderInjectedItemsGroup;
  v3 = [(CNPhotoPickerProviderGroup *)&v7 initWithProviders:0 groupType:4 environment:a3 allowAddItem:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end