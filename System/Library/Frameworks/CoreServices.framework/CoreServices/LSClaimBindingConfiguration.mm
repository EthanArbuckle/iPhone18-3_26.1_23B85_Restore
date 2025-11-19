@interface LSClaimBindingConfiguration
+ (id)oneTapOpenClaimBindingConfigurationForBindable:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BindingEvaluator)_baseBindingEvaluatorForBindableWithAuditToken:(SEL)a3;
- (BindingEvaluator)bindingEvaluatorForAuditToken:(SEL)a3;
- (LSClaimBindingConfiguration)initWithBindable:(id)a3;
- (LSClaimBindingConfiguration)initWithCoder:(id)a3;
- (LSClaimBindingConfiguration)initWithDocumentProxy:(id)a3;
- (LSClaimBindingConfiguration)initWithDocumentProxy:(id)a3 bindingStyle:(unsigned __int8)a4;
- (LSClaimBindingConfiguration)initWithTypeIdentifier:(id)a3;
- (LSClaimBindingConfiguration)initWithURL:(id)a3;
- (NSString)maximumHandlerRank;
- (NSString)minimumHandlerRank;
- (void)encodeWithCoder:(id)a3;
- (void)setHonorPreferenceForNoHandler:(BOOL)a3;
- (void)setIgnoreStrongBindingPreferences:(BOOL)a3;
- (void)setIgnoreWeakBindingPreferences:(BOOL)a3;
- (void)setMaximumHandlerRank:(id)a3;
- (void)setMinimumHandlerRank:(id)a3;
- (void)setRequireOpenInPlace:(BOOL)a3;
@end

@implementation LSClaimBindingConfiguration

- (LSClaimBindingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = LSClaimBindingConfiguration;
  v5 = [(LSClaimBindingConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bindable"];
    bindable = v5->_bindable;
    v5->_bindable = v6;

    v5->_bundleClassMask = [v4 decodeIntegerForKey:@"bundleClassMask"];
    v5->_bindingStyle = [v4 decodeIntegerForKey:@"bindingStyle"];
    v5->_minimumNumericHandlerRank = [v4 decodeInt32ForKey:@"minimumNumericHandlerRank"];
    v5->_maximumNumericHandlerRank = [v4 decodeInt32ForKey:@"maximumNumericHandlerRank"];
    v5->_addClaimRecordIfMissing = [v4 decodeBoolForKey:@"addClaimRecordIfMissing"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flagsData"];
    if ([v8 length] == 1)
    {
      [v8 getBytes:&v5->_addClaimRecordIfMissing + 1 length:1];
    }

    else
    {
      v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "[LSClaimBindingConfiguration initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSClaimBindingConfiguration.mm", 545);
      [v4 failWithError:v9];

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_bindable forKey:@"bindable"];
  [v5 encodeInteger:self->_bundleClassMask forKey:@"bundleClassMask"];
  [v5 encodeInteger:self->_bindingStyle forKey:@"bindingStyle"];
  [v5 encodeInt32:self->_minimumNumericHandlerRank forKey:@"minimumNumericHandlerRank"];
  [v5 encodeInt32:self->_maximumNumericHandlerRank forKey:@"maximumNumericHandlerRank"];
  [v5 encodeBool:self->_addClaimRecordIfMissing forKey:@"addClaimRecordIfMissing"];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_addClaimRecordIfMissing + 1 length:1];
  [v5 encodeObject:v4 forKey:@"flagsData"];
}

- (LSClaimBindingConfiguration)initWithBindable:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LSClaimBindingConfiguration;
  v6 = [(LSClaimBindingConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bindable, a3);
    v7->_bundleClassMask = 4;
    v7->_bindingStyle = 0;
    *&v7->_minimumNumericHandlerRank = 196609;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(LSClaimBindingBindable *)self->_bindable isEqual:v5[1]]&& self->_bundleClassMask == v5[2] && self->_bindingStyle == *(v5 + 24) && self->_minimumNumericHandlerRank == *(v5 + 13) && self->_maximumNumericHandlerRank == *(v5 + 14) && self->_addClaimRecordIfMissing == *(v5 + 30);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (LSClaimBindingConfiguration)initWithTypeIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_LSClaimBindingTypeIdentifierBindable alloc] initWithTypeIdentifier:v4];
  }

  else
  {
    v5 = objc_alloc_init(_LSCompatibilityNothingBindable);
  }

  v6 = v5;
  v7 = [(LSClaimBindingConfiguration *)self initWithBindable:v5];

  return v7;
}

