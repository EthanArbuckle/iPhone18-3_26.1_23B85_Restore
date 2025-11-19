@interface INCreateNoteIntent
- (INCreateNoteIntent)initWithTitle:(INSpeakableString *)title content:(INNoteContent *)content groupName:(INSpeakableString *)groupName;
- (INNoteContent)content;
- (INSpeakableString)groupName;
- (INSpeakableString)title;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_redactedDictionaryRepresentation;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setContent:(id)a3;
- (void)setGroupName:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation INCreateNoteIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INCreateNoteIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"title";
  v3 = [(INCreateNoteIntent *)self title];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"content";
  v5 = [(INCreateNoteIntent *)self content];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"groupName";
  v7 = [(INCreateNoteIntent *)self groupName];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_redactedDictionaryRepresentation
{
  v2 = [(INCreateNoteIntent *)self _dictionaryRepresentation];
  v3 = [v2 mutableCopy];

  [v3 setObject:@"<redacted>" forKey:@"title"];

  return v3;
}

- (void)setGroupName:(id)a3
{
  v4 = a3;
  v6 = [(INCreateNoteIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setGroupName:v5];
}

- (INSpeakableString)groupName
{
  v2 = [(INCreateNoteIntent *)self _typedBackingStore];
  v3 = [v2 groupName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setContent:(id)a3
{
  v4 = a3;
  v6 = [(INCreateNoteIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToNoteContent(v4);

  [v6 setContent:v5];
}

- (INNoteContent)content
{
  v2 = [(INCreateNoteIntent *)self _typedBackingStore];
  v3 = [v2 content];
  v4 = INIntentSlotValueTransformFromNoteContent(v3);

  return v4;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v6 = [(INCreateNoteIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setTitle:v5];
}

- (INSpeakableString)title
{
  v2 = [(INCreateNoteIntent *)self _typedBackingStore];
  v3 = [v2 title];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (INCreateNoteIntent)initWithTitle:(INSpeakableString *)title content:(INNoteContent *)content groupName:(INSpeakableString *)groupName
{
  v8 = title;
  v9 = content;
  v10 = groupName;
  v14.receiver = self;
  v14.super_class = INCreateNoteIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INCreateNoteIntent *)v11 setTitle:v8];
    [(INCreateNoteIntent *)v12 setContent:v9];
    [(INCreateNoteIntent *)v12 setGroupName:v10];
  }

  return v12;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INCreateNoteIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INCreateNoteIntent *)self _typedBackingStore];
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