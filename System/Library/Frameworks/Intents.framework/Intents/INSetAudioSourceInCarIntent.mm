@interface INSetAudioSourceInCarIntent
- (INCarAudioSource)audioSource;
- (INRelativeReference)relativeAudioSourceReference;
- (INSetAudioSourceInCarIntent)initWithAudioSource:(INCarAudioSource)audioSource relativeAudioSourceReference:(INRelativeReference)relativeAudioSourceReference;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAudioSource:(int64_t)source;
- (void)setRelativeAudioSourceReference:(int64_t)reference;
@end

@implementation INSetAudioSourceInCarIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSetAudioSourceInCarIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"audioSource";
  audioSource = [(INSetAudioSourceInCarIntent *)self audioSource];
  if ((audioSource - 1) > 8)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = *(&off_1E727E498 + audioSource - 1);
  }

  v5 = v4;
  v12[1] = @"relativeAudioSourceReference";
  v13[0] = v5;
  relativeAudioSourceReference = [(INSetAudioSourceInCarIntent *)self relativeAudioSourceReference];
  v7 = @"unknown";
  if (relativeAudioSourceReference == INRelativeReferencePrevious)
  {
    v7 = @"previous";
  }

  if (relativeAudioSourceReference == INRelativeReferenceNext)
  {
    v7 = @"next";
  }

  v8 = v7;
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setRelativeAudioSourceReference:(int64_t)reference
{
  if (reference == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (reference == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  _typedBackingStore = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  v6 = _typedBackingStore;
  if (v4 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasRelativeAudioSourceReference:0];
  }

  else
  {
    [_typedBackingStore setRelativeAudioSourceReference:v4];
  }
}

- (INRelativeReference)relativeAudioSourceReference
{
  _typedBackingStore = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  hasRelativeAudioSourceReference = [_typedBackingStore hasRelativeAudioSourceReference];
  _typedBackingStore2 = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  relativeAudioSourceReference = [_typedBackingStore2 relativeAudioSourceReference];
  v7 = 2 * (relativeAudioSourceReference == 2);
  if (relativeAudioSourceReference == 1)
  {
    v7 = 1;
  }

  if (hasRelativeAudioSourceReference)
  {
    v8 = v7;
  }

  else
  {
    v8 = INRelativeReferenceUnknown;
  }

  return v8;
}

- (void)setAudioSource:(int64_t)source
{
  v3 = source - 1;
  _typedBackingStore = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 8)
  {
    [_typedBackingStore setHasAudioSource:0];
  }

  else
  {
    [_typedBackingStore setAudioSource:?];
  }
}

- (INCarAudioSource)audioSource
{
  _typedBackingStore = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  hasAudioSource = [_typedBackingStore hasAudioSource];
  _typedBackingStore2 = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  audioSource = [_typedBackingStore2 audioSource];
  if (((audioSource - 1 < 9) & hasAudioSource) != 0)
  {
    v7 = audioSource;
  }

  else
  {
    v7 = INCarAudioSourceUnknown;
  }

  return v7;
}

- (INSetAudioSourceInCarIntent)initWithAudioSource:(INCarAudioSource)audioSource relativeAudioSourceReference:(INRelativeReference)relativeAudioSourceReference
{
  v9.receiver = self;
  v9.super_class = INSetAudioSourceInCarIntent;
  v6 = [(INIntent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(INSetAudioSourceInCarIntent *)v6 setAudioSource:audioSource];
    [(INSetAudioSourceInCarIntent *)v7 setRelativeAudioSourceReference:relativeAudioSourceReference];
  }

  return v7;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
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