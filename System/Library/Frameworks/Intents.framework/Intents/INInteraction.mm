@interface INInteraction
+ (void)deleteAllInteractionsWithCompletion:(void *)completion;
+ (void)deleteInteractionsWithGroupIdentifier:(NSString *)groupIdentifier completion:(void *)completion;
+ (void)deleteInteractionsWithIdentifiers:(NSArray *)identifiers completion:(void *)completion;
+ (void)initialize;
- (BOOL)_intents_enumerateObjectsOfClass:(Class)class withBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (INImage)_keyImage;
- (INInteraction)initWithCoder:(id)coder;
- (INInteraction)initWithIntent:(INIntent *)intent response:(INIntentResponse *)response;
- (NSDate)date;
- (double)duration;
- (id)_dictionaryRepresentation;
- (id)_initWithIntent:(id)intent response:(id)response;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)parameterValueForParameter:(INParameter *)parameter;
- (int64_t)_compareSubProducerOne:(id)one subProducerTwo:(id)two;
- (int64_t)_indexingHash;
- (unint64_t)hash;
- (void)_commonInit;
- (void)_donateInteractionWithBundleId:(id)id completion:(id)completion;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)_setDonatedBySiri:(BOOL)siri;
- (void)donateInteractionWithCompletion:(void *)completion;
- (void)encodeWithCoder:(id)coder;
- (void)setDate:(id)date;
- (void)setDuration:(double)duration;
@end

@implementation INInteraction

+ (void)initialize
{
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

- (void)_commonInit
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  date = [MEMORY[0x1E695DF00] date];
  v5 = [v3 initWithStartDate:date duration:0.0];
  dateInterval = self->_dateInterval;
  self->_dateInterval = v5;

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  identifier = self->_identifier;
  self->_identifier = uUIDString;

  self->_donatedBySiri = 0;
}

