@interface INShortcut
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (INImage)_keyImage;
- (INShortcut)initWithActivityData:(id)a3 activityImage:(id)a4 activitySubtitle:(id)a5 activityBundleIdentifier:(id)a6;
- (INShortcut)initWithCoder:(id)a3;
- (INShortcut)initWithIntent:(INIntent *)intent;
- (INShortcut)initWithUserActivity:(id)a3 bundleIdentifier:(id)a4;
- (INShortcut)shortcutWithActivityBundleIdentifier:(id)a3;
- (INShortcut)shortcutWithActivityImage:(id)a3;
- (NSData)activityData;
- (NSString)_associatedAppBundleIdentifier;
- (NSString)_subtitle;
- (NSString)_title;
- (NSString)description;
- (id)_initWithIntent:(id)a3;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (void)_injectProxiesForImages:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INShortcut

- (INImage)_keyImage
{
  v3 = [(INShortcut *)self intent];
  v4 = [v3 _keyImage];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(INShortcut *)self activityImage];
  }

  v7 = v6;

  return v7;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v5 = MEMORY[0x1E696ACC8];
  v11 = 0;
  v6 = a4;
  v7 = [v5 archivedDataWithRootObject:self requiringSecureCoding:1 error:&v11];
  v8 = v11;
  v6[2](v6, v7, v8);

  v9 = objc_opt_new();

  return v9;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.sirikit.shortcut";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.sirikit.shortcut";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v8 = [v6 _in_safeUnarchivedObjectOfClass:objc_opt_class() fromData:v7 error:a5];

  return v8;
}

- (void)_injectProxiesForImages:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v9 = INImageProxyInjectionQueue();
    [v8 setUnderlyingQueue:v9];

    [v8 setMaxConcurrentOperationCount:1];
    [v8 setSuspended:1];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__65246;
    v22[4] = __Block_byref_object_dispose__65247;
    v10 = self;
    v23 = v10;
    v11 = MEMORY[0x1E696AAE0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__INShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
    v19[3] = &unk_1E7285E10;
    v20 = v7;
    v21 = v22;
    v12 = [v11 blockOperationWithBlock:v19];
    v13 = [(INShortcut *)v10 intent];
    v14 = [(INShortcut *)v10 activityImage];
    v15 = v14;
    if (v13)
    {
      v16 = objc_alloc_init(INImageProxyInjectionOperation);
      [(INImageProxyInjectionOperation *)v16 setInjector:v13];
      [(INImageProxyInjectionOperation *)v16 setImageProxyRequestBlock:v6];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __72__INShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2;
      v18[3] = &unk_1E7282200;
      v18[4] = v10;
      v18[5] = v22;
      [(INImageProxyInjectionOperation *)v16 setCopyReturnBlock:v18];
      [v12 addDependency:v16];
      [v8 addOperation:v16];
    }

    else
    {
      if (!v14)
      {
LABEL_7:
        [v8 addOperation:v12];
        [v8 setSuspended:0];

        _Block_object_dispose(v22, 8);
        goto LABEL_8;
      }

      v16 = objc_alloc_init(INImageProxyInjectionOperation);
      [(INImageProxyInjectionOperation *)v16 setInjector:v15];
      [(INImageProxyInjectionOperation *)v16 setImageProxyRequestBlock:v6];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __72__INShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_3;
      v17[3] = &unk_1E7282228;
      v17[4] = v10;
      v17[5] = v22;
      [(INImageProxyInjectionOperation *)v16 setCopyReturnBlock:v17];
      [v12 addDependency:v16];
      [v8 addOperation:v16];
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __72__INShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [objc_alloc(objc_opt_class()) initWithIntent:v4];

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

uint64_t __72__INShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) shortcutWithActivityImage:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(INShortcut *)self intent];
  v6 = INIntentWithTypedIntent(v5);
  [v4 encodeObject:v6 forKey:@"intent"];

  v7 = [(INShortcut *)self activityData];
  [v4 encodeObject:v7 forKey:@"userActivity"];

  v8 = [(INShortcut *)self activityImage];
  [v4 encodeObject:v8 forKey:@"activityImage"];

  v9 = [(INShortcut *)self activitySubtitle];
  [v4 encodeObject:v9 forKey:@"activitySubtitle"];

  v10 = [(INShortcut *)self activityBundleIdentifier];
  [v4 encodeObject:v10 forKey:@"activityBundleIdentifier"];
}

