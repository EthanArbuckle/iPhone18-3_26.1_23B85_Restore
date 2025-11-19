@interface INDeferredLocalizedString
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
+ (void)initialize;
- (INDeferredLocalizedString)initWithCoder:(id)a3;
- (INDeferredLocalizedString)initWithDeferredFormat:(id)a3 fromTable:(id)a4 bundle:(id)a5 arguments:(char *)a6;
- (INDeferredLocalizedString)initWithDeferredFormat:(id)a3 fromTable:(id)a4 bundleIdentifier:(id)a5 bundleURL:(id)a6 arguments:(id)a7;
- (id)_intents_encodeForProto;
- (id)localizeForLanguage:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INDeferredLocalizedString

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [(INDeferredLocalizedString *)self _formatKey];
  v9 = NSStringFromSelector(sel__formatKey);
  [v7 intents_setPlistSafeObject:v8 forKey:v9];

  v10 = [(INDeferredLocalizedString *)self _table];
  v11 = NSStringFromSelector(sel__table);
  [v7 intents_setPlistSafeObject:v10 forKey:v11];

  v12 = [(INDeferredLocalizedString *)self _arguments];
  v13 = NSStringFromSelector(sel__arguments);
  [v7 intents_setPlistSafeObject:v12 forKey:v13];

  v14 = [(INDeferredLocalizedString *)self _bundleIdentifier];
  v15 = NSStringFromSelector(sel__bundleIdentifier);
  [v7 intents_setPlistSafeObject:v14 forKey:v15];

  v16 = [(INDeferredLocalizedString *)self _bundleURL];
  v17 = NSStringFromSelector(sel__bundleURL);
  [v7 intents_setPlistSafeObject:v16 forKey:v17];

  v18 = [v6 languageCode];

  if (v18)
  {
    [(INDeferredLocalizedString *)self localizeForLanguage:v18];
  }

  else
  {
    [(INDeferredLocalizedString *)self _cachedLocalization];
  }
  v19 = ;
  v20 = NSStringFromSelector(sel__cachedLocalization);
  [v7 intents_setPlistSafeObject:v19 forKey:v20];

  v21 = [v7 copy];

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(INDeferredLocalizedString *)self _formatKey];
  v6 = NSStringFromSelector(sel__formatKey);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(INDeferredLocalizedString *)self _table];
  v8 = NSStringFromSelector(sel__table);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(INDeferredLocalizedString *)self _arguments];
  v10 = NSStringFromSelector(sel__arguments);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(INDeferredLocalizedString *)self _bundleIdentifier];
  v12 = NSStringFromSelector(sel__bundleIdentifier);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(INDeferredLocalizedString *)self _bundleURL];
  v14 = NSStringFromSelector(sel__bundleURL);
  [v4 encodeObject:v13 forKey:v14];

  v16 = [(INDeferredLocalizedString *)self _cachedLocalization];
  v15 = NSStringFromSelector(sel__cachedLocalization);
  [v4 encodeObject:v16 forKey:v15];
}

- (INDeferredLocalizedString)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = INDeferredLocalizedString;
  v5 = [(INDeferredLocalizedString *)&v38 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel__formatKey);
  v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
  formatKey = v5->_formatKey;
  v5->_formatKey = v8;

  if (!v5->_formatKey)
  {
    goto LABEL_9;
  }

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel__table);
  v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
  table = v5->_table;
  v5->_table = v12;

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = NSStringFromSelector(sel__arguments);
  v18 = [v4 decodeObjectOfClasses:v16 forKey:v17];
  v19 = v18;
  v20 = (v18 ? v18 : MEMORY[0x1E695E0F0]);
  objc_storeStrong(&v5->_arguments, v20);

  v21 = objc_opt_class();
  v22 = NSStringFromSelector(sel__bundleIdentifier);
  v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v23;

  v25 = objc_opt_class();
  v26 = NSStringFromSelector(sel__bundleURL);
  v27 = [v4 decodeObjectOfClass:v25 forKey:v26];
  bundleURL = v5->_bundleURL;
  v5->_bundleURL = v27;

  v29 = v5->_bundleURL;
  if (!v29 || [(NSURL *)v29 isFileURL])
  {
    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel__cachedLocalization);
    v32 = [v4 decodeObjectOfClass:v30 forKey:v31];
    cachedLocalization = v5->_cachedLocalization;
    v5->_cachedLocalization = v32;

    v34 = [(INDeferredLocalizedString *)v5 localizeForLanguage:0];
    v35 = v5->_cachedLocalization;
    v5->_cachedLocalization = v34;

    v36 = v5;
  }

  else
  {
LABEL_9:
    v36 = 0;
  }

  return v36;
}

- (id)localizeForLanguage:(id)a3
{
  v14 = self->_arguments;
  formatKey = self->_formatKey;
  table = self->_table;
  bundleIdentifier = self->_bundleIdentifier;
  bundleURL = self->_bundleURL;
  cachedLocalization = self->_cachedLocalization;
  v10 = a3;
  v11 = +[INImageServiceConnection sharedConnection];
  v12 = INLocalizedDeferredString(formatKey, &v14, table, bundleIdentifier, bundleURL, cachedLocalization, v10, v11);

  return v12;
}

