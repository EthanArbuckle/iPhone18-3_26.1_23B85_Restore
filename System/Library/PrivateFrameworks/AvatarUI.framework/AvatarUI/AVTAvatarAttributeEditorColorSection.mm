@interface AVTAvatarAttributeEditorColorSection
- (AVTAvatarAttributeEditorColorSection)initWithPrimaryItems:(id)items extendedItems:(id)extendedItems colorVariationStore:(id)store localizedName:(id)name identifier:(id)identifier intendedDestination:(unint64_t)destination alwaysShowExtended:(BOOL)extended options:(id)self0;
- (BOOL)shouldDisplaySeparatorBeforeSection:(id)section;
- (BOOL)shouldDisplayTitle;
- (NSArray)sections;
- (NSString)description;
- (UIEdgeInsets)separatorInsets;
- (id)copyWithoutTitle;
@end

@implementation AVTAvatarAttributeEditorColorSection

- (AVTAvatarAttributeEditorColorSection)initWithPrimaryItems:(id)items extendedItems:(id)extendedItems colorVariationStore:(id)store localizedName:(id)name identifier:(id)identifier intendedDestination:(unint64_t)destination alwaysShowExtended:(BOOL)extended options:(id)self0
{
  itemsCopy = items;
  extendedItemsCopy = extendedItems;
  storeCopy = store;
  nameCopy = name;
  identifierCopy = identifier;
  optionsCopy = options;
  v32.receiver = self;
  v32.super_class = AVTAvatarAttributeEditorColorSection;
  v22 = [(AVTAvatarAttributeEditorColorSection *)&v32 init];
  if (v22)
  {
    v23 = [itemsCopy copy];
    primaryItems = v22->_primaryItems;
    v22->_primaryItems = v23;

    v25 = [extendedItemsCopy copy];
    extendedItems = v22->_extendedItems;
    v22->_extendedItems = v25;

    objc_storeStrong(&v22->_colorVariationStore, store);
    v27 = [nameCopy copy];
    localizedName = v22->_localizedName;
    v22->_localizedName = v27;

    v29 = [identifierCopy copy];
    identifier = v22->_identifier;
    v22->_identifier = v29;

    v22->_intendedDestination = destination;
    v22->_alwaysShowExtended = extended;
    objc_storeStrong(&v22->_options, options);
  }

  return v22;
}

- (id)copyWithoutTitle
{
  v3 = [AVTAvatarAttributeEditorColorSection alloc];
  primaryItems = [(AVTAvatarAttributeEditorColorSection *)self primaryItems];
  extendedItems = [(AVTAvatarAttributeEditorColorSection *)self extendedItems];
  colorVariationStore = [(AVTAvatarAttributeEditorColorSection *)self colorVariationStore];
  identifier = [(AVTAvatarAttributeEditorColorSection *)self identifier];
  intendedDestination = [(AVTAvatarAttributeEditorColorSection *)self intendedDestination];
  alwaysShowExtended = [(AVTAvatarAttributeEditorColorSection *)self alwaysShowExtended];
  options = [(AVTAvatarAttributeEditorColorSection *)self options];
  LOBYTE(v13) = alwaysShowExtended;
  v11 = [(AVTAvatarAttributeEditorColorSection *)v3 initWithPrimaryItems:primaryItems extendedItems:extendedItems colorVariationStore:colorVariationStore localizedName:&stru_1F39618F0 identifier:identifier intendedDestination:intendedDestination alwaysShowExtended:v13 options:options];

  return v11;
}

- (NSString)description
{
  v16.receiver = self;
  v16.super_class = AVTAvatarAttributeEditorColorSection;
  v3 = [(AVTAvatarAttributeEditorColorSection *)&v16 description];
  v4 = [v3 mutableCopy];

  localizedName = [(AVTAvatarAttributeEditorColorSection *)self localizedName];
  identifier = [(AVTAvatarAttributeEditorColorSection *)self identifier];
  primaryItems = [(AVTAvatarAttributeEditorColorSection *)self primaryItems];
  avt_description = [primaryItems avt_description];
  [v4 appendFormat:@" name: %@, identifier: %@, sectionItems: %@", localizedName, identifier, avt_description];

  supplementalPicker = [(AVTAvatarAttributeEditorColorSection *)self supplementalPicker];

  if (supplementalPicker)
  {
    supplementalPicker2 = [(AVTAvatarAttributeEditorColorSection *)self supplementalPicker];
    localizedTitle = [supplementalPicker2 localizedTitle];
    [v4 appendFormat:@", supplemental picker: %@", localizedTitle];
  }

  options = [(AVTAvatarAttributeEditorColorSection *)self options];

  if (options)
  {
    options2 = [(AVTAvatarAttributeEditorColorSection *)self options];
    [v4 appendFormat:@", options: %@", options2];
  }

  v14 = [v4 copy];

  return v14;
}

- (BOOL)shouldDisplayTitle
{
  localizedName = [(AVTAvatarAttributeEditorColorSection *)self localizedName];
  if (localizedName)
  {
    localizedName2 = [(AVTAvatarAttributeEditorColorSection *)self localizedName];
    v5 = [localizedName2 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldDisplaySeparatorBeforeSection:(id)section
{
  sectionCopy = section;
  v4 = sectionCopy;
  if (sectionCopy && ([sectionCopy conformsToProtocol:&unk_1F39D2D00] & 1) == 0)
  {
    shouldDisplayTitle = [v4 shouldDisplayTitle];
  }

  else
  {
    shouldDisplayTitle = 0;
  }

  return shouldDisplayTitle;
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