- (id)_dictionaryRepresentation
{
  v27[7] = *MEMORY[0x1E69E9840];
  intent = self->_intent;
  v25 = intent;
  v26[0] = @"intent";
  if (!intent)
  {
    intent = [MEMORY[0x1E695DFB0] null];
  }

  v22 = intent;
  v27[0] = intent;
  v26[1] = @"intentResponse";
  intentResponse = self->_intentResponse;
  null = intentResponse;
  if (!intentResponse)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v27[1] = null;
  v26[2] = @"intentHandlingStatus";
  intentHandlingStatus = [(INInteraction *)self intentHandlingStatus];
  v7 = intentHandlingStatus;
  if (intentHandlingStatus <= INIntentHandlingStatusUserConfirmationRequired)
  {
    null2 = off_1E727E068[intentHandlingStatus];
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v27[2] = null2;
  v26[3] = @"direction";
  direction = [(INInteraction *)self direction];
  v10 = direction;
  if (direction <= INInteractionDirectionIncoming)
  {
    null3 = off_1E727E0A0[direction];
  }

  else
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null3;
  v27[3] = null3;
  v26[4] = @"dateInterval";
  dateInterval = self->_dateInterval;
  null4 = dateInterval;
  if (!dateInterval)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = null4;
  v26[5] = @"identifier";
  identifier = self->_identifier;
  null5 = identifier;
  if (!identifier)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = null5;
  v26[6] = @"groupIdentifier";
  groupIdentifier = self->_groupIdentifier;
  null6 = groupIdentifier;
  if (!groupIdentifier)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = null6;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:7];
  if (groupIdentifier)
  {
    if (identifier)
    {
      goto LABEL_19;
    }

LABEL_32:

    if (dateInterval)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  if (!identifier)
  {
    goto LABEL_32;
  }

LABEL_19:
  if (dateInterval)
  {
    goto LABEL_20;
  }

LABEL_33:

LABEL_20:
  if (v10 >= 3)
  {
  }

  if (v7 >= 7)
  {
  }

  if (!intentResponse)
  {
  }

  if (!v25)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)setDuration:(double)duration
{
  dateInterval = [(INInteraction *)self dateInterval];
  startDate = [dateInterval startDate];
  v7 = startDate;
  if (startDate)
  {
    date = startDate;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v10 = date;

  v9 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v10 duration:duration];
  [(INInteraction *)self setDateInterval:v9];
}

- (double)duration
{
  dateInterval = [(INInteraction *)self dateInterval];
  [dateInterval duration];
  v4 = v3;

  return v4;
}

- (void)setDate:(id)date
{
  v4 = MEMORY[0x1E696AB80];
  dateCopy = date;
  v6 = [v4 alloc];
  dateInterval = [(INInteraction *)self dateInterval];
  [dateInterval duration];
  v8 = [v6 initWithStartDate:dateCopy duration:?];

  [(INInteraction *)self setDateInterval:v8];
}

- (NSDate)date
{
  dateInterval = [(INInteraction *)self dateInterval];
  startDate = [dateInterval startDate];

  return startDate;
}

- (id)parameterValueForParameter:(INParameter *)parameter
{
  v4 = parameter;
  [(INParameter *)v4 parameterClass];
  intent = [(INInteraction *)self intent];
  intentResponse = [(INInteraction *)self intentResponse];
  if (objc_opt_isKindOfClass())
  {
    intent2 = [(INInteraction *)self intent];
  }

  else
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    intent2 = [(INInteraction *)self intentResponse];
  }

  v8 = intent2;
  if (intent2)
  {
    v9 = [(INParameter *)v4 _parameterValueForParameterizedObject:intent2];

    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
LABEL_8:

  return v9;
}

- (int64_t)_indexingHash
{
  intent = [(INInteraction *)self intent];
  _indexingHash = [intent _indexingHash];

  return _indexingHash;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INInteraction;
  v6 = [(INInteraction *)&v11 description];
  _dictionaryRepresentation = [(INInteraction *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(INIntent *)self->_intent hash];
  v4 = [(INIntentResponse *)self->_intentResponse hash]^ v3;
  v5 = [(NSString *)self->_identifier hash];
  v6 = v4 ^ v5 ^ [(NSDateInterval *)self->_dateInterval hash];
  v7 = v6 ^ [(NSString *)self->_groupIdentifier hash];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_direction];
  v9 = [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_intentHandlingStatus];
  v11 = v7 ^ v9 ^ [v10 hash];
  v12 = [(NSUUID *)self->_contextExtensionUUID hash];
  v13 = v12 ^ [(SAUISnippet *)self->_snippet hash];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_donatedBySiri];
  v15 = v13 ^ [v14 hash];

  return v11 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      v13 = 0;
      if (identifier == v5->_identifier || [(NSString *)identifier isEqual:?])
      {
        intent = self->_intent;
        if (intent == v5->_intent || [(INIntent *)intent isEqual:?])
        {
          intentResponse = self->_intentResponse;
          if (intentResponse == v5->_intentResponse || [(INIntentResponse *)intentResponse isEqual:?])
          {
            dateInterval = self->_dateInterval;
            if (dateInterval == v5->_dateInterval || [(NSDateInterval *)dateInterval isEqual:?])
            {
              groupIdentifier = self->_groupIdentifier;
              if ((groupIdentifier == v5->_groupIdentifier || [(NSString *)groupIdentifier isEqual:?]) && self->_direction == v5->_direction && self->_donatedBySiri == v5->_donatedBySiri)
              {
                contextExtensionUUID = self->_contextExtensionUUID;
                if (contextExtensionUUID == v5->_contextExtensionUUID || [(NSUUID *)contextExtensionUUID isEqual:?])
                {
                  snippet = self->_snippet;
                  if (snippet == v5->_snippet || [(SAUISnippet *)snippet isEqual:?])
                  {
                    v13 = 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  intent = [(INInteraction *)self intent];
  intentResponse = [(INInteraction *)self intentResponse];
  v8 = [v5 initWithIntent:intent response:intentResponse];

  if (v8)
  {
    identifier = [(INInteraction *)self identifier];
    [v8 setIdentifier:identifier];

    dateInterval = [(INInteraction *)self dateInterval];
    [v8 setDateInterval:dateInterval];

    groupIdentifier = [(INInteraction *)self groupIdentifier];
    [v8 setGroupIdentifier:groupIdentifier];

    [v8 setDirection:{-[INInteraction direction](self, "direction")}];
    [v8 setIntentHandlingStatus:{-[INInteraction intentHandlingStatus](self, "intentHandlingStatus")}];
    v8[24] = [(INInteraction *)self _donatedBySiri];
    _contextExtensionUUID = [(INInteraction *)self _contextExtensionUUID];
    [v8 _setContextExtensionUUID:_contextExtensionUUID];

    _snippet = [(INInteraction *)self _snippet];
    v14 = [_snippet copyWithZone:zone];
    [v8 _setSnippet:v14];
  }

  return v8;
}

- (int64_t)_compareSubProducerOne:(id)one subProducerTwo:(id)two
{
  oneCopy = one;
  twoCopy = two;
  _keyImage = [oneCopy _keyImage];
  _keyImage2 = [twoCopy _keyImage];

  if (_keyImage && _keyImage2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    if (_keyImage2)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (_keyImage)
    {
      v9 = 1;
    }

    else
    {
      v9 = v10;
    }
  }

  return v9;
}

- (INImage)_keyImage
{
  intentResponse = [(INInteraction *)self intentResponse];
  _keyImage = [intentResponse _keyImage];
  v5 = _keyImage;
  if (_keyImage)
  {
    _keyImage2 = _keyImage;
  }

  else
  {
    intent = [(INInteraction *)self intent];
    _keyImage2 = [intent _keyImage];
  }

  return _keyImage2;
}

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  intent = [(INInteraction *)self intent];
  intentResponse = [(INInteraction *)self intentResponse];
  v10 = [(INInteraction *)self copy];
  v11 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v12 = INImageProxyInjectionQueue();
  [v11 setUnderlyingQueue:v12];

  [v11 setMaxConcurrentOperationCount:1];
  [v11 setSuspended:1];
  v13 = MEMORY[0x1E696AAE0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __52__INInteraction__injectProxiesForImages_completion___block_invoke;
  v20[3] = &unk_1E7287140;
  v14 = completionCopy;
  v20[4] = v10;
  v21 = v14;
  v15 = [v13 blockOperationWithBlock:v20];
  if (intent)
  {
    v16 = objc_alloc_init(INImageProxyInjectionOperation);
    [(INImageProxyInjectionOperation *)v16 setInjector:intent];
    [(INImageProxyInjectionOperation *)v16 setImageProxyRequestBlock:imagesCopy];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __52__INInteraction__injectProxiesForImages_completion___block_invoke_2;
    v19[3] = &unk_1E7285B78;
    v19[4] = v10;
    [(INImageProxyInjectionOperation *)v16 setCopyReturnBlock:v19];
    [v15 addDependency:v16];
    [v11 addOperation:v16];
  }

  if (intentResponse)
  {
    v17 = objc_alloc_init(INImageProxyInjectionOperation);
    [(INImageProxyInjectionOperation *)v17 setInjector:intentResponse];
    [(INImageProxyInjectionOperation *)v17 setImageProxyRequestBlock:imagesCopy];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__INInteraction__injectProxiesForImages_completion___block_invoke_3;
    v18[3] = &unk_1E7285B78;
    v18[4] = v10;
    [(INImageProxyInjectionOperation *)v17 setCopyReturnBlock:v18];
    [v15 addDependency:v17];
    [v11 addOperation:v17];
  }

  [v11 addOperation:v15];
  [v11 setSuspended:0];
}

uint64_t __52__INInteraction__injectProxiesForImages_completion___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _setIntent:a2];
  }

  return result;
}

uint64_t __52__INInteraction__injectProxiesForImages_completion___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _setIntentResponse:a2];
  }

  return result;
}

- (void)_donateInteractionWithBundleId:(id)id completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  defaultSearchableIndex = [getCSSearchableIndexClass() defaultSearchableIndex];
  if (!self->_donatedBySiri)
  {
    self->_donatedBySiri = INThisProcessIsDonatingBySiri();
  }

  v9 = INInteractionWithTypedInteraction(self);
  if (![v9 direction])
  {
    intent = [v9 intent];
    [v9 setDirection:{objc_msgSend(intent, "_preferredInteractionDirection")}];
  }

  intent2 = [v9 intent];
  _className = [intent2 _className];

  _contextExtensionUUID = [v9 _contextExtensionUUID];

  if (!_contextExtensionUUID)
  {
    v14 = [INIntent _sharedExtensionContextUUIDForIntentClassName:_className];
    [v9 _setContextExtensionUUID:v14];
  }

  v15 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    _donatedBySiri = [(INInteraction *)self _donatedBySiri];
    v18 = @"NO";
    v35 = "[INInteraction _donateInteractionWithBundleId:completion:]";
    *buf = 136315650;
    if (_donatedBySiri)
    {
      v18 = @"YES";
    }

    v36 = 2114;
    v37 = v18;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&dword_18E991000, v16, OS_LOG_TYPE_INFO, "%s Donating on behalf of Siri: %{public}@ for %@", buf, 0x20u);
  }

  intent3 = [v9 intent];
  [intent3 _intents_preferredScaledImageSize];
  v21 = v20;
  v23 = v22;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __59__INInteraction__donateInteractionWithBundleId_completion___block_invoke;
  v29[3] = &unk_1E727DFF8;
  v29[4] = self;
  v30 = _className;
  v31 = idCopy;
  v32 = defaultSearchableIndex;
  v33 = completionCopy;
  v24 = completionCopy;
  v25 = defaultSearchableIndex;
  v26 = idCopy;
  v27 = _className;
  INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler(v9, 0x15u, 0, 1, 0, v29, v21, v23);

  v28 = *MEMORY[0x1E69E9840];
}