- (LSClaimBindingConfiguration)initWithURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"LSClaimBindingConfiguration.mm" lineNumber:621 description:{@"nil URL provided to %s", "-[LSClaimBindingConfiguration initWithURL:]"}];
  }

  v6 = [[_LSClaimBindingURLBindable alloc] initWithURL:v5];
  v7 = [(LSClaimBindingConfiguration *)self initWithBindable:v6];

  return v7;
}

- (LSClaimBindingConfiguration)initWithDocumentProxy:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"LSClaimBindingConfiguration.mm" lineNumber:627 description:{@"nil proxy provided to %s", "-[LSClaimBindingConfiguration initWithDocumentProxy:]"}];
  }

  v6 = [[_LSClaimBindingDocumentProxyBindable alloc] initWithProxy:v5];
  v7 = [(LSClaimBindingConfiguration *)self initWithBindable:v6];

  return v7;
}

- (NSString)minimumHandlerRank
{
  v2 = _LSCopyHandlerRankStringFromNumericHandlerRank(self->_minimumNumericHandlerRank);

  return v2;
}

- (void)setMinimumHandlerRank:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = @"None";
  }

  v5 = v4;
  self->_minimumNumericHandlerRank = _LSNumericHandlerRankFromHandlerRankString(v4);
}

- (NSString)maximumHandlerRank
{
  v2 = _LSCopyHandlerRankStringFromNumericHandlerRank(self->_maximumNumericHandlerRank);

  return v2;
}

- (void)setMaximumHandlerRank:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = @"Owner";
  }

  v5 = v4;
  self->_maximumNumericHandlerRank = _LSNumericHandlerRankFromHandlerRankString(v4);
}

- (void)setIgnoreStrongBindingPreferences:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_addClaimRecordIfMissing + 1) = *(&self->_addClaimRecordIfMissing + 1) & 0xFD | v3;
}

- (void)setIgnoreWeakBindingPreferences:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_addClaimRecordIfMissing + 1) = *(&self->_addClaimRecordIfMissing + 1) & 0xFB | v3;
}

- (void)setRequireOpenInPlace:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_addClaimRecordIfMissing + 1) = *(&self->_addClaimRecordIfMissing + 1) & 0xF7 | v3;
}

- (void)setHonorPreferenceForNoHandler:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_addClaimRecordIfMissing + 1) = *(&self->_addClaimRecordIfMissing + 1) & 0xEF | v3;
}

- (LSClaimBindingConfiguration)initWithDocumentProxy:(id)a3 bindingStyle:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(LSClaimBindingConfiguration *)self initWithDocumentProxy:v6];
  v8 = v7;
  if (v7)
  {
    v7->_bindingStyle = v4;
    if (v4 == 2)
    {
      [(LSClaimBindingConfiguration *)v7 setAllowNoneHandlerRank:1];
      [(LSClaimBindingConfiguration *)v8 setAllowWildcardClaims:1];
    }

    else if (v4 == 3)
    {
      bindable = v7->_bindable;
      v14 = 0;
      v10 = [(LSClaimBindingBindable *)bindable typeRecordWithError:&v14];
      v11 = v14;
      if (v10)
      {
        if (([v10 _isOneTapOpenable] & 1) == 0)
        {
          [(LSClaimBindingConfiguration *)v8 setMaximumHandlerRank:@"Owner"];
          [(LSClaimBindingConfiguration *)v8 setMinimumHandlerRank:@"Owner"];
        }
      }

      else
      {
        v12 = _LSDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [LSClaimBindingConfiguration(BindingEvaluator) initWithDocumentProxy:bindingStyle:];
        }
      }
    }
  }

  return v8;
}

- (BindingEvaluator)_baseBindingEvaluatorForBindableWithAuditToken:(SEL)a3
{
  result = self->_bindable;
  if (result)
  {
    return [(BindingEvaluator *)result baseBindingEvaluatorWithBindingStyle:self->_bindingStyle auditToken:a4];
  }

  *&retstr->var15 = 0u;
  *&retstr->var17 = 0u;
  *&retstr->var13.var0 = 0u;
  *&retstr->var13.var2 = 0u;
  *&retstr->var7 = 0u;
  *&retstr->var10 = 0u;
  *retstr->var6._opaque = 0u;
  *&retstr->var6._opaque[16] = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  return result;
}

