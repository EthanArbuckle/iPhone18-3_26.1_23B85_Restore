@interface HKCorrelation
+ (HKCorrelation)correlationWithType:(HKCorrelationType *)correlationType startDate:(NSDate *)startDate endDate:(NSDate *)endDate objects:(NSSet *)objects device:(HKDevice *)device metadata:(NSDictionary *)metadata;
- (BOOL)_containsObjects;
- (BOOL)_correlatedObjectsMatchFilterDictionary:(id)dictionary;
- (HKCorrelation)initWithCoder:(id)coder;
- (NSSet)objects;
- (NSSet)objectsForType:(HKObjectType *)objectType;
- (id)_init;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)description;
- (void)_addCorrelatedObject:(id)object;
- (void)_addCorrelatedObjects:(id)objects;
- (void)_filterCorrelatedObjectsWithFilterDictionary:(id)dictionary;
- (void)_removeAllCorrelatedObjects;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCorrelation

+ (HKCorrelation)correlationWithType:(HKCorrelationType *)correlationType startDate:(NSDate *)startDate endDate:(NSDate *)endDate objects:(NSSet *)objects device:(HKDevice *)device metadata:(NSDictionary *)metadata
{
  v14 = correlationType;
  v15 = startDate;
  v16 = endDate;
  v17 = objects;
  v18 = device;
  v19 = metadata;
  if (v15)
  {
    [(NSDate *)v15 timeIntervalSinceReferenceDate];
    v21 = v20;
    if (v16)
    {
LABEL_3:
      [(NSDate *)v16 timeIntervalSinceReferenceDate];
      v23 = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v21 = 2.22507386e-308;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v23 = 2.22507386e-308;
LABEL_6:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __79__HKCorrelation_correlationWithType_startDate_endDate_objects_device_metadata___block_invoke;
  v27[3] = &unk_1E73843A8;
  v28 = v17;
  v24 = v17;
  v25 = [self _newSampleWithType:v14 startDate:v18 endDate:v19 device:v27 metadata:v21 config:v23];

  return v25;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = HKCorrelation;
  _init = [(HKSample *)&v6 _init];
  if (_init)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v4 = _init[12];
    _init[12] = dictionary;
  }

  return _init;
}

- (NSSet)objects
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_objects allValues];
  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [v3 unionSet:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v9.receiver = self;
  v9.super_class = HKCorrelation;
  v5 = [(HKSample *)&v9 description];
  objects = [(HKCorrelation *)self objects];
  v7 = [v3 stringWithFormat:@"<%@> %@ (%ld objects)", v4, v5, objc_msgSend(objects, "count")];

  return v7;
}

- (void)_addCorrelatedObject:(id)object
{
  objectCopy = object;
  sampleType = [objectCopy sampleType];
  v5 = [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:sampleType];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    [(NSMutableDictionary *)self->_objects setObject:v5 forKeyedSubscript:sampleType];
  }

  [v5 addObject:objectCopy];
}

