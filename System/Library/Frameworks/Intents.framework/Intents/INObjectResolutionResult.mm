@interface INObjectResolutionResult
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
- (void)transformResolutionResultForIntent:(id)a3 intentSlotDescription:(id)a4 withOptionsProvider:(id)a5 completion:(id)a6;
@end

@implementation INObjectResolutionResult

- (void)transformResolutionResultForIntent:(id)a3 intentSlotDescription:(id)a4 withOptionsProvider:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 _codableDescription];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [(INIntentResolutionResult *)self resolvedValue];
  v18 = [v16 _referencedCodableDescriptionsByClassName];
  v19 = [INCodableDescription _codableDescriptionForTypedObject:v17 inDictionary:v18];

  if (v19)
  {
    v20 = [v11 name];
    v21 = [v16 attributeByName:v20];

    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    [v23 setCodableDescription:v19];
    v24 = [v11 codableAttribute];
    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    [v26 setCodableDescription:v19];
  }

  v27.receiver = self;
  v27.super_class = INObjectResolutionResult;
  [(INIntentResolutionResult *)&v27 transformResolutionResultForIntent:v10 intentSlotDescription:v11 withOptionsProvider:v12 completion:v13];
}

- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 description];
  v8 = [MEMORY[0x1E695DF58] systemLocale];
  v9 = [v8 groupingSeparator];
  if ([v6 valueType] == 225)
  {
    if ([v6 valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v5, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
    {
      v12 = [v5 valueForKey:@"displayString"];
      v13 = [v12 if_escapedComponentsJoinedByString:v9 forLocale:v8];

      v7 = v12;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      v13 = [v5 displayString];
    }

    v7 = v13;
  }

LABEL_9:

  return v7;
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 225)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    v8 = [v6 codableAttribute];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 valueTransformer];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __70__INObjectResolutionResult__intentSlotValueForObject_slotDescription___block_invoke;
    v29[3] = &unk_1E7283450;
    v12 = v11;
    v30 = v12;
    v31 = v7;
    v13 = v10;
    v32 = v13;
    v14 = MEMORY[0x193AD7780](v29);
    if ([v6 valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v5, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) != 0))
    {
      v24 = v12;
      v17 = v5;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v14[2](v14, *(*(&v25 + 1) + 8 * i));
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v19);
      }

      v12 = v24;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        (v14)[2](v14, v5);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v7;
}

void __70__INObjectResolutionResult__intentSlotValueForObject_slotDescription___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() transformedValueClass];
  if (v4 == objc_opt_class())
  {
    v6 = INIntentSlotValueTransformToCustomObject(v13);
    [*(a1 + 40) addPayloadCustomObject:v6];
  }

  else
  {
    v5 = [*(a1 + 48) valueTransformer];
    v6 = [v5 transformedValue:v13];

    v7 = [INArchivedObject alloc];
    v8 = [*(a1 + 48) typeName];
    v9 = [v6 data];
    v10 = [(INArchivedObject *)v7 initWithTypeName:v8 messageData:v9];

    v11 = *(a1 + 40);
    v12 = INIntentSlotValueTransformToArchivedObject(v10);
    [v11 addPayloadArchivedObject:v12];
  }
}

@end