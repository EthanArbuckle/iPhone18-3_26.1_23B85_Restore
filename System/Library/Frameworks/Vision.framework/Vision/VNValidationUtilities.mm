@interface VNValidationUtilities
+ (BOOL)_validateDetectedObjectObservations:(id)observations forObservationClass:(Class)class withMinimumCount:(unint64_t)count forOptionalRequest:(id)request error:(id *)error;
+ (BOOL)_validateFaceObservations:(id)observations withMinimumCount:(unint64_t)count forOptionalRequest:(id)request error:(id *)error;
+ (BOOL)getArray:(id *)array forKey:(id)key inOptions:(id)options withElementsOfClass:(Class)class requiredMinimumCount:(unint64_t)count allowedMaximumCount:(unint64_t)maximumCount error:(id *)error;
+ (BOOL)getBOOLValue:(BOOL *)value forKey:(id)key inOptions:(id)options error:(id *)error;
+ (BOOL)getBOOLValue:(BOOL *)value forKey:(id)key inOptions:(id)options withDefaultValue:(BOOL)defaultValue error:(id *)error;
+ (BOOL)getDoubleValue:(double *)value forKey:(id)key inOptions:(id)options error:(id *)error;
+ (BOOL)getDoubleValue:(double *)value forKey:(id)key inOptions:(id)options withDefaultValue:(double)defaultValue error:(id *)error;
+ (BOOL)getEspressoPriority:(int *)priority forKey:(id)key inOptions:(id)options withDefaultValue:(int)value error:(id *)error;
+ (BOOL)getFloatValue:(float *)value forKey:(id)key inOptions:(id)options error:(id *)error;
+ (BOOL)getFloatValue:(float *)value forKey:(id)key inOptions:(id)options minimumValue:(float)minimumValue maximumValue:(float)maximumValue error:(id *)error;
+ (BOOL)getFloatValue:(float *)value forKey:(id)key inOptions:(id)options withDefaultValue:(float)defaultValue error:(id *)error;
+ (BOOL)getIntValue:(int *)value forKey:(id)key inOptions:(id)options error:(id *)error;
+ (BOOL)getIntValue:(int *)value forKey:(id)key inOptions:(id)options minimumValue:(int)minimumValue maximumValue:(int)maximumValue error:(id *)error;
+ (BOOL)getIntValue:(int *)value forKey:(id)key inOptions:(id)options withDefaultValue:(int)defaultValue error:(id *)error;
+ (BOOL)getMTLGPUPriority:(unint64_t *)priority forKey:(id)key inOptions:(id)options withDefaultValue:(unint64_t)value error:(id *)error;
+ (BOOL)getNSIntegerValue:(int64_t *)value forKey:(id)key inOptions:(id)options error:(id *)error;
+ (BOOL)getNSIntegerValue:(int64_t *)value forKey:(id)key inOptions:(id)options withDefaultValue:(int64_t)defaultValue error:(id *)error;
+ (BOOL)getNSUIntegerValue:(unint64_t *)value forKey:(id)key inOptions:(id)options error:(id *)error;
+ (BOOL)getNSUIntegerValue:(unint64_t *)value forKey:(id)key inOptions:(id)options withDefaultValue:(unint64_t)defaultValue error:(id *)error;
+ (BOOL)getOSTypeValue:(unsigned int *)value forKey:(id)key inOptions:(id)options error:(id *)error;
+ (BOOL)getOSTypeValue:(unsigned int *)value forKey:(id)key inOptions:(id)options withDefaultValue:(unsigned int)defaultValue error:(id *)error;
+ (BOOL)getOptionalFaceObservation:(id *)observation inOptions:(id)options error:(id *)error;
+ (BOOL)getOptionalFaceObservations:(id *)observations inOptions:(id)options error:(id *)error;
+ (BOOL)getOptionalOriginatingRequestSpecifier:(id *)specifier forKey:(id)key inOptions:(id)options specifyingRequestClass:(Class)class error:(id *)error;
+ (BOOL)getPercentageValue:(double *)value forKey:(id)key inOptions:(id)options withDefaultValue:(double)defaultValue error:(id *)error;
+ (BOOL)validateArray:(id)array named:(id)named hasElementsOfClass:(Class)class requiredMinimumCount:(unint64_t)count allowedMaximumCount:(unint64_t)maximumCount error:(id *)error;
+ (BOOL)validateAsyncStatusResult:(id)result error:(id *)error;
+ (BOOL)validateAsyncStatusResults:(id)results error:(id *)error;
+ (BOOL)validateAsyncStatusState:(id)state error:(id *)error;
+ (BOOL)validateClassArray:(id)array named:(id)named hasElementsAncestoredFromClass:(Class)class requiredMinimumCount:(unint64_t)count allowedMaximumCount:(unint64_t)maximumCount error:(id *)error;
+ (BOOL)validateNonNilOptionsDictionary:(id)dictionary selector:(SEL)selector error:(id *)error;
+ (BOOL)validateNonZeroImageWidth:(unint64_t)width height:(unint64_t)height componentNameProvidingBlock:(id)block error:(id *)error;
+ (BOOL)validateRequiredClusterIDs:(id)ds error:(id *)error;
+ (BOOL)validateScoreRange:(float)range named:(id)named error:(id *)error;
+ (BOOL)validateVNConfidenceRange:(float)range error:(id *)error;
+ (id)computeDeviceForKey:(id)key inOptions:(id)options error:(id *)error;
+ (id)originatingRequestSpecifierForKey:(id)key inOptions:(id)options error:(id *)error;
+ (id)originatingRequestSpecifierForKey:(id)key inOptions:(id)options specifyingRequestClass:(Class)class error:(id *)error;
+ (id)originatingRequestSpecifierInOptions:(id)options error:(id *)error;
+ (id)originatingRequestSpecifierInOptions:(id)options specifyingRequestClass:(Class)class error:(id *)error;
+ (id)requiredArrayForKey:(id)key inOptions:(id)options withElementsOfClass:(Class)class error:(id *)error;
+ (id)requiredDetectedObjectObservationInOptions:(id)options withOptionName:(id)name forObservationClass:(Class)class error:(id *)error;
+ (id)requiredFaceObservationInOptions:(id)options error:(id *)error;
+ (id)requiredFaceObservationsInOptions:(id)options error:(id *)error;
+ (id)requiredObjectConformingToProtocol:(id)protocol forKey:(id)key inOptions:(id)options error:(id *)error;
+ (id)requiredObjectOfClass:(Class)class forKey:(id)key inOptions:(id)options error:(id *)error;
+ (id)requiredSessionInOptions:(id)options error:(id *)error;
+ (int)espressoPriorityForModelExecutionPriority:(unint64_t)priority;
@end

