@interface MFPersonTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation MFPersonTransformer

- (id)transformedValue:(id)value
{
  v23[2] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v4 = MEMORY[0x1E695CD58];
  ea_uncommentedAddress = [valueCopy ea_uncommentedAddress];
  v6 = [v4 predicateForContactsMatchingEmailAddress:ea_uncommentedAddress];

  v23[0] = *MEMORY[0x1E695C208];
  v7 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v23[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];

  v9 = [MEMORY[0x1E695CE18] storeWithOptions:1];
  v22 = 0;
  v10 = [v9 unifiedContactsMatchingPredicate:v6 keysToFetch:v8 error:&v22];
  v11 = v22;
  v12 = objc_alloc(MEMORY[0x1E696E948]);
  ea_uncommentedAddress2 = [valueCopy ea_uncommentedAddress];
  v14 = [v12 initWithValue:ea_uncommentedAddress2 type:1];

  if (v11 || ![v10 count])
  {
    v15 = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v14 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x1E696E940]);
    firstObject = [v10 firstObject];
    v18 = [v16 initWithContact:firstObject];

    [v18 setPersonHandle:v14];
    v15 = v18;
  }

  ea_personNameComponents = [valueCopy ea_personNameComponents];
  if (ea_personNameComponents)
  {
    [v15 setNameComponents:ea_personNameComponents];
  }

  v20 = [MEMORY[0x1E699AFD0] displayNameFromAddress:valueCopy];
  if (v20)
  {
    [v15 setDisplayName:v20];
  }

  return v15;
}

- (id)reverseTransformedValue:(id)value
{
  personHandle = [value personHandle];
  if ([personHandle type] == 1)
  {
    value = [personHandle value];
  }

  else
  {
    value = 0;
  }

  return value;
}

@end