void __59__INInteraction__donateInteractionWithBundleId_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = INSiriLogContextIntents;
  if (v6 && os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    *buf = 136315651;
    v22 = "[INInteraction _donateInteractionWithBundleId:completion:]_block_invoke";
    v23 = 2117;
    v24 = v15;
    v25 = 2114;
    v26 = v6;
    _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Error injecting image proxies into %{sensitive}@: %{public}@", buf, 0x20u);
    v7 = INSiriLogContextIntents;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 136315650;
    v22 = "[INInteraction _donateInteractionWithBundleId:completion:]_block_invoke";
    v23 = 2112;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_18E991000, v7, OS_LOG_TYPE_INFO, "%s Adding interaction (%@) to searchable index for %{public}@", buf, 0x20u);
  }

  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = *MEMORY[0x1E696A388];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__INInteraction__donateInteractionWithBundleId_completion___block_invoke_92;
  v16[3] = &unk_1E727DFD0;
  v20 = *(a1 + 64);
  v17 = v5;
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v13 = v5;
  [v10 addInteraction:v13 bundleID:v11 protectionClass:v12 completionHandler:v16];

  v14 = *MEMORY[0x1E69E9840];
}

void __59__INInteraction__donateInteractionWithBundleId_completion___block_invoke_92(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 56);
  if (v4)
  {
    if (v3)
    {
      v5 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696AA08];
      v24[0] = v3;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v7 = [v5 errorWithDomain:@"IntentsErrorDomain" code:1901 userInfo:v6];

      v4 = *(a1 + 56);
    }

    else
    {
      v7 = 0;
    }

    (*(v4 + 16))(v4, v7);
  }

  if (v3)
  {
    v8 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v15 = 136315906;
      v16 = "[INInteraction _donateInteractionWithBundleId:completion:]_block_invoke";
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v21 = 2114;
      v22 = v3;
      _os_log_error_impl(&dword_18E991000, v8, OS_LOG_TYPE_ERROR, "%s Error donating interaction (%{public}@) for %{public}@: %{public}@", &v15, 0x2Au);
    }
  }

  else
  {
    if (INIsReservationInteraction(*(a1 + 32)))
    {
      INValidateReservationInteraction(*(a1 + 32));
    }

    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v15 = 136315650;
      v16 = "[INInteraction _donateInteractionWithBundleId:completion:]_block_invoke";
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Successfully donated interaction (%{public}@) for %{public}@", &v15, 0x20u);
    }
  }

  ADClientAddValueForScalarKey();

  v14 = *MEMORY[0x1E69E9840];
}

