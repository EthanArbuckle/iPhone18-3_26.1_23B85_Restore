@interface AVTAvatarAttributeEditorSection
- (AVTAvatarAttributeEditorSection)initWithSectionItems:(id)a3 localizedName:(id)a4 identifier:(id)a5 intendedDestination:(unint64_t)a6 options:(id)a7;
- (BOOL)shouldDisplaySeparatorBeforeSection:(id)a3;
- (BOOL)shouldDisplayTitle;
- (NSArray)sections;
- (NSString)description;
- (UIEdgeInsets)separatorInsets;
@end

@implementation AVTAvatarAttributeEditorSection

- (AVTAvatarAttributeEditorSection)initWithSectionItems:(id)a3 localizedName:(id)a4 identifier:(id)a5 intendedDestination:(unint64_t)a6 options:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = AVTAvatarAttributeEditorSection;
  v16 = [(AVTAvatarAttributeEditorSection *)&v24 init];
  if (v16)
  {
    v17 = [v12 copy];
    sectionItems = v16->_sectionItems;
    v16->_sectionItems = v17;

    v19 = [v13 copy];
    localizedName = v16->_localizedName;
    v16->_localizedName = v19;

    v21 = [v14 copy];
    identifier = v16->_identifier;
    v16->_identifier = v21;

    objc_storeStrong(&v16->_options, a7);
    v16->_intendedDestination = a6;
  }

  return v16;
}

- (NSString)description
{
  v16.receiver = self;
  v16.super_class = AVTAvatarAttributeEditorSection;
  v3 = [(AVTAvatarAttributeEditorSection *)&v16 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTAvatarAttributeEditorSection *)self localizedName];
  v6 = [(AVTAvatarAttributeEditorSection *)self identifier];
  v7 = [(AVTAvatarAttributeEditorSection *)self sectionItems];
  v8 = [v7 avt_description];
  [v4 appendFormat:@" name: %@, identifier: %@, sectionItems: %@", v5, v6, v8];

  v9 = [(AVTAvatarAttributeEditorSection *)self supplementalPicker];

  if (v9)
  {
    v10 = [(AVTAvatarAttributeEditorSection *)self supplementalPicker];
    v11 = [v10 localizedTitle];
    [v4 appendFormat:@", supplemental picker: %@", v11];
  }

  v12 = [(AVTAvatarAttributeEditorSection *)self options];

  if (v12)
  {
    v13 = [(AVTAvatarAttributeEditorSection *)self options];
    [v4 appendFormat:@", options: %@", v13];
  }

  v14 = [v4 copy];

  return v14;
}

- (BOOL)shouldDisplayTitle
{
  v3 = [(AVTAvatarAttributeEditorSection *)self localizedName];
  if (v3)
  {
    v4 = [(AVTAvatarAttributeEditorSection *)self localizedName];
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
  v4 = a3;
  if ([(AVTAvatarAttributeEditorSection *)self shouldDisplayInsetSeparatorAfterSection])
  {
    v5 = 1;
  }

  else if (v4)
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