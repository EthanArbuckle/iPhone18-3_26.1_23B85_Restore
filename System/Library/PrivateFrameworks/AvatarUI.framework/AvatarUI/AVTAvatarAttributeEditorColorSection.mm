@interface AVTAvatarAttributeEditorColorSection
- (AVTAvatarAttributeEditorColorSection)initWithPrimaryItems:(id)a3 extendedItems:(id)a4 colorVariationStore:(id)a5 localizedName:(id)a6 identifier:(id)a7 intendedDestination:(unint64_t)a8 alwaysShowExtended:(BOOL)a9 options:(id)a10;
- (BOOL)shouldDisplaySeparatorBeforeSection:(id)a3;
- (BOOL)shouldDisplayTitle;
- (NSArray)sections;
- (NSString)description;
- (UIEdgeInsets)separatorInsets;
- (id)copyWithoutTitle;
@end

@implementation AVTAvatarAttributeEditorColorSection

- (AVTAvatarAttributeEditorColorSection)initWithPrimaryItems:(id)a3 extendedItems:(id)a4 colorVariationStore:(id)a5 localizedName:(id)a6 identifier:(id)a7 intendedDestination:(unint64_t)a8 alwaysShowExtended:(BOOL)a9 options:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v32.receiver = self;
  v32.super_class = AVTAvatarAttributeEditorColorSection;
  v22 = [(AVTAvatarAttributeEditorColorSection *)&v32 init];
  if (v22)
  {
    v23 = [v16 copy];
    primaryItems = v22->_primaryItems;
    v22->_primaryItems = v23;

    v25 = [v17 copy];
    extendedItems = v22->_extendedItems;
    v22->_extendedItems = v25;

    objc_storeStrong(&v22->_colorVariationStore, a5);
    v27 = [v19 copy];
    localizedName = v22->_localizedName;
    v22->_localizedName = v27;

    v29 = [v20 copy];
    identifier = v22->_identifier;
    v22->_identifier = v29;

    v22->_intendedDestination = a8;
    v22->_alwaysShowExtended = a9;
    objc_storeStrong(&v22->_options, a10);
  }

  return v22;
}

- (id)copyWithoutTitle
{
  v3 = [AVTAvatarAttributeEditorColorSection alloc];
  v4 = [(AVTAvatarAttributeEditorColorSection *)self primaryItems];
  v5 = [(AVTAvatarAttributeEditorColorSection *)self extendedItems];
  v6 = [(AVTAvatarAttributeEditorColorSection *)self colorVariationStore];
  v7 = [(AVTAvatarAttributeEditorColorSection *)self identifier];
  v8 = [(AVTAvatarAttributeEditorColorSection *)self intendedDestination];
  v9 = [(AVTAvatarAttributeEditorColorSection *)self alwaysShowExtended];
  v10 = [(AVTAvatarAttributeEditorColorSection *)self options];
  LOBYTE(v13) = v9;
  v11 = [(AVTAvatarAttributeEditorColorSection *)v3 initWithPrimaryItems:v4 extendedItems:v5 colorVariationStore:v6 localizedName:&stru_1F39618F0 identifier:v7 intendedDestination:v8 alwaysShowExtended:v13 options:v10];

  return v11;
}

- (NSString)description
{
  v16.receiver = self;
  v16.super_class = AVTAvatarAttributeEditorColorSection;
  v3 = [(AVTAvatarAttributeEditorColorSection *)&v16 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTAvatarAttributeEditorColorSection *)self localizedName];
  v6 = [(AVTAvatarAttributeEditorColorSection *)self identifier];
  v7 = [(AVTAvatarAttributeEditorColorSection *)self primaryItems];
  v8 = [v7 avt_description];
  [v4 appendFormat:@" name: %@, identifier: %@, sectionItems: %@", v5, v6, v8];

  v9 = [(AVTAvatarAttributeEditorColorSection *)self supplementalPicker];

  if (v9)
  {
    v10 = [(AVTAvatarAttributeEditorColorSection *)self supplementalPicker];
    v11 = [v10 localizedTitle];
    [v4 appendFormat:@", supplemental picker: %@", v11];
  }

  v12 = [(AVTAvatarAttributeEditorColorSection *)self options];

  if (v12)
  {
    v13 = [(AVTAvatarAttributeEditorColorSection *)self options];
    [v4 appendFormat:@", options: %@", v13];
  }

  v14 = [v4 copy];

  return v14;
}

- (BOOL)shouldDisplayTitle
{
  v3 = [(AVTAvatarAttributeEditorColorSection *)self localizedName];
  if (v3)
  {
    v4 = [(AVTAvatarAttributeEditorColorSection *)self localizedName];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldDisplaySeparatorBeforeSection:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 conformsToProtocol:&unk_1F39D2D00] & 1) == 0)
  {
    v5 = [v4 shouldDisplayTitle];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIEdgeInsets)separatorInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (NSArray)sections
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end