- (void)donateInteractionWithCompletion:(void *)completion
{
  v4 = completion;
  if (_INInteractionDonationQueue_onceToken != -1)
  {
    dispatch_once(&_INInteractionDonationQueue_onceToken, &__block_literal_global_4464);
  }

  v5 = _INInteractionDonationQueue_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__INInteraction_donateInteractionWithCompletion___block_invoke;
  v7[3] = &unk_1E7287140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__INInteraction_donateInteractionWithCompletion___block_invoke(uint64_t a1)
{
  v116 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) intent];
  v3 = [v2 _type];

  v4 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    if (v3 > 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_1E727E048[v3];
    }

    v6 = *(a1 + 32);
    v7 = v4;
    v8 = [v6 intent];
    v9 = [v8 _className];
    *buf = 136315650;
    v111 = "[INInteraction donateInteractionWithCompletion:]_block_invoke";
    v112 = 2114;
    v113 = v5;
    v114 = 2114;
    v115 = v9;
    _os_log_impl(&dword_18E991000, v7, OS_LOG_TYPE_INFO, "%s Donate interaction for %{public}@ intent: %{public}@", buf, 0x20u);
  }

  v10 = [*(a1 + 32) identifier];

  if (v10)
  {
    if (v3 == 3)
    {
      goto LABEL_39;
    }

    v11 = [*(a1 + 32) intent];
    v12 = [v11 _validParameterCombinations];
    v13 = [v12 count];

    if (v13)
    {
      if (v3 == 2)
      {
        v14 = [*(a1 + 32) intent];
        v15 = [v14 _codableDescription];
        v16 = [v15 isDeprecated];

        if (v16)
        {
          v17 = MEMORY[0x1E696AEC0];
          v18 = *(a1 + 32);
          v19 = [v18 intent];
          v20 = [v19 _className];
          v21 = [v17 stringWithFormat:@"Cannot donate interaction (%{sensitive}@) because intent (%@) has been deprecated", v18, v20];

          v22 = INSiriLogContextIntents;
          if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
            if (!v21)
            {
              goto LABEL_39;
            }

            goto LABEL_37;
          }

          v87 = *(a1 + 32);
          v47 = v22;
          v88 = [v87 intent];
          v89 = [v88 _className];
          *buf = 136315394;
          v111 = "[INInteraction donateInteractionWithCompletion:]_block_invoke";
          v112 = 2112;
          v113 = v89;
          _os_log_error_impl(&dword_18E991000, v47, OS_LOG_TYPE_ERROR, "%s Cannot donate interaction because intent (%@) has been deprecated", buf, 0x16u);
        }

        else
        {
          v43 = [*(a1 + 32) intent];
          v44 = [v43 _hasTitle];

          if (v44)
          {
            goto LABEL_39;
          }

          v45 = [*(a1 + 32) intent];
          v46 = [v45 _nonNilParameters];
          v47 = [v46 mutableCopy];

          v48 = [*(a1 + 32) intent];
          v49 = [objc_opt_class() _ignoredParameters];
          [v47 minusSet:v49];

          if ([v47 count])
          {
            v50 = [v47 allObjects];
            v51 = [v50 componentsJoinedByString:{@", "}];
          }

          else
          {
            v51 = @"(No Parameters)";
          }

          v52 = MEMORY[0x1E696AEC0];
          v53 = *(a1 + 32);
          v54 = [v53 intent];
          v55 = [v54 _className];
          v21 = [v52 stringWithFormat:@"Cannot donate interaction because intent title is empty: %{sensitive}@ Please make sure that your intent definition includes the following shortcut type for %@: %@.", v53, v55, v51];

          v56 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
            v90 = *(a1 + 32);
            v91 = v56;
            v92 = [v90 intent];
            v93 = [v92 _className];
            *buf = 136315650;
            v111 = "[INInteraction donateInteractionWithCompletion:]_block_invoke";
            v112 = 2114;
            v113 = v93;
            v114 = 2112;
            v115 = v51;
            _os_log_error_impl(&dword_18E991000, v91, OS_LOG_TYPE_ERROR, "%s Cannot donate interaction (%{public}@) because intent title is empty. Missing parameter combination: %@", buf, 0x20u);
          }
        }

        if (v21)
        {
LABEL_37:
          v24 = *(a1 + 40);
          if (!v24)
          {
            goto LABEL_19;
          }

          v25 = MEMORY[0x1E696ABC0];
          v104 = *MEMORY[0x1E696A578];
          v105 = v21;
          v26 = MEMORY[0x1E695DF20];
          v27 = &v105;
          v28 = &v104;
          goto LABEL_18;
        }
      }

