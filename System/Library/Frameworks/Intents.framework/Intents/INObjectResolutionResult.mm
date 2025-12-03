@interface INObjectResolutionResult
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
- (void)transformResolutionResultForIntent:(id)intent intentSlotDescription:(id)description withOptionsProvider:(id)provider completion:(id)completion;
@end

@implementation INObjectResolutionResult

- (void)transformResolutionResultForIntent:(id)intent intentSlotDescription:(id)description withOptionsProvider:(id)provider completion:(id)completion
{
  intentCopy = intent;
  descriptionCopy = description;
  providerCopy = provider;
  completionCopy = completion;
  _codableDescription = [intentCopy _codableDescription];
  if (_codableDescription)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = _codableDescription;
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

  resolvedValue = [(INIntentResolutionResult *)self resolvedValue];
  _referencedCodableDescriptionsByClassName = [v16 _referencedCodableDescriptionsByClassName];
  v19 = [INCodableDescription _codableDescriptionForTypedObject:resolvedValue inDictionary:_referencedCodableDescriptionsByClassName];

  if (v19)
  {
    name = [descriptionCopy name];
    v21 = [v16 attributeByName:name];

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
    codableAttribute = [descriptionCopy codableAttribute];
    if (codableAttribute)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = codableAttribute;
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
  [(INIntentResolutionResult *)&v27 transformResolutionResultForIntent:intentCopy intentSlotDescription:descriptionCopy withOptionsProvider:providerCopy completion:completionCopy];
}

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  groupingSeparator = [systemLocale groupingSeparator];
  if ([descriptionCopy valueType] == 225)
  {
    if ([descriptionCopy valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(objectCopy, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
    {
      v12 = [objectCopy valueForKey:@"displayString"];
      displayString = [v12 if_escapedComponentsJoinedByString:groupingSeparator forLocale:systemLocale];

      v7 = v12;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      displayString = [objectCopy displayString];
    }

    v7 = displayString;
  }

LABEL_9:

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  v34 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 225)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    codableAttribute = [descriptionCopy codableAttribute];
    if (codableAttribute)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = codableAttribute;
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

    valueTransformer = [v10 valueTransformer];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __70__INObjectResolutionResult__intentSlotValueForObject_slotDescription___block_invoke;
    v29[3] = &unk_1E7283450;
    v12 = valueTransformer;
    v30 = v12;
    v31 = v7;
    v13 = v10;
    v32 = v13;
    v14 = MEMORY[0x193AD7780](v29);
    if ([descriptionCopy valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(objectCopy, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) != 0))
    {
      v24 = v12;
      v17 = objectCopy;
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
        (v14)[2](v14, objectCopy);
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