@implementation VNValidationUtilities

+ (id)computeDeviceForKey:(id)key inOptions:(id)options error:(id *)error
{
  v5 = [self requiredObjectConformingToProtocol:&unk_1F19ECC98 forKey:key inOptions:options error:error];

  return v5;
}

+ (BOOL)getOptionalOriginatingRequestSpecifier:(id *)specifier forKey:(id)key inOptions:(id)options specifyingRequestClass:(Class)class error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v19 = 0;
  LOBYTE(self) = [self getOptionalObject:&v19 ofClass:objc_opt_class() forKey:keyCopy inOptions:optionsCopy error:error];
  v14 = v19;
  v15 = v14;
  if ((self & 1) != 0 && (!v14 || _validateRequestSpecifierRequestClass(v14, class, keyCopy, error)))
  {
    v16 = v15;
    *specifier = v15;
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)originatingRequestSpecifierForKey:(id)key inOptions:(id)options specifyingRequestClass:(Class)class error:(id *)error
{
  keyCopy = key;
  v11 = [self originatingRequestSpecifierForKey:keyCopy inOptions:options error:error];
  v12 = v11;
  if (v11 && (_validateRequestSpecifierRequestClass(v11, class, keyCopy, error) & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)originatingRequestSpecifierInOptions:(id)options specifyingRequestClass:(Class)class error:(id *)error
{
  v5 = [self originatingRequestSpecifierForKey:@"VNDetectorOption_OriginatingRequestSpecifier" inOptions:options specifyingRequestClass:class error:error];

  return v5;
}

+ (id)originatingRequestSpecifierForKey:(id)key inOptions:(id)options error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v15 = 0;
  v9 = objc_opt_class();
  LODWORD(error) = _getObjectFromOptionsDictionary(&v15, optionsCopy, keyCopy, 1, v9, error);
  v10 = v15;
  v11 = v10;
  if (error)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

+ (id)originatingRequestSpecifierInOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v12 = 0;
  v6 = objc_opt_class();
  LODWORD(error) = _getObjectFromOptionsDictionary(&v12, optionsCopy, @"VNDetectorOption_OriginatingRequestSpecifier", 1, v6, error);
  v7 = v12;
  v8 = v7;
  if (error)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

+ (id)requiredSessionInOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v12 = 0;
  v6 = objc_opt_class();
  LODWORD(error) = _getObjectFromOptionsDictionary(&v12, optionsCopy, @"VNDetectorProcessOption_Session", 1, v6, error);
  v7 = v12;
  v8 = v7;
  if (error)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

+ (id)requiredDetectedObjectObservationInOptions:(id)options withOptionName:(id)name forObservationClass:(Class)class error:(id *)error
{
  v11 = 0;
  v6 = [self getArray:&v11 forKey:name inOptions:options withElementsOfClass:class requiredMinimumCount:1 allowedMaximumCount:1 error:error];
  v7 = v11;
  v8 = v7;
  firstObject = 0;
  if (v6)
  {
    firstObject = [v7 firstObject];
  }

  return firstObject;
}

+ (BOOL)getOptionalFaceObservations:(id *)observations inOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v16 = 0;
  v9 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v16, optionsCopy, @"VNDetectorProcessOption_InputFaceObservations", 0, v9, error);
  v11 = v16;
  v12 = v11;
  if ((ObjectFromOptionsDictionary & 1) != 0 && (!v11 || [self validateArray:v11 named:@"VNDetectorProcessOption_InputFaceObservations" hasElementsOfClass:objc_opt_class() requiredMinimumCount:0 allowedMaximumCount:0 error:error]))
  {
    v13 = v12;
    *observations = v12;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)getOptionalFaceObservation:(id *)observation inOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v17 = 0;
  v9 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v17, optionsCopy, @"VNDetectorProcessOption_InputFaceObservations", 0, v9, error);
  v11 = v17;
  v12 = v11;
  if ((ObjectFromOptionsDictionary & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!v11)
  {
    goto LABEL_9;
  }

  if ([self validateArray:v11 named:@"VNDetectorProcessOption_InputFaceObservations" hasElementsOfClass:objc_opt_class() requiredMinimumCount:0 allowedMaximumCount:0 error:error])
  {
    v13 = [v12 count];
    if (error && v13 >= 2)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The options dictuionary contains (%lu) more than 1 VNFaceObservation(s) whiile only one is expected for key: %@", objc_msgSend(v12, "count"), @"VNDetectorProcessOption_InputFaceObservations"];
      *error = [VNError errorWithCode:5 message:v14];

      goto LABEL_7;
    }

    [VNError VNAssert:observation != 0 log:@"faceObservationOut must not be NULL"];
    *observation = [v12 firstObject];
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v15 = 0;
LABEL_10:

  return v15;
}

