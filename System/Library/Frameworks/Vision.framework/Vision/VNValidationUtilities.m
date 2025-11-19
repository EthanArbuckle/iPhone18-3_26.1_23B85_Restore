@interface VNValidationUtilities
+ (BOOL)_validateDetectedObjectObservations:(id)a3 forObservationClass:(Class)a4 withMinimumCount:(unint64_t)a5 forOptionalRequest:(id)a6 error:(id *)a7;
+ (BOOL)_validateFaceObservations:(id)a3 withMinimumCount:(unint64_t)a4 forOptionalRequest:(id)a5 error:(id *)a6;
+ (BOOL)getArray:(id *)a3 forKey:(id)a4 inOptions:(id)a5 withElementsOfClass:(Class)a6 requiredMinimumCount:(unint64_t)a7 allowedMaximumCount:(unint64_t)a8 error:(id *)a9;
+ (BOOL)getBOOLValue:(BOOL *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6;
+ (BOOL)getBOOLValue:(BOOL *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(BOOL)a6 error:(id *)a7;
+ (BOOL)getDoubleValue:(double *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6;
+ (BOOL)getDoubleValue:(double *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(double)a6 error:(id *)a7;
+ (BOOL)getEspressoPriority:(int *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(int)a6 error:(id *)a7;
+ (BOOL)getFloatValue:(float *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6;
+ (BOOL)getFloatValue:(float *)a3 forKey:(id)a4 inOptions:(id)a5 minimumValue:(float)a6 maximumValue:(float)a7 error:(id *)a8;
+ (BOOL)getFloatValue:(float *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(float)a6 error:(id *)a7;
+ (BOOL)getIntValue:(int *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6;
+ (BOOL)getIntValue:(int *)a3 forKey:(id)a4 inOptions:(id)a5 minimumValue:(int)a6 maximumValue:(int)a7 error:(id *)a8;
+ (BOOL)getIntValue:(int *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(int)a6 error:(id *)a7;
+ (BOOL)getMTLGPUPriority:(unint64_t *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(unint64_t)a6 error:(id *)a7;
+ (BOOL)getNSIntegerValue:(int64_t *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6;
+ (BOOL)getNSIntegerValue:(int64_t *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(int64_t)a6 error:(id *)a7;
+ (BOOL)getNSUIntegerValue:(unint64_t *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6;
+ (BOOL)getNSUIntegerValue:(unint64_t *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(unint64_t)a6 error:(id *)a7;
+ (BOOL)getOSTypeValue:(unsigned int *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6;
+ (BOOL)getOSTypeValue:(unsigned int *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(unsigned int)a6 error:(id *)a7;
+ (BOOL)getOptionalFaceObservation:(id *)a3 inOptions:(id)a4 error:(id *)a5;
+ (BOOL)getOptionalFaceObservations:(id *)a3 inOptions:(id)a4 error:(id *)a5;
+ (BOOL)getOptionalOriginatingRequestSpecifier:(id *)a3 forKey:(id)a4 inOptions:(id)a5 specifyingRequestClass:(Class)a6 error:(id *)a7;
+ (BOOL)getPercentageValue:(double *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(double)a6 error:(id *)a7;
+ (BOOL)validateArray:(id)a3 named:(id)a4 hasElementsOfClass:(Class)a5 requiredMinimumCount:(unint64_t)a6 allowedMaximumCount:(unint64_t)a7 error:(id *)a8;
+ (BOOL)validateAsyncStatusResult:(id)a3 error:(id *)a4;
+ (BOOL)validateAsyncStatusResults:(id)a3 error:(id *)a4;
+ (BOOL)validateAsyncStatusState:(id)a3 error:(id *)a4;
+ (BOOL)validateClassArray:(id)a3 named:(id)a4 hasElementsAncestoredFromClass:(Class)a5 requiredMinimumCount:(unint64_t)a6 allowedMaximumCount:(unint64_t)a7 error:(id *)a8;
+ (BOOL)validateNonNilOptionsDictionary:(id)a3 selector:(SEL)a4 error:(id *)a5;
+ (BOOL)validateNonZeroImageWidth:(unint64_t)a3 height:(unint64_t)a4 componentNameProvidingBlock:(id)a5 error:(id *)a6;
+ (BOOL)validateRequiredClusterIDs:(id)a3 error:(id *)a4;
+ (BOOL)validateScoreRange:(float)a3 named:(id)a4 error:(id *)a5;
+ (BOOL)validateVNConfidenceRange:(float)a3 error:(id *)a4;
+ (id)computeDeviceForKey:(id)a3 inOptions:(id)a4 error:(id *)a5;
+ (id)originatingRequestSpecifierForKey:(id)a3 inOptions:(id)a4 error:(id *)a5;
+ (id)originatingRequestSpecifierForKey:(id)a3 inOptions:(id)a4 specifyingRequestClass:(Class)a5 error:(id *)a6;
+ (id)originatingRequestSpecifierInOptions:(id)a3 error:(id *)a4;
+ (id)originatingRequestSpecifierInOptions:(id)a3 specifyingRequestClass:(Class)a4 error:(id *)a5;
+ (id)requiredArrayForKey:(id)a3 inOptions:(id)a4 withElementsOfClass:(Class)a5 error:(id *)a6;
+ (id)requiredDetectedObjectObservationInOptions:(id)a3 withOptionName:(id)a4 forObservationClass:(Class)a5 error:(id *)a6;
+ (id)requiredFaceObservationInOptions:(id)a3 error:(id *)a4;
+ (id)requiredFaceObservationsInOptions:(id)a3 error:(id *)a4;
+ (id)requiredObjectConformingToProtocol:(id)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6;
+ (id)requiredObjectOfClass:(Class)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6;
+ (id)requiredSessionInOptions:(id)a3 error:(id *)a4;
+ (int)espressoPriorityForModelExecutionPriority:(unint64_t)a3;
@end

@implementation VNValidationUtilities

+ (id)computeDeviceForKey:(id)a3 inOptions:(id)a4 error:(id *)a5
{
  v5 = [a1 requiredObjectConformingToProtocol:&unk_1F19ECC98 forKey:a3 inOptions:a4 error:a5];

  return v5;
}

+ (BOOL)getOptionalOriginatingRequestSpecifier:(id *)a3 forKey:(id)a4 inOptions:(id)a5 specifyingRequestClass:(Class)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v19 = 0;
  LOBYTE(a1) = [a1 getOptionalObject:&v19 ofClass:objc_opt_class() forKey:v12 inOptions:v13 error:a7];
  v14 = v19;
  v15 = v14;
  if ((a1 & 1) != 0 && (!v14 || _validateRequestSpecifierRequestClass(v14, a6, v12, a7)))
  {
    v16 = v15;
    *a3 = v15;
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)originatingRequestSpecifierForKey:(id)a3 inOptions:(id)a4 specifyingRequestClass:(Class)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [a1 originatingRequestSpecifierForKey:v10 inOptions:a4 error:a6];
  v12 = v11;
  if (v11 && (_validateRequestSpecifierRequestClass(v11, a5, v10, a6) & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)originatingRequestSpecifierInOptions:(id)a3 specifyingRequestClass:(Class)a4 error:(id *)a5
{
  v5 = [a1 originatingRequestSpecifierForKey:@"VNDetectorOption_OriginatingRequestSpecifier" inOptions:a3 specifyingRequestClass:a4 error:a5];

  return v5;
}

+ (id)originatingRequestSpecifierForKey:(id)a3 inOptions:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v15 = 0;
  v9 = objc_opt_class();
  LODWORD(a5) = _getObjectFromOptionsDictionary(&v15, v8, v7, 1, v9, a5);
  v10 = v15;
  v11 = v10;
  if (a5)
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

+ (id)originatingRequestSpecifierInOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v12 = 0;
  v6 = objc_opt_class();
  LODWORD(a4) = _getObjectFromOptionsDictionary(&v12, v5, @"VNDetectorOption_OriginatingRequestSpecifier", 1, v6, a4);
  v7 = v12;
  v8 = v7;
  if (a4)
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

+ (id)requiredSessionInOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v12 = 0;
  v6 = objc_opt_class();
  LODWORD(a4) = _getObjectFromOptionsDictionary(&v12, v5, @"VNDetectorProcessOption_Session", 1, v6, a4);
  v7 = v12;
  v8 = v7;
  if (a4)
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

+ (id)requiredDetectedObjectObservationInOptions:(id)a3 withOptionName:(id)a4 forObservationClass:(Class)a5 error:(id *)a6
{
  v11 = 0;
  v6 = [a1 getArray:&v11 forKey:a4 inOptions:a3 withElementsOfClass:a5 requiredMinimumCount:1 allowedMaximumCount:1 error:a6];
  v7 = v11;
  v8 = v7;
  v9 = 0;
  if (v6)
  {
    v9 = [v7 firstObject];
  }

  return v9;
}

+ (BOOL)getOptionalFaceObservations:(id *)a3 inOptions:(id)a4 error:(id *)a5
{
  v8 = a4;
  v16 = 0;
  v9 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v16, v8, @"VNDetectorProcessOption_InputFaceObservations", 0, v9, a5);
  v11 = v16;
  v12 = v11;
  if ((ObjectFromOptionsDictionary & 1) != 0 && (!v11 || [a1 validateArray:v11 named:@"VNDetectorProcessOption_InputFaceObservations" hasElementsOfClass:objc_opt_class() requiredMinimumCount:0 allowedMaximumCount:0 error:a5]))
  {
    v13 = v12;
    *a3 = v12;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)getOptionalFaceObservation:(id *)a3 inOptions:(id)a4 error:(id *)a5
{
  v8 = a4;
  v17 = 0;
  v9 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v17, v8, @"VNDetectorProcessOption_InputFaceObservations", 0, v9, a5);
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

  if ([a1 validateArray:v11 named:@"VNDetectorProcessOption_InputFaceObservations" hasElementsOfClass:objc_opt_class() requiredMinimumCount:0 allowedMaximumCount:0 error:a5])
  {
    v13 = [v12 count];
    if (a5 && v13 >= 2)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The options dictuionary contains (%lu) more than 1 VNFaceObservation(s) whiile only one is expected for key: %@", objc_msgSend(v12, "count"), @"VNDetectorProcessOption_InputFaceObservations"];
      *a5 = [VNError errorWithCode:5 message:v14];

      goto LABEL_7;
    }

    [VNError VNAssert:a3 != 0 log:@"faceObservationOut must not be NULL"];
    *a3 = [v12 firstObject];
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v15 = 0;
LABEL_10:

  return v15;
}

+ (id)requiredFaceObservationsInOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v7 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v12, v6, @"VNDetectorProcessOption_InputFaceObservations", 1, v7, a4);
  v9 = v12;
  if ((ObjectFromOptionsDictionary & 1) != 0 && [a1 validateArray:v9 named:@"VNDetectorProcessOption_InputFaceObservations" hasElementsOfClass:objc_opt_class() requiredMinimumCount:0 allowedMaximumCount:0 error:a4])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)requiredFaceObservationInOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = 0;
  LOBYTE(a4) = [a1 getArray:&v11 forKey:@"VNDetectorProcessOption_InputFaceObservations" inOptions:v6 withElementsOfClass:objc_opt_class() requiredMinimumCount:1 allowedMaximumCount:1 error:a4];
  v7 = v11;
  v8 = v7;
  if (a4)
  {
    v9 = [v7 firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)requiredArrayForKey:(id)a3 inOptions:(id)a4 withElementsOfClass:(Class)a5 error:(id *)a6
{
  v11 = 0;
  v6 = [a1 getArray:&v11 forKey:a3 inOptions:a4 withElementsOfClass:a5 requiredMinimumCount:1 allowedMaximumCount:0 error:a6];
  v7 = v11;
  v8 = v7;
  v9 = 0;
  if (v6)
  {
    v9 = v7;
  }

  return v9;
}

+ (BOOL)getArray:(id *)a3 forKey:(id)a4 inOptions:(id)a5 withElementsOfClass:(Class)a6 requiredMinimumCount:(unint64_t)a7 allowedMaximumCount:(unint64_t)a8 error:(id *)a9
{
  v15 = a4;
  v16 = a5;
  v25 = 0;
  v17 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v25, v16, v15, a7 != 0, v17, a9);
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

  v21 = [v15 description];
  v22 = [a1 validateArray:v20 named:v21 hasElementsOfClass:a6 requiredMinimumCount:a7 allowedMaximumCount:a8 error:a9];

  if (v22)
  {
    if (a3)
    {
      *a3 = [v20 copy];
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

+ (int)espressoPriorityForModelExecutionPriority:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1A603EA20[a3 - 1];
  }
}

+ (BOOL)getEspressoPriority:(int *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(int)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v18 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v18, v12, v11, 0, v13, a7);
  v15 = v18;
  v16 = v15;
  if (ObjectFromOptionsDictionary)
  {
    if (v15)
    {
      a6 = [objc_opt_class() espressoPriorityForModelExecutionPriority:{objc_msgSend(v15, "unsignedIntegerValue")}];
    }

    if (a3)
    {
      *a3 = a6;
    }
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getMTLGPUPriority:(unint64_t *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(unint64_t)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v18 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v18, v12, v11, 0, v13, a7);
  v15 = v18;
  v16 = v15;
  if (ObjectFromOptionsDictionary)
  {
    if (v15)
    {
      a6 = [v15 unsignedIntegerValue];
    }

    if (a3)
    {
      *a3 = a6;
    }
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getOSTypeValue:(unsigned int *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(unsigned int)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v19 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v19, v12, v11, 0, v13, a7);
  v15 = v19;
  v16 = v15;
  if (a3)
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
      a6 = [v15 unsignedIntValue];
    }

    *a3 = a6;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getOSTypeValue:(unsigned int *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v17, v10, v9, 1, v11, a6);
  v13 = v17;
  v14 = v13;
  if (a3)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    *a3 = [v13 unsignedIntValue];
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getPercentageValue:(double *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(double)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  if (_validatePercentageValue(@"default value", a7, a6))
  {
    v22 = 0;
    v13 = objc_opt_class();
    ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v22, v12, v11, 0, v13, a7);
    v15 = v22;
    v16 = v15;
    if ((ObjectFromOptionsDictionary & 1) != 0 && (!v15 || ([v15 doubleValue], a6 = v17, objc_msgSend(v11, "description"), v18 = objc_claimAutoreleasedReturnValue(), v19 = _validatePercentageValue(v18, a7, a6), v18, v19)))
    {
      if (a3)
      {
        *a3 = a6;
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

+ (BOOL)getFloatValue:(float *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(float)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v20 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v20, v12, v11, 0, v13, a7);
  v15 = v20;
  v16 = v15;
  if (a3)
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
      a6 = v18;
    }

    *a3 = a6;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getFloatValue:(float *)a3 forKey:(id)a4 inOptions:(id)a5 minimumValue:(float)a6 maximumValue:(float)a7 error:(id *)a8
{
  v14 = a4;
  v18 = 0.0;
  if (([a1 getFloatValue:&v18 forKey:v14 inOptions:a5 error:a8] & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v18 >= a6 && v18 <= a7)
  {
    if (a3)
    {
      *a3 = v18;
    }

    LOBYTE(a8) = 1;
  }

  else if (a8)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is %f which is not in the range [%f..%f]", v14, v18, a6, a7];
    *a8 = [VNError errorForOutOfBoundsErrorWithLocalizedDescription:v16];

LABEL_8:
    LOBYTE(a8) = 0;
  }

  return a8;
}

+ (BOOL)getFloatValue:(float *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v18, v10, v9, 1, v11, a6);
  v13 = v18;
  v14 = v13;
  if (a3)
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
    *a3 = v16;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getDoubleValue:(double *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(double)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v20 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v20, v12, v11, 0, v13, a7);
  v15 = v20;
  v16 = v15;
  if (a3)
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
      a6 = v18;
    }

    *a3 = a6;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getDoubleValue:(double *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v18, v10, v9, 1, v11, a6);
  v13 = v18;
  v14 = v13;
  if (a3)
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
    *a3 = v16;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getIntValue:(int *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(int)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v19 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v19, v12, v11, 0, v13, a7);
  v15 = v19;
  v16 = v15;
  if (a3)
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
      a6 = [v15 intValue];
    }

    *a3 = a6;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getIntValue:(int *)a3 forKey:(id)a4 inOptions:(id)a5 minimumValue:(int)a6 maximumValue:(int)a7 error:(id *)a8
{
  v9 = *&a7;
  v10 = *&a6;
  v14 = a4;
  v18 = 0;
  if (([a1 getIntValue:&v18 forKey:v14 inOptions:a5 error:a8] & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v10 && v18 <= v9)
  {
    if (a3)
    {
      *a3 = v18;
    }

    LOBYTE(a8) = 1;
  }

  else if (a8)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is %d which is not in the range [%d..%d]", v14, v18, v10, v9];
    *a8 = [VNError errorForOutOfBoundsErrorWithLocalizedDescription:v16];

LABEL_8:
    LOBYTE(a8) = 0;
  }

  return a8;
}

+ (BOOL)getIntValue:(int *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v17, v10, v9, 1, v11, a6);
  v13 = v17;
  v14 = v13;
  if (a3)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    *a3 = [v13 intValue];
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getNSUIntegerValue:(unint64_t *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(unint64_t)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v19 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v19, v12, v11, 0, v13, a7);
  v15 = v19;
  v16 = v15;
  if (a3)
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
      a6 = [v15 unsignedIntegerValue];
    }

    *a3 = a6;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getNSIntegerValue:(int64_t *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(int64_t)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v19 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v19, v12, v11, 0, v13, a7);
  v15 = v19;
  v16 = v15;
  if (a3)
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
      a6 = [v15 integerValue];
    }

    *a3 = a6;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getNSUIntegerValue:(unint64_t *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v17, v10, v9, 1, v11, a6);
  v13 = v17;
  v14 = v13;
  if (a3)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    *a3 = [v13 unsignedIntegerValue];
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getNSIntegerValue:(int64_t *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v17, v10, v9, 1, v11, a6);
  v13 = v17;
  v14 = v13;
  if (a3)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    *a3 = [v13 integerValue];
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getBOOLValue:(BOOL *)a3 forKey:(id)a4 inOptions:(id)a5 withDefaultValue:(BOOL)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v19 = 0;
  v13 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v19, v12, v11, 0, v13, a7);
  v15 = v19;
  v16 = v15;
  if (a3)
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
      a6 = [v15 BOOLValue];
    }

    *a3 = a6;
  }

  return ObjectFromOptionsDictionary;
}

+ (BOOL)getBOOLValue:(BOOL *)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v11 = objc_opt_class();
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v17, v10, v9, 1, v11, a6);
  v13 = v17;
  v14 = v13;
  if (a3)
  {
    v15 = ObjectFromOptionsDictionary;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    *a3 = [v13 BOOLValue];
  }

  return ObjectFromOptionsDictionary;
}

+ (id)requiredObjectConformingToProtocol:(id)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v10;
  v13 = v9;
  v14 = [v11 objectForKey:v12];
  v15 = v14;
  if (v14)
  {
    if ([v14 conformsToProtocol:v13])
    {
      v16 = v15;
      v17 = 1;
      a6 = v15;
      goto LABEL_10;
    }

    if (a6)
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = NSStringFromProtocol(v13);
      v18 = [v20 stringWithFormat:@"The %@ option was expected to conform to %@ (%@)", v12, v21, v15];

      v19 = [VNError errorWithCode:5 message:v18];
      goto LABEL_8;
    }
  }

  else if (a6)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ required option was not found", v12];
    v19 = [VNError errorWithCode:7 message:v18];
LABEL_8:
    *a6 = v19;

    a6 = 0;
  }

  v17 = 0;
LABEL_10:

  v22 = a6;
  v23 = v22;
  if (v17)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)requiredObjectOfClass:(Class)a3 forKey:(id)a4 inOptions:(id)a5 error:(id *)a6
{
  v12 = 0;
  ObjectFromOptionsDictionary = _getObjectFromOptionsDictionary(&v12, a5, a4, 1, a3, a6);
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

+ (BOOL)validateAsyncStatusResults:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if (([a1 validateAsyncStatusResult:*(*(&v12 + 1) + 8 * i) error:{a4, v12}] & 1) == 0)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (BOOL)validateNonNilOptionsDictionary:(id)a3 selector:(SEL)a4 error:(id *)a5
{
  v7 = a3;
  if (!v7 && a5)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = NSStringFromSelector(a4);
    v10 = [v8 stringWithFormat:@"%@ cannot be called with nil options", v9];

    *a5 = [VNError errorForInvalidOperationWithLocalizedDescription:v10];
  }

  return v7 != 0;
}

+ (BOOL)validateAsyncStatusResult:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (![VNValidationUtilities validateAsyncStatusState:v5 error:a4])
  {
    [VNError VNAssert:0 log:@"Invalid async status state"];
LABEL_5:
    v6 = 0;
    goto LABEL_8;
  }

  if (([v5 completed] & 1) == 0)
  {
    if (a4)
    {
      [v5 error];
      *a4 = v6 = 0;
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

+ (BOOL)validateAsyncStatusState:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    if (a4)
    {
      v11 = [VNError errorForInternalErrorWithLocalizedDescription:@"Async status object is nil"];
LABEL_18:
      v13 = 0;
      *a4 = v11;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v7 = [v5 completed];
  v8 = [v6 error];

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    if (a4)
    {
      v10 = @"Async status object reported as completed successfully but with an error";
LABEL_17:
      v11 = [VNError errorForInternalErrorWithLocalizedDescription:v10];
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = v7;
  }

  if ((v12 & 1) == 0)
  {
    if (a4)
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

+ (BOOL)validateScoreRange:(float)a3 named:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = v7;
  v9 = fabsf(a3);
  if (v9 > 1.0 && a5 != 0)
  {
    v11 = [(__CFString *)v7 length];
    v12 = @"score";
    if (v11)
    {
      v12 = v8;
    }

    v13 = v12;
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ value %f must be in the range [-1..1]", v13, a3];
    *a5 = [VNError errorForOutOfBoundsErrorWithLocalizedDescription:v14];
  }

  return v9 <= 1.0;
}

+ (BOOL)validateVNConfidenceRange:(float)a3 error:(id *)a4
{
  v4 = a3 <= 1.0 && a3 >= 0.0;
  if (!v4 && a4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The confidence value %f must be in the range [0..1]", a3];
    *a4 = [VNError errorForOutOfBoundsErrorWithLocalizedDescription:v6];
  }

  return v4;
}

+ (BOOL)validateRequiredClusterIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  LOBYTE(a4) = [a1 validateArray:v6 named:@"cluster IDs" hasElementsOfClass:objc_opt_class() requiredMinimumCount:1 allowedMaximumCount:0 error:a4];

  return a4;
}

+ (BOOL)_validateDetectedObjectObservations:(id)a3 forObservationClass:(Class)a4 withMinimumCount:(unint64_t)a5 forOptionalRequest:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  if (v13)
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

  v18 = [a1 validateArray:v12 named:v17 hasElementsOfClass:a4 requiredMinimumCount:a5 allowedMaximumCount:0 error:a7];

  return v18;
}

+ (BOOL)_validateFaceObservations:(id)a3 withMinimumCount:(unint64_t)a4 forOptionalRequest:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if (v11)
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

  v16 = [a1 validateArray:v10 named:v15 hasElementsOfClass:objc_opt_class() requiredMinimumCount:a4 allowedMaximumCount:0 error:a6];

  return v16;
}

+ (BOOL)validateClassArray:(id)a3 named:(id)a4 hasElementsAncestoredFromClass:(Class)a5 requiredMinimumCount:(unint64_t)a6 allowedMaximumCount:(unint64_t)a7 error:(id *)a8
{
  v32 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  if (a5)
  {
    if (([(objc_class *)a5 isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      if (a8)
      {
        [VNError errorForInvalidArgument:a5 named:@"expectedAncestoralClass"];
        *a8 = v15 = 0;
        goto LABEL_20;
      }

LABEL_19:
      v15 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    a5 = objc_opt_class();
  }

  if (!v14)
  {
    v14 = @"array";
  }

  if (!v13)
  {
    if (!a8)
    {
      goto LABEL_19;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is nil", v14];
    v18 = [VNError errorWithCode:14 message:v17];
    goto LABEL_18;
  }

  v16 = [v13 count];
  if (v16 < a6)
  {
    if (!a8)
    {
      goto LABEL_19;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ array has %lu items, which is less than the required count of %lu", v14, v16, a6];
    v18 = [VNError errorWithCode:5 message:v17];
LABEL_18:
    *a8 = v18;

    goto LABEL_19;
  }

  if (a7 && v16 > a7)
  {
    if (!a8)
    {
      goto LABEL_19;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ array has %lu items, which is more than the maximum allowed of %lu", v14, v16, a7];
    v18 = [VNError errorWithCode:5 message:v17];
    goto LABEL_18;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v13;
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
        if (a8)
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"All elements in the %@ array must be a Class object (%@)", v14, v20];
          v26 = [VNError errorWithCode:5 message:v25];
LABEL_36:
          *a8 = v26;
        }

LABEL_37:
        v15 = 0;
        goto LABEL_38;
      }

      if (([v24 isSubclassOfClass:a5] & 1) == 0)
      {
        if (a8)
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"All elements in the %@ array must be a VNRequest subclass (%@)", v14, v20];
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

+ (BOOL)validateArray:(id)a3 named:(id)a4 hasElementsOfClass:(Class)a5 requiredMinimumCount:(unint64_t)a6 allowedMaximumCount:(unint64_t)a7 error:(id *)a8
{
  v32 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = @"array";
  }

  if (!v13)
  {
    if (!a8)
    {
      goto LABEL_16;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is nil", v15];
    v18 = [VNError errorWithCode:14 message:v17];
    goto LABEL_14;
  }

  v16 = [v13 count];
  if (v16 < a6)
  {
    if (!a8)
    {
      goto LABEL_16;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ array has %lu items, which is less than the required count of %lu", v15, v16, a6];
    v18 = [VNError errorWithCode:5 message:v17];
    goto LABEL_14;
  }

  if (a7 && v16 > a7)
  {
    if (!a8)
    {
      goto LABEL_16;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ array has %lu items, which is more than the maximum allowed of %lu", v15, v16, a7];
    v18 = [VNError errorWithCode:5 message:v17];
LABEL_14:
    *a8 = v18;

LABEL_15:
    LOBYTE(a8) = 0;
    goto LABEL_16;
  }

  if (a5)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = v13;
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
            if (a8)
            {
              v24 = MEMORY[0x1E696AEC0];
              v25 = NSStringFromClass(a5);
              v26 = [v24 stringWithFormat:@"All elements in the %@ array must be of class %@ (%@)", v15, v25, v20];

              *a8 = [VNError errorWithCode:5 message:v26];
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

  LOBYTE(a8) = 1;
LABEL_16:

  return a8;
}

+ (BOOL)validateNonZeroImageWidth:(unint64_t)a3 height:(unint64_t)a4 componentNameProvidingBlock:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v11 = a4 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11 && a6)
  {
    if (v9)
    {
      v13 = (*(v9 + 2))(v9);
    }

    else
    {
      v13 = 0;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"zero-dimensioned image (%ld x %ld)", a3, a4];
    v15 = v13;
    if ([v15 length])
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ was given %@", v15, v14];
    }

    else
    {
      v16 = v14;
    }

    v17 = v16;

    *a6 = [VNError errorWithCode:13 message:v17];
  }

  return v12;
}

@end