LABEL_39:
      v57 = [*(a1 + 32) intent];
      v58 = [v57 _intents_launchIdForCurrentPlatform];
      v101 = 0;
      INExtractAppInfoFromSiriLaunchId(v58, &v101, 0);
      v59 = v101;

      v60 = [*(a1 + 32) intent];
      v61 = [v60 _intentInstanceDescription];
      v62 = NSStringFromClass([v61 facadeClass]);

      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __49__INInteraction_donateInteractionWithCompletion___block_invoke_66;
      v98[3] = &unk_1E727DFA8;
      v98[4] = *(a1 + 32);
      v63 = v59;
      v99 = v63;
      v100 = *(a1 + 40);
      v64 = MEMORY[0x193AD7780](v98);
      if (INThisProcessIsDonatingBySiri())
      {
        goto LABEL_44;
      }

      if (INThisProcessIsSystemProcess_onceToken != -1)
      {
        dispatch_once(&INThisProcessIsSystemProcess_onceToken, &__block_literal_global_48);
      }

      if ((INThisProcessIsSystemProcess_isSystemProcess & 1) != 0 || INThisProcessHasEntitlement(@"com.apple.private.corespotlight.internal", 0))
      {
LABEL_44:
        v64[2](v64, 1, 1);
LABEL_45:

        goto LABEL_46;
      }

      if (v62)
      {
        v66 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v68 = [v66 bundleType];
        v69 = [v68 isEqualToString:*MEMORY[0x1E6963590]] & isKindOfClass ^ 1;

        if (isKindOfClass)
        {
          v70 = v66;
          v71 = 1;
          v72 = [v70 objectForInfoDictionaryKey:*MEMORY[0x1E69C4AF8] ofClass:objc_opt_class() inScope:1];
          if (([v70 if_isWatchKitAppExtension] & 1) == 0)
          {
            v71 = v69;
            if ([v72 isEqualToString:@"com.apple.intents-service"])
            {
              v73 = *(a1 + 40);
              if (v73)
              {
                (*(v73 + 16))(v73, 0);
              }

              goto LABEL_45;
            }
          }

          v69 = v71;
        }

        CanDonateIntent = INBundleProxyCanDonateIntent(v66, v62);
        v64[2](v64, CanDonateIntent, v69);
      }

      else
      {
        if (!*(a1 + 40))
        {
          goto LABEL_45;
        }

        v74 = MEMORY[0x1E696AEC0];
        v75 = [*(a1 + 32) intent];
        v76 = [v75 _className];
        v66 = [v74 stringWithFormat:@"Donating intent '%@' is not supported.", v76];

        v77 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          v94 = *(a1 + 32);
          v95 = v77;
          v96 = [v94 intent];
          v97 = [v96 _className];
          *buf = 136315394;
          v111 = "[INInteraction donateInteractionWithCompletion:]_block_invoke";
          v112 = 2114;
          v113 = v97;
          _os_log_error_impl(&dword_18E991000, v95, OS_LOG_TYPE_ERROR, "%s Donating %{public}@ is not supported", buf, 0x16u);
        }

        v78 = *(a1 + 40);
        v79 = MEMORY[0x1E696ABC0];
        v102 = *MEMORY[0x1E696A578];
        v103 = v66;
        v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        v81 = [v79 errorWithDomain:@"IntentsErrorDomain" code:1901 userInfo:v80];
        (*(v78 + 16))(v78, v81);
      }

      goto LABEL_45;
    }

    v31 = INSiriLogContextIntents;
    if (v3 == 1)
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        v32 = *(a1 + 32);
        *buf = 136315395;
        v111 = "[INInteraction donateInteractionWithCompletion:]_block_invoke";
        v112 = 2117;
        v113 = v32;
        _os_log_impl(&dword_18E991000, v31, OS_LOG_TYPE_INFO, "%s Not donating system intent because it does not have any valid parameter combinations: %{sensitive}@", buf, 0x16u);
      }

      v33 = *(a1 + 40);
      if (v33)
      {
        (*(v33 + 16))(v33, 0);
      }
    }

    else
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v83 = *(a1 + 32);
        v84 = v31;
        v85 = [v83 intent];
        v86 = [v85 _className];
        *buf = 136315394;
        v111 = "[INInteraction donateInteractionWithCompletion:]_block_invoke";
        v112 = 2114;
        v113 = v86;
        _os_log_error_impl(&dword_18E991000, v84, OS_LOG_TYPE_ERROR, "%s Cannot donate interaction with %{public}@ that has no valid shortcut types", buf, 0x16u);
      }

      if (*(a1 + 40))
      {
        v21 = [*(a1 + 32) copy];
        v34 = objc_alloc_init(INIntent);
        [v21 _setIntent:v34];

        v35 = MEMORY[0x1E696AEC0];
        v36 = [*(a1 + 32) intent];
        v37 = [v36 description];
        v38 = [v35 stringWithFormat:@"Cannot donate interaction with intent that has no valid shortcut types: %@ for intent %@", v21, v37];

        v39 = *(a1 + 40);
        v40 = MEMORY[0x1E696ABC0];
        v106 = *MEMORY[0x1E696A578];
        v107 = v38;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        v42 = [v40 errorWithDomain:@"IntentsErrorDomain" code:1901 userInfo:v41];
        (*(v39 + 16))(v39, v42);

        goto LABEL_19;
      }
    }
  }

  else if (*(a1 + 40))
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot donate interaction with nil identifier: %{sensitive}@", *(a1 + 32)];
    v23 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v111 = "[INInteraction donateInteractionWithCompletion:]_block_invoke";
      _os_log_error_impl(&dword_18E991000, v23, OS_LOG_TYPE_ERROR, "%s Cannot donate interaction with nil identifier", buf, 0xCu);
    }

    v24 = *(a1 + 40);
    v25 = MEMORY[0x1E696ABC0];
    v108 = *MEMORY[0x1E696A578];
    v109 = v21;
    v26 = MEMORY[0x1E695DF20];
    v27 = &v109;
    v28 = &v108;