+ (id)requiredFaceObservationsInOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v12 = 0;
  v7 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v12, optionsCopy, @"VNDetectorProcessOption_InputFaceObservations", 1, v7, error);
  v9 = v12;
  if ((ObjectFromOptionsDictionary & 1) != 0 && [self validateArray:v9 named:@"VNDetectorProcessOption_InputFaceObservations" hasElementsOfClass:objc_opt_class() requiredMinimumCount:0 allowedMaximumCount:0 error:error])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)requiredFaceObservationInOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v11 = 0;
  LOBYTE(error) = [self getArray:&v11 forKey:@"VNDetectorProcessOption_InputFaceObservations" inOptions:optionsCopy withElementsOfClass:objc_opt_class() requiredMinimumCount:1 allowedMaximumCount:1 error:error];
  v7 = v11;
  v8 = v7;
  if (error)
  {
    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)requiredArrayForKey:(id)key inOptions:(id)options withElementsOfClass:(Class)class error:(id *)error
{
  v11 = 0;
  v6 = [self getArray:&v11 forKey:key inOptions:options withElementsOfClass:class requiredMinimumCount:1 allowedMaximumCount:0 error:error];
  v7 = v11;
  v8 = v7;
  v9 = 0;
  if (v6)
  {
    v9 = v7;
  }

  return v9;
}

