@interface INDeferredLocalizedString
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
+ (void)initialize;
- (INDeferredLocalizedString)initWithCoder:(id)coder;
- (INDeferredLocalizedString)initWithDeferredFormat:(id)format fromTable:(id)table bundle:(id)bundle arguments:(char *)arguments;
- (INDeferredLocalizedString)initWithDeferredFormat:(id)format fromTable:(id)table bundleIdentifier:(id)identifier bundleURL:(id)l arguments:(id)arguments;
- (id)_intents_encodeForProto;
- (id)localizeForLanguage:(id)language;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INDeferredLocalizedString

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v5 = MEMORY[0x1E695DF90];
  parametersCopy = parameters;
  dictionary = [v5 dictionary];
  _formatKey = [(INDeferredLocalizedString *)self _formatKey];
  v9 = NSStringFromSelector(sel__formatKey);
  [dictionary intents_setPlistSafeObject:_formatKey forKey:v9];

  _table = [(INDeferredLocalizedString *)self _table];
  v11 = NSStringFromSelector(sel__table);
  [dictionary intents_setPlistSafeObject:_table forKey:v11];

  _arguments = [(INDeferredLocalizedString *)self _arguments];
  v13 = NSStringFromSelector(sel__arguments);
  [dictionary intents_setPlistSafeObject:_arguments forKey:v13];

  _bundleIdentifier = [(INDeferredLocalizedString *)self _bundleIdentifier];
  v15 = NSStringFromSelector(sel__bundleIdentifier);
  [dictionary intents_setPlistSafeObject:_bundleIdentifier forKey:v15];

  _bundleURL = [(INDeferredLocalizedString *)self _bundleURL];
  v17 = NSStringFromSelector(sel__bundleURL);
  [dictionary intents_setPlistSafeObject:_bundleURL forKey:v17];

  languageCode = [parametersCopy languageCode];

  if (languageCode)
  {
    [(INDeferredLocalizedString *)self localizeForLanguage:languageCode];
  }

  else
  {
    [(INDeferredLocalizedString *)self _cachedLocalization];
  }
  v19 = ;
  v20 = NSStringFromSelector(sel__cachedLocalization);
  [dictionary intents_setPlistSafeObject:v19 forKey:v20];

  v21 = [dictionary copy];

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _formatKey = [(INDeferredLocalizedString *)self _formatKey];
  v6 = NSStringFromSelector(sel__formatKey);
  [coderCopy encodeObject:_formatKey forKey:v6];

  _table = [(INDeferredLocalizedString *)self _table];
  v8 = NSStringFromSelector(sel__table);
  [coderCopy encodeObject:_table forKey:v8];

  _arguments = [(INDeferredLocalizedString *)self _arguments];
  v10 = NSStringFromSelector(sel__arguments);
  [coderCopy encodeObject:_arguments forKey:v10];

  _bundleIdentifier = [(INDeferredLocalizedString *)self _bundleIdentifier];
  v12 = NSStringFromSelector(sel__bundleIdentifier);
  [coderCopy encodeObject:_bundleIdentifier forKey:v12];

  _bundleURL = [(INDeferredLocalizedString *)self _bundleURL];
  v14 = NSStringFromSelector(sel__bundleURL);
  [coderCopy encodeObject:_bundleURL forKey:v14];

  _cachedLocalization = [(INDeferredLocalizedString *)self _cachedLocalization];
  v15 = NSStringFromSelector(sel__cachedLocalization);
  [coderCopy encodeObject:_cachedLocalization forKey:v15];
}

- (INDeferredLocalizedString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = INDeferredLocalizedString;
  v5 = [(INDeferredLocalizedString *)&v38 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel__formatKey);
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
  formatKey = v5->_formatKey;
  v5->_formatKey = v8;

  if (!v5->_formatKey)
  {
    goto LABEL_9;
  }

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel__table);
  v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
  table = v5->_table;
  v5->_table = v12;

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = NSStringFromSelector(sel__arguments);
  v18 = [coderCopy decodeObjectOfClasses:v16 forKey:v17];
  v19 = v18;
  v20 = (v18 ? v18 : MEMORY[0x1E695E0F0]);
  objc_storeStrong(&v5->_arguments, v20);

  v21 = objc_opt_class();
  v22 = NSStringFromSelector(sel__bundleIdentifier);
  v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v23;

  v25 = objc_opt_class();
  v26 = NSStringFromSelector(sel__bundleURL);
  v27 = [coderCopy decodeObjectOfClass:v25 forKey:v26];
  bundleURL = v5->_bundleURL;
  v5->_bundleURL = v27;

  v29 = v5->_bundleURL;
  if (!v29 || [(NSURL *)v29 isFileURL])
  {
    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel__cachedLocalization);
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
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