- (void)_addCorrelatedObjects:(id)objects
{
  v15 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [objectsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(objectsCopy);
        }

        [(HKCorrelation *)self _addCorrelatedObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [objectsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (NSSet)objectsForType:(HKObjectType *)objectType
{
  v3 = [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:objectType];
  v4 = [MEMORY[0x1E695DFD8] setWithSet:v3];

  return v4;
}

- (void)_filterCorrelatedObjectsWithFilterDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  objects = self->_objects;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__HKCorrelation__filterCorrelatedObjectsWithFilterDictionary___block_invoke;
  v11[3] = &unk_1E73843D0;
  v12 = dictionaryCopy;
  v7 = dictionary;
  v13 = v7;
  v8 = dictionaryCopy;
  [(NSMutableDictionary *)objects enumerateKeysAndObjectsUsingBlock:v11];
  v9 = self->_objects;
  self->_objects = v7;
  v10 = v7;
}

void __62__HKCorrelation__filterCorrelatedObjectsWithFilterDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([_HKFilter filter:v8 acceptsDataObject:v14, v16])
        {
          [v7 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if ([v7 count])
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)_correlatedObjectsMatchFilterDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v6 = 1;
    if ([dictionaryCopy count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 1;
      objects = self->_objects;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __57__HKCorrelation__correlatedObjectsMatchFilterDictionary___block_invoke;
      v9[3] = &unk_1E73843F8;
      v10 = v5;
      v11 = &v12;
      [(NSMutableDictionary *)objects enumerateKeysAndObjectsUsingBlock:v9];
      v6 = *(v13 + 24);

      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void __57__HKCorrelation__correlatedObjectsMatchFilterDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (![_HKFilter filter:v8 acceptsDataObject:*(*(&v15 + 1) + 8 * i), v15])
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_containsObjects
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  objects = self->_objects;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__HKCorrelation__containsObjects__block_invoke;
  v5[3] = &unk_1E7384420;
  v5[4] = &v6;
  [(NSMutableDictionary *)objects enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__HKCorrelation__containsObjects__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 count];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_removeAllCorrelatedObjects
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  objects = self->_objects;
  self->_objects = dictionary;

  MEMORY[0x1EEE66BB8](dictionary, objects);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  var0 = configuration.var0;
  v76 = *MEMORY[0x1E69E9840];
  v73.receiver = self;
  v73.super_class = HKCorrelation;
  v6 = [(HKSample *)&v73 _validateWithConfiguration:configuration.var0, configuration.var1];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
LABEL_3:
    v9 = v8;
    goto LABEL_43;
  }

  correlationType = [(HKCorrelation *)self correlationType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v36 = MEMORY[0x1E696ABC0];
    v37 = objc_opt_class();
    correlationType2 = [(HKCorrelation *)self correlationType];
    v9 = [v36 hk_errorForInvalidArgument:@"@" class:v37 selector:a2 format:{@"Data type %@ must be of type %@", correlationType2, objc_opt_class()}];

    goto LABEL_43;
  }

  if (([objc_opt_class() _allowEmptyCorrelations] & 1) == 0 && !-[HKCorrelation _containsObjects](self, "_containsObjects"))
  {
    v39 = MEMORY[0x1E696ABC0];
    v40 = objc_opt_class();
    v8 = [v39 hk_errorForInvalidArgument:@"@" class:v40 selector:a2 format:{@"%@: Objects must contain one or more HKSample", objc_opt_class()}];
    goto LABEL_3;
  }

  v62 = a2;
  [(HKCorrelation *)self objects];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v12 = v72 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v69 objects:v75 count:16];
  v63 = v12;
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v64 = *v70;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v70 != v64)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v69 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v41 = MEMORY[0x1E696ABC0];
        v42 = objc_opt_class();
        v43 = objc_opt_class();
        v60 = objc_opt_class();
        v61 = v16;
        v44 = @"%@: All objects must be of class %@, received %@";
        v59 = v43;
LABEL_39:
        [v41 hk_errorForInvalidArgument:@"@" class:v42 selector:a2 format:{v44, v59, v60, v61}];
        v9 = LABEL_40:;

        goto LABEL_41;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = MEMORY[0x1E696ABC0];
        v42 = objc_opt_class();
        v45 = objc_opt_class();
        v44 = @"%@: Correlations cannot contain other correlations. Received %@";
LABEL_38:
        v59 = v45;
        v60 = v16;
        goto LABEL_39;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = MEMORY[0x1E696ABC0];
        v42 = objc_opt_class();
        v45 = objc_opt_class();
        v44 = @"%@: Correlations cannot contain workouts. Received %@";
        goto LABEL_38;
      }

      _source = [v16 _source];
      if (_source)
      {
        v18 = _source;
        _source2 = [v16 _source];
        v20 = +[HKSource defaultSource];
        v21 = [_source2 isEqual:v20];

        v12 = v63;
        if ((v21 & 1) == 0)
        {
          v48 = MEMORY[0x1E696ABC0];
          v49 = objc_opt_class();
          [v48 hk_errorForInvalidArgument:@"@" class:v49 selector:a2 format:{@"%@: Correlations cannot contain objects that were saved by other sources. Received %@", objc_opt_class(), v16, v61}];
          goto LABEL_40;
        }
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v22 = +[_HKBehavior sharedBehavior];
  if (![v22 enableBloodPressureValidations] || var0 == -1)
  {

    v9 = 0;
LABEL_41:
    v7 = 0;
  }

  else
  {
    correlationType3 = [(HKCorrelation *)self correlationType];
    code = [correlationType3 code];

    v7 = 0;
    if (code != 80)
    {
      goto LABEL_31;
    }

    if ([v12 count] == 2)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v25 = v12;
      v26 = [v25 countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = 0;
        v29 = 0;
        v30 = *v66;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v66 != v30)
            {
              objc_enumerationMutation(v25);
            }

            v32 = *(*(&v65 + 1) + 8 * j);
            sampleType = [v32 sampleType];
            v34 = [sampleType code] == 17;

            v28 |= v34;
            sampleType2 = [v32 sampleType];
            LODWORD(sampleType) = [sampleType2 code] == 16;

            v29 |= sampleType;
          }

          v27 = [v25 countByEnumeratingWithState:&v65 objects:v74 count:16];
        }

        while (v27);

        v7 = 0;
        v12 = v63;
        if (v29 & v28)
        {
LABEL_31:
          v9 = 0;
          goto LABEL_42;
        }
      }

      else
      {

        LOBYTE(v29) = 0;
        LOBYTE(v28) = 0;
      }

      _HKInitializeLogging();
      v53 = HKLogDefaultCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        [HKCorrelation _validateWithConfiguration:v53];
      }

      v54 = MEMORY[0x1E696ABC0];
      v55 = objc_opt_class();
      v56 = objc_opt_class();
      v57 = @"NO";
      if (v29)
      {
        v58 = @"YES";
      }

      else
      {
        v58 = @"NO";
      }

      if (v28)
      {
        v57 = @"YES";
      }

      [v54 hk_errorForInvalidArgument:@"@" class:v55 selector:v62 format:{@"%@: Blood pressure correlations must have a systolic and diastolic quantity type. hasSystolic = %@, hasDiastolic = %@", v56, v58, v57}];
    }

    else
    {
      _HKInitializeLogging();
      v50 = HKLogDefaultCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        [(HKCorrelation *)v12 _validateWithConfiguration:v50];
      }

      v51 = MEMORY[0x1E696ABC0];
      v52 = objc_opt_class();
      [v51 hk_errorForInvalidArgument:@"@" class:v52 selector:a2 format:{@"%@: Blood pressure correlations must have 2 objects, one systolic BP and one diastolic BP. Received %ld objects.", objc_opt_class(), objc_msgSend(v12, "count"), v61}];
    }
    v9 = ;
  }

LABEL_42:

LABEL_43:
  v46 = *MEMORY[0x1E69E9840];

  return v9;
}

- (HKCorrelation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HKCorrelation;
  v5 = [(HKSample *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"correlatedObjects"];
    objects = v5->_objects;
    v5->_objects = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKCorrelation;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_objects forKey:{@"correlatedObjects", v5.receiver, v5.super_class}];
}

- (void)_validateWithConfiguration:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 134217984;
  v5 = [a1 count];
  _os_log_fault_impl(&dword_19197B000, a2, OS_LOG_TYPE_FAULT, "Blood pressure correlations must have 2 objects, one systolic BP and one diastolic BP. Received %ld objects.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end