+ (BOOL)getArray:(id *)array forKey:(id)key inOptions:(id)options withElementsOfClass:(Class)class requiredMinimumCount:(unint64_t)count allowedMaximumCount:(unint64_t)maximumCount error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v25 = 0;
  v17 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v25, optionsCopy, keyCopy, count != 0, v17, error);
  v19 = v25;
  v20 = v19;
  if ((ObjectFromOptionsDictionary & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!v19)
  {
    v20 = MEMORY[0x1E695E0F0];
  }

  v21 = [keyCopy description];
  v22 = [self validateArray:v20 named:v21 hasElementsOfClass:class requiredMinimumCount:count allowedMaximumCount:maximumCount error:error];

  if (v22)
  {
    if (array)
    {
      *array = [v20 copy];
    }

    v23 = 1;
  }

  else
  {
LABEL_8:
    v23 = 0;
  }

  return v23;
}

+ (int)espressoPriorityForModelExecutionPriority:(unint64_t)priority
{
  if (priority - 1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1A603EA20[priority - 1];
  }
}

+ (BOOL)getEspressoPriority:(int *)priority forKey:(id)key inOptions:(id)options withDefaultValue:(int)value error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v18 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v18, optionsCopy, keyCopy, 0, v13, error);
  v15 = v18;
  v16 = v15;
  if (ObjectFromOptionsDictionary)
  {
    if (v15)
    {
      value = [objc_opt_class() espressoPriorityForModelExecutionPriority:{objc_msgSend(v15, "unsignedIntegerValue")}];
    }

    if (priority)
    {
      *priority = value;
    }
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getMTLGPUPriority:(unint64_t *)priority forKey:(id)key inOptions:(id)options withDefaultValue:(unint64_t)value error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v18 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v18, optionsCopy, keyCopy, 0, v13, error);
  v15 = v18;
  v16 = v15;
  if (ObjectFromOptionsDictionary)
  {
    if (v15)
    {
      value = [v15 unsignedIntegerValue];
    }

    if (priority)
    {
      *priority = value;
    }
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getOSTypeValue:(unsigned int *)value forKey:(id)key inOptions:(id)options withDefaultValue:(unsigned int)defaultValue error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v19 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v19, optionsCopy, keyCopy, 0, v13, error);
  v15 = v19;
  v16 = v15;
  if (value)
  {
    v17 = ObjectFromOptionsDictionary;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    if (v15)
    {
      defaultValue = [v15 unsignedIntValue];
    }

    *value = defaultValue;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getOSTypeValue:(unsigned int *)value forKey:(id)key inOptions:(id)options error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v17 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v17, optionsCopy, keyCopy, 1, v11, error);
  v13 = v17;
  v14 = v13;
  if (value)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    *value = [v13 unsignedIntValue];
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getPercentageValue:(double *)value forKey:(id)key inOptions:(id)options withDefaultValue:(double)defaultValue error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  if (_validatePercentageValue(@"default value", error, defaultValue))
  {
    v22 = 0;
    v13 = objc_opt_class();
    ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v22, optionsCopy, keyCopy, 0, v13, error);
    v15 = v22;
    v16 = v15;
    if ((ObjectFromOptionsDictionary & 1) != 0 && (!v15 || ([v15 doubleValue], defaultValue = v17, objc_msgSend(keyCopy, "description"), v18 = objc_claimAutoreleasedReturnValue(), v19 = _validatePercentageValue(v18, error, defaultValue), v18, v19)))
    {
      if (value)
      {
        *value = defaultValue;
      }

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)getFloatValue:(float *)value forKey:(id)key inOptions:(id)options withDefaultValue:(float)defaultValue error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v20 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v20, optionsCopy, keyCopy, 0, v13, error);
  v15 = v20;
  v16 = v15;
  if (value)
  {
    v17 = ObjectFromOptionsDictionary;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    if (v15)
    {
      [v15 floatValue];
      defaultValue = v18;
    }

    *value = defaultValue;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getFloatValue:(float *)value forKey:(id)key inOptions:(id)options minimumValue:(float)minimumValue maximumValue:(float)maximumValue error:(id *)error
{
  keyCopy = key;
  v18 = 0.0;
  if (([self getFloatValue:&v18 forKey:keyCopy inOptions:options error:error] & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v18 >= minimumValue && v18 <= maximumValue)
  {
    if (value)
    {
      *value = v18;
    }

    LOBYTE(error) = 1;
  }

  else if (error)
  {
    maximumValue = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is %f which is not in the range [%f..%f]", keyCopy, v18, minimumValue, maximumValue];
    *error = [VNError errorForOutOfBoundsErrorWithLocalizedDescription:maximumValue];

LABEL_8:
    LOBYTE(error) = 0;
  }

  return error;
}

+ (BOOL)getFloatValue:(float *)value forKey:(id)key inOptions:(id)options error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v18 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v18, optionsCopy, keyCopy, 1, v11, error);
  v13 = v18;
  v14 = v13;
  if (value)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    [v13 floatValue];
    *value = v16;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getDoubleValue:(double *)value forKey:(id)key inOptions:(id)options withDefaultValue:(double)defaultValue error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v20 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v20, optionsCopy, keyCopy, 0, v13, error);
  v15 = v20;
  v16 = v15;
  if (value)
  {
    v17 = ObjectFromOptionsDictionary;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    if (v15)
    {
      [v15 doubleValue];
      defaultValue = v18;
    }

    *value = defaultValue;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getDoubleValue:(double *)value forKey:(id)key inOptions:(id)options error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v18 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v18, optionsCopy, keyCopy, 1, v11, error);
  v13 = v18;
  v14 = v13;
  if (value)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    [v13 doubleValue];
    *value = v16;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getIntValue:(int *)value forKey:(id)key inOptions:(id)options withDefaultValue:(int)defaultValue error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v19 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v19, optionsCopy, keyCopy, 0, v13, error);
  v15 = v19;
  v16 = v15;
  if (value)
  {
    v17 = ObjectFromOptionsDictionary;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    if (v15)
    {
      defaultValue = [v15 intValue];
    }

    *value = defaultValue;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getIntValue:(int *)value forKey:(id)key inOptions:(id)options minimumValue:(int)minimumValue maximumValue:(int)maximumValue error:(id *)error
{
  v9 = *&maximumValue;
  v10 = *&minimumValue;
  keyCopy = key;
  v18 = 0;
  if (([self getIntValue:&v18 forKey:keyCopy inOptions:options error:error] & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v10 && v18 <= v9)
  {
    if (value)
    {
      *value = v18;
    }

    LOBYTE(error) = 1;
  }

  else if (error)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is %d which is not in the range [%d..%d]", keyCopy, v18, v10, v9];
    *error = [VNError errorForOutOfBoundsErrorWithLocalizedDescription:v16];

LABEL_8:
    LOBYTE(error) = 0;
  }

  return error;
}

+ (BOOL)getIntValue:(int *)value forKey:(id)key inOptions:(id)options error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v17 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v17, optionsCopy, keyCopy, 1, v11, error);
  v13 = v17;
  v14 = v13;
  if (value)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    *value = [v13 intValue];
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getNSUIntegerValue:(unint64_t *)value forKey:(id)key inOptions:(id)options withDefaultValue:(unint64_t)defaultValue error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v19 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v19, optionsCopy, keyCopy, 0, v13, error);
  v15 = v19;
  v16 = v15;
  if (value)
  {
    v17 = ObjectFromOptionsDictionary;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    if (v15)
    {
      defaultValue = [v15 unsignedIntegerValue];
    }

    *value = defaultValue;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getNSIntegerValue:(int64_t *)value forKey:(id)key inOptions:(id)options withDefaultValue:(int64_t)defaultValue error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v19 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v19, optionsCopy, keyCopy, 0, v13, error);
  v15 = v19;
  v16 = v15;
  if (value)
  {
    v17 = ObjectFromOptionsDictionary;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    if (v15)
    {
      defaultValue = [v15 integerValue];
    }

    *value = defaultValue;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getNSUIntegerValue:(unint64_t *)value forKey:(id)key inOptions:(id)options error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v17 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v17, optionsCopy, keyCopy, 1, v11, error);
  v13 = v17;
  v14 = v13;
  if (value)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    *value = [v13 unsignedIntegerValue];
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getNSIntegerValue:(int64_t *)value forKey:(id)key inOptions:(id)options error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v17 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v17, optionsCopy, keyCopy, 1, v11, error);
  v13 = v17;
  v14 = v13;
  if (value)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    *value = [v13 integerValue];
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getBOOLValue:(BOOL *)value forKey:(id)key inOptions:(id)options withDefaultValue:(BOOL)defaultValue error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v19 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v19, optionsCopy, keyCopy, 0, v13, error);
  v15 = v19;
  v16 = v15;
  if (value)
  {
    v17 = ObjectFromOptionsDictionary;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    if (v15)
    {
      defaultValue = [v15 BOOLValue];
    }

    *value = defaultValue;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getBOOLValue:(BOOL *)value forKey:(id)key inOptions:(id)options error:(id *)error
{
  keyCopy = key;
  optionsCopy = options;
  v17 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v17, optionsCopy, keyCopy, 1, v11, error);
  v13 = v17;
  v14 = v13;
  if (value)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    *value = [v13 BOOLValue];
  }

  return ObjectFromOptionsDictionary;
}

