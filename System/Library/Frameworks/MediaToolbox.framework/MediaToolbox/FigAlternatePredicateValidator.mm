@interface FigAlternatePredicateValidator
+ (BOOL)validateKeyPathForMinMaxQualifiers:(id)a3;
- (BOOL)_allowCallingFunctionWithName:(id)a3;
- (BOOL)_keyPathComponentIsAllowed:(id)a3;
- (BOOL)_unsafeEvaluateKeyPathWithDummy:(id)a3;
- (BOOL)_validateKeyPath:(id)a3;
- (BOOL)validateWithError:(id *)a3;
- (FigAlternatePredicateValidator)initWithPredicate:(id)a3;
- (void)dealloc;
- (void)visitPredicate:(id)a3;
- (void)visitPredicateExpression:(id)a3;
- (void)visitPredicateOperator:(id)a3;
@end

@implementation FigAlternatePredicateValidator

- (FigAlternatePredicateValidator)initWithPredicate:(id)a3
{
  v6.receiver = self;
  v6.super_class = FigAlternatePredicateValidator;
  v4 = [(FigAlternatePredicateValidator *)&v6 init];
  if (v4)
  {
    v4->_predicate = [a3 copy];
    v4->_mutex = FigSimpleMutexCreate();
    v4->_result = 1;
  }

  return v4;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = FigAlternatePredicateValidator;
  [(FigAlternatePredicateValidator *)&v3 dealloc];
}

- (void)visitPredicate:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (self->_result)
  {
    Class = objc_getClass("AVAssetVariantChannelCountPredicate");
    v6 = objc_getClass("AVAssetVariantBinauralAudioPredicate");
    v7 = objc_getClass("AVAssetVariantImmersiveAudioPredicate");
    v8 = objc_getClass("AVAssetVariantDownmixAudioPredicate");
    v9 = objc_getClass("AVAssetVariantAudioSampleRatePredicate");
    v10 = objc_getClass("AVAssetVariantPresentationWidthPredicate");
    v11 = objc_getClass("AVAssetVariantPresentationHeightPredicate");
    if (([a3 isMemberOfClass:objc_opt_class()] & 1) == 0 && (objc_msgSend(a3, "isMemberOfClass:", objc_opt_class()) & 1) == 0 && (!Class || (objc_msgSend(a3, "isMemberOfClass:", Class) & 1) == 0) && (!v6 || (objc_msgSend(a3, "isMemberOfClass:", v6) & 1) == 0) && (!v7 || (objc_msgSend(a3, "isMemberOfClass:", v7) & 1) == 0) && (!v8 || (objc_msgSend(a3, "isMemberOfClass:", v8) & 1) == 0) && (!v10 || (objc_msgSend(a3, "isMemberOfClass:", v10) & 1) == 0) && (!v11 || (objc_msgSend(a3, "isMemberOfClass:", v11) & 1) == 0) && (!v9 || (objc_msgSend(a3, "isMemberOfClass:", v9) & 1) == 0))
    {
      self->_result = 0;
      v13 = *MEMORY[0x1E696A278];
      v14[0] = @"failed to validate NSPredicate because only comparison and compound predicates are supported";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      self->_error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreMediaErrorDomain" code:-15860 userInfo:v12];
    }
  }
}

- (BOOL)_unsafeEvaluateKeyPathWithDummy:(id)a3
{
  v4 = +[FigAlternateObjC dummy];
  v6 = [v4 valueForKeyPath:a3];
  return [v4 validateValue:&v6 forKeyPath:a3 error:0];
}

- (BOOL)_keyPathComponentIsAllowed:(id)a3
{
  if (_keyPathComponentIsAllowed__buildValidKeysOnce != -1)
  {
    [FigAlternatePredicateValidator _keyPathComponentIsAllowed:];
  }

  v4 = _keyPathComponentIsAllowed__sValidKeys;

  return [v4 containsObject:a3];
}

id __61__FigAlternatePredicateValidator__keyPathComponentIsAllowed___block_invoke()
{
  result = [MEMORY[0x1E695DFD8] setWithObjects:{@"peakBitRate", @"averageBitRate", @"videoAttributes", @"videoRange", @"codecTypes", @"presentationSize", @"presentationHeight", @"presentationWidth", @"nominalFrameRate", @"audioAttributes", @"formatIDs", @"packing", @"channelLayout", @"projection", @"@avg", @"@count", @"@max", @"@min", @"@sum", @"@distinctUnionOfObjects", @"@unionOfObjects", @"@distinctUnionOfArrays", @"@unionOfArrays", @"@distinctUnionOfSets", @"videoLayoutAttributes", @"stereoViewComponents", @"packingType", @"projectionType", 0}];
  _keyPathComponentIsAllowed__sValidKeys = result;
  return result;
}

