@interface _EXExtensionPredicateBuilder
- (_EXExtensionPredicateBuilder)initWithActivationRules:(_EXExtensionActivationRules *)rules predicateDictionary:(id)dictionary;
- (id)applyRuleWithRuleName:(id)name acceptRule:(id)rule rejectRule:(id)rejectRule types:(id)types exceptTypes:(id)exceptTypes parentType:(id)type children:(id)children parentAccepted:(BOOL)self0 accepted:(BOOL *)self1 acceptedTypesInSubtree:(id *)self2 exceptTypesInSubtree:(id *)self3;
- (id)gatherChildrenPredicateWithRuleDictionary:(id)dictionary parentType:(id)type parentAccepted:(BOOL)accepted acceptedChildTypes:(id *)types exceptChildTypes:(id *)childTypes;
- (id)makePredicate;
- (id)predicateForRejectExceptOtherTypesRule:(id)rule type:(id)type otherTypes:(id)types;
@end

@implementation _EXExtensionPredicateBuilder

- (_EXExtensionPredicateBuilder)initWithActivationRules:(_EXExtensionActivationRules *)rules predicateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _EXExtensionPredicateBuilder;
  v8 = [(_EXExtensionPredicateBuilder *)&v13 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"NSExtensionActivationDictionaryVersion"];
    v8->_version = [v9 unsignedIntegerValue];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"NSExtensionActivationUsesStrictMatching"];
    v8->_strictMatchingSpecified = [v10 BOOLValue];

    v11 = v8->_strictMatchingSpecified || v8->_version < 2;
    v8->_usesStrictMatching = v11;
    objc_storeStrong(&v8->_predicateDictionary, dictionary);
    v8->_activationRules = rules;
  }

  return v8;
}

- (id)predicateForRejectExceptOtherTypesRule:(id)rule type:(id)type otherTypes:(id)types
{
  v22[2] = *MEMORY[0x1E69E9840];
  ruleCopy = rule;
  typeCopy = type;
  typesCopy = types;
  v11 = typesCopy;
  if (ruleCopy | typeCopy)
  {
    if (!ruleCopy && typesCopy && [typesCopy count])
    {
      if ([v11 count] < 2)
      {
        v19[0] = @"TYPE";
        v19[1] = @"OTHER_TYPE";
        v20[0] = typeCopy;
        firstObject = [v11 firstObject];
        v20[1] = firstObject;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

        v14 = 8;
      }

      else
      {
        v21[0] = @"TYPE";
        v21[1] = @"OTHER_TYPES";
        v22[0] = typeCopy;
        v22[1] = v11;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
        v14 = 16;
      }

      v12 = [*(&self->_activationRules->var0 + v14) predicateWithSubstitutionVariables:v13];

      if (!v12)
      {
        v16 = _EXDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [_EXExtensionPredicateBuilder predicateForRejectExceptOtherTypesRule:type:otherTypes:];
        }
      }
    }

    else
    {
      v12 = [(_EXExtensionPredicateBuilder *)self predicateForCountingRule:ruleCopy type:typeCopy exceptTypes:0 specifiedCount:0];
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)applyRuleWithRuleName:(id)name acceptRule:(id)rule rejectRule:(id)rejectRule types:(id)types exceptTypes:(id)exceptTypes parentType:(id)type children:(id)children parentAccepted:(BOOL)self0 accepted:(BOOL *)self1 acceptedTypesInSubtree:(id *)self2 exceptTypesInSubtree:(id *)self3
{
  nameCopy = name;
  ruleCopy = rule;
  rejectRuleCopy = rejectRule;
  typesCopy = types;
  exceptTypesCopy = exceptTypes;
  typeCopy = type;
  childrenCopy = children;
  v23 = [(NSDictionary *)self->_predicateDictionary objectForKey:nameCopy];
  intValue = [v23 intValue];
  v25 = intValue;
  v26 = v23 == 0;
  if (intValue)
  {
    v26 = 1;
  }

  v27 = intValue > 0 != v26 && (!self->_usesStrictMatching || accepted);
  if ([typesCopy count])
  {
    v28 = [typesCopy objectAtIndex:0];
  }

  else
  {
    v28 = 0;
  }

  v42 = typeCopy;
  v40 = childrenCopy;
  if (v27)
  {
    v48 = 0;
    v47 = 0;
    v29 = [(_EXExtensionPredicateBuilder *)self gatherChildrenPredicateWithRuleDictionary:childrenCopy parentType:typeCopy parentAccepted:accepted acceptedChildTypes:&v48 exceptChildTypes:&v47];
    v30 = v48;
    v31 = v47;
    if (v25 <= 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    selfCopy = self;
    v34 = ruleCopy;
    v32 = [(_EXExtensionPredicateBuilder *)selfCopy predicateForCountingRule:ruleCopy type:v28 exceptTypes:exceptTypesCopy specifiedCount:v25];
    *a11 = 1;
    goto LABEL_20;
  }

  v45 = 0;
  v46 = 0;
  v29 = [(_EXExtensionPredicateBuilder *)self gatherChildrenPredicateWithRuleDictionary:childrenCopy parentType:v28 parentAccepted:v25 > 0 acceptedChildTypes:&v46 exceptChildTypes:&v45];
  v30 = v46;
  v31 = v45;
  if (v25 >= 1)
  {
    goto LABEL_13;
  }

  *a11 = 0;
  if (rejectRuleCopy || !self->_usesStrictMatching)
  {
    array = [MEMORY[0x1E695DF70] array];
    [array addObjectsFromArray:v30];
    if (accepted)
    {
      [array addObject:v42];
    }

    v32 = [(_EXExtensionPredicateBuilder *)self predicateForRejectExceptOtherTypesRule:rejectRuleCopy type:v28 otherTypes:array];

    goto LABEL_19;
  }

LABEL_11:
  v32 = 0;
LABEL_19:
  v34 = ruleCopy;
LABEL_20:
  if (subtree)
  {
    v36 = v30;
    *subtree = v30;
  }

  if (inSubtree)
  {
    v37 = v31;
    *inSubtree = v31;
  }

  v38 = _EXExtensionMakeAndPredicate(v32, v29);
  if (+[EXConcreteExtension _shouldLogExtensionDiscovery])
  {
    NSLog(&cfstr_GeneratedPredi.isa, v38, nameCopy);
  }

  return v38;
}

- (id)gatherChildrenPredicateWithRuleDictionary:(id)dictionary parentType:(id)type parentAccepted:(BOOL)accepted acceptedChildTypes:(id *)types exceptChildTypes:(id *)childTypes
{
  dictionaryCopy = dictionary;
  typeCopy = type;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__1;
  v39 = __Block_byref_object_dispose__1;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __136___EXExtensionPredicateBuilder_gatherChildrenPredicateWithRuleDictionary_parentType_parentAccepted_acceptedChildTypes_exceptChildTypes___block_invoke;
  v17[3] = &unk_1E6E4E230;
  v17[4] = self;
  v14 = typeCopy;
  acceptedCopy = accepted;
  v18 = v14;
  v19 = &v35;
  v20 = &v29;
  v21 = &v23;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v17];
  if (types)
  {
    *types = v30[5];
  }

  if (childTypes)
  {
    *childTypes = v24[5];
  }

  v15 = _EXExtensionMakeAndPredicateWithArray(v36[5]);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);

  return v15;
}