- (INShortcut)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = INTypedIntentWithIntent(v5);

  if (v6)
  {
    self = [(INShortcut *)self _initWithIntent:v6];
    v7 = self;
  }

  else
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];
    if ([v8 length])
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityImage"];
      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      v13 = [v4 decodeObjectOfClasses:v12 forKey:@"activitySubtitle"];

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityBundleIdentifier"];
      self = [(INShortcut *)self initWithActivityData:v8 activityImage:v9 activitySubtitle:v13 activityBundleIdentifier:v14];

      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(INShortcut *)self intent];
      v8 = [(INShortcut *)v6 intent];
      if (v7 != v8)
      {
        v9 = [(INShortcut *)self intent];
        [(INShortcut *)v6 intent];
        v33 = v32 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      v11 = [(INShortcut *)self userActivity];
      v12 = [(INShortcut *)v6 userActivity];
      if (v11 != v12)
      {
        v3 = [(INShortcut *)self userActivity];
        v30 = [(INShortcut *)v6 userActivity];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (v7 == v8)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      v13 = [(INShortcut *)self activityImage];
      v14 = [(INShortcut *)v6 activityImage];
      v31 = v13;
      v15 = v13 == v14;
      v16 = v14;
      if (v15)
      {
        v28 = v3;
        v29 = v12;
      }

      else
      {
        v17 = [(INShortcut *)self activityImage];
        v25 = [(INShortcut *)v6 activityImage];
        v26 = v17;
        if (![v17 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = v3;
        v29 = v12;
      }

      v27 = v16;
      v18 = [(INShortcut *)self activitySubtitle];
      v19 = [(INShortcut *)v6 activitySubtitle];
      v20 = v19;
      if (v18 == v19)
      {

        v10 = 1;
      }

      else
      {
        v21 = [(INShortcut *)self activitySubtitle];
        v22 = [(INShortcut *)v6 activitySubtitle];
        v10 = [v21 isEqualToString:v22];
      }

      v23 = v31;
      v16 = v27;
      v3 = v28;
      v12 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (v11 == v12)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:

      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_26:

  return v10;
}

- (NSString)description
{
  intent = self->_intent;
  if (intent)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"intent: %@", intent];
    v4 = LABEL_5:;
    goto LABEL_6;
  }

  if (self->_userActivity)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"userActivity: %@", self->_userActivity];
    goto LABEL_5;
  }

  v4 = @"(empty)";
LABEL_6:
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@: %p %@>", v7, self, v4];

  return v8;
}

- (NSString)_associatedAppBundleIdentifier
{
  v3 = [(INShortcut *)self intent];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _intents_bundleIdForDisplay];
  }

  else
  {
    v6 = [(INShortcut *)self userActivity];
    if (v6)
    {
      v7 = [(INShortcut *)self activityBundleIdentifier];
      v5 = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity(v7);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)_subtitle
{
  v3 = [(INShortcut *)self intent];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _subtitle];
  }

  else
  {
    v6 = [(INShortcut *)self userActivity];
    if (v6)
    {
      v5 = [(INShortcut *)self activitySubtitle];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)_title
{
  v3 = [(INShortcut *)self intent];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _title];
  }

  else
  {
    v6 = [(INShortcut *)self userActivity];
    v7 = v6;
    if (v6)
    {
      v5 = [v6 title];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSData)activityData
{
  v3 = [(INShortcut *)self userActivity];
  v4 = v3;
  activityData = self->_activityData;
  if (activityData)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = [v3 contentAttributeSet];
    v8 = [v7 thumbnailData];

    v9 = [v4 contentAttributeSet];
    [v9 setThumbnailData:0];

    v10 = INUserActivitySerializeToData(v4);
    v11 = self->_activityData;
    self->_activityData = v10;

    v12 = [v4 contentAttributeSet];
    [v12 setThumbnailData:v8];

    activityData = self->_activityData;
  }

  v13 = activityData;

  return activityData;
}

