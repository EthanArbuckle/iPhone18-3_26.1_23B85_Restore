@interface AXSSMotionTrackingInputConfiguration
- (AXSSMotionTrackingInputConfiguration)init;
- (AXSSMotionTrackingInputConfiguration)initWithCoder:(id)coder;
- (AXSSMotionTrackingInputConfiguration)initWithOrderedInputPreference:(id)preference allowedTrackingTypes:(id)types allowSeparateInputForExpressions:(BOOL)expressions;
- (AXSSMotionTrackingInputConfiguration)initWithPlistDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMotionTrackingInputConfiguration:(id)configuration;
- (BOOL)supportsTrackingType:(unint64_t)type;
- (NSArray)orderedCameraInputPreference;
- (NSDictionary)plistDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)plistDictionary;
@end

@implementation AXSSMotionTrackingInputConfiguration

- (AXSSMotionTrackingInputConfiguration)initWithOrderedInputPreference:(id)preference allowedTrackingTypes:(id)types allowSeparateInputForExpressions:(BOOL)expressions
{
  preferenceCopy = preference;
  typesCopy = types;
  v16.receiver = self;
  v16.super_class = AXSSMotionTrackingInputConfiguration;
  v10 = [(AXSSMotionTrackingInputConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [preferenceCopy copy];
    orderedInputPreference = v10->_orderedInputPreference;
    v10->_orderedInputPreference = v11;

    v13 = [typesCopy copy];
    allowedTrackingTypes = v10->_allowedTrackingTypes;
    v10->_allowedTrackingTypes = v13;

    v10->_allowSeparateInputForExpressions = expressions;
  }

  return v10;
}

- (AXSSMotionTrackingInputConfiguration)init
{
  v3.receiver = self;
  v3.super_class = AXSSMotionTrackingInputConfiguration;
  return [(AXSSMotionTrackingInputConfiguration *)&v3 init];
}

- (AXSSMotionTrackingInputConfiguration)initWithPlistDictionary:(id)dictionary
{
  v43[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = NSStringFromSelector(sel_orderedInputPreference);
    v6 = [dictionaryCopy objectForKeyedSubscript:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __64__AXSSMotionTrackingInputConfiguration_initWithPlistDictionary___block_invoke;
      v30[3] = &unk_1E8134D60;
      v30[4] = &v37;
      [v6 enumerateObjectsUsingBlock:v30];
    }

    v7 = NSStringFromSelector(sel_allowedTrackingTypes);
    v8 = [dictionaryCopy objectForKeyedSubscript:v7];

    v9 = MEMORY[0x1E696ACD0];
    v10 = MEMORY[0x1E695DFD8];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v12 = [v10 setWithArray:v11];
    v29 = 0;
    v13 = [v9 unarchivedObjectOfClasses:v12 fromData:v8 error:&v29];
    v14 = v29;

    if (!v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v32[5])
        {
          v15 = [MEMORY[0x1E695DFA8] set];
          v16 = v32[5];
          v32[5] = v15;
        }

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __64__AXSSMotionTrackingInputConfiguration_initWithPlistDictionary___block_invoke_2;
        v28[3] = &unk_1E8134D88;
        v28[4] = &v31;
        [v13 enumerateObjectsUsingBlock:v28];
      }
    }

    v17 = NSStringFromSelector(sel_allowSeparateInputForExpressions);
    v18 = [dictionaryCopy objectForKeyedSubscript:v17];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v18 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  v27.receiver = self;
  v27.super_class = AXSSMotionTrackingInputConfiguration;
  v20 = [(AXSSMotionTrackingInputConfiguration *)&v27 init];
  if (v20)
  {
    v21 = [v38[5] copy];
    orderedInputPreference = v20->_orderedInputPreference;
    v20->_orderedInputPreference = v21;

    v23 = [v32[5] copy];
    allowedTrackingTypes = v20->_allowedTrackingTypes;
    v20->_allowedTrackingTypes = v23;

    v20->_allowSeparateInputForExpressions = bOOLValue;
  }

  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

void __64__AXSSMotionTrackingInputConfiguration_initWithPlistDictionary___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v10;
  if (isKindOfClass)
  {
    v5 = [AXSSMotionTrackingInput motionTrackingInputFromPlistDictionary:v10];
    if (v5)
    {
      v6 = *(*(*(a1 + 32) + 8) + 40);
      if (!v6)
      {
        v7 = [MEMORY[0x1E695DF70] array];
        v8 = *(*(a1 + 32) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        v6 = *(*(*(a1 + 32) + 8) + 40);
      }

      [v6 addObject:v5];
    }

    v4 = v10;
  }
}

void __64__AXSSMotionTrackingInputConfiguration_initWithPlistDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 unsignedIntegerValue] <= 3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