- (BOOL)_validateKeyPath:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [a3 length];
  if (v5)
  {
    v6 = [(FigAlternatePredicateValidator *)self _keyPathComponents:a3];
    if ([v6 count] <= 5)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
LABEL_6:
        v10 = 0;
        while (1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          LODWORD(v5) = [(FigAlternatePredicateValidator *)self _keyPathComponentIsAllowed:*(*(&v12 + 1) + 8 * v10)];
          if (!v5)
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
            if (v8)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        LOBYTE(v5) = [(FigAlternatePredicateValidator *)self _unsafeEvaluateKeyPathWithDummy:a3];
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)_allowCallingFunctionWithName:(id)a3
{
  if (_allowCallingFunctionWithName__sOnceToken != -1)
  {
    [FigAlternatePredicateValidator _allowCallingFunctionWithName:];
  }

  v4 = _allowCallingFunctionWithName__sValidFunctions;

  return [v4 containsObject:a3];
}

id __64__FigAlternatePredicateValidator__allowCallingFunctionWithName___block_invoke()
{
  result = [MEMORY[0x1E695DFD8] setWithObjects:{@"channelCountForMediaOption:", @"isBinauralMediaOption:", @"isImmersiveMediaOption:", @"isDownmixMediaOption:", @"sampleRateForMediaOption:", 0}];
  _allowCallingFunctionWithName__sValidFunctions = result;
  return result;
}

- (void)visitPredicateExpression:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!self->_result)
  {
    return;
  }

  v5 = [a3 expressionType];
  if (v5 > 9)
  {
    if (v5 == 19)
    {
      v11 = *MEMORY[0x1E696A278];
      v12 = @"failed to validate NSPredicate because block expressions are not supported";
      v6 = MEMORY[0x1E695DF20];
      v7 = &v12;
      v8 = &v11;
      goto LABEL_14;
    }

    if (v5 != 10)
    {
      return;
    }

LABEL_9:
    v9 = [a3 keyPath];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(FigAlternatePredicateValidator *)self _validateKeyPath:v9])
      {
        return;
      }

      v15 = *MEMORY[0x1E696A278];
      v16 = @"failed to validate NSPredicate because of invalid key path";
      v6 = MEMORY[0x1E695DF20];
      v7 = &v16;
      v8 = &v15;
    }

    else
    {
      v17 = *MEMORY[0x1E696A278];
      v18[0] = @"failed to validate NSPredicate because key path is not a string";
      v6 = MEMORY[0x1E695DF20];
      v7 = v18;
      v8 = &v17;
    }

    goto LABEL_14;
  }

  if (v5 == 3)
  {
    goto LABEL_9;
  }

  if (v5 == 4 && !-[FigAlternatePredicateValidator _allowCallingFunctionWithName:](self, "_allowCallingFunctionWithName:", [a3 function]))
  {
    v13 = *MEMORY[0x1E696A278];
    v14 = @"failed to validate NSPredicate because calling the supplied function is forbidden";
    v6 = MEMORY[0x1E695DF20];
    v7 = &v14;
    v8 = &v13;
LABEL_14:
    v10 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:1];
    self->_result = 0;
    self->_error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreMediaErrorDomain" code:-15860 userInfo:v10];
  }
}

- (void)visitPredicateOperator:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_result && [a3 operatorType] == 11)
  {
    v5 = *MEMORY[0x1E696A278];
    v6[0] = @"failed to validate NSPredicate because custom selector operators are not supported";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    self->_result = 0;
    self->_error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreMediaErrorDomain" code:-15860 userInfo:v4];
  }
}

+ (BOOL)validateKeyPathForMinMaxQualifiers:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [a3 componentsSeparatedByString:@"."];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = [&unk_1F0B6F458 containsObject:*(*(&v10 + 1) + 8 * v7)];
      if (!v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (BOOL)validateWithError:(id *)a3
{
  FigSimpleMutexLock();
  if (!self->_isEvaluated)
  {
    [(NSPredicate *)self->_predicate acceptVisitor:self flags:3];
  }

  FigSimpleMutexUnlock();
  if (a3)
  {
    *a3 = self->_error;
  }

  return self->_result;
}

@end