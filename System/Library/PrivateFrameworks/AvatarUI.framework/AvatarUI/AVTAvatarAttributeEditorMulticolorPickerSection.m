@interface AVTAvatarAttributeEditorMulticolorPickerSection
- (AVTAvatarAttributeEditorMulticolorPickerSection)initWithIdentifier:(id)a3 localizedName:(id)a4 items:(id)a5;
- (BOOL)shouldDisplayTitle;
- (NSArray)sections;
- (UIEdgeInsets)separatorInsets;
@end

@implementation AVTAvatarAttributeEditorMulticolorPickerSection

- (AVTAvatarAttributeEditorMulticolorPickerSection)initWithIdentifier:(id)a3 localizedName:(id)a4 items:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AVTAvatarAttributeEditorMulticolorPickerSection;
  v12 = [(AVTAvatarAttributeEditorMulticolorPickerSection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_items, a5);
    objc_storeStrong(&v13->_localizedName, a4);
    objc_storeStrong(&v13->_sectionItems, a5);
    objc_storeStrong(&v13->_identifier, a3);
    v13->_intendedDestination = 0;
  }

  return v13;
}

- (BOOL)shouldDisplayTitle
{
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerSection *)self localizedName];
  if (v3)
  {
    v4 = [(AVTAvatarAttributeEditorMulticolorPickerSection *)self localizedName];
    v5 = [v4 length] != 0;
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