@interface AVOutputSettings
+ (id)_outputSettingsWithOutputSettingsDictionary:(id)a3 mediaType:(id)a4 exceptionReason:(id *)a5;
+ (id)defaultOutputSettingsForMediaType:(id)a3;
+ (id)eligibleOutputSettingsDictionaryKeys;
+ (id)outputSettingsWithOutputSettingsDictionary:(id)a3 mediaType:(id)a4;
+ (id)registeredOutputSettingsClasses;
+ (unint64_t)_validateOutputSettingsDictionary:(id)a3 compatibilityDescription:(id *)a4;
- (AVOutputSettings)initWithOutputSettingsDictionary:(id)a3 exceptionReason:(id *)a4;
- (BOOL)canFullySpecifyOutputFormatReturningReason:(id *)a3;
- (BOOL)encoderIsAvailableOnCurrentSystemReturningError:(id *)a3;
- (BOOL)validateUsingOutputSettingsValidator:(id)a3 reason:(id *)a4;
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
  v4 = [a1 registeredOutputSettingsClasses];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 unionSet:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "eligibleOutputSettingsDictionaryKeys")}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (unint64_t)_validateOutputSettingsDictionary:(id)a3 compatibilityDescription:(id *)a4
{
  v6 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(a3, "allKeys")}];
  v7 = [MEMORY[0x1E695DFA8] setWithSet:{objc_msgSend(a1, "eligibleOutputSettingsDictionaryKeys")}];
  if ([a1 supportsEmptyOutputSettingsDictionary] && !objc_msgSend(v6, "count"))
  {
    v10 = @"Output settings dictionary is empty and valid";
    v9 = 1;
    if (!a4)
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

  if (a4)
  {
LABEL_9:
    *a4 = v10;
  }

  return v9;
}

+ (id)outputSettingsWithOutputSettingsDictionary:(id)a3 mediaType:(id)a4
{
  v14 = 0;
  result = [a1 _outputSettingsWithOutputSettingsDictionary:a3 mediaType:a4 exceptionReason:&v14];
  if (!result)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, v14, v7, v8, v9, v10, v11, v13), 0}];
    objc_exception_throw(v12);
  }

  return result;
}

+ (id)_outputSettingsWithOutputSettingsDictionary:(id)a3 mediaType:(id)a4 exceptionReason:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v23 = a1;
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, @"invalid parameter not satisfying: %s", v24, v25, v26, v27, v28, "outputSettingsDictionary != nil"), 0}];
    objc_exception_throw(v29);
  }

  v34 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [a1 registeredOutputSettingsClasses];
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v30 + 1) + 8 * v15);
      v17 = [v16 _validateOutputSettingsDictionary:a3 compatibilityDescription:&v34];
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
        v18 = [v16 _outputSettingsWithOutputSettingsDictionary:a3 mediaType:a4 exceptionReason:&v34];
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
          if (!a5)
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
        v20 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
        v11 = v20;
        if (v20)
        {
          goto LABEL_4;
        }

        v19 = 0;
        if (a5)
        {
          goto LABEL_21;
        }

        return v19;
      }
    }
  }

  v19 = 0;
  v14 = @"Output settings dictionary does not contain any recognized keys";
  if (a5)
  {
LABEL_21:
    *a5 = v14;
  }

  return v19;
}

+ (id)defaultOutputSettingsForMediaType:(id)a3
{
  if ([a3 isEqualToString:@"soun"])
  {

    return +[AVAudioOutputSettings defaultAudioOutputSettings];
  }

  else if (([a3 isEqualToString:@"vide"] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"auxv"))
  {

    return +[AVVideoOutputSettings defaultVideoOutputSettings];
  }

  else
  {
    return 0;
  }
}

- (AVOutputSettings)initWithOutputSettingsDictionary:(id)a3 exceptionReason:(id *)a4
{
  v9.receiver = self;
  v9.super_class = AVOutputSettings;
  v6 = [(AVOutputSettings *)&v9 init:a3];
  v7 = objc_opt_class();
  AVRequireConcreteObject(v6, a2, v7);
  if (v6)
  {
    v6->_outputSettingsDictionary = [a3 copyWithZone:{-[AVOutputSettings zone](v6, "zone")}];
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

- (BOOL)canFullySpecifyOutputFormatReturningReason:(id *)a3
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- (BOOL)validateUsingOutputSettingsValidator:(id)a3 reason:(id *)a4
{
  v6 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v6);
  return 0;
}

- (BOOL)encoderIsAvailableOnCurrentSystemReturningError:(id *)a3
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

@end