LABEL_18:
    v29 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
    v30 = [v25 errorWithDomain:@"IntentsErrorDomain" code:1901 userInfo:v29];
    (*(v24 + 16))(v24, v30);

LABEL_19:
  }

LABEL_46:
  v65 = *MEMORY[0x1E69E9840];
}

void __49__INInteraction_donateInteractionWithCompletion___block_invoke_66(uint64_t a1, int a2, int a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 intent];
      v8 = [v7 _className];
      v9 = *(a1 + 40);
      *buf = 136315650;
      v35 = "[INInteraction donateInteractionWithCompletion:]_block_invoke";
      v36 = 2114;
      v37 = v8;
      v38 = 2114;
      v39 = v9;
      _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s Can donate %{public}@ for %{public}@", buf, 0x20u);
    }

    [*(a1 + 32) _donateInteractionWithBundleId:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    if (*(a1 + 48))
    {
      v10 = @"extension";
      if (a3)
      {
        v10 = @"app";
      }

      v11 = MEMORY[0x1E696AEC0];
      v12 = *(a1 + 32);
      v13 = v10;
      v14 = [v12 intent];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v11 stringWithFormat:@"Donating intent '%@' is not supported by this %@. Please make sure that you declare the intents that your %@ supports by including the NSUserActivityTypes key in its Info.plist or your %@ contains an Intents extension that supports this intent.", v16, v13, @"app", @"app"];

      v18 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        v26 = v18;
        v27 = [v25 intent];
        v28 = [v27 _className];
        v29 = *(a1 + 40);
        *buf = 136315650;
        v35 = "[INInteraction donateInteractionWithCompletion:]_block_invoke";
        v36 = 2114;
        v37 = v28;
        v38 = 2114;
        v39 = v29;
        _os_log_error_impl(&dword_18E991000, v26, OS_LOG_TYPE_ERROR, "%s Can NOT donate %{public}@ for %{public}@", buf, 0x20u);
      }

      v19 = *(a1 + 48);
      v20 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v33 = v17;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v22 = [v20 errorWithDomain:@"IntentsErrorDomain" code:1901 userInfo:v21];
      (*(v19 + 16))(v19, v22);
    }

    else
    {
      v23 = INSiriLogContextIntents;
      if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v30 = *(a1 + 32);
      v17 = v23;
      v22 = [v30 intent];
      v21 = [v22 _className];
      v31 = *(a1 + 40);
      *buf = 136315650;
      v35 = "[INInteraction donateInteractionWithCompletion:]_block_invoke";
      v36 = 2114;
      v37 = v21;
      v38 = 2114;
      v39 = v31;
      _os_log_error_impl(&dword_18E991000, v17, OS_LOG_TYPE_ERROR, "%s Can NOT donate %{public}@ for %{public}@", buf, 0x20u);
    }
  }