- (NSDictionary)plistDictionary
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  orderedInputPreference = [(AXSSMotionTrackingInputConfiguration *)self orderedInputPreference];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__AXSSMotionTrackingInputConfiguration_plistDictionary__block_invoke;
  v23[3] = &unk_1E8134DB0;
  v23[4] = &v24;
  [orderedInputPreference enumerateObjectsUsingBlock:v23];

  v5 = v25[5];
  if (v5)
  {
    v6 = [v5 copy];
    v7 = NSStringFromSelector(sel_orderedInputPreference);
    [v3 setObject:v6 forKeyedSubscript:v7];
  }

  allowedTrackingTypes = [(AXSSMotionTrackingInputConfiguration *)self allowedTrackingTypes];
  v9 = allowedTrackingTypes == 0;

  if (!v9)
  {
    v10 = MEMORY[0x1E696ACC8];
    allowedTrackingTypes2 = [(AXSSMotionTrackingInputConfiguration *)self allowedTrackingTypes];
    v22 = 0;
    v12 = [v10 archivedDataWithRootObject:allowedTrackingTypes2 requiringSecureCoding:1 error:&v22];
    v13 = v22;
    v14 = NSStringFromSelector(sel_allowedTrackingTypes);
    [v3 setObject:v12 forKeyedSubscript:v14];

    if (v13)
    {
      v15 = AXSSLogForCategory(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        allowedTrackingTypes3 = [(AXSSMotionTrackingInputConfiguration *)self allowedTrackingTypes];
        [(AXSSMotionTrackingInputConfiguration *)allowedTrackingTypes3 plistDictionary:v13];
      }
    }
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSMotionTrackingInputConfiguration allowSeparateInputForExpressions](self, "allowSeparateInputForExpressions")}];
  v18 = NSStringFromSelector(sel_allowSeparateInputForExpressions);
  [v3 setObject:v17 forKeyedSubscript:v18];

  v19 = [v3 copy];
  _Block_object_dispose(&v24, 8);

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