+ (id)requiredObjectConformingToProtocol:(id)protocol forKey:(id)key inOptions:(id)options error:(id *)error
{
  protocolCopy = protocol;
  keyCopy = key;
  optionsCopy = options;
  v12 = keyCopy;
  v13 = protocolCopy;
  v14 = [optionsCopy objectForKey:v12];
  v15 = v14;
  if (v14)
  {
    if ([v14 conformsToProtocol:v13])
    {
      v16 = v15;
      v17 = 1;
      error = v15;
      goto LABEL_10;
    }

    if (error)
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = NSStringFromProtocol(v13);
      v18 = [v20 stringWithFormat:@"The %@ option was expected to conform to %@ (%@)", v12, v21, v15];

      v19 = [VNError errorWithCode:5 message:v18];
      goto LABEL_8;
    }
  }

  else if (error)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ required option was not found", v12];
    v19 = [VNError errorWithCode:7 message:v18];
LABEL_8:
    *error = v19;

    error = 0;
  }

  v17 = 0;
LABEL_10:

  errorCopy = error;
  v23 = errorCopy;
  if (v17)
  {
    v24 = errorCopy;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)requiredObjectOfClass:(Class)class forKey:(id)key inOptions:(id)options error:(id *)error
{
  v12 = 0;
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v12, options, key, 1, class, error);
  v7 = v12;
  v8 = v7;
  if (ObjectFromOptionsDictionary)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