- (BindingEvaluator)bindingEvaluatorForAuditToken:(SEL)a3
{
  [(LSClaimBindingConfiguration *)self _baseBindingEvaluatorForBindableWithAuditToken:a4];
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  v6 = LaunchServices::BindingEvaluator::getFilter_NoIO(retstr, &v30);
  if (v6)
  {
    LaunchServices::ClaimBindingConfiguration::FilterStack::addFilter(v31, v30, v6);
  }

  if ([(LSClaimBindingConfiguration *)self requireOpenInPlace])
  {
    LaunchServices::ClaimBindingConfiguration::FilterStack::addFilter(v31, @"bundle supports open in place", &__block_literal_global_57);
  }

  minimumNumericHandlerRank = self->_minimumNumericHandlerRank;
  maximumNumericHandlerRank = self->_maximumNumericHandlerRank;
  if (minimumNumericHandlerRank != 1 || maximumNumericHandlerRank != 3)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79__LSClaimBindingConfiguration_BindingEvaluator__bindingEvaluatorForAuditToken___block_invoke_2;
    v27[3] = &__block_descriptor_36_e61_B24__0__LSContext___8r__LSBinding_I__LSBundleData_I______Q_16l;
    v28 = minimumNumericHandlerRank;
    v29 = maximumNumericHandlerRank;
    LaunchServices::ClaimBindingConfiguration::FilterStack::addFilter(v31, @"claim has correct handler rank", v27);
  }

  v9 = LaunchServices::ClaimBindingConfiguration::FilterStack::buildFilter(v31);
  if (v9)
  {
    v10 = LaunchServices::ClaimBindingConfiguration::FilterStack::buildDescription(v31);
    LaunchServices::BindingEvaluator::setFilter_NoIO(retstr, v10, v9);
  }

  Options = LaunchServices::BindingEvaluator::getOptions(retstr);
  v12 = [(LSClaimBindingConfiguration *)self allowWildcardClaims];
  v13 = [(LSClaimBindingConfiguration *)self allowNoneHandlerRank];
  v14 = [(LSClaimBindingConfiguration *)self ignoreStrongBindingPreferences];
  v15 = [(LSClaimBindingConfiguration *)self ignoreWeakBindingPreferences];
  v16 = [(LSClaimBindingConfiguration *)self honorPreferenceForNoHandler];
  if (v12)
  {
    v17 = 8224;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | Options;
  if (v13)
  {
    v18 |= 0x1000u;
  }

  if (v14)
  {
    v18 |= 2u;
  }

  if (v15)
  {
    v18 |= 4u;
  }

  if (v16)
  {
    v19 = v18 | 0x400000;
  }

  else
  {
    v19 = v18;
  }

  LaunchServices::BindingEvaluator::setOptions(retstr, v19);
  v20 = [(LSClaimBindingConfiguration *)self bundleClassMask];
  __p = 0;
  v25 = 0;
  v26 = 0;
  if ((v20 & 4) != 0)
  {
    v23 = 2;
    std::vector<unsigned int>::push_back[abi:nn200100](&__p, &v23);
  }

  if ((v20 & 0x800) != 0)
  {
    v23 = 11;
    std::vector<unsigned int>::push_back[abi:nn200100](&__p, &v23);
  }

  LaunchServices::BindingEvaluator::setAllowedBundleClasses(retstr, &__p);
  if ([(LSClaimBindingConfiguration *)self addClaimRecordIfMissing])
  {
    v21 = LaunchServices::BindingEvaluator::getOptions(retstr);
    LaunchServices::BindingEvaluator::setOptions(retstr, v21 | 0x80000);
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  __p = v31;
  std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&__p);
  return result;
}

uint64_t __79__LSClaimBindingConfiguration_BindingEvaluator__bindingEvaluatorForAuditToken___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (*(v3 + 20) == 1)
  {
    return 1;
  }

  else
  {
    return (*(v3 + 176) >> 1) & 1;
  }
}

BOOL __79__LSClaimBindingConfiguration_BindingEvaluator__bindingEvaluatorForAuditToken___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v3 + 12);
  return v4 >= *(a1 + 32) && v4 <= *(a1 + 34);
}

+ (id)oneTapOpenClaimBindingConfigurationForBindable:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBindable:v4];
  v12 = 0;
  v6 = [v4 typeRecordWithError:&v12];
  v7 = v12;
  if (v6)
  {
    if (([v6 _isOneTapOpenable] & 1) == 0)
    {
      [v5 setMinimumHandlerRank:@"Owner"];
      [v5 setMaximumHandlerRank:@"Owner"];
    }
  }

  else
  {
    v8 = [v4 URL];
    v9 = v8;
    if (!v8 || [v8 isFileURL])
    {
      v10 = _LSDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[LSClaimBindingConfiguration(CannedConfigurations) oneTapOpenClaimBindingConfigurationForBindable:];
      }
    }
  }

  return v5;
}

@end