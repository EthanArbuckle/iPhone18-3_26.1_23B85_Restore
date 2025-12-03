@interface INRootCodableDescription
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
+ (void)recursivelyAssignCodableDescriptionsFor:(id)for referencedCodableDescriptions:(id)descriptions visitedCodableDescriptions:(id)codableDescriptions;
- (INRootCodableDescription)init;
- (INRootCodableDescription)initWithCoder:(id)coder;
- (NSArray)referencedCodableDescriptions;
- (NSDictionary)_referencedCodableDescriptionsByClassName;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)_establishReferencedCodableDescriptionsUsingTypes:(id)types;
- (void)_reestablishReferencedCodableDescriptionsUsingTypes:(id)types;
- (void)_setReferencedCodableDescriptions:(id)descriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INRootCodableDescription

- (NSArray)referencedCodableDescriptions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_referencedCodableDescriptions copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (INRootCodableDescription)init
{
  v3.receiver = self;
  v3.super_class = INRootCodableDescription;
  result = [(INCodableDescription *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)_reestablishReferencedCodableDescriptionsUsingTypes:(id)types
{
  typesCopy = types;
  os_unfair_lock_lock(&self->_lock);
  v12 = [MEMORY[0x1E695DFA0] orderedSetWithArray:self->_referencedCodableDescriptions];
  v5 = objc_opt_class();
  attributes = [(INCodableDescription *)self attributes];
  allValues = [attributes allValues];
  v8 = [v5 _calculateReferencedCodableDescriptionsFromAttributes:allValues usingTypes:typesCopy];

  [v12 addObjectsFromArray:v8];
  array = [v12 array];
  referencedCodableDescriptions = self->_referencedCodableDescriptions;
  self->_referencedCodableDescriptions = array;

  referencedCodableDescriptionsByClassName = self->_referencedCodableDescriptionsByClassName;
  self->_referencedCodableDescriptionsByClassName = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_establishReferencedCodableDescriptionsUsingTypes:(id)types
{
  typesCopy = types;
  v5 = objc_opt_class();
  attributes = [(INCodableDescription *)self attributes];
  allValues = [attributes allValues];
  v7 = [v5 _calculateReferencedCodableDescriptionsFromAttributes:allValues usingTypes:typesCopy];

  [(INRootCodableDescription *)self _setReferencedCodableDescriptions:v7];
}

- (NSDictionary)_referencedCodableDescriptionsByClassName
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_referencedCodableDescriptionsByClassName)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSArray count](self->_referencedCodableDescriptions, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_referencedCodableDescriptions;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          className = [v9 className];
          [(NSDictionary *)v3 setObject:v9 forKey:className];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    referencedCodableDescriptionsByClassName = self->_referencedCodableDescriptionsByClassName;
    self->_referencedCodableDescriptionsByClassName = v3;
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = self->_referencedCodableDescriptionsByClassName;
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)_setReferencedCodableDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  os_unfair_lock_lock(&self->_lock);
  referencedCodableDescriptions = self->_referencedCodableDescriptions;
  self->_referencedCodableDescriptions = descriptionsCopy;
  v6 = descriptionsCopy;

  referencedCodableDescriptionsByClassName = self->_referencedCodableDescriptionsByClassName;
  self->_referencedCodableDescriptionsByClassName = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (INRootCodableDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = INRootCodableDescription;
  v5 = [(INCodableDescription *)&v12 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"referencedCodableDescriptions"];
    [(INRootCodableDescription *)v6 _setReferencedCodableDescriptions:v10];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = INRootCodableDescription;
  coderCopy = coder;
  [(INCodableDescription *)&v6 encodeWithCoder:coderCopy];
  v5 = [(INRootCodableDescription *)self referencedCodableDescriptions:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"referencedCodableDescriptions"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__49918;
  v23 = __Block_byref_object_dispose__49919;
  v24 = 0;
  v17.receiver = self;
  v17.super_class = INRootCodableDescription;
  obj = 0;
  v7 = [(INCodableDescription *)&v17 widgetPlistableRepresentationWithParameters:parametersCopy error:&obj];
  objc_storeStrong(&v24, obj);
  v8 = v20[5];
  if (v8)
  {
    v9 = 0;
    if (error)
    {
      *error = v8;
    }
  }

  else
  {
    referencedCodableDescriptions = [(INRootCodableDescription *)self referencedCodableDescriptions];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__INRootCodableDescription_widgetPlistableRepresentationWithParameters_error___block_invoke;
    v14[3] = &unk_1E7281080;
    v15 = parametersCopy;
    v16 = &v19;
    v11 = [referencedCodableDescriptions if_compactMap:v14];

    v12 = v20[5];
    if (v12)
    {
      v9 = 0;
      if (error)
      {
        *error = v12;
      }
    }

    else
    {
      [v7 intents_setPlistSafeObject:v11 forKey:@"referencedCodableDescriptions"];
      v9 = v7;
    }
  }

  _Block_object_dispose(&v19, 8);

  return v9;
}

void *__78__INRootCodableDescription_widgetPlistableRepresentationWithParameters_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = [v3 array];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "codableDescriptionType")}];
  [v5 addObject:v6];

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [v4 widgetPlistableRepresentationWithParameters:v7 error:&obj];

  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    [v5 addObject:v9];
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

