@interface LSClaimBindingConfiguration
+ (id)oneTapOpenClaimBindingConfigurationForBindable:(id)bindable;
- (BOOL)isEqual:(id)equal;
- (BindingEvaluator)_baseBindingEvaluatorForBindableWithAuditToken:(SEL)token;
- (BindingEvaluator)bindingEvaluatorForAuditToken:(SEL)token;
- (LSClaimBindingConfiguration)initWithBindable:(id)bindable;
- (LSClaimBindingConfiguration)initWithCoder:(id)coder;
- (LSClaimBindingConfiguration)initWithDocumentProxy:(id)proxy;
- (LSClaimBindingConfiguration)initWithDocumentProxy:(id)proxy bindingStyle:(unsigned __int8)style;
- (LSClaimBindingConfiguration)initWithTypeIdentifier:(id)identifier;
- (LSClaimBindingConfiguration)initWithURL:(id)l;
- (NSString)maximumHandlerRank;
- (NSString)minimumHandlerRank;
- (void)encodeWithCoder:(id)coder;
- (void)setHonorPreferenceForNoHandler:(BOOL)handler;
- (void)setIgnoreStrongBindingPreferences:(BOOL)preferences;
- (void)setIgnoreWeakBindingPreferences:(BOOL)preferences;
- (void)setMaximumHandlerRank:(id)rank;
- (void)setMinimumHandlerRank:(id)rank;
- (void)setRequireOpenInPlace:(BOOL)place;
@end

@implementation LSClaimBindingConfiguration

- (LSClaimBindingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = LSClaimBindingConfiguration;
  v5 = [(LSClaimBindingConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bindable"];
    bindable = v5->_bindable;
    v5->_bindable = v6;

    v5->_bundleClassMask = [coderCopy decodeIntegerForKey:@"bundleClassMask"];
    v5->_bindingStyle = [coderCopy decodeIntegerForKey:@"bindingStyle"];
    v5->_minimumNumericHandlerRank = [coderCopy decodeInt32ForKey:@"minimumNumericHandlerRank"];
    v5->_maximumNumericHandlerRank = [coderCopy decodeInt32ForKey:@"maximumNumericHandlerRank"];
    v5->_addClaimRecordIfMissing = [coderCopy decodeBoolForKey:@"addClaimRecordIfMissing"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flagsData"];
    if ([v8 length] == 1)
    {
      [v8 getBytes:&v5->_addClaimRecordIfMissing + 1 length:1];
    }

    else
    {
      v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "[LSClaimBindingConfiguration initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSClaimBindingConfiguration.mm", 545);
      [coderCopy failWithError:v9];

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_bindable forKey:@"bindable"];
  [coderCopy encodeInteger:self->_bundleClassMask forKey:@"bundleClassMask"];
  [coderCopy encodeInteger:self->_bindingStyle forKey:@"bindingStyle"];
  [coderCopy encodeInt32:self->_minimumNumericHandlerRank forKey:@"minimumNumericHandlerRank"];
  [coderCopy encodeInt32:self->_maximumNumericHandlerRank forKey:@"maximumNumericHandlerRank"];
  [coderCopy encodeBool:self->_addClaimRecordIfMissing forKey:@"addClaimRecordIfMissing"];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_addClaimRecordIfMissing + 1 length:1];
  [coderCopy encodeObject:v4 forKey:@"flagsData"];
}

- (LSClaimBindingConfiguration)initWithBindable:(id)bindable
{
  bindableCopy = bindable;
  v9.receiver = self;
  v9.super_class = LSClaimBindingConfiguration;
  v6 = [(LSClaimBindingConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bindable, bindable);
    v7->_bundleClassMask = 4;
    v7->_bindingStyle = 0;
    *&v7->_minimumNumericHandlerRank = 196609;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(LSClaimBindingBindable *)self->_bindable isEqual:v5[1]]&& self->_bundleClassMask == v5[2] && self->_bindingStyle == *(v5 + 24) && self->_minimumNumericHandlerRank == *(v5 + 13) && self->_maximumNumericHandlerRank == *(v5 + 14) && self->_addClaimRecordIfMissing == *(v5 + 30);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (LSClaimBindingConfiguration)initWithTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [[_LSClaimBindingTypeIdentifierBindable alloc] initWithTypeIdentifier:identifierCopy];
  }

  else
  {
    v5 = objc_alloc_init(_LSCompatibilityNothingBindable);
  }

  v6 = v5;
  v7 = [(LSClaimBindingConfiguration *)self initWithBindable:v5];

  return v7;
}

- (LSClaimBindingConfiguration)initWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSClaimBindingConfiguration.mm" lineNumber:621 description:{@"nil URL provided to %s", "-[LSClaimBindingConfiguration initWithURL:]"}];
  }

  v6 = [[_LSClaimBindingURLBindable alloc] initWithURL:lCopy];
  v7 = [(LSClaimBindingConfiguration *)self initWithBindable:v6];

  return v7;
}

