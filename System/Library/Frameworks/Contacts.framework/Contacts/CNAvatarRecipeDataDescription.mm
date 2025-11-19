@interface CNAvatarRecipeDataDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (BOOL)setABValue:(void *)a3 onABPerson:(void *)a4 error:(__CFError *)a5;
- (BOOL)setCNValue:(id)a3 onABPerson:(void *)a4 withDependentPropertiesContext:(id)a5 error:(id *)a6;
- (id)posterDataChangeRequestsForValue:(id)a3 contactIdentifier:(id)a4;
- (void)ABValueForABPerson:(void *)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNAvatarRecipeDataDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 avatarRecipeData];
  if (!v8)
  {
    v4 = [v7 avatarRecipeData];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 avatarRecipeData];
  v10 = [v7 avatarRecipeData];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_avatarRecipeData"];

  v7 = [v9 copy];
  v8 = v5[85];
  v5[85] = v7;
}

- (id)posterDataChangeRequestsForValue:(id)a3 contactIdentifier:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = v5;
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
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];
    v13 = [MEMORY[0x1E695DF00] date];
    LOBYTE(v19) = 0;
    v14 = [(CNContactImage *)v10 initWithIdentifier:v12 imageData:v9 lastUsedDate:v13 cropRect:0 source:0 sourceIdentifier:1 encodingType:*MEMORY[0x1E696AA80] variant:*(MEMORY[0x1E696AA80] + 8) poseConfigurationData:*(MEMORY[0x1E696AA80] + 16) displayString:*(MEMORY[0x1E696AA80] + 24) ignoredForRevert:0 itemDetails:0, 0, v19, 0];

    v15 = [CNContactImageCreateRequest requestToCreateImage:v14 forContactIdentifier:v6];
    v20 = v15;
    v16 = &v20;
  }

  else
  {
    v21 = v6;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v15 = [CNContactImageDeleteRequest requestToDeleteImagesForContactIdentifiers:v14];
    v22[0] = v15;
    v16 = v22;
  }

  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  return v17;
}

- (BOOL)setCNValue:(id)a3 onABPerson:(void *)a4 withDependentPropertiesContext:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  [v10 setUpdatingAvatarRecipeData:1];
  v13.receiver = self;
  v13.super_class = CNAvatarRecipeDataDescription;
  LOBYTE(a6) = [(CNPropertyDescription *)&v13 setCNValue:v11 onABPerson:a4 withDependentPropertiesContext:v10 error:a6];

  return a6;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A150];
  }

  return a3 != 0;
}

- (BOOL)setABValue:(void *)a3 onABPerson:(void *)a4 error:(__CFError *)a5
{
  if (a3)
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFDataGetTypeID())
    {

      return MEMORY[0x1EEDEB2A8](a4, a3);
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

- (void)ABValueForABPerson:(void *)a3
{
  result = ABPersonCopyAvatarRecipeData();
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

@end