+ (void)recursivelyAssignCodableDescriptionsFor:(id)for referencedCodableDescriptions:(id)descriptions visitedCodableDescriptions:(id)codableDescriptions
{
  forCopy = for;
  descriptionsCopy = descriptions;
  codableDescriptionsCopy = codableDescriptions;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __125__INRootCodableDescription_recursivelyAssignCodableDescriptionsFor_referencedCodableDescriptions_visitedCodableDescriptions___block_invoke;
  v14[3] = &unk_1E72810F8;
  v15 = forCopy;
  v16 = codableDescriptionsCopy;
  v17 = descriptionsCopy;
  selfCopy = self;
  v11 = descriptionsCopy;
  v12 = codableDescriptionsCopy;
  v13 = forCopy;
  [v11 enumerateObjectsUsingBlock:v14];
}

void __125__INRootCodableDescription_recursivelyAssignCodableDescriptionsFor_referencedCodableDescriptions_visitedCodableDescriptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectTypeName];
  v5 = [v3 typeName];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    objc_storeWeak((*(a1 + 32) + 168), v3);
    v7 = [*(a1 + 40) objectForKey:v3];
    v8 = [v7 BOOLValue];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 40) setObject:MEMORY[0x1E695E118] forKey:v3];
      v9 = [v3 attributes];
      v10 = [v9 allValues];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __125__INRootCodableDescription_recursivelyAssignCodableDescriptionsFor_referencedCodableDescriptions_visitedCodableDescriptions___block_invoke_2;
      v14[3] = &unk_1E72810D0;
      v11 = v3;
      v13 = *(a1 + 48);
      v12 = *(a1 + 56);
      v15 = v11;
      v18 = v12;
      v16 = v13;
      v17 = *(a1 + 40);
      [v10 enumerateObjectsUsingBlock:v14];
    }
  }
}

void __125__INRootCodableDescription_recursivelyAssignCodableDescriptionsFor_referencedCodableDescriptions_visitedCodableDescriptions___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v6 objectTypeName];
      v4 = [*(a1 + 32) typeName];
      v5 = [v3 isEqualToString:v4];

      if (v5)
      {
        objc_storeWeak(v6 + 21, *(a1 + 32));
      }

      [*(a1 + 56) recursivelyAssignCodableDescriptionsFor:v6 referencedCodableDescriptions:*(a1 + 40) visitedCodableDescriptions:*(a1 + 48)];
    }
  }
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v47.receiver = self;
  v47.super_class = &OBJC_METACLASS___INRootCodableDescription;
  v48 = 0;
  v7 = objc_msgSendSuper2(&v47, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v48);
  v8 = v48;
  if (v8)
  {
    v9 = v8;
    if (error)
    {
      v10 = v8;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_28;
  }

  selfCopy = self;
  errorCopy = error;
  array = [MEMORY[0x1E695DF70] array];
  v35 = representationCopy;
  [representationCopy intents_safeObjectForKey:@"referencedCodableDescriptions" ofType:objc_opt_class()];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = v46 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    v37 = v12;
LABEL_6:
    v16 = 0;
    while (1)
    {
      if (*v44 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v43 + 1) + 8 * v16);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 count] == 2)
      {
        v18 = v17;
        v19 = [v18 objectAtIndexedSubscript:0];
        v20 = [v18 objectAtIndexedSubscript:1];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = INCodableDescriptionClassFromType([v19 integerValue]);
            if (v21)
            {
              v42 = 0;
              v22 = [v21 makeFromWidgetPlistableRepresentation:v20 error:&v42];
              v23 = v42;
              if (v23)
              {
                v9 = v23;
                if (errorCopy)
                {
                  v32 = v23;
                  *errorCopy = v9;
                }

                v11 = 0;
                v12 = v37;
                goto LABEL_26;
              }

              if (v22)
              {
                [array addObject:v22];

                v12 = v37;
                goto LABEL_19;
              }
            }
          }
        }

        v12 = v37;
      }

      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wrong types found for relationship codable description"];
      v9 = INIntentError(8001, v24, 0);

      if (v9)
      {
        if (errorCopy)
        {
          v29 = v9;
          v11 = 0;
          *errorCopy = v9;
        }

        else
        {
          v11 = 0;
        }

LABEL_26:
        v28 = v12;
        representationCopy = v35;
        v25 = array;
        goto LABEL_27;
      }

LABEL_19:
      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (v14)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v25 = array;
  [v7 _setReferencedCodableDescriptions:array];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  attributes = [v7 attributes];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __72__INRootCodableDescription_makeFromWidgetPlistableRepresentation_error___block_invoke;
  v38[3] = &unk_1E72810A8;
  v41 = selfCopy;
  v39 = array;
  v40 = strongToStrongObjectsMapTable;
  v28 = strongToStrongObjectsMapTable;
  [attributes enumerateKeysAndObjectsUsingBlock:v38];

  v11 = v7;
  v9 = 0;
  representationCopy = v35;
LABEL_27:

LABEL_28:
  v30 = *MEMORY[0x1E69E9840];

  return v11;
}

void __72__INRootCodableDescription_makeFromWidgetPlistableRepresentation_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 48) recursivelyAssignCodableDescriptionsFor:v5 referencedCodableDescriptions:*(a1 + 32) visitedCodableDescriptions:*(a1 + 40)];
    }
  }
}

@end