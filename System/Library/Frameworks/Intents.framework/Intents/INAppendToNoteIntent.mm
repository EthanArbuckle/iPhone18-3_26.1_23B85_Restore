@interface INAppendToNoteIntent
- (INAppendToNoteIntent)initWithTargetNote:(INNote *)targetNote content:(INNoteContent *)content;
- (INNote)targetNote;
- (INNoteContent)content;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setContent:(id)content;
- (void)setTargetNote:(id)note;
@end

@implementation INAppendToNoteIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INAppendToNoteIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"targetNote";
  targetNote = [(INAppendToNoteIntent *)self targetNote];
  null = targetNote;
  if (!targetNote)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"content";
  v11[0] = null;
  content = [(INAppendToNoteIntent *)self content];
  null2 = content;
  if (!content)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!content)
  {
  }

  if (!targetNote)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setContent:(id)content
{
  contentCopy = content;
  _typedBackingStore = [(INAppendToNoteIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToNoteContent(contentCopy);

  [_typedBackingStore setContent:v5];
}

- (INNoteContent)content
{
  _typedBackingStore = [(INAppendToNoteIntent *)self _typedBackingStore];
  content = [_typedBackingStore content];
  v4 = INIntentSlotValueTransformFromNoteContent(content);

  return v4;
}

- (void)setTargetNote:(id)note
{
  noteCopy = note;
  _typedBackingStore = [(INAppendToNoteIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToNote(noteCopy);

  [_typedBackingStore setTargetNote:v5];
}

- (INNote)targetNote
{
  _typedBackingStore = [(INAppendToNoteIntent *)self _typedBackingStore];
  targetNote = [_typedBackingStore targetNote];
  v4 = INIntentSlotValueTransformFromNote(targetNote);

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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INAppendToNoteIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INAppendToNoteIntent *)self _typedBackingStore];
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