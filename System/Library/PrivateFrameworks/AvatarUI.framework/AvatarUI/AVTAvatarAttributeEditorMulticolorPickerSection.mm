@interface AVTAvatarAttributeEditorMulticolorPickerSection
- (AVTAvatarAttributeEditorMulticolorPickerSection)initWithIdentifier:(id)identifier localizedName:(id)name items:(id)items;
- (BOOL)shouldDisplayTitle;
- (NSArray)sections;
- (UIEdgeInsets)separatorInsets;
@end

@implementation AVTAvatarAttributeEditorMulticolorPickerSection

- (AVTAvatarAttributeEditorMulticolorPickerSection)initWithIdentifier:(id)identifier localizedName:(id)name items:(id)items
{
  identifierCopy = identifier;
  nameCopy = name;
  itemsCopy = items;
  v15.receiver = self;
  v15.super_class = AVTAvatarAttributeEditorMulticolorPickerSection;
  v12 = [(AVTAvatarAttributeEditorMulticolorPickerSection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_items, items);
    objc_storeStrong(&v13->_localizedName, name);
    objc_storeStrong(&v13->_sectionItems, items);
    objc_storeStrong(&v13->_identifier, identifier);
    v13->_intendedDestination = 0;
  }

  return v13;
}

- (BOOL)shouldDisplayTitle
{
  localizedName = [(AVTAvatarAttributeEditorMulticolorPickerSection *)self localizedName];
  if (localizedName)
  {
    localizedName2 = [(AVTAvatarAttributeEditorMulticolorPickerSection *)self localizedName];
    v5 = [localizedName2 length] != 0;
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