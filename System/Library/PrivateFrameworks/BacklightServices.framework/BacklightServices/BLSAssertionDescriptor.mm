@interface BLSAssertionDescriptor
- (BLSAssertionDescriptor)initWithCoder:(id)coder;
- (BLSAssertionDescriptor)initWithExplanation:(id)explanation attributes:(id)attributes;
- (BLSAssertionDescriptor)initWithXPCDictionary:(id)dictionary;
- (BOOL)checkEntitlementSourceForRequiredEntitlements:(id)entitlements error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)attributeOfClass:(Class)class;
- (id)attributesOfClasses:(id)classes;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSAssertionDescriptor

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_explanation withName:@"explanation"];
  [v3 appendArraySection:self->_attributes withName:@"attributes" skipIfEmpty:0];
  build = [v3 build];

  return build;
}

- (BLSAssertionDescriptor)initWithExplanation:(id)explanation attributes:(id)attributes
{
  explanationCopy = explanation;
  attributesCopy = attributes;
  v72.receiver = self;
  v72.super_class = BLSAssertionDescriptor;
  v8 = [(BLSAssertionDescriptor *)&v72 init];
  if (v8)
  {
    v9 = [explanationCopy copy];
    explanation = v8->_explanation;
    v8->_explanation = v9;

    v11 = [attributesCopy copy];
    attributes = v8->_attributes;
    v8->_attributes = v11;

    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v13 = [MEMORY[0x277CBEB58] set];
    v14 = v8->_attributes;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __57__BLSAssertionDescriptor_initWithExplanation_attributes___block_invoke;
    v35[3] = &unk_2784291F0;
    v37 = &v64;
    v38 = &v60;
    v15 = v13;
    v36 = v15;
    v39 = &v56;
    v40 = &v52;
    v41 = &v48;
    v42 = &v68;
    v43 = &v44;
    [(NSArray *)v14 enumerateObjectsUsingBlock:v35];
    v16 = v8->_attributes;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __57__BLSAssertionDescriptor_initWithExplanation_attributes___block_invoke_2;
    v33[3] = &unk_278429218;
    v17 = v15;
    v34 = v17;
    v18 = [(NSArray *)v16 bs_filter:v33];
    v19 = v8->_attributes;
    v8->_attributes = v18;

    if (*(v69 + 24) == 1 && (v65[3] & 1) == 0)
    {
      v20 = v8->_attributes;
      v21 = +[BLSValidWhenBacklightInactiveAttribute cancelWhenBacklightInactivates];
      v22 = [(NSArray *)v20 arrayByAddingObject:v21];
      v23 = v8->_attributes;
      v8->_attributes = v22;
    }

    if (*(v45 + 24) == 1 && (v53[3] & 1) == 0)
    {
      v24 = v8->_attributes;
      v25 = +[BLSDisableFlipbookAttribute disableFlipbook];
      v26 = [(NSArray *)v24 arrayByAddingObject:v25];
      v27 = v8->_attributes;
      v8->_attributes = v26;

      *(v53 + 24) = 1;
    }

    if (((v61[3] & 1) != 0 || (v57[3] & 1) != 0 || *(v53 + 24) == 1) && (v49[3] & 1) == 0)
    {
      v28 = v8->_attributes;
      v29 = +[BLSInvalidOnSystemSleepAttribute invalidateOnSystemSleep];
      v30 = [(NSArray *)v28 arrayByAddingObject:v29];
      v31 = v8->_attributes;
      v8->_attributes = v30;
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v56, 8);
    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(&v68, 8);
  }

  return v8;
}

void __57__BLSAssertionDescriptor_initWithExplanation_attributes___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1[5];
LABEL_3:
    *(*(v3 + 8) + 24) = 1;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(a1[6] + 8) + 24) = 1;
    v4 = a1[4];
    v5 = [v6 sceneIdentityToken];
    [v4 addObject:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = a1[6];
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = a1[7];
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = a1[8];
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v3 = a1[9];
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v3 = a1[10];
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v3 = a1[11];
      goto LABEL_3;
    }
  }

LABEL_6:
}

BOOL __57__BLSAssertionDescriptor_initWithExplanation_attributes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = 1;
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [v3 sceneIdentityToken];
    LOBYTE(v4) = [v4 containsObject:v5];

    if (v4)
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)attributeOfClass:(Class)class
{
  attributes = self->_attributes;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__BLSAssertionDescriptor_attributeOfClass___block_invoke;
  v8[3] = &__block_descriptor_40_e29_B32__0__BLSAttribute_8Q16_B24lu32l8;
  v8[4] = class;
  v5 = [(NSArray *)attributes indexOfObjectPassingTest:v8];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_attributes objectAtIndex:v5];
  }

  return v6;
}

- (id)attributesOfClasses:(id)classes
{
  classesCopy = classes;
  attributes = self->_attributes;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__BLSAssertionDescriptor_attributesOfClasses___block_invoke;
  v10[3] = &unk_278429260;
  v11 = classesCopy;
  v6 = classesCopy;
  v7 = [(NSArray *)attributes indexesOfObjectsPassingTest:v10];
  v8 = [(NSArray *)attributes objectsAtIndexes:v7];

  return v8;
}

uint64_t __46__BLSAssertionDescriptor_attributesOfClasses___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 containsObject:v2];
}