+ (BOOL)validateAsyncStatusResults:(id)results error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  resultsCopy = results;
  v7 = [resultsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(resultsCopy);
        }

        if (([self validateAsyncStatusResult:*(*(&v12 + 1) + 8 * i) error:{error, v12}] & 1) == 0)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [resultsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

+ (BOOL)validateNonNilOptionsDictionary:(id)dictionary selector:(SEL)selector error:(id *)error
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy && error)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = NSStringFromSelector(selector);
    v10 = [v8 stringWithFormat:@"%@ cannot be called with nil options", v9];

    *error = [VNError errorForInvalidOperationWithLocalizedDescription:v10];
  }

  return dictionaryCopy != 0;
}

+ (BOOL)validateAsyncStatusResult:(id)result error:(id *)error
{
  resultCopy = result;
  if (![VNValidationUtilities validateAsyncStatusState:resultCopy error:error])
  {
    [VNError VNAssert:0 log:@"Invalid async status state"];
LABEL_5:
    v6 = 0;
    goto LABEL_8;
  }

  if (([resultCopy completed] & 1) == 0)
  {
    if (error)
    {
      [resultCopy error];
      *error = v6 = 0;
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

+ (BOOL)validateAsyncStatusState:(id)state error:(id *)error
{
  stateCopy = state;
  v6 = stateCopy;
  if (!stateCopy)
  {
    if (error)
    {
      v11 = [VNError errorForInternalErrorWithLocalizedDescription:@"Async status object is nil"];
LABEL_18:
      v13 = 0;
      *error = v11;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  completed = [stateCopy completed];
  error = [v6 error];

  if (error)
  {
    v9 = completed;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    if (error)
    {
      v10 = @"Async status object reported as completed successfully but with an error";
LABEL_17:
      v11 = [VNError errorForInternalErrorWithLocalizedDescription:v10];
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (error)
  {
    v12 = 1;
  }

  else
  {
    v12 = completed;
  }

  if ((v12 & 1) == 0)
  {
    if (error)
    {
      v10 = @"Async status object reported as failed but without an error";
      goto LABEL_17;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v13 = 1;
LABEL_20:

  return v13;
}

+ (BOOL)validateScoreRange:(float)range named:(id)named error:(id *)error
{
  namedCopy = named;
  v8 = namedCopy;
  v9 = fabsf(range);
  if (v9 > 1.0 && error != 0)
  {
    v11 = [(__CFString *)namedCopy length];
    v12 = @"score";
    if (v11)
    {
      v12 = v8;
    }

    v13 = v12;
    range = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ value %f must be in the range [-1..1]", v13, range];
    *error = [VNError errorForOutOfBoundsErrorWithLocalizedDescription:range];
  }

  return v9 <= 1.0;
}

+ (BOOL)validateVNConfidenceRange:(float)range error:(id *)error
{
  v4 = range <= 1.0 && range >= 0.0;
  if (!v4 && error)
  {
    range = [MEMORY[0x1E696AEC0] stringWithFormat:@"The confidence value %f must be in the range [0..1]", range];
    *error = [VNError errorForOutOfBoundsErrorWithLocalizedDescription:range];
  }

  return v4;
}

+ (BOOL)validateRequiredClusterIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  LOBYTE(error) = [self validateArray:dsCopy named:@"cluster IDs" hasElementsOfClass:objc_opt_class() requiredMinimumCount:1 allowedMaximumCount:0 error:error];

  return error;
}

+ (BOOL)_validateDetectedObjectObservations:(id)observations forObservationClass:(Class)class withMinimumCount:(unint64_t)count forOptionalRequest:(id)request error:(id *)error
{
  observationsCopy = observations;
  requestCopy = request;
  if (requestCopy)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@ %@", v16, @"detected object observations"];
  }

  else
  {
    v17 = @"detected object observations";
  }

  v18 = [self validateArray:observationsCopy named:v17 hasElementsOfClass:class requiredMinimumCount:count allowedMaximumCount:0 error:error];

  return v18;
}

+ (BOOL)_validateFaceObservations:(id)observations withMinimumCount:(unint64_t)count forOptionalRequest:(id)request error:(id *)error
{
  observationsCopy = observations;
  requestCopy = request;
  if (requestCopy)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"%@ %@", v14, @"face observations"];
  }

  else
  {
    v15 = @"face observations";
  }

  v16 = [self validateArray:observationsCopy named:v15 hasElementsOfClass:objc_opt_class() requiredMinimumCount:count allowedMaximumCount:0 error:error];

  return v16;
}

+ (BOOL)validateClassArray:(id)array named:(id)named hasElementsAncestoredFromClass:(Class)class requiredMinimumCount:(unint64_t)count allowedMaximumCount:(unint64_t)maximumCount error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  namedCopy = named;
  if (class)
  {
    if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      if (error)
      {
        [VNError errorForInvalidArgument:class named:@"expectedAncestoralClass"];
        *error = v15 = 0;
        goto LABEL_20;
      }

LABEL_19:
      v15 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    class = objc_opt_class();
  }

  if (!namedCopy)
  {
    namedCopy = @"array";
  }

  if (!arrayCopy)
  {
    if (!error)
    {
      goto LABEL_19;
    }

    namedCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is nil", namedCopy];
    v18 = [VNError errorWithCode:14 message:namedCopy];
    goto LABEL_18;
  }

  v16 = [arrayCopy count];
  if (v16 < count)
  {
    if (!error)
    {
      goto LABEL_19;
    }

    namedCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ array has %lu items, which is less than the required count of %lu", namedCopy, v16, count];
    v18 = [VNError errorWithCode:5 message:namedCopy];
LABEL_18:
    *error = v18;

    goto LABEL_19;
  }

  if (maximumCount && v16 > maximumCount)
  {
    if (!error)
    {
      goto LABEL_19;
    }

    namedCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ array has %lu items, which is more than the maximum allowed of %lu", namedCopy, v16, maximumCount];
    v18 = [VNError errorWithCode:5 message:namedCopy];
    goto LABEL_18;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = arrayCopy;
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v21)
  {
    v15 = 1;
    goto LABEL_38;
  }

  v22 = *v28;
  while (2)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v28 != v22)
      {
        objc_enumerationMutation(v20);
      }

      v24 = *(*(&v27 + 1) + 8 * i);
      if (!object_isClass(v24))
      {
        if (error)
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"All elements in the %@ array must be a Class object (%@)", namedCopy, v20];
          v26 = [VNError errorWithCode:5 message:v25];
LABEL_36:
          *error = v26;
        }

LABEL_37:
        v15 = 0;
        goto LABEL_38;
      }

      if (([v24 isSubclassOfClass:class] & 1) == 0)
      {
        if (error)
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"All elements in the %@ array must be a VNRequest subclass (%@)", namedCopy, v20];
          v26 = [VNError errorWithCode:5 message:v25];
          goto LABEL_36;
        }

        goto LABEL_37;
      }
    }

    v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    v15 = 1;
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_38:

