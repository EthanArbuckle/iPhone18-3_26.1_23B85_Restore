@interface INCreateNoteIntent
- (INCreateNoteIntent)initWithTitle:(INSpeakableString *)title content:(INNoteContent *)content groupName:(INSpeakableString *)groupName;
- (INNoteContent)content;
- (INSpeakableString)groupName;
- (INSpeakableString)title;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_redactedDictionaryRepresentation;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setContent:(id)content;
- (void)setGroupName:(id)name;
- (void)setTitle:(id)title;
@end

@implementation INCreateNoteIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INCreateNoteIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"title";
  title = [(INCreateNoteIntent *)self title];
  null = title;
  if (!title)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"content";
  content = [(INCreateNoteIntent *)self content];
  null2 = content;
  if (!content)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"groupName";
  groupName = [(INCreateNoteIntent *)self groupName];
  null3 = groupName;
  if (!groupName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!groupName)
  {
  }

  if (!content)
  {
  }

  if (!title)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_redactedDictionaryRepresentation
{
  _dictionaryRepresentation = [(INCreateNoteIntent *)self _dictionaryRepresentation];
  v3 = [_dictionaryRepresentation mutableCopy];

  [v3 setObject:@"<redacted>" forKey:@"title"];

  return v3;
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INCreateNoteIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setGroupName:v5];
}

- (INSpeakableString)groupName
{
  _typedBackingStore = [(INCreateNoteIntent *)self _typedBackingStore];
  groupName = [_typedBackingStore groupName];
  v4 = INIntentSlotValueTransformFromDataString(groupName);

  return v4;
}

- (void)setContent:(id)content
{
  contentCopy = content;
  _typedBackingStore = [(INCreateNoteIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToNoteContent(contentCopy);

  [_typedBackingStore setContent:v5];
}

- (INNoteContent)content
{
  _typedBackingStore = [(INCreateNoteIntent *)self _typedBackingStore];
  content = [_typedBackingStore content];
  v4 = INIntentSlotValueTransformFromNoteContent(content);

  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  _typedBackingStore = [(INCreateNoteIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(titleCopy);

  [_typedBackingStore setTitle:v5];
}

- (INSpeakableString)title
{
  _typedBackingStore = [(INCreateNoteIntent *)self _typedBackingStore];
  title = [_typedBackingStore title];
  v4 = INIntentSlotValueTransformFromDataString(title);

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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INCreateNoteIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INCreateNoteIntent *)self _typedBackingStore];
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