- (id)localizeForLanguage:(id)language
{
  v14 = self->_arguments;
  formatKey = self->_formatKey;
  table = self->_table;
  bundleIdentifier = self->_bundleIdentifier;
  bundleURL = self->_bundleURL;
  cachedLocalization = self->_cachedLocalization;
  languageCopy = language;
  v11 = +[INImageServiceConnection sharedConnection];
  v12 = INLocalizedDeferredString(formatKey, &v14, table, bundleIdentifier, bundleURL, cachedLocalization, languageCopy, v11);

  return v12;
}

- (INDeferredLocalizedString)initWithDeferredFormat:(id)format fromTable:(id)table bundleIdentifier:(id)identifier bundleURL:(id)l arguments:(id)arguments
{
  formatCopy = format;
  tableCopy = table;
  identifierCopy = identifier;
  lCopy = l;
  argumentsCopy = arguments;
  v42.receiver = self;
  v42.super_class = INDeferredLocalizedString;
  v17 = [(INDeferredLocalizedString *)&v42 init];
  if (v17)
  {
    v18 = [formatCopy copy];
    formatKey = v17->_formatKey;
    v17->_formatKey = v18;

    v20 = [tableCopy copy];
    table = v17->_table;
    v17->_table = v20;

    v22 = [identifierCopy copy];
    bundleIdentifier = v17->_bundleIdentifier;
    v17->_bundleIdentifier = v22;

    v24 = [lCopy copy];
    bundleURL = v17->_bundleURL;
    v17->_bundleURL = v24;

    v26 = [argumentsCopy copy];
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
      v40 = tableCopy;
      v41 = formatCopy;
      v31 = v17->_formatKey;
      v32 = v17->_table;
      cachedLocalization = v17->_cachedLocalization;
      v34 = +[INImageServiceConnection sharedConnection];
      v35 = v31;
      v36 = v32;
      tableCopy = v40;
      formatCopy = v41;
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

- (INDeferredLocalizedString)initWithDeferredFormat:(id)format fromTable:(id)table bundle:(id)bundle arguments:(char *)arguments
{
  formatCopy = format;
  tableCopy = table;
  bundleCopy = bundle;
  argumentsCopy = arguments;
  bundleIdentifier = [bundleCopy bundleIdentifier];
  bundleURL = [bundleCopy bundleURL];
  if (!bundleIdentifier)
  {
    bundleProxyForCurrentProcess = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
    if (bundleProxyForCurrentProcess)
    {
      objc_opt_class();
      containingBundle = bundleProxyForCurrentProcess;
      if (objc_opt_isKindOfClass())
      {
        containingBundle = [bundleProxyForCurrentProcess containingBundle];
      }
    }

    else
    {
      containingBundle = 0;
    }

    bundleIdentifier = [containingBundle bundleIdentifier];
    bundleURL2 = [containingBundle bundleURL];

    if (bundleIdentifier)
    {
      bundleURL = bundleURL2;
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      bundleURL = [mainBundle bundleURL];
    }
  }

  v19 = INLocalizedFormat(formatCopy, tableCopy, bundleIdentifier, bundleURL, 0, 0, 0, 0);
  v20 = INSharedFormatRegularExpression();
  v21 = [v20 numberOfMatchesInString:v19 options:0 range:{0, objc_msgSend(v19, "length")}];

  for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v21]; v21; --v21)
  {
    v23 = argumentsCopy;
    argumentsCopy += 8;
    [i addObject:*v23];
  }

  v24 = [(INDeferredLocalizedString *)self initWithDeferredFormat:formatCopy fromTable:tableCopy bundleIdentifier:bundleIdentifier bundleURL:bundleURL arguments:i];

  return v24;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v5 = objc_alloc_init(INDeferredLocalizedString);
  v6 = NSStringFromSelector(sel__formatKey);
  v7 = [representationCopy intents_stringForKey:v6];
  formatKey = v5->_formatKey;
  v5->_formatKey = v7;

  if (!v5->_formatKey)
  {
    goto LABEL_8;
  }

  v9 = NSStringFromSelector(sel__table);
  v10 = [representationCopy intents_stringForKey:v9];
  table = v5->_table;
  v5->_table = v10;

  v12 = NSStringFromSelector(sel__arguments);
  v13 = [representationCopy intents_safeObjectForKey:v12 ofType:objc_opt_class()];
  v14 = v13;
  v15 = (v13 ? v13 : MEMORY[0x1E695E0F0]);
  objc_storeStrong(&v5->_arguments, v15);

  v16 = NSStringFromSelector(sel__bundleIdentifier);
  v17 = [representationCopy intents_stringForKey:v16];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v17;

  v19 = NSStringFromSelector(sel__bundleURL);
  v20 = [representationCopy intents_urlForKey:v19];
  bundleURL = v5->_bundleURL;
  v5->_bundleURL = v20;

  v22 = v5->_bundleURL;
  if (!v22 || [(NSURL *)v22 isFileURL])
  {
    v23 = NSStringFromSelector(sel__cachedLocalization);
    v24 = [representationCopy intents_stringForKey:v23];
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
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
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