@interface CNContactPolicyValidator
+ (BOOL)shouldIgnoreValidationCheckForProperty:(id)property;
+ (id)contactFromContact:(id)contact conformingToPolicy:(id)policy options:(unint64_t)options valueToStringTransform:(id)transform;
@end

@implementation CNContactPolicyValidator

+ (BOOL)shouldIgnoreValidationCheckForProperty:(id)property
{
  v3 = shouldIgnoreValidationCheckForProperty__cn_once_token_0;
  propertyCopy = property;
  if (v3 != -1)
  {
    +[CNContactPolicyValidator shouldIgnoreValidationCheckForProperty:];
  }

  v5 = shouldIgnoreValidationCheckForProperty__cn_once_object_0;
  v6 = [propertyCopy key];

  v7 = [v5 containsObject:v6];
  return v7;
}

void __67__CNContactPolicyValidator_shouldIgnoreValidationCheckForProperty___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v5 = +[CN allImageDataProperties];
  v1 = [v5 _cn_map:&__block_literal_global_4_10];
  v2 = [v0 setWithArray:v1];
  v3 = [v2 copy];
  v4 = shouldIgnoreValidationCheckForProperty__cn_once_object_0;
  shouldIgnoreValidationCheckForProperty__cn_once_object_0 = v3;
}

+ (id)contactFromContact:(id)contact conformingToPolicy:(id)policy options:(unint64_t)options valueToStringTransform:(id)transform
{
  optionsCopy = options;
  contactCopy = contact;
  policyCopy = policy;
  transformCopy = transform;
  if ((optionsCopy & 8) != 0)
  {
    [contactCopy identifier];
  }

  else
  {
    +[CNContact makeIdentifierString];
  }
  v13 = ;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__35;
  v50 = __Block_byref_object_dispose__35;
  v51 = 0;
  if ((optionsCopy & 4) != 0)
  {
    v16 = +[CNContactKeyVector keyVector];
    keyVector = [contactCopy keyVector];
    v15 = [v16 keyVectorByAddingKeysFromKeyVector:keyVector];

    v18 = [(CNContact *)[CNMutableContact alloc] initWithIdentifier:v13 availableKeyDescriptor:v15];
    v19 = v47[5];
    v47[5] = v18;
  }

  else
  {
    v14 = [(CNContact *)[CNMutableContact alloc] initWithIdentifier:v13];
    v15 = v47[5];
    v47[5] = v14;
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__35;
  v44 = __Block_byref_object_dispose__35;
  string = [MEMORY[0x1E696AD60] string];
  keyVector2 = [v47[5] keyVector];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __97__CNContactPolicyValidator_contactFromContact_conformingToPolicy_options_valueToStringTransform___block_invoke;
  v31[3] = &unk_1E74176C0;
  v21 = contactCopy;
  v32 = v21;
  selfCopy = self;
  v22 = policyCopy;
  v33 = v22;
  v35 = &v46;
  v38 = optionsCopy & 1;
  v39 = (optionsCopy & 2) != 0;
  v23 = transformCopy;
  v34 = v23;
  v36 = &v40;
  [keyVector2 enumeratePropertiesUsingBlock:v31];

  v24 = (*(*MEMORY[0x1E6996570] + 16))();
  v25 = v47;
  if (v24 && v47[5])
  {
    v26 = [v21 valueForKey:@"note"];
    v27 = objc_alloc(MEMORY[0x1E696AEC0]);
    v28 = [v27 initWithFormat:@"%@\n%@", v26, v41[5]];
    [v47[5] setValue:v28 forKey:@"note"];

    v25 = v47;
  }

  v29 = v25[5];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  return v29;
}

void __97__CNContactPolicyValidator_contactFromContact_conformingToPolicy_options_valueToStringTransform___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 CNValueForContact:*(a1 + 32)];
  if (v6)
  {
    v7 = [*(a1 + 72) shouldIgnoreValidationCheckForProperty:v5];
    v8 = *(a1 + 40);
    v9 = [v5 key];
    v10 = *(a1 + 32);
    v24 = 0;
    v11 = [v8 shouldSetValue:v6 property:v9 contact:v10 replacementValue:&v24];
    v12 = v24;

    if ((v7 & 1) != 0 || v11)
    {
      v13 = v5;
      v14 = v6;
      goto LABEL_9;
    }

    if (v12 && *(a1 + 80) == 1)
    {
      v13 = v5;
      v14 = v12;
LABEL_9:
      v15 = [v13 valueWithResetIdentifiers:v14];
      [v5 setCNValue:v15 onContact:*(*(*(a1 + 56) + 8) + 40)];
LABEL_10:

      goto LABEL_11;
    }

    v16 = [v5 nilValue];
    if ([v6 isEqual:v16])
    {
    }

    else
    {
      v17 = *(a1 + 81);

      if (v17 == 1)
      {
        v18 = *(*(a1 + 56) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = 0;

        *a3 = 1;
        goto LABEL_11;
      }
    }

    v15 = +[CN squashableContactCardPropertyKeys];
    v20 = [v5 key];
    if (![v15 containsKey:v20])
    {

      goto LABEL_10;
    }

    v21 = *(a1 + 48);

    if (v21)
    {
      v22 = *(*(*(a1 + 64) + 8) + 40);
      v23 = (*(*(a1 + 48) + 16))();
      [v22 appendString:v23];
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_11:
}

@end