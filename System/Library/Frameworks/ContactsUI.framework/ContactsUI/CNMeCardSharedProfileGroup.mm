@interface CNMeCardSharedProfileGroup
- (id)displayItems;
@end

@implementation CNMeCardSharedProfileGroup

- (id)displayItems
{
  v8[1] = *MEMORY[0x1E69E9840];
  sharedProfileSettingsAction = [(CNMeCardSharedProfileGroup *)self sharedProfileSettingsAction];

  if (sharedProfileSettingsAction)
  {
    v4 = objc_alloc_init(CNMeCardSharedProfileGroupActionItem);
    sharedProfileSettingsAction2 = [(CNMeCardSharedProfileGroup *)self sharedProfileSettingsAction];
    [(CNMeCardSharedProfileGroupActionItem *)v4 setSharedProfileSettingsAction:sharedProfileSettingsAction2];

    v8[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

@end