LABEL_13:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_setDonatedBySiri:(BOOL)siri
{
  if (INThisProcessIsSystemProcess_onceToken != -1)
  {
    dispatch_once(&INThisProcessIsSystemProcess_onceToken, &__block_literal_global_48);
  }

  self->_donatedBySiri = INThisProcessIsSystemProcess_isSystemProcess & siri;
}

- (void)encodeWithCoder:(id)coder
{
  intent = self->_intent;
  coderCopy = coder;
  [coderCopy encodeObject:intent forKey:@"intent"];
  [coderCopy encodeObject:self->_intentResponse forKey:@"intentResponse"];
  [coderCopy encodeObject:self->_contextExtensionUUID forKey:@"_contextExtensionUUID"];
  [coderCopy encodeInteger:self->_direction forKey:@"direction"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
  [coderCopy encodeInteger:self->_intentHandlingStatus forKey:@"intentHandlingStatus"];
  [coderCopy encodeBool:self->_donatedBySiri forKey:@"_donatedBySiri"];
  [coderCopy encodeObject:self->_snippet forKey:@"_snippet"];
}

- (INInteraction)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(INInteraction *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
    intent = _init->_intent;
    _init->_intent = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentResponse"];
    intentResponse = _init->_intentResponse;
    _init->_intentResponse = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contextExtensionUUID"];
    contextExtensionUUID = _init->_contextExtensionUUID;
    _init->_contextExtensionUUID = v10;

    _init->_direction = [coderCopy decodeIntegerForKey:@"direction"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = _init->_dateInterval;
    _init->_dateInterval = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = _init->_identifier;
    _init->_identifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = _init->_groupIdentifier;
    _init->_groupIdentifier = v16;

    _init->_intentHandlingStatus = [coderCopy decodeIntegerForKey:@"intentHandlingStatus"];
    _init->_donatedBySiri = [coderCopy decodeBoolForKey:@"_donatedBySiri"];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v18 = getSAUISnippetClass_softClass;
    v27 = getSAUISnippetClass_softClass;
    if (!getSAUISnippetClass_softClass)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __getSAUISnippetClass_block_invoke;
      v23[3] = &unk_1E72888B8;
      v23[4] = &v24;
      __getSAUISnippetClass_block_invoke(v23);
      v18 = v25[3];
    }

    v19 = v18;
    _Block_object_dispose(&v24, 8);
    if (v18)
    {
      v20 = [coderCopy decodeObjectOfClass:v18 forKey:@"_snippet"];
      snippet = _init->_snippet;
      _init->_snippet = v20;
    }
  }

  return _init;
}

