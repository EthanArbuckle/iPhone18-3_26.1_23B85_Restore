@interface CNLabeledValue(UIAdditions)
+ (id)allCustomLabels;
+ (id)allLabels;
+ (id)builtinLabelsForProperty:()UIAdditions;
+ (id)defaultLabels;
+ (id)localizedDisplayStringForLabel:()UIAdditions propertyName:;
+ (uint64_t)addressBook;
+ (void)deleteCustomLabel:()UIAdditions;
- (id)localizedLabel;
@end

@implementation CNLabeledValue(UIAdditions)

- (id)localizedLabel
{
  label = [self label];
  if (label)
  {
    v2 = [MEMORY[0x1E695CEE0] localizedStringForLabel:label];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)builtinLabelsForProperty:()UIAdditions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (builtinLabelsForProperty__onceToken != -1)
  {
    dispatch_once(&builtinLabelsForProperty__onceToken, &__block_literal_global_8_16724);
  }

  if ([v3 isEqualToString:@"birthdays"])
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    calendarIdentifier = [currentCalendar calendarIdentifier];
    v12[0] = calendarIdentifier;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    availableAlternateCalendars = [MEMORY[0x1E6996B48] availableAlternateCalendars];
    v8 = [v6 arrayByAddingObjectsFromArray:availableAlternateCalendars];

    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [builtinLabelsForProperty__labelsForProperty objectForKeyedSubscript:v3];
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v9 = *MEMORY[0x1E695CBD8];
  v11[0] = *MEMORY[0x1E695CB60];
  v11[1] = v9;
  v11[2] = *MEMORY[0x1E695CB68];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
LABEL_8:

  return v8;
}

+ (void)deleteCustomLabel:()UIAdditions
{
  v3 = MEMORY[0x1E695CEE0];
  v4 = a3;
  [v3 addressBook];
  ABAddressBookDeleteLabel();
}

+ (id)allCustomLabels
{
  v2 = MEMORY[0x1E695DFD8];
  defaultLabels = [self defaultLabels];
  v4 = [v2 setWithArray:defaultLabels];

  v5 = MEMORY[0x1E695DFA8];
  allLabels = [self allLabels];
  v7 = [v5 setWithArray:allLabels];

  [v7 minusSet:v4];
  allObjects = [v7 allObjects];

  return allObjects;
}

+ (id)allLabels
{
  [MEMORY[0x1E695CEE0] addressBook];
  v0 = ABAddressBookCopyAllLabels();

  return v0;
}

+ (id)defaultLabels
{
  if (defaultLabels_onceToken != -1)
  {
    dispatch_once(&defaultLabels_onceToken, &__block_literal_global_3_16726);
  }

  v1 = defaultLabels_labels;

  return v1;
}

+ (id)localizedDisplayStringForLabel:()UIAdditions propertyName:
{
  v6 = a4;
  v7 = [self localizedStringForLabel:a3];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v8 = CNUILocalizedStringForPropertyWithFormatKey(@"LOWERCASE_LABEL", v6);

    v7 = v8;
  }

  return v7;
}

+ (uint64_t)addressBook
{
  if (addressBook_onceToken != -1)
  {
    dispatch_once(&addressBook_onceToken, &__block_literal_global_16731);
  }

  return addressBook_ab;
}

@end