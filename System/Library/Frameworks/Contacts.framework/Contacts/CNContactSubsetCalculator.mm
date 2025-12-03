@interface CNContactSubsetCalculator
+ (BOOL)_isLabel:(id)label subsumableIntoLabel:(id)intoLabel equivalencies:(id)equivalencies;
+ (BOOL)_isLabeledValue:(id)value availableInLabeledValues:(id)values claimedIndices:(id)indices forMultiValueProperty:(id)property;
+ (BOOL)isContact:(id)contact subsetOfContact:(id)ofContact forMultiValueProperty:(id)property;
+ (BOOL)isContact:(id)contact subsetOfContact:(id)ofContact forSingleValueProperty:(id)property;
+ (BOOL)isContact:(id)contact subsetOfContact:(id)ofContact ignoringProperties:(id)properties;
@end

@implementation CNContactSubsetCalculator

+ (BOOL)isContact:(id)contact subsetOfContact:(id)ofContact ignoringProperties:(id)properties
{
  v36 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  ofContactCopy = ofContact;
  propertiesCopy = properties;
  v27 = propertiesCopy;
  if (contactCopy == ofContactCopy)
  {
    v24 = 1;
  }

  else
  {
    v10 = propertiesCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = +[CN writableContactProperties];
    v11 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        v16 = [v15 key];
        v17 = [v10 containsKey:v16];

        if ((v17 & 1) == 0)
        {
          break;
        }

LABEL_21:
        if (v12 == ++v14)
        {
          v12 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }
      }

      if (contactCopy)
      {
        v18 = [v15 key];
        v34 = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
        v20 = [contactCopy areKeysAvailable:v19];

        if (ofContactCopy)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v20 = 1;
        if (ofContactCopy)
        {
LABEL_10:
          v21 = [v15 key];
          v33 = v21;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
          v23 = [ofContactCopy areKeysAvailable:v22];

          if (contactCopy)
          {
            v10 = v27;
            if ((v20 ^ v23))
            {
              goto LABEL_25;
            }
          }

          else
          {
            v10 = v27;
          }

LABEL_16:
          if ((v20 & v23) == 1)
          {
            if ([v15 isMultiValue])
            {
              if (([self isContact:contactCopy subsetOfContact:ofContactCopy forMultiValueProperty:v15] & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            else if (![self isContact:contactCopy subsetOfContact:ofContactCopy forSingleValueProperty:v15])
            {
LABEL_25:
              v24 = 0;
              goto LABEL_26;
            }
          }

          goto LABEL_21;
        }
      }

      v23 = 1;
      goto LABEL_16;
    }

LABEL_23:
    v24 = 1;
LABEL_26:
  }

  return v24;
}

+ (BOOL)isContact:(id)contact subsetOfContact:(id)ofContact forSingleValueProperty:(id)property
{
  contactCopy = contact;
  propertyCopy = property;
  ofContactCopy = ofContact;
  v10 = [propertyCopy CNValueForContact:contactCopy];
  v11 = [propertyCopy CNValueForContact:ofContactCopy];

  if ([propertyCopy canUnifyValue:v10 withValue:v11] & 1) != 0 || (+[CNContact emptyContact](CNContact, "emptyContact"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(propertyCopy, "isEqualIgnoringIdentifiersForContact:other:", contactCopy, v12), v12, (v13))
  {
    v14 = 1;
  }

  else
  {
    v15 = [propertyCopy CNValueForContact:contactCopy];
    v14 = v15 == 0;
  }

  return v14;
}

+ (BOOL)isContact:(id)contact subsetOfContact:(id)ofContact forMultiValueProperty:(id)property
{
  v25 = *MEMORY[0x1E69E9840];
  ofContactCopy = ofContact;
  propertyCopy = property;
  v10 = [propertyCopy CNValueForContact:contact];
  v11 = [propertyCopy CNValueForContact:ofContactCopy];
  v12 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if (![self _isLabeledValue:*(*(&v20 + 1) + 8 * i) availableInLabeledValues:v11 claimedIndices:v12 forMultiValueProperty:{propertyCopy, v20}])
        {
          v18 = 0;
          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_11:

  return v18;
}

+ (BOOL)_isLabeledValue:(id)value availableInLabeledValues:(id)values claimedIndices:(id)indices forMultiValueProperty:(id)property
{
  valueCopy = value;
  valuesCopy = values;
  indicesCopy = indices;
  propertyCopy = property;
  equivalentLabelSets = [propertyCopy equivalentLabelSets];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  label = [valueCopy label];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __107__CNContactSubsetCalculator__isLabeledValue_availableInLabeledValues_claimedIndices_forMultiValueProperty___block_invoke;
  v22[3] = &unk_1E7416110;
  v16 = indicesCopy;
  v23 = v16;
  selfCopy = self;
  v17 = label;
  v24 = v17;
  v18 = equivalentLabelSets;
  v25 = v18;
  v19 = propertyCopy;
  v26 = v19;
  v20 = valueCopy;
  v27 = v20;
  v28 = &v30;
  [valuesCopy enumerateObjectsUsingBlock:v22];
  LOBYTE(equivalentLabelSets) = *(v31 + 24);

  _Block_object_dispose(&v30, 8);
  return equivalentLabelSets;
}

uint64_t __107__CNContactSubsetCalculator__isLabeledValue_availableInLabeledValues_claimedIndices_forMultiValueProperty___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [*(a1 + 32) containsIndex:a3];
  v8 = v14;
  if ((v7 & 1) == 0)
  {
    v9 = [v14 label];
    if ([*(a1 + 80) _isLabel:*(a1 + 40) subsumableIntoLabel:v9 equivalencies:*(a1 + 48)])
    {
      v10 = *(a1 + 56);
      v11 = [*(a1 + 64) value];
      v12 = [v14 value];
      LODWORD(v10) = [v10 canUnifyValue:v11 withValue:v12];

      if (v10)
      {
        [*(a1 + 32) addIndex:a3];
        *(*(*(a1 + 72) + 8) + 24) = 1;
        *a4 = 1;
      }
    }

    v8 = v14;
  }

  return MEMORY[0x1EEE66BB8](v7, v8);
}

+ (BOOL)_isLabel:(id)label subsumableIntoLabel:(id)intoLabel equivalencies:(id)equivalencies
{
  v23 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  intoLabelCopy = intoLabel;
  equivalenciesCopy = equivalencies;
  if ((*(*MEMORY[0x1E6996568] + 16))() & 1) != 0 || ([labelCopy isEqual:intoLabelCopy])
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v11 = [CNLabeledValue localizedStringForLabel:labelCopy];
    v12 = [CNLabeledValue localizedStringForLabel:intoLabelCopy];
    if ([v11 isEqual:v12])
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = equivalenciesCopy;
      v10 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v14 = *v19;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v13);
            }

            v16 = *(*(&v18 + 1) + 8 * i);
            if ([v16 containsObject:{labelCopy, v18}] && (objc_msgSend(v16, "containsObject:", intoLabelCopy) & 1) != 0)
            {
              LOBYTE(v10) = 1;
              goto LABEL_17;
            }
          }

          v10 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }
  }

  return v10;
}

@end