- (LSClaimBindingConfiguration)initWithDocumentProxy:(id)proxy
{
  proxyCopy = proxy;
  if (!proxyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSClaimBindingConfiguration.mm" lineNumber:627 description:{@"nil proxy provided to %s", "-[LSClaimBindingConfiguration initWithDocumentProxy:]"}];
  }

  v6 = [[_LSClaimBindingDocumentProxyBindable alloc] initWithProxy:proxyCopy];
  v7 = [(LSClaimBindingConfiguration *)self initWithBindable:v6];

  return v7;
}

- (NSString)minimumHandlerRank
{
  v2 = _LSCopyHandlerRankStringFromNumericHandlerRank(self->_minimumNumericHandlerRank);

  return v2;
}

- (void)setMinimumHandlerRank:(id)rank
{
  rankCopy = rank;
  if (!rankCopy)
  {
    rankCopy = @"None";
  }

  v5 = rankCopy;
  self->_minimumNumericHandlerRank = _LSNumericHandlerRankFromHandlerRankString(rankCopy);
}

- (NSString)maximumHandlerRank
{
  v2 = _LSCopyHandlerRankStringFromNumericHandlerRank(self->_maximumNumericHandlerRank);

  return v2;
}

- (void)setMaximumHandlerRank:(id)rank
{
  rankCopy = rank;
  if (!rankCopy)
  {
    rankCopy = @"Owner";
  }

  v5 = rankCopy;
  self->_maximumNumericHandlerRank = _LSNumericHandlerRankFromHandlerRankString(rankCopy);
}

- (void)setIgnoreStrongBindingPreferences:(BOOL)preferences
{
  if (preferences)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_addClaimRecordIfMissing + 1) = *(&self->_addClaimRecordIfMissing + 1) & 0xFD | v3;
}

- (void)setIgnoreWeakBindingPreferences:(BOOL)preferences
{
  if (preferences)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_addClaimRecordIfMissing + 1) = *(&self->_addClaimRecordIfMissing + 1) & 0xFB | v3;
}

- (void)setRequireOpenInPlace:(BOOL)place
{
  if (place)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_addClaimRecordIfMissing + 1) = *(&self->_addClaimRecordIfMissing + 1) & 0xF7 | v3;
}

- (void)setHonorPreferenceForNoHandler:(BOOL)handler
{
  if (handler)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_addClaimRecordIfMissing + 1) = *(&self->_addClaimRecordIfMissing + 1) & 0xEF | v3;
}

- (LSClaimBindingConfiguration)initWithDocumentProxy:(id)proxy bindingStyle:(unsigned __int8)style
{
  styleCopy = style;
  proxyCopy = proxy;
  v7 = [(LSClaimBindingConfiguration *)self initWithDocumentProxy:proxyCopy];
  v8 = v7;
  if (v7)
  {
    v7->_bindingStyle = styleCopy;
    if (styleCopy == 2)
    {
      [(LSClaimBindingConfiguration *)v7 setAllowNoneHandlerRank:1];
      [(LSClaimBindingConfiguration *)v8 setAllowWildcardClaims:1];
    }

    else if (styleCopy == 3)
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

- (BindingEvaluator)_baseBindingEvaluatorForBindableWithAuditToken:(SEL)token
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

- (BindingEvaluator)bindingEvaluatorForAuditToken:(SEL)token
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
  allowWildcardClaims = [(LSClaimBindingConfiguration *)self allowWildcardClaims];
  allowNoneHandlerRank = [(LSClaimBindingConfiguration *)self allowNoneHandlerRank];
  ignoreStrongBindingPreferences = [(LSClaimBindingConfiguration *)self ignoreStrongBindingPreferences];
  ignoreWeakBindingPreferences = [(LSClaimBindingConfiguration *)self ignoreWeakBindingPreferences];
  honorPreferenceForNoHandler = [(LSClaimBindingConfiguration *)self honorPreferenceForNoHandler];
  if (allowWildcardClaims)
  {
    v17 = 8224;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | Options;
  if (allowNoneHandlerRank)
  {
    v18 |= 0x1000u;
  }

  if (ignoreStrongBindingPreferences)
  {
    v18 |= 2u;
  }

  if (ignoreWeakBindingPreferences)
  {
    v18 |= 4u;
  }

  if (honorPreferenceForNoHandler)
  {
    v19 = v18 | 0x400000;
  }

  else
  {
    v19 = v18;
  }

  LaunchServices::BindingEvaluator::setOptions(retstr, v19);
  bundleClassMask = [(LSClaimBindingConfiguration *)self bundleClassMask];
  __p = 0;
  v25 = 0;
  v26 = 0;
  if ((bundleClassMask & 4) != 0)
  {
    v23 = 2;
    std::vector<unsigned int>::push_back[abi:nn200100](&__p, &v23);
  }

  if ((bundleClassMask & 0x800) != 0)
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

+ (id)oneTapOpenClaimBindingConfigurationForBindable:(id)bindable
{
  bindableCopy = bindable;
  v5 = [[self alloc] initWithBindable:bindableCopy];
  v12 = 0;
  v6 = [bindableCopy typeRecordWithError:&v12];
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
    v8 = [bindableCopy URL];
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