- (INDeferredLocalizedString)initWithDeferredFormat:(id)a3 fromTable:(id)a4 bundleIdentifier:(id)a5 bundleURL:(id)a6 arguments:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v42.receiver = self;
  v42.super_class = INDeferredLocalizedString;
  v17 = [(INDeferredLocalizedString *)&v42 init];
  if (v17)
  {
    v18 = [v12 copy];
    formatKey = v17->_formatKey;
    v17->_formatKey = v18;

    v20 = [v13 copy];
    table = v17->_table;
    v17->_table = v20;

    v22 = [v14 copy];
    bundleIdentifier = v17->_bundleIdentifier;
    v17->_bundleIdentifier = v22;

    v24 = [v15 copy];
    bundleURL = v17->_bundleURL;
    v17->_bundleURL = v24;

    v26 = [v16 copy];
    arguments = v17->_arguments;
    v17->_arguments = v26;

    v28 = v17->_bundleIdentifier;
    v29 = v17->_bundleURL;
    if (*&v17->_bundleIdentifier == 0)
    {
      v30 = 0;
    }

    else
    {
      v40 = v13;
      v41 = v12;
      v31 = v17->_formatKey;
      v32 = v17->_table;
      cachedLocalization = v17->_cachedLocalization;
      v34 = +[INImageServiceConnection sharedConnection];
      v35 = v31;
      v36 = v32;
      v13 = v40;
      v12 = v41;
      v37 = INLocalizedDeferredString(v35, &v17->_arguments, v36, v28, v29, cachedLocalization, 0, v34);
      v38 = v17->_cachedLocalization;
      v17->_cachedLocalization = v37;

      v30 = v17;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (INDeferredLocalizedString)initWithDeferredFormat:(id)a3 fromTable:(id)a4 bundle:(id)a5 arguments:(char *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26 = a6;
  v13 = [v12 bundleIdentifier];
  v14 = [v12 bundleURL];
  if (!v13)
  {
    v15 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
    if (v15)
    {
      objc_opt_class();
      v16 = v15;
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 containingBundle];
      }
    }

    else
    {
      v16 = 0;
    }

    v13 = [v16 bundleIdentifier];
    v17 = [v16 bundleURL];

    if (v13)
    {
      v14 = v17;
    }

    else
    {
      v18 = [MEMORY[0x1E696AAE8] mainBundle];
      v13 = [v18 bundleIdentifier];
      v14 = [v18 bundleURL];
    }
  }

  v19 = INLocalizedFormat(v10, v11, v13, v14, 0, 0, 0, 0);
  v20 = INSharedFormatRegularExpression();
  v21 = [v20 numberOfMatchesInString:v19 options:0 range:{0, objc_msgSend(v19, "length")}];

  for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v21]; v21; --v21)
  {
    v23 = v26;
    v26 += 8;
    [i addObject:*v23];
  }

  v24 = [(INDeferredLocalizedString *)self initWithDeferredFormat:v10 fromTable:v11 bundleIdentifier:v13 bundleURL:v14 arguments:i];

  return v24;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_alloc_init(INDeferredLocalizedString);
  v6 = NSStringFromSelector(sel__formatKey);
  v7 = [v4 intents_stringForKey:v6];
  formatKey = v5->_formatKey;
  v5->_formatKey = v7;

  if (!v5->_formatKey)
  {
    goto LABEL_8;
  }

  v9 = NSStringFromSelector(sel__table);
  v10 = [v4 intents_stringForKey:v9];
  table = v5->_table;
  v5->_table = v10;

  v12 = NSStringFromSelector(sel__arguments);
  v13 = [v4 intents_safeObjectForKey:v12 ofType:objc_opt_class()];
  v14 = v13;
  v15 = (v13 ? v13 : MEMORY[0x1E695E0F0]);
  objc_storeStrong(&v5->_arguments, v15);

  v16 = NSStringFromSelector(sel__bundleIdentifier);
  v17 = [v4 intents_stringForKey:v16];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v17;

  v19 = NSStringFromSelector(sel__bundleURL);
  v20 = [v4 intents_urlForKey:v19];
  bundleURL = v5->_bundleURL;
  v5->_bundleURL = v20;

  v22 = v5->_bundleURL;
  if (!v22 || [(NSURL *)v22 isFileURL])
  {
    v23 = NSStringFromSelector(sel__cachedLocalization);
    v24 = [v4 intents_stringForKey:v23];
    cachedLocalization = v5->_cachedLocalization;
    v5->_cachedLocalization = v24;

    v26 = [(INDeferredLocalizedString *)v5 localizeForLanguage:0];
    v27 = v5->_cachedLocalization;
    v5->_cachedLocalization = v26;

    v28 = v5;
  }

  else
  {
LABEL_8:
    v28 = 0;
  }

  return v28;
}

+ (void)initialize
{
  if (objc_opt_class() == a1 && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

- (id)_intents_encodeForProto
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v12];
  v3 = v12;
  if (v2)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v2 base64EncodedStringWithOptions:0];
    v8 = [v4 stringWithFormat:@"%@:%@", v6, v7];
  }

  else
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[INDeferredLocalizedString(ProtoUtils) _intents_encodeForProto]";
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s Failed to encode string for proto: %@", buf, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

@end