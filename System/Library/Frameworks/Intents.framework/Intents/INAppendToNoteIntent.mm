@interface INAppendToNoteIntent
- (INAppendToNoteIntent)initWithTargetNote:(INNote *)targetNote content:(INNoteContent *)content;
- (INNote)targetNote;
- (INNoteContent)content;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setContent:(id)a3;
- (void)setTargetNote:(id)a3;
@end

@implementation INAppendToNoteIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INAppendToNoteIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"targetNote";
  v3 = [(INAppendToNoteIntent *)self targetNote];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"content";
  v11[0] = v4;
  v5 = [(INAppendToNoteIntent *)self content];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setContent:(id)a3
{
  v4 = a3;
  v6 = [(INAppendToNoteIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToNoteContent(v4);

  [v6 setContent:v5];
}

- (INNoteContent)content
{
  v2 = [(INAppendToNoteIntent *)self _typedBackingStore];
  v3 = [v2 content];
  v4 = INIntentSlotValueTransformFromNoteContent(v3);

  return v4;
}

- (void)setTargetNote:(id)a3
{
  v4 = a3;
  v6 = [(INAppendToNoteIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToNote(v4);

  [v6 setTargetNote:v5];
}

- (INNote)targetNote
{
  v2 = [(INAppendToNoteIntent *)self _typedBackingStore];
  v3 = [v2 targetNote];
  v4 = INIntentSlotValueTransformFromNote(v3);

  return v4;
}

- (INAppendToNoteIntent)initWithTargetNote:(INNote *)targetNote content:(INNoteContent *)content
{
  v6 = targetNote;
  v7 = content;
  v11.receiver = self;
  v11.super_class = INAppendToNoteIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INAppendToNoteIntent *)v8 setTargetNote:v6];
    [(INAppendToNoteIntent *)v9 setContent:v7];
  }

  return v9;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INAppendToNoteIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INAppendToNoteIntent *)self _typedBackingStore];
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