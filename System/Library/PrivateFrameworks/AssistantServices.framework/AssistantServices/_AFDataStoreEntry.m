@interface _AFDataStoreEntry
- (_AFDataStoreEntry)initWithPropertyListRepresentation:(id)a3 error:(id *)p_isa;
- (_AFDataStoreEntry)initWithType:(int64_t)a3 value:(id)a4;
- (id)_propertyListStringForType;
- (id)_valueForPropertyListRepresentation:(id)a3 type:(int64_t)a4;
- (id)_valuePropertyListRepresentation;
- (id)propertyListRepresentation;
@end

@implementation _AFDataStoreEntry

- (_AFDataStoreEntry)initWithPropertyListRepresentation:(id)a3 error:(id *)p_isa
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(AFDictionarySchema);
  v8 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v7 setObjectCoercion:v8 forKey:@"Version"];

  v9 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v7 setObjectCoercion:v9 forKey:@"Type"];

  v10 = [(AFDictionarySchema *)v7 coerceObject:v6 error:p_isa];
  v11 = [v10 objectForKey:@"Version"];
  v12 = [v11 integerValue];

  if (v12 == 1)
  {
    v13 = [v10 objectForKey:@"Type"];
    v14 = [(_AFDataStoreEntry *)self _typeForPropertyListString:v13];

    v15 = [v10 objectForKey:@"Value"];
    v16 = [(_AFDataStoreEntry *)self _valueForPropertyListRepresentation:v15 type:v14];

    if (v16)
    {
      self = [(_AFDataStoreEntry *)self initWithType:v14 value:v16];
      p_isa = &self->super.isa;
    }

    else if (p_isa)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to decode value for data store entry %@", v6];
      *p_isa = [AFConversationError errorWithCode:300 localizedFailureReason:v18];

      p_isa = 0;
    }
  }

  else
  {
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[_AFDataStoreEntry initWithPropertyListRepresentation:error:]";
      v23 = 2050;
      v24 = v12;
      _os_log_error_impl(&dword_1912FE000, v17, OS_LOG_TYPE_ERROR, "%s unable to deserialize property list with version %{public}ld; returning nil", buf, 0x16u);
    }

    p_isa = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)propertyListRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:&unk_1F056DA88 forKey:@"Version"];
  v4 = [(_AFDataStoreEntry *)self _propertyListStringForType];
  [v3 setObject:v4 forKey:@"Type"];

  v5 = [(_AFDataStoreEntry *)self _valuePropertyListRepresentation];
  [v3 setObject:v5 forKey:@"Value"];

  return v3;
}

- (id)_valueForPropertyListRepresentation:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  if (a4 == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = objc_alloc_init(AFImagePNGData);
    v8 = [v6 objectForKey:@"PNGData"];
    [(AFImagePNGData *)v7 setImageData:v8];

    v9 = [v6 objectForKey:@"Scale"];

    [v9 doubleValue];
    [(AFImagePNGData *)v7 setScale:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_valuePropertyListRepresentation
{
  value = self->_value;
  if (self->_type == 1)
  {
    v3 = MEMORY[0x1E695DF90];
    v4 = value;
    v5 = [v3 dictionary];
    v6 = [v4 imageData];
    [v5 setObject:v6 forKey:@"PNGData"];

    v7 = MEMORY[0x1E696AD98];
    [v4 scale];
    v9 = v8;

    v10 = [v7 numberWithDouble:v9];
    [v5 setObject:v10 forKey:@"Scale"];
  }

  else
  {
    v5 = value;
  }

  return v5;
}

- (id)_propertyListStringForType
{
  if ([(_AFDataStoreEntry *)self type])
  {
    return @"Image";
  }

  else
  {
    return @"Unknown";
  }
}

- (_AFDataStoreEntry)initWithType:(int64_t)a3 value:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _AFDataStoreEntry;
  v8 = [(_AFDataStoreEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_value, a4);
  }

  return v9;
}

@end