- (id)makePredicate
{
  v28[1] = *MEMORY[0x1E69E9840];
  var7 = self->_activationRules->var7;
  v23 = 0;
  v24 = 0;
  v4 = [(_EXExtensionPredicateBuilder *)self gatherChildrenPredicateWithRuleDictionary:var7 parentType:0 parentAccepted:0 acceptedChildTypes:&v24 exceptChildTypes:&v23];
  v5 = v24;
  v6 = v23;
  if ([v5 count])
  {
    v7 = [v6 mutableCopy];
    [v7 removeObjectsInArray:v5];
    v8 = [v7 count];
    activationRules = self->_activationRules;
    v10 = !self->_usesStrictMatching;
    if (v8)
    {
      v11 = 48;
      if (self->_usesStrictMatching)
      {
        v11 = 40;
      }

      v12 = *(&activationRules->var0 + v11);
      v25[0] = @"TYPES";
      v25[1] = @"REJECTED_TYPES";
      v26[0] = v5;
      v26[1] = v7;
      v13 = MEMORY[0x1E695DF20];
      v14 = v26;
      v15 = v25;
      v16 = 2;
    }

    else
    {
      v18 = 32;
      if (self->_usesStrictMatching)
      {
        v18 = 24;
      }

      v12 = *(&activationRules->var0 + v18);
      v27 = @"TYPES";
      v28[0] = v5;
      v13 = MEMORY[0x1E695DF20];
      v14 = v28;
      v15 = &v27;
      v16 = 1;
    }

    v19 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
    v17 = [v12 predicateWithSubstitutionVariables:v19];
  }

  else
  {
    v17 = 0;
  }

  v20 = _EXExtensionMakeAndPredicate(v4, v17);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)predicateForCountingRule:type:exceptTypes:specifiedCount:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = "predicate != NULL";
  v4 = 2080;
  v2 = 136315650;
  OUTLINED_FUNCTION_4_0();
  v5 = 670;
  _os_log_fault_impl(&dword_1847D1000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unable to create predicate!", &v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)predicateForRejectExceptOtherTypesRule:type:otherTypes:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = "predicate != NULL";
  v4 = 2080;
  v2 = 136315650;
  OUTLINED_FUNCTION_4_0();
  v5 = 694;
  _os_log_fault_impl(&dword_1847D1000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unable to create predicate!", &v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

@end