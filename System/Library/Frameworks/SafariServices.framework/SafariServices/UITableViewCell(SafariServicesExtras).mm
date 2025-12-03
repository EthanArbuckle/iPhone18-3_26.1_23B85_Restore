@interface UITableViewCell(SafariServicesExtras)
- (void)sf_registerDynamicImageProvider:()SafariServicesExtras forTraitChanges:;
- (void)sf_registerDynamicImageProviderForSystemTraitsAffectingColorAppearance:()SafariServicesExtras;
- (void)sf_setUsesVibrantSelection:()SafariServicesExtras;
@end

@implementation UITableViewCell(SafariServicesExtras)

- (void)sf_setUsesVibrantSelection:()SafariServicesExtras
{
  selectedBackgroundView = [self selectedBackgroundView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (a3)
  {
    if ((isKindOfClass & 1) == 0)
    {
      v7 = objc_alloc_init(SFVibrantCellSelectionBackgroundView);
      [self setSelectedBackgroundView:v7];
    }
  }

  else if (isKindOfClass)
  {

    [self setSelectedBackgroundView:0];
  }
}

- (void)sf_registerDynamicImageProvider:()SafariServicesExtras forTraitChanges:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_getAssociatedObject(self, dynamicImageTraitCollectionRegistrationKey);
  if (v8)
  {
    [self unregisterForTraitChanges:v8];
  }

  if (v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__UITableViewCell_SafariServicesExtras__sf_registerDynamicImageProvider_forTraitChanges___block_invoke;
    aBlock[3] = &unk_1E8494258;
    v12 = v6;
    v9 = _Block_copy(aBlock);
    v9[2](v9, self, 0);
    v10 = [self registerForTraitChanges:v7 withHandler:v9];

    objc_setAssociatedObject(self, dynamicImageTraitCollectionRegistrationKey, v10, 3);
    v8 = v10;
  }

  else
  {
    objc_setAssociatedObject(self, dynamicImageTraitCollectionRegistrationKey, 0, 3);
  }
}

- (void)sf_registerDynamicImageProviderForSystemTraitsAffectingColorAppearance:()SafariServicesExtras
{
  v4 = MEMORY[0x1E69DD1B8];
  v5 = a3;
  systemTraitsAffectingColorAppearance = [v4 systemTraitsAffectingColorAppearance];
  [self sf_registerDynamicImageProvider:v5 forTraitChanges:systemTraitsAffectingColorAppearance];
}

@end