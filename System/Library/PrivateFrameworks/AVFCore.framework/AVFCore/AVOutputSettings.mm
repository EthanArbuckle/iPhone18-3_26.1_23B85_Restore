@interface AVOutputSettings
+ (id)_outputSettingsWithOutputSettingsDictionary:(id)dictionary mediaType:(id)type exceptionReason:(id *)reason;
+ (id)defaultOutputSettingsForMediaType:(id)type;
+ (id)eligibleOutputSettingsDictionaryKeys;
+ (id)outputSettingsWithOutputSettingsDictionary:(id)dictionary mediaType:(id)type;
+ (id)registeredOutputSettingsClasses;
+ (unint64_t)_validateOutputSettingsDictionary:(id)dictionary compatibilityDescription:(id *)description;
- (AVOutputSettings)initWithOutputSettingsDictionary:(id)dictionary exceptionReason:(id *)reason;
- (BOOL)canFullySpecifyOutputFormatReturningReason:(id *)reason;
- (BOOL)encoderIsAvailableOnCurrentSystemReturningError:(id *)error;
- (BOOL)validateUsingOutputSettingsValidator:(id)validator reason:(id *)reason;
- (BOOL)willYieldCompressedSamples;
- (NSSet)compatibleMediaTypes;
- (id)description;
- (void)dealloc;
@end

@implementation AVOutputSettings

+ (id)registeredOutputSettingsClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

+ (id)eligibleOutputSettingsDictionaryKeys
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  registeredOutputSettingsClasses = [self registeredOutputSettingsClasses];
  v5 = [registeredOutputSettingsClasses countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(registeredOutputSettingsClasses);
        }

        [v3 unionSet:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "eligibleOutputSettingsDictionaryKeys")}];
      }

      while (v6 != v8);
      v6 = [registeredOutputSettingsClasses countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (unint64_t)_validateOutputSettingsDictionary:(id)dictionary compatibilityDescription:(id *)description
{
  v6 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(dictionary, "allKeys")}];
  v7 = [MEMORY[0x1E695DFA8] setWithSet:{objc_msgSend(self, "eligibleOutputSettingsDictionaryKeys")}];
  if ([self supportsEmptyOutputSettingsDictionary] && !objc_msgSend(v6, "count"))
  {
    v10 = @"Output settings dictionary is empty and valid";
    v9 = 1;
    if (!description)
    {
      return v9;
    }

    goto LABEL_9;
  }

  [v7 intersectSet:v6];
  v8 = [v7 count];
  v9 = v8 != 0;
  if (v8)
  {
    v10 = @"Output settings dictionary is valid";
  }

  else
  {
    v10 = 0;
  }

  if (v8 < [v6 count])
  {
    v9 |= 2uLL;
    v11 = [MEMORY[0x1E695DFA8] setWithSet:v6];
    [v11 minusSet:v7];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output settings dictionary contains one or more invalid keys: %@", objc_msgSend(objc_msgSend(v11, "allObjects"), "componentsJoinedByString:", @", ")];
  }

  if (description)
  {
LABEL_9:
    *description = v10;
  }

  return v9;
}

+ (id)outputSettingsWithOutputSettingsDictionary:(id)dictionary mediaType:(id)type
{
  v14 = 0;
  result = [self _outputSettingsWithOutputSettingsDictionary:dictionary mediaType:type exceptionReason:&v14];
  if (!result)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v14, v7, v8, v9, v10, v11, v13), 0}];
    objc_exception_throw(v12);
  }

  return result;
}

+ (id)_outputSettingsWithOutputSettingsDictionary:(id)dictionary mediaType:(id)type exceptionReason:(id *)reason
{
  v36 = *MEMORY[0x1E69E9840];
  if (!dictionary)
  {
    selfCopy = self;
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v24, v25, v26, v27, v28, "outputSettingsDictionary != nil"), 0}];
    objc_exception_throw(v29);
  }

  v34 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  registeredOutputSettingsClasses = [self registeredOutputSettingsClasses];
  v10 = [registeredOutputSettingsClasses countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v31;
    v14 = @"Output settings dictionary does not contain any recognized keys";
LABEL_4:
    v15 = 0;
    while (1)
    {
      if (*v31 != v13)
      {
        objc_enumerationMutation(registeredOutputSettingsClasses);
      }

      v16 = *(*(&v30 + 1) + 8 * v15);
      v17 = [v16 _validateOutputSettingsDictionary:dictionary compatibilityDescription:&v34];
      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }

      if ((v12 & 1) == 0)
      {
        v14 = v34;
      }

      if ((v17 & 2) == 0)
      {
        v18 = [v16 _outputSettingsWithOutputSettingsDictionary:dictionary mediaType:type exceptionReason:&v34];
        if (!v18)
        {
          v12 = 1;
          v14 = v34;
          goto LABEL_14;
        }

        v19 = v18;
        if ([objc_msgSend(v18 "compatibleMediaTypes")])
        {
          v14 = v34;
          if (!reason)
          {
            return v19;
          }

          goto LABEL_21;
        }
      }

      v12 = 1;
LABEL_14:
      if (v11 == ++v15)
      {
        v20 = [registeredOutputSettingsClasses countByEnumeratingWithState:&v30 objects:v35 count:16];
        v11 = v20;
        if (v20)
        {
          goto LABEL_4;
        }

        v19 = 0;
        if (reason)
        {
          goto LABEL_21;
        }

        return v19;
      }
    }
  }

  v19 = 0;
  v14 = @"Output settings dictionary does not contain any recognized keys";
  if (reason)
  {
LABEL_21:
    *reason = v14;
  }

  return v19;
}

+ (id)defaultOutputSettingsForMediaType:(id)type
{
  if ([type isEqualToString:@"soun"])
  {

    return +[AVAudioOutputSettings defaultAudioOutputSettings];
  }

  else if (([type isEqualToString:@"vide"] & 1) != 0 || objc_msgSend(type, "isEqualToString:", @"auxv"))
  {

    return +[AVVideoOutputSettings defaultVideoOutputSettings];
  }

  else
  {
    return 0;
  }
}

- (AVOutputSettings)initWithOutputSettingsDictionary:(id)dictionary exceptionReason:(id *)reason
{
  v9.receiver = self;
  v9.super_class = AVOutputSettings;
  v6 = [(AVOutputSettings *)&v9 init:dictionary];
  v7 = objc_opt_class();
  AVRequireConcreteObject(v6, a2, v7);
  if (v6)
  {
    v6->_outputSettingsDictionary = [dictionary copyWithZone:{-[AVOutputSettings zone](v6, "zone")}];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputSettings;
  [(AVOutputSettings *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, outputSettingsDictionary=%@>", NSStringFromClass(v4), self, -[AVOutputSettings outputSettingsDictionary](self, "outputSettingsDictionary")];
}

- (NSSet)compatibleMediaTypes
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (BOOL)willYieldCompressedSamples
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (BOOL)canFullySpecifyOutputFormatReturningReason:(id *)reason
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- (BOOL)validateUsingOutputSettingsValidator:(id)validator reason:(id *)reason
{
  v6 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v6);
  return 0;
}

- (BOOL)encoderIsAvailableOnCurrentSystemReturningError:(id *)error
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

@end