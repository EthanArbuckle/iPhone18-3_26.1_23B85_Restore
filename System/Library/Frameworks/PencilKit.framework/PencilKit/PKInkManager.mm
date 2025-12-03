@interface PKInkManager
+ (id)defaultInkManager;
+ (void)clearCachedManager;
- (PKInkManager)init;
- (id)inkBehaviorForIdentifier:(id)identifier variant:(id)variant;
- (id)inkBehaviorForIdentifier:(id)identifier version:(unint64_t)version variant:(id)variant;
- (id)supportedInkIdentifierFromIdentifier:(id)identifier;
- (void)addInkBehavior:(id)behavior forIdentifier:(id)identifier;
@end

@implementation PKInkManager

void __33__PKInkManager_defaultInkManager__block_invoke()
{
  v0 = objc_alloc_init(PKInkManager);
  v1 = _MergedGlobals_149;
  _MergedGlobals_149 = v0;
}

- (PKInkManager)init
{
  v8.receiver = self;
  v8.super_class = PKInkManager;
  v2 = [(PKInkManager *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    inks = v2->_inks;
    v2->_inks = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    supportedInkIdentifiers = v2->_supportedInkIdentifiers;
    v2->_supportedInkIdentifiers = dictionary2;
  }

  return v2;
}

+ (id)defaultInkManager
{
  if (qword_1ED6A5200 != -1)
  {
    dispatch_once(&qword_1ED6A5200, &__block_literal_global_56);
  }

  v3 = _MergedGlobals_149;

  return v3;
}

+ (void)clearCachedManager
{
  v2 = objc_alloc_init(PKInkManager);
  v3 = _MergedGlobals_149;
  _MergedGlobals_149 = v2;
}

- (id)supportedInkIdentifierFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_supportedInkIdentifiers objectForKeyedSubscript:identifierCopy];
  if (!v6)
  {
    v7 = [PKInkParser hasDefinitionForIdentifier:identifierCopy];
    v8 = @"com.apple.ink.pen";
    if (v7)
    {
      v8 = identifierCopy;
    }

    v6 = v8;
    [(NSMutableDictionary *)selfCopy->_supportedInkIdentifiers setObject:v6 forKeyedSubscript:identifierCopy];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)inkBehaviorForIdentifier:(id)identifier variant:(id)variant
{
  identifierCopy = identifier;
  variantCopy = variant;
  variantCopy = [(PKInkManager *)self inkBehaviorForIdentifier:identifierCopy version:[PKInk variant:"currentInkVersionForInkIdentifier:" currentInkVersionForInkIdentifier:identifierCopy], variantCopy];

  return variantCopy;
}

- (id)inkBehaviorForIdentifier:(id)identifier version:(unint64_t)version variant:(id)variant
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  variantCopy = variant;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!variantCopy)
  {
    variantCopy = @"default";
  }

  v11 = [[PKInkKey alloc] initWithIdentifier:identifierCopy version:version variant:variantCopy];
  v12 = [(NSMutableDictionary *)selfCopy->_inks objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = [PKInkParser inkBehaviorsWithIdentifer:identifierCopy version:version];
    [(NSMutableDictionary *)selfCopy->_inks addEntriesFromDictionary:v13];
    if (!version || v13)
    {
      v15 = v11;
    }

    else
    {
      v14 = version - 1;
      do
      {
        v13 = [PKInkParser inkBehaviorsWithIdentifer:identifierCopy version:v14];
        [(NSMutableDictionary *)selfCopy->_inks addEntriesFromDictionary:v13];
        v15 = [[PKInkKey alloc] initWithIdentifier:identifierCopy version:v14 variant:variantCopy];

        if (v14-- == 0)
        {
          break;
        }

        v11 = v15;
      }

      while (!v13);
      version = v14 + 1;
    }

    v11 = v15;
  }

  v17 = [(NSMutableDictionary *)selfCopy->_inks objectForKeyedSubscript:v11];

  if (v17)
  {
    v18 = [(NSMutableDictionary *)selfCopy->_inks objectForKeyedSubscript:v11];
  }

  else
  {
    v19 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412546;
      v23 = variantCopy;
      v24 = 2112;
      v25 = identifierCopy;
      _os_log_error_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_ERROR, "Could not find variant %@ for ink identifier %@, falling back to default", &v22, 0x16u);
    }

    v20 = [[PKInkKey alloc] initWithIdentifier:identifierCopy version:version variant:@"default"];
    v18 = [(NSMutableDictionary *)selfCopy->_inks objectForKeyedSubscript:v20];
    v11 = v20;
  }

  objc_sync_exit(selfCopy);

  return v18;
}

- (void)addInkBehavior:(id)behavior forIdentifier:(id)identifier
{
  behaviorCopy = behavior;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [[PKInkKey alloc] initWithIdentifier:identifierCopy version:3 variant:@"default"];
  [(NSMutableDictionary *)selfCopy->_inks setObject:behaviorCopy forKeyedSubscript:v8];

  objc_sync_exit(selfCopy);
}

@end