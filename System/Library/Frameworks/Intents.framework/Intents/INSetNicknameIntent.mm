@interface INSetNicknameIntent
- (INModifyNickname)targetNickname;
- (INSetNicknameIntent)initWithTargetNickname:(id)nickname;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setTargetNickname:(id)nickname;
@end

@implementation INSetNicknameIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSetNicknameIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"targetNickname";
  targetNickname = [(INSetNicknameIntent *)self targetNickname];
  null = targetNickname;
  if (!targetNickname)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!targetNickname)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setTargetNickname:(id)nickname
{
  nicknameCopy = nickname;
  _typedBackingStore = [(INSetNicknameIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToModifyNickname(nicknameCopy);

  [_typedBackingStore setTargetNickname:v5];
}

- (INModifyNickname)targetNickname
{
  _typedBackingStore = [(INSetNicknameIntent *)self _typedBackingStore];
  targetNickname = [_typedBackingStore targetNickname];
  v4 = INIntentSlotValueTransformFromModifyNickname(targetNickname);

  return v4;
}

- (INSetNicknameIntent)initWithTargetNickname:(id)nickname
{
  nicknameCopy = nickname;
  v8.receiver = self;
  v8.super_class = INSetNicknameIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INSetNicknameIntent *)v5 setTargetNickname:nicknameCopy];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetNicknameIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetNicknameIntent *)self _typedBackingStore];
  intentMetadata = [_typedBackingStore intentMetadata];

  return intentMetadata;
}

- (id)_typedBackingStore
{
  backingStore = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = backingStore;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end