LABEL_20:
  return v15;
}

+ (BOOL)validateArray:(id)array named:(id)named hasElementsOfClass:(Class)class requiredMinimumCount:(unint64_t)count allowedMaximumCount:(unint64_t)maximumCount error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  namedCopy = named;
  if (namedCopy)
  {
    v15 = namedCopy;
  }

  else
  {
    v15 = @"array";
  }

  if (!arrayCopy)
  {
    if (!error)
    {
      goto LABEL_16;
    }

    maximumCount = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is nil", v15];
    v18 = [VNError errorWithCode:14 message:maximumCount];
    goto LABEL_14;
  }

  v16 = [arrayCopy count];
  if (v16 < count)
  {
    if (!error)
    {
      goto LABEL_16;
    }

    maximumCount = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ array has %lu items, which is less than the required count of %lu", v15, v16, count];
    v18 = [VNError errorWithCode:5 message:maximumCount];
    goto LABEL_14;
  }

  if (maximumCount && v16 > maximumCount)
  {
    if (!error)
    {
      goto LABEL_16;
    }

    maximumCount = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ array has %lu items, which is more than the maximum allowed of %lu", v15, v16, maximumCount];
    v18 = [VNError errorWithCode:5 message:maximumCount];
LABEL_14:
    *error = v18;

LABEL_15:
    LOBYTE(error) = 0;
    goto LABEL_16;
  }

  if (class)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = arrayCopy;
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v21)
    {
      v22 = *v28;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v20);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v24 = MEMORY[0x1E696AEC0];
              v25 = NSStringFromClass(class);
              v26 = [v24 stringWithFormat:@"All elements in the %@ array must be of class %@ (%@)", v15, v25, v20];

              *error = [VNError errorWithCode:5 message:v26];
            }

            goto LABEL_15;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }
  }

  LOBYTE(error) = 1;
LABEL_16:

  return error;
}

+ (BOOL)validateNonZeroImageWidth:(unint64_t)width height:(unint64_t)height componentNameProvidingBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v10 = blockCopy;
  if (width)
  {
    v11 = height == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11 && error)
  {
    if (blockCopy)
    {
      v13 = (*(blockCopy + 2))(blockCopy);
    }

    else
    {
      v13 = 0;
    }

    height = [MEMORY[0x1E696AEC0] stringWithFormat:@"zero-dimensioned image (%ld x %ld)", width, height];
    v15 = v13;
    if ([v15 length])
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ was given %@", v15, height];
    }

    else
    {
      v16 = height;
    }

    v17 = v16;

    *error = [VNError errorWithCode:13 message:v17];
  }

  return v12;
}

@end