- (INInteraction)initWithIntent:(INIntent *)intent response:(INIntentResponse *)response
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = intent;
  v7 = response;
  v17.receiver = self;
  v17.super_class = INInteraction;
  v8 = [(INInteraction *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(INInteraction *)v8 _commonInit];
    v10 = [(INIntent *)v6 copy];
    v11 = v9->_intent;
    v9->_intent = v10;

    v12 = [(INIntentResponse *)v7 copy];
    intentResponse = v9->_intentResponse;
    v9->_intentResponse = v12;

    v9->_intentHandlingStatus = [(INIntentResponse *)v7 _intentHandlingStatus];
    if (!v6)
    {
      v14 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315395;
        v19 = "[INInteraction initWithIntent:response:]";
        v20 = 2117;
        v21 = v9;
        _os_log_fault_impl(&dword_18E991000, v14, OS_LOG_TYPE_FAULT, "%s No intent was provided in the interaction: %{sensitive}@", buf, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)_initWithIntent:(id)intent response:(id)response
{
  intentCopy = intent;
  responseCopy = response;
  v12.receiver = self;
  v12.super_class = INInteraction;
  v9 = [(INInteraction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(INInteraction *)v9 _commonInit];
    objc_storeStrong(&v10->_intent, intent);
    objc_storeStrong(&v10->_intentResponse, response);
    v10->_intentHandlingStatus = [responseCopy _intentHandlingStatus];
  }

  return v10;
}

+ (void)deleteInteractionsWithGroupIdentifier:(NSString *)groupIdentifier completion:(void *)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = completion;
  v6 = groupIdentifier;
  defaultSearchableIndex = [getCSSearchableIndexClass() defaultSearchableIndex];
  v13[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__INInteraction_deleteInteractionsWithGroupIdentifier_completion___block_invoke;
  v11[3] = &unk_1E7282710;
  v12 = v5;
  v9 = v5;
  [defaultSearchableIndex deleteInteractionsWithGroupIdentifiers:v8 completionHandler:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __66__INInteraction_deleteInteractionsWithGroupIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v3)
    {
      v6 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696AA08];
      v11[0] = v3;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v8 = [v6 errorWithDomain:@"IntentsErrorDomain" code:1904 userInfo:v7];
      (*(v5 + 16))(v5, v8);
    }

    else
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)deleteInteractionsWithIdentifiers:(NSArray *)identifiers completion:(void *)completion
{
  v5 = completion;
  v6 = identifiers;
  defaultSearchableIndex = [getCSSearchableIndexClass() defaultSearchableIndex];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__INInteraction_deleteInteractionsWithIdentifiers_completion___block_invoke;
  v9[3] = &unk_1E7282710;
  v10 = v5;
  v8 = v5;
  [defaultSearchableIndex deleteInteractionsWithIdentifiers:v6 completionHandler:v9];
}

void __62__INInteraction_deleteInteractionsWithIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v3)
    {
      v6 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696AA08];
      v11[0] = v3;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v8 = [v6 errorWithDomain:@"IntentsErrorDomain" code:1903 userInfo:v7];
      (*(v5 + 16))(v5, v8);
    }

    else
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)deleteAllInteractionsWithCompletion:(void *)completion
{
  v3 = completion;
  defaultSearchableIndex = [getCSSearchableIndexClass() defaultSearchableIndex];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__INInteraction_deleteAllInteractionsWithCompletion___block_invoke;
  v6[3] = &unk_1E7282710;
  v7 = v3;
  v5 = v3;
  [defaultSearchableIndex deleteAllInteractionsWithCompletionHandler:v6];
}

void __53__INInteraction_deleteAllInteractionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v3)
    {
      v6 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696AA08];
      v11[0] = v3;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v8 = [v6 errorWithDomain:@"IntentsErrorDomain" code:1902 userInfo:v7];
      (*(v5 + 16))(v5, v8);
    }

    else
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)_intents_enumerateObjectsOfClass:(Class)class withBlock:(id)block
{
  blockCopy = block;
  intent = [(INInteraction *)self intent];
  v8 = [intent _intents_enumerateObjectsOfClass:class withBlock:blockCopy];

  intentResponse = [(INInteraction *)self intentResponse];
  LOBYTE(class) = [intentResponse _intents_enumerateObjectsOfClass:class withBlock:blockCopy];

  return (v8 | class) & 1;
}

@end