@interface AVTAvatarAttributeEditorSection
- (AVTAvatarAttributeEditorSection)initWithSectionItems:(id)items localizedName:(id)name identifier:(id)identifier intendedDestination:(unint64_t)destination options:(id)options;
- (BOOL)shouldDisplaySeparatorBeforeSection:(id)section;
- (BOOL)shouldDisplayTitle;
- (NSArray)sections;
- (NSString)description;
- (UIEdgeInsets)separatorInsets;
@end

@implementation AVTAvatarAttributeEditorSection

- (AVTAvatarAttributeEditorSection)initWithSectionItems:(id)items localizedName:(id)name identifier:(id)identifier intendedDestination:(unint64_t)destination options:(id)options
{
  itemsCopy = items;
  nameCopy = name;
  identifierCopy = identifier;
  optionsCopy = options;
  v24.receiver = self;
  v24.super_class = AVTAvatarAttributeEditorSection;
  v16 = [(AVTAvatarAttributeEditorSection *)&v24 init];
  if (v16)
  {
    v17 = [itemsCopy copy];
    sectionItems = v16->_sectionItems;
    v16->_sectionItems = v17;

    v19 = [nameCopy copy];
    localizedName = v16->_localizedName;
    v16->_localizedName = v19;

    v21 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v21;

    objc_storeStrong(&v16->_options, options);
    v16->_intendedDestination = destination;
  }

  return v16;
}

- (NSString)description
{
  v16.receiver = self;
  v16.super_class = AVTAvatarAttributeEditorSection;
  v3 = [(AVTAvatarAttributeEditorSection *)&v16 description];
  v4 = [v3 mutableCopy];

  localizedName = [(AVTAvatarAttributeEditorSection *)self localizedName];
  identifier = [(AVTAvatarAttributeEditorSection *)self identifier];
  sectionItems = [(AVTAvatarAttributeEditorSection *)self sectionItems];
  avt_description = [sectionItems avt_description];
  [v4 appendFormat:@" name: %@, identifier: %@, sectionItems: %@", localizedName, identifier, avt_description];

  supplementalPicker = [(AVTAvatarAttributeEditorSection *)self supplementalPicker];

  if (supplementalPicker)
  {
    supplementalPicker2 = [(AVTAvatarAttributeEditorSection *)self supplementalPicker];
    localizedTitle = [supplementalPicker2 localizedTitle];
    [v4 appendFormat:@", supplemental picker: %@", localizedTitle];
  }

  options = [(AVTAvatarAttributeEditorSection *)self options];

  if (options)
  {
    options2 = [(AVTAvatarAttributeEditorSection *)self options];
    [v4 appendFormat:@", options: %@", options2];
  }

  v14 = [v4 copy];

  return v14;
}

- (BOOL)shouldDisplayTitle
{
  localizedName = [(AVTAvatarAttributeEditorSection *)self localizedName];
  if (localizedName)
  {
    localizedName2 = [(AVTAvatarAttributeEditorSection *)self localizedName];
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
  if ([(AVTAvatarAttributeEditorSection *)self shouldDisplayInsetSeparatorAfterSection])
  {
    shouldDisplayTitle = 1;
  }

  else if (sectionCopy)
  {
    shouldDisplayTitle = [sectionCopy shouldDisplayTitle];
  }

  else
  {
    shouldDisplayTitle = 0;
  }

  return shouldDisplayTitle;
}

- (UIEdgeInsets)separatorInsets
{
  if ([(AVTAvatarAttributeEditorSection *)self shouldDisplayInsetSeparatorAfterSection])
  {
    v2 = 0.0;
    v3 = 20.0;
    v4 = 0.0;
    v5 = 20.0;
  }

  else
  {
    v2 = *MEMORY[0x1E69DDCE0];
    v3 = *(MEMORY[0x1E69DDCE0] + 8);
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    v5 = *(MEMORY[0x1E69DDCE0] + 24);
  }

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