uint64_t __55__AXSSMotionTrackingInputConfiguration_plistDictionary__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 plistDictionary];
  if (v3)
  {
    v9 = v3;
    if ([v3 count])
    {
      v4 = *(*(*(a1 + 32) + 8) + 40);
      if (!v4)
      {
        v5 = [MEMORY[0x1E695DF70] array];
        v6 = *(*(a1 + 32) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;

        v4 = *(*(*(a1 + 32) + 8) + 40);
      }

      [v4 addObject:v9];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)orderedCameraInputPreference
{
  orderedInputPreference = [(AXSSMotionTrackingInputConfiguration *)self orderedInputPreference];
  v4 = [orderedInputPreference count];

  if (v4)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__0;
    v13 = __Block_byref_object_dispose__0;
    v14 = 0;
    orderedInputPreference2 = [(AXSSMotionTrackingInputConfiguration *)self orderedInputPreference];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__AXSSMotionTrackingInputConfiguration_orderedCameraInputPreference__block_invoke;
    v8[3] = &unk_1E8134DB0;
    v8[4] = &v9;
    [orderedInputPreference2 enumerateObjectsUsingBlock:v8];

    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __68__AXSSMotionTrackingInputConfiguration_orderedCameraInputPreference__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = AXSSMotionTrackingInputConfiguration;
  v4 = [(AXSSMotionTrackingInputConfiguration *)&v9 description];
  orderedInputPreference = [(AXSSMotionTrackingInputConfiguration *)self orderedInputPreference];
  allowedTrackingTypes = [(AXSSMotionTrackingInputConfiguration *)self allowedTrackingTypes];
  v7 = [v3 stringWithFormat:@"%@ <orderedInputPreference %@ allowedTrackingTypes %@ allowSeparateInputForExpressions %d>", v4, orderedInputPreference, allowedTrackingTypes, -[AXSSMotionTrackingInputConfiguration allowSeparateInputForExpressions](self, "allowSeparateInputForExpressions")];

  return v7;
}

- (BOOL)supportsTrackingType:(unint64_t)type
{
  allowedTrackingTypes = [(AXSSMotionTrackingInputConfiguration *)self allowedTrackingTypes];

  if (!allowedTrackingTypes)
  {
    return 1;
  }

  if (!type)
  {
    return 0;
  }

  allowedTrackingTypes2 = [(AXSSMotionTrackingInputConfiguration *)self allowedTrackingTypes];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v8 = [allowedTrackingTypes2 containsObject:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  orderedInputPreference = [(AXSSMotionTrackingInputConfiguration *)self orderedInputPreference];

  if (orderedInputPreference)
  {
    orderedInputPreference2 = [(AXSSMotionTrackingInputConfiguration *)self orderedInputPreference];
    v6 = NSStringFromSelector(sel_orderedInputPreference);
    [coderCopy encodeObject:orderedInputPreference2 forKey:v6];
  }

  allowedTrackingTypes = [(AXSSMotionTrackingInputConfiguration *)self allowedTrackingTypes];

  if (allowedTrackingTypes)
  {
    allowedTrackingTypes2 = [(AXSSMotionTrackingInputConfiguration *)self allowedTrackingTypes];
    v9 = NSStringFromSelector(sel_allowedTrackingTypes);
    [coderCopy encodeObject:allowedTrackingTypes2 forKey:v9];
  }

  allowSeparateInputForExpressions = [(AXSSMotionTrackingInputConfiguration *)self allowSeparateInputForExpressions];
  v11 = NSStringFromSelector(sel_allowSeparateInputForExpressions);
  [coderCopy encodeBool:allowSeparateInputForExpressions forKey:v11];
}

- (AXSSMotionTrackingInputConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AXSSMotionTrackingInputConfiguration *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = NSStringFromSelector(sel_orderedInputPreference);
    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:v11];
    orderedInputPreference = v5->_orderedInputPreference;
    v5->_orderedInputPreference = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = NSStringFromSelector(sel_allowedTrackingTypes);
    v18 = [coderCopy decodeObjectOfClasses:v16 forKey:v17];

    if (v18)
    {
      v19 = v18;
    }

    v20 = [v18 copy];
    allowedTrackingTypes = v5->_allowedTrackingTypes;
    v5->_allowedTrackingTypes = v20;

    v22 = NSStringFromSelector(sel_allowSeparateInputForExpressions);
    v5->_allowSeparateInputForExpressions = [coderCopy decodeBoolForKey:v22];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  plistDictionary = [(AXSSMotionTrackingInputConfiguration *)self plistDictionary];
  v4 = [[AXSSMotionTrackingInputConfiguration alloc] initWithPlistDictionary:plistDictionary];

  return v4;
}

- (BOOL)isEqualToMotionTrackingInputConfiguration:(id)configuration
{
  configurationCopy = configuration;
  plistDictionary = [(AXSSMotionTrackingInputConfiguration *)self plistDictionary];
  plistDictionary2 = [configurationCopy plistDictionary];

  LOBYTE(configurationCopy) = [plistDictionary isEqual:plistDictionary2];
  return configurationCopy;
}

- (unint64_t)hash
{
  plistDictionary = [(AXSSMotionTrackingInputConfiguration *)self plistDictionary];
  v3 = [plistDictionary hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSSMotionTrackingInputConfiguration *)self isEqualToMotionTrackingInputConfiguration:equalCopy];

  return v5;
}

- (void)plistDictionary
{
  *buf = 138412546;
  *(buf + 4) = self;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C0E8A000, log, OS_LOG_TYPE_ERROR, "ERROR: Couldn't encode object %@, encountered error: %@", buf, 0x16u);
}

@end