- (BOOL)checkEntitlementSourceForRequiredEntitlements:(id)entitlements error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  entitlementsCopy = entitlements;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  attributes = [(BLSAssertionDescriptor *)self attributes];
  v9 = [attributes countByEnumeratingWithState:&v33 objects:v39 count:16];
  v10 = v9 == 0;
  if (!v9)
  {
    v12 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v11 = v9;
  v28 = a2;
  selfCopy = self;
  errorCopy = error;
  v30 = v9 == 0;
  v12 = 0;
  v13 = *v34;
  v10 = 1;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v34 != v13)
      {
        objc_enumerationMutation(attributes);
      }

      v15 = *(*(&v33 + 1) + 8 * i);
      v32 = 0;
      v16 = [v15 checkEntitlementSourceForRequiredEntitlements:entitlementsCopy error:&v32];
      v17 = v32;
      v18 = v17;
      if ((v16 & 1) == 0)
      {
        if (!v17)
        {
          [(BLSAssertionDescriptor *)v15 checkEntitlementSourceForRequiredEntitlements:v28 error:selfCopy];
        }

        if (v12)
        {
          [v12 addObject:v17];
        }

        else
        {
          v12 = [MEMORY[0x277CBEB18] arrayWithObject:v17];
        }

        v10 = 0;
      }
    }

    v11 = [attributes countByEnumeratingWithState:&v33 objects:v39 count:16];
  }

  while (v11);

  if (errorCopy != 0 && !v10)
  {
    attributes = [v12 firstObject];
    if ([v12 count] < 2)
    {
      v25 = attributes;
      *errorCopy = attributes;
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v37[0] = *MEMORY[0x277CCA450];
      v20 = MEMORY[0x277CCACA8];
      v21 = [entitlementsCopy description];
      localizedDescription = [attributes localizedDescription];
      v23 = [v20 stringWithFormat:@"%@ missing multiple entitlements including '%@'", v21, localizedDescription];
      v37[1] = *MEMORY[0x277CCA578];
      v38[0] = v23;
      v38[1] = v12;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
      *errorCopy = [v19 errorWithDomain:@"com.apple.BacklightServices" code:21 userInfo:v24];
    }

    v10 = v30;
    goto LABEL_21;
  }

LABEL_22:

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_explanation];
  v5 = [builder appendObject:self->_attributes];
  v6 = [builder hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      explanation = self->_explanation;
      explanation = [(BLSAssertionDescriptor *)v5 explanation];
      if ([(NSString *)explanation isEqual:explanation])
      {
        attributes = self->_attributes;
        attributes = [(BLSAssertionDescriptor *)v5 attributes];
        v10 = [(NSArray *)attributes isEqual:attributes];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BLSAssertionDescriptor)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uTF8String = [@"explanation" UTF8String];
  uTF8String2 = [@"attributes" UTF8String];
  string = xpc_dictionary_get_string(dictionaryCopy, uTF8String);
  if (string)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  }

  else
  {
    v9 = bls_assertions_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(BLSBacklightChangeRequest *)dictionaryCopy initWithXPCDictionary:v9];
    }

    v8 = @"<NULL>";
  }

  v10 = xpc_dictionary_get_array(dictionaryCopy, uTF8String2);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __48__BLSAssertionDescriptor_initWithXPCDictionary___block_invoke;
  applier[3] = &unk_2784290D8;
  v16 = v11;
  v12 = v11;
  xpc_array_apply(v10, applier);
  v13 = [(BLSAssertionDescriptor *)self initWithExplanation:v8 attributes:v12];

  return v13;
}

uint64_t __48__BLSAssertionDescriptor_initWithXPCDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary();
  if (!v5)
  {
    v6 = bls_assertions_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __48__BLSAssertionDescriptor_initWithXPCDictionary___block_invoke_cold_2(v4, v6);
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = bls_assertions_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __48__BLSAssertionDescriptor_initWithXPCDictionary___block_invoke_cold_1(v5, v4, v6);
    }

LABEL_8:

    goto LABEL_9;
  }

  [*(a1 + 32) addObject:v5];
LABEL_9:

  return 1;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  uTF8String = [@"explanation" UTF8String];
  [@"attributes" UTF8String];
  xpc_dictionary_set_string(xdict, uTF8String, [(NSString *)self->_explanation UTF8String]);
  attributes = self->_attributes;
  BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();
}

- (BLSAssertionDescriptor)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"explanation"];
  v6 = MEMORY[0x277CBEB98];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"attributes"];

  v10 = [(BLSAssertionDescriptor *)self initWithExplanation:v5 attributes:v9];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  explanation = self->_explanation;
  coderCopy = coder;
  [coderCopy encodeObject:explanation forKey:@"explanation"];
  [coderCopy encodeObject:self->_attributes forKey:@"attributes"];
}

- (void)checkEntitlementSourceForRequiredEntitlements:(uint64_t)a3 error:.cold.1(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"checkEntitlementSourceForRequiredEntitlements returned NO but did not return an error for attribute:%@", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138544642;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2048;
    v14 = a3;
    v15 = 2114;
    v16 = @"BLSAssertionDescriptor.m";
    v17 = 1024;
    v18 = 125;
    v19 = 2114;
    v20 = v5;
    _os_log_error_impl(&dword_21FE25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __48__BLSAssertionDescriptor_initWithXPCDictionary___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&dword_21FE25000, log, OS_LOG_TYPE_FAULT, "decoded object:%{public}@ for %{public}@ is not a BLSAttribute class", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __48__BLSAssertionDescriptor_initWithXPCDictionary___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_21FE25000, a2, OS_LOG_TYPE_FAULT, "unable to decode attribute for %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end