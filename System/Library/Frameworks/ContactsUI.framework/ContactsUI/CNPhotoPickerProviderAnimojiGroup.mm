@interface CNPhotoPickerProviderAnimojiGroup
- (BOOL)allowAddItem;
- (BOOL)canCreateMemoji;
- (CNPhotoPickerProviderAnimojiGroup)initWithProviders:(id)providers environment:(id)environment allowAddItem:(BOOL)item;
@end

@implementation CNPhotoPickerProviderAnimojiGroup

- (BOOL)allowAddItem
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerProviderAnimojiGroup;
  allowAddItem = [(CNPhotoPickerProviderGroup *)&v5 allowAddItem];
  if (allowAddItem)
  {
    LOBYTE(allowAddItem) = [(CNPhotoPickerProviderAnimojiGroup *)self canCreateMemoji];
  }

  return allowAddItem;
}

- (BOOL)canCreateMemoji
{
  providers = [(CNPhotoPickerProviderGroup *)self providers];
  v3 = [providers _cn_firstObjectPassingTest:&__block_literal_global_11480];

  if (v3)
  {
    canCreateMemoji = [v3 canCreateMemoji];
  }

  else
  {
    canCreateMemoji = 0;
  }

  return canCreateMemoji;
}

uint64_t __52__CNPhotoPickerProviderAnimojiGroup_canCreateMemoji__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CNPhotoPickerProviderAnimojiGroup)initWithProviders:(id)providers environment:(id)environment allowAddItem:(BOOL)item
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerProviderAnimojiGroup;
  v5 = [(CNPhotoPickerProviderGroup *)&v9 initWithProviders:providers groupType:2 environment:environment allowAddItem:item];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

@end