@interface PKInkManager
+ (id)defaultInkManager;
+ (void)clearCachedManager;
- (PKInkManager)init;
- (id)inkBehaviorForIdentifier:(id)a3 variant:(id)a4;
- (id)inkBehaviorForIdentifier:(id)a3 version:(unint64_t)a4 variant:(id)a5;
- (id)supportedInkIdentifierFromIdentifier:(id)a3;
- (void)addInkBehavior:(id)a3 forIdentifier:(id)a4;
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
    v3 = [MEMORY[0x1E695DF90] dictionary];
    inks = v2->_inks;
    v2->_inks = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    supportedInkIdentifiers = v2->_supportedInkIdentifiers;
    v2->_supportedInkIdentifiers = v5;
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

- (id)supportedInkIdentifierFromIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_supportedInkIdentifiers objectForKeyedSubscript:v4];
  if (!v6)
  {
    v7 = [PKInkParser hasDefinitionForIdentifier:v4];
    v8 = @"com.apple.ink.pen";
    if (v7)
    {
      v8 = v4;
    }

    v6 = v8;
    [(NSMutableDictionary *)v5->_supportedInkIdentifiers setObject:v6 forKeyedSubscript:v4];
  }

  objc_sync_exit(v5);

  return v6;
}

- (id)inkBehaviorForIdentifier:(id)a3 variant:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKInkManager *)self inkBehaviorForIdentifier:v6 version:[PKInk variant:"currentInkVersionForInkIdentifier:" currentInkVersionForInkIdentifier:v6], v7];

  return v8;
}

- (id)inkBehaviorForIdentifier:(id)a3 version:(unint64_t)a4 variant:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  if (!v9)
  {
    v9 = @"default";
  }

  v11 = [[PKInkKey alloc] initWithIdentifier:v8 version:a4 variant:v9];
  v12 = [(NSMutableDictionary *)v10->_inks objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = [PKInkParser inkBehaviorsWithIdentifer:v8 version:a4];
    [(NSMutableDictionary *)v10->_inks addEntriesFromDictionary:v13];
    if (!a4 || v13)
    {
      v15 = v11;
    }

    else
    {
      v14 = a4 - 1;
      do
      {
        v13 = [PKInkParser inkBehaviorsWithIdentifer:v8 version:v14];
        [(NSMutableDictionary *)v10->_inks addEntriesFromDictionary:v13];
        v15 = [[PKInkKey alloc] initWithIdentifier:v8 version:v14 variant:v9];

        if (v14-- == 0)
        {
          break;
        }

        v11 = v15;
      }

      while (!v13);
      a4 = v14 + 1;
    }

    v11 = v15;
  }

  v17 = [(NSMutableDictionary *)v10->_inks objectForKeyedSubscript:v11];

  if (v17)
  {
    v18 = [(NSMutableDictionary *)v10->_inks objectForKeyedSubscript:v11];
  }

  else
  {
    v19 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412546;
      v23 = v9;
      v24 = 2112;
      v25 = v8;
      _os_log_error_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_ERROR, "Could not find variant %@ for ink identifier %@, falling back to default", &v22, 0x16u);
    }

    v20 = [[PKInkKey alloc] initWithIdentifier:v8 version:a4 variant:@"default"];
    v18 = [(NSMutableDictionary *)v10->_inks objectForKeyedSubscript:v20];
    v11 = v20;
  }

  objc_sync_exit(v10);

  return v18;
}

- (void)addInkBehavior:(id)a3 forIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [[PKInkKey alloc] initWithIdentifier:v6 version:3 variant:@"default"];
  [(NSMutableDictionary *)v7->_inks setObject:v9 forKeyedSubscript:v8];

  objc_sync_exit(v7);
}

@end