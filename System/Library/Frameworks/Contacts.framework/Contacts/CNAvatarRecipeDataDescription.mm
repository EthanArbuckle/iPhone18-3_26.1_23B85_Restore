@interface CNAvatarRecipeDataDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (BOOL)setABValue:(void *)value onABPerson:(void *)person error:(__CFError *)error;
- (BOOL)setCNValue:(id)value onABPerson:(void *)person withDependentPropertiesContext:(id)context error:(id *)error;
- (id)posterDataChangeRequestsForValue:(id)value contactIdentifier:(id)identifier;
- (void)ABValueForABPerson:(void *)person;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNAvatarRecipeDataDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  avatarRecipeData = [contactCopy avatarRecipeData];
  if (!avatarRecipeData)
  {
    avatarRecipeData2 = [otherCopy avatarRecipeData];
    if (!avatarRecipeData2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  avatarRecipeData3 = [contactCopy avatarRecipeData];
  avatarRecipeData4 = [otherCopy avatarRecipeData];
  v11 = [avatarRecipeData3 isEqual:avatarRecipeData4];

  if (!avatarRecipeData)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  coderCopy = coder;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_avatarRecipeData"];

  v7 = [v9 copy];
  v8 = contactCopy[85];
  contactCopy[85] = v7;
}

- (id)posterDataChangeRequestsForValue:(id)value contactIdentifier:(id)identifier
{
  v22[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  identifierCopy = identifier;
  objc_opt_class();
  v7 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [CNContactImage alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    date = [MEMORY[0x1E695DF00] date];
    LOBYTE(v19) = 0;
    v14 = [(CNContactImage *)v10 initWithIdentifier:uUIDString imageData:v9 lastUsedDate:date cropRect:0 source:0 sourceIdentifier:1 encodingType:*MEMORY[0x1E696AA80] variant:*(MEMORY[0x1E696AA80] + 8) poseConfigurationData:*(MEMORY[0x1E696AA80] + 16) displayString:*(MEMORY[0x1E696AA80] + 24) ignoredForRevert:0 itemDetails:0, 0, v19, 0];

    v15 = [CNContactImageCreateRequest requestToCreateImage:v14 forContactIdentifier:identifierCopy];
    v20 = v15;
    v16 = &v20;
  }

  else
  {
    v21 = identifierCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v15 = [CNContactImageDeleteRequest requestToDeleteImagesForContactIdentifiers:v14];
    v22[0] = v15;
    v16 = v22;
  }

  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  return v17;
}

- (BOOL)setCNValue:(id)value onABPerson:(void *)person withDependentPropertiesContext:(id)context error:(id *)error
{
  contextCopy = context;
  valueCopy = value;
  [contextCopy setUpdatingAvatarRecipeData:1];
  v13.receiver = self;
  v13.super_class = CNAvatarRecipeDataDescription;
  LOBYTE(error) = [(CNPropertyDescription *)&v13 setCNValue:valueCopy onABPerson:person withDependentPropertiesContext:contextCopy error:error];

  return error;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A150];
  }

  return d != 0;
}

- (BOOL)setABValue:(void *)value onABPerson:(void *)person error:(__CFError *)error
{
  if (value)
  {
    v7 = CFGetTypeID(value);
    if (v7 == CFDataGetTypeID())
    {

      return MEMORY[0x1EEDEB2A8](person, value);
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return ABPersonClearAvatarRecipeData();
  }
}

- (void)ABValueForABPerson:(void *)person
{
  result = ABPersonCopyAvatarRecipeData();
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

@end