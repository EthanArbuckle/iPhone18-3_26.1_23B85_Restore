@interface INSetAudioSourceInCarIntent
- (INCarAudioSource)audioSource;
- (INRelativeReference)relativeAudioSourceReference;
- (INSetAudioSourceInCarIntent)initWithAudioSource:(INCarAudioSource)audioSource relativeAudioSourceReference:(INRelativeReference)relativeAudioSourceReference;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAudioSource:(int64_t)a3;
- (void)setRelativeAudioSourceReference:(int64_t)a3;
@end

@implementation INSetAudioSourceInCarIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSetAudioSourceInCarIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"audioSource";
  v3 = [(INSetAudioSourceInCarIntent *)self audioSource];
  if ((v3 - 1) > 8)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = *(&off_1E727E498 + v3 - 1);
  }

  v5 = v4;
  v12[1] = @"relativeAudioSourceReference";
  v13[0] = v5;
  v6 = [(INSetAudioSourceInCarIntent *)self relativeAudioSourceReference];
  v7 = @"unknown";
  if (v6 == INRelativeReferencePrevious)
  {
    v7 = @"previous";
  }

  if (v6 == INRelativeReferenceNext)
  {
    v7 = @"next";
  }

  v8 = v7;
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setRelativeAudioSourceReference:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  v6 = v5;
  if (v4 == 0x7FFFFFFF)
  {
    [v5 setHasRelativeAudioSourceReference:0];
  }

  else
  {
    [v5 setRelativeAudioSourceReference:v4];
  }
}

- (INRelativeReference)relativeAudioSourceReference
{
  v3 = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  v4 = [v3 hasRelativeAudioSourceReference];
  v5 = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  v6 = [v5 relativeAudioSourceReference];
  v7 = 2 * (v6 == 2);
  if (v6 == 1)
  {
    v7 = 1;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = INRelativeReferenceUnknown;
  }

  return v8;
}

- (void)setAudioSource:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 8)
  {
    [v4 setHasAudioSource:0];
  }

  else
  {
    [v4 setAudioSource:?];
  }
}

- (INCarAudioSource)audioSource
{
  v3 = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  v4 = [v3 hasAudioSource];
  v5 = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  v6 = [v5 audioSource];
  if (((v6 - 1 < 9) & v4) != 0)
  {
    v7 = v6;
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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetAudioSourceInCarIntent *)self _typedBackingStore];
  v3 = [v2 intentMetadata];

  return v3;
}

- (id)_typedBackingStore
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end