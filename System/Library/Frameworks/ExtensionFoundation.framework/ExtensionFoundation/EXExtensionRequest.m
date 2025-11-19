@interface EXExtensionRequest
- (EXExtensionRequest)init;
- (NSExtensionContext)context;
- (id)description;
- (void)applyActiveWebPageAlternativeIfNeededForExtension:(id)a3;
- (void)dealloc;
@end

@implementation EXExtensionRequest

- (void)dealloc
{
  [self->_assertion setInvalidationHandler:0];
  [self->_assertion invalidate];
  v3.receiver = self;
  v3.super_class = EXExtensionRequest;
  [(EXExtensionRequest *)&v3 dealloc];
}

- (EXExtensionRequest)init
{
  v6.receiver = self;
  v6.super_class = EXExtensionRequest;
  v2 = [(EXExtensionRequest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    pkUUID = v2->_pkUUID;
    v2->_pkUUID = v3;
  }

  return v2;
}

- (NSExtensionContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (void)applyActiveWebPageAlternativeIfNeededForExtension:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(EXExtensionRequest *)self inputItems];
  LODWORD(v5) = [v5 _inputItemsMatchActiveWebPageAlternative:v6];

  if (v5)
  {
    v7 = _EXLegacyLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [EXExtensionRequest(NSExtensionActiveWebPageAlternative) applyActiveWebPageAlternativeIfNeededForExtension:v7];
    }

    v8 = [v4 infoDictionary];
    v9 = [v8 _EX_dictionaryForKey:@"NSExtensionAttributes"];

    v10 = [v9 _EX_dictionaryForKey:@"NSExtensionAttributes"];
    v11 = [v10 objectForKeyedSubscript:@"NSExtensionActivationRule"];
    if (v11)
    {
      v12 = _EXLegacyLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(EXExtensionRequest(NSExtensionActiveWebPageAlternative) *)self applyActiveWebPageAlternativeIfNeededForExtension:v11, v12];
      }

      v13 = objc_opt_class();
      v14 = [(EXExtensionRequest *)self inputItems];
      v15 = [v13 _inputItemsByApplyingActiveWebPageAlternative:v14 ifNeededByActivationRule:v11];
      [(EXExtensionRequest *)self setInputItems:v15];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = EXExtensionRequest;
  v4 = [(EXExtensionRequest *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ Request PK UUID: %@ with item count %lu", v4, self->_pkUUID, -[NSArray count](self->_inputItems, "count")];

  return v5;
}

@end