- (INShortcut)shortcutWithActivityBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INShortcut *)self userActivity];

  if (v5)
  {
    v6 = objc_alloc(objc_opt_class());
    v7 = [(INShortcut *)self activityData];
    v8 = [(INShortcut *)self activityImage];
    v9 = [(INShortcut *)self activitySubtitle];
    v10 = [v6 initWithActivityData:v7 activityImage:v8 activitySubtitle:v9 activityBundleIdentifier:v4];
  }

  else
  {
    v10 = self;
  }

  return v10;
}

- (INShortcut)shortcutWithActivityImage:(id)a3
{
  v4 = a3;
  v5 = [(INShortcut *)self userActivity];

  if (v5)
  {
    v6 = objc_alloc(objc_opt_class());
    v7 = [(INShortcut *)self activityData];
    v8 = [(INShortcut *)self activitySubtitle];
    v9 = [(INShortcut *)self activityBundleIdentifier];
    v10 = [v6 initWithActivityData:v7 activityImage:v4 activitySubtitle:v8 activityBundleIdentifier:v9];
  }

  else
  {
    v10 = self;
  }

  return v10;
}

- (INShortcut)initWithActivityData:(id)a3 activityImage:(id)a4 activitySubtitle:(id)a5 activityBundleIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = INShortcut;
  v14 = [(INShortcut *)&v31 init];
  if (v14)
  {
    v15 = [v10 copy];
    activityData = v14->_activityData;
    v14->_activityData = v15;

    v17 = [v11 copy];
    activityImage = v14->_activityImage;
    v14->_activityImage = v17;

    v19 = [v12 length];
    if (v19)
    {
      v19 = [v12 copy];
    }

    activitySubtitle = v14->_activitySubtitle;
    v14->_activitySubtitle = v19;

    v21 = [v13 copy];
    activityBundleIdentifier = v14->_activityBundleIdentifier;
    v14->_activityBundleIdentifier = v21;

    if ([v10 length])
    {
      v23 = INUserActivityDeserializeFromData(v10);
      userActivity = v14->_userActivity;
      v14->_userActivity = v23;

      v33 = 0;
      v34 = &v33;
      v35 = 0x2050000000;
      v25 = getCSSearchableItemAttributeSetClass_softClass_79780;
      v36 = getCSSearchableItemAttributeSetClass_softClass_79780;
      if (!getCSSearchableItemAttributeSetClass_softClass_79780)
      {
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __getCSSearchableItemAttributeSetClass_block_invoke_79781;
        v32[3] = &unk_1E72888B8;
        v32[4] = &v33;
        __getCSSearchableItemAttributeSetClass_block_invoke_79781(v32);
        v25 = v34[3];
      }

      v26 = v25;
      _Block_object_dispose(&v33, 8);
      v27 = objc_alloc_init(v25);
      v28 = [(INImage *)v14->_activityImage _imageData];
      [v27 setThumbnailData:v28];

      [(NSUserActivity *)v14->_userActivity setContentAttributeSet:v27];
    }

    v29 = v14;
  }

  return v14;
}

- (INShortcut)initWithUserActivity:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  if (v7)
  {
    v8 = a4;
    v9 = [v7 title];
    v10 = [v9 length];

    if (!v10)
    {
      NSLog(@"Shortcut created from user activity (%@) is invalid because it is missing a title", v7);
    }

    v11 = [v7 contentAttributeSet];
    v12 = [v11 thumbnailURL];
    if ([v12 isFileURL])
    {
      v13 = [INImage imageWithURL:v12];
    }

    else
    {
      v15 = [v11 thumbnailData];
      if ([v15 length])
      {
        v13 = [INImage imageWithImageData:v15];
      }

      else
      {
        v13 = 0;
      }
    }

    v16 = [v11 contentDescription];
    self = [(INShortcut *)self initWithActivityData:0 activityImage:v13 activitySubtitle:v16 activityBundleIdentifier:v8];

    if (self)
    {
      objc_storeStrong(&self->_userActivity, a3);
      v17 = self;
    }

    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_initWithIntent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = INShortcut;
  v5 = [(INShortcut *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    intent = v5->_intent;
    v5->_intent = v6;

    v8 = v5;
  }

  return v5;
}

- (INShortcut)initWithIntent:(INIntent *)intent
{
  v4 = intent;
  v5 = v4;
  if (v4 && ([(INIntent *)v4 _isConfigurable]|| _INIsIntentValidForSuggestion(v5)))
  {
    self = [(INShortcut *)self _initWithIntent:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end