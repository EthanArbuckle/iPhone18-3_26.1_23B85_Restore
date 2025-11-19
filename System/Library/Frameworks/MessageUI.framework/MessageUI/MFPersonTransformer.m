@interface MFPersonTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation MFPersonTransformer

- (id)transformedValue:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695CD58];
  v5 = [v3 ea_uncommentedAddress];
  v6 = [v4 predicateForContactsMatchingEmailAddress:v5];

  v23[0] = *MEMORY[0x1E695C208];
  v7 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v23[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];

  v9 = [MEMORY[0x1E695CE18] storeWithOptions:1];
  v22 = 0;
  v10 = [v9 unifiedContactsMatchingPredicate:v6 keysToFetch:v8 error:&v22];
  v11 = v22;
  v12 = objc_alloc(MEMORY[0x1E696E948]);
  v13 = [v3 ea_uncommentedAddress];
  v14 = [v12 initWithValue:v13 type:1];

  if (v11 || ![v10 count])
  {
    v15 = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v14 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x1E696E940]);
    v17 = [v10 firstObject];
    v18 = [v16 initWithContact:v17];

    [v18 setPersonHandle:v14];
    v15 = v18;
  }

  v19 = [v3 ea_personNameComponents];
  if (v19)
  {
    [v15 setNameComponents:v19];
  }

  v20 = [MEMORY[0x1E699AFD0] displayNameFromAddress:v3];
  if (v20)
  {
    [v15 setDisplayName:v20];
  }

  return v15;
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = [a3 personHandle];
  if ([v3 type] == 1)
  {
    v4 = [v3 value];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end