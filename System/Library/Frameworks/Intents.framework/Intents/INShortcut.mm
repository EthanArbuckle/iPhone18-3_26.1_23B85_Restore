@interface INShortcut
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (INImage)_keyImage;
- (INShortcut)initWithActivityData:(id)data activityImage:(id)image activitySubtitle:(id)subtitle activityBundleIdentifier:(id)identifier;
- (INShortcut)initWithCoder:(id)coder;
- (INShortcut)initWithIntent:(INIntent *)intent;
- (INShortcut)initWithUserActivity:(id)activity bundleIdentifier:(id)identifier;
- (INShortcut)shortcutWithActivityBundleIdentifier:(id)identifier;
- (INShortcut)shortcutWithActivityImage:(id)image;
- (NSData)activityData;
- (NSString)_associatedAppBundleIdentifier;
- (NSString)_subtitle;
- (NSString)_title;
- (NSString)description;
- (id)_initWithIntent:(id)intent;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INShortcut

- (INImage)_keyImage
{
  intent = [(INShortcut *)self intent];
  _keyImage = [intent _keyImage];
  v5 = _keyImage;
  if (_keyImage)
  {
    activityImage = _keyImage;
  }

  else
  {
    activityImage = [(INShortcut *)self activityImage];
  }

  v7 = activityImage;

  return v7;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ACC8];
  v11 = 0;
  handlerCopy = handler;
  v7 = [v5 archivedDataWithRootObject:self requiringSecureCoding:1 error:&v11];
  v8 = v11;
  handlerCopy[2](handlerCopy, v7, v8);

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

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v8 = [v6 _in_safeUnarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:error];

  return v8;
}

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  if (completionCopy)
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
    selfCopy = self;
    v23 = selfCopy;
    v11 = MEMORY[0x1E696AAE0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__INShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
    v19[3] = &unk_1E7285E10;
    v20 = completionCopy;
    v21 = v22;
    v12 = [v11 blockOperationWithBlock:v19];
    intent = [(INShortcut *)selfCopy intent];
    activityImage = [(INShortcut *)selfCopy activityImage];
    v15 = activityImage;
    if (intent)
    {
      v16 = objc_alloc_init(INImageProxyInjectionOperation);
      [(INImageProxyInjectionOperation *)v16 setInjector:intent];
      [(INImageProxyInjectionOperation *)v16 setImageProxyRequestBlock:imagesCopy];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __72__INShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2;
      v18[3] = &unk_1E7282200;
      v18[4] = selfCopy;
      v18[5] = v22;
      [(INImageProxyInjectionOperation *)v16 setCopyReturnBlock:v18];
      [v12 addDependency:v16];
      [v8 addOperation:v16];
    }

    else
    {
      if (!activityImage)
      {
LABEL_7:
        [v8 addOperation:v12];
        [v8 setSuspended:0];

        _Block_object_dispose(v22, 8);
        goto LABEL_8;
      }

      v16 = objc_alloc_init(INImageProxyInjectionOperation);
      [(INImageProxyInjectionOperation *)v16 setInjector:v15];
      [(INImageProxyInjectionOperation *)v16 setImageProxyRequestBlock:imagesCopy];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __72__INShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_3;
      v17[3] = &unk_1E7282228;
      v17[4] = selfCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  intent = [(INShortcut *)self intent];
  v6 = INIntentWithTypedIntent(intent);
  [coderCopy encodeObject:v6 forKey:@"intent"];

  activityData = [(INShortcut *)self activityData];
  [coderCopy encodeObject:activityData forKey:@"userActivity"];

  activityImage = [(INShortcut *)self activityImage];
  [coderCopy encodeObject:activityImage forKey:@"activityImage"];

  activitySubtitle = [(INShortcut *)self activitySubtitle];
  [coderCopy encodeObject:activitySubtitle forKey:@"activitySubtitle"];

  activityBundleIdentifier = [(INShortcut *)self activityBundleIdentifier];
  [coderCopy encodeObject:activityBundleIdentifier forKey:@"activityBundleIdentifier"];
}

- (INShortcut)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = INTypedIntentWithIntent(v5);

  if (v6)
  {
    self = [(INShortcut *)self _initWithIntent:v6];
    selfCopy2 = self;
  }

  else
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];
    if ([v8 length])
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityImage"];
      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"activitySubtitle"];

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityBundleIdentifier"];
      self = [(INShortcut *)self initWithActivityData:v8 activityImage:v9 activitySubtitle:v13 activityBundleIdentifier:v14];

      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      intent = [(INShortcut *)self intent];
      intent2 = [(INShortcut *)v6 intent];
      if (intent != intent2)
      {
        intent3 = [(INShortcut *)self intent];
        [(INShortcut *)v6 intent];
        v33 = v32 = intent3;
        if (![intent3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      userActivity = [(INShortcut *)self userActivity];
      userActivity2 = [(INShortcut *)v6 userActivity];
      if (userActivity != userActivity2)
      {
        userActivity3 = [(INShortcut *)self userActivity];
        userActivity4 = [(INShortcut *)v6 userActivity];
        if (![userActivity3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (intent == intent2)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      activityImage = [(INShortcut *)self activityImage];
      activityImage2 = [(INShortcut *)v6 activityImage];
      v31 = activityImage;
      v15 = activityImage == activityImage2;
      v16 = activityImage2;
      if (v15)
      {
        v28 = userActivity3;
        v29 = userActivity2;
      }

      else
      {
        activityImage3 = [(INShortcut *)self activityImage];
        activityImage4 = [(INShortcut *)v6 activityImage];
        v26 = activityImage3;
        if (![activityImage3 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = userActivity3;
        v29 = userActivity2;
      }

      v27 = v16;
      activitySubtitle = [(INShortcut *)self activitySubtitle];
      activitySubtitle2 = [(INShortcut *)v6 activitySubtitle];
      v20 = activitySubtitle2;
      if (activitySubtitle == activitySubtitle2)
      {

        v10 = 1;
      }

      else
      {
        activitySubtitle3 = [(INShortcut *)self activitySubtitle];
        activitySubtitle4 = [(INShortcut *)v6 activitySubtitle];
        v10 = [activitySubtitle3 isEqualToString:activitySubtitle4];
      }

      v23 = v31;
      v16 = v27;
      userActivity3 = v28;
      userActivity2 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (userActivity == userActivity2)
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
  intent = [(INShortcut *)self intent];
  v4 = intent;
  if (intent)
  {
    _intents_bundleIdForDisplay = [intent _intents_bundleIdForDisplay];
  }

  else
  {
    userActivity = [(INShortcut *)self userActivity];
    if (userActivity)
    {
      activityBundleIdentifier = [(INShortcut *)self activityBundleIdentifier];
      _intents_bundleIdForDisplay = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity(activityBundleIdentifier);
    }

    else
    {
      _intents_bundleIdForDisplay = 0;
    }
  }

  return _intents_bundleIdForDisplay;
}

- (NSString)_subtitle
{
  intent = [(INShortcut *)self intent];
  v4 = intent;
  if (intent)
  {
    _subtitle = [intent _subtitle];
  }

  else
  {
    userActivity = [(INShortcut *)self userActivity];
    if (userActivity)
    {
      _subtitle = [(INShortcut *)self activitySubtitle];
    }

    else
    {
      _subtitle = 0;
    }
  }

  return _subtitle;
}

- (NSString)_title
{
  intent = [(INShortcut *)self intent];
  v4 = intent;
  if (intent)
  {
    _title = [intent _title];
  }

  else
  {
    userActivity = [(INShortcut *)self userActivity];
    v7 = userActivity;
    if (userActivity)
    {
      _title = [userActivity title];
    }

    else
    {
      _title = 0;
    }
  }

  return _title;
}

- (NSData)activityData
{
  userActivity = [(INShortcut *)self userActivity];
  v4 = userActivity;
  activityData = self->_activityData;
  if (activityData)
  {
    v6 = 1;
  }

  else
  {
    v6 = userActivity == 0;
  }

  if (!v6)
  {
    contentAttributeSet = [userActivity contentAttributeSet];
    thumbnailData = [contentAttributeSet thumbnailData];

    contentAttributeSet2 = [v4 contentAttributeSet];
    [contentAttributeSet2 setThumbnailData:0];

    v10 = INUserActivitySerializeToData(v4);
    v11 = self->_activityData;
    self->_activityData = v10;

    contentAttributeSet3 = [v4 contentAttributeSet];
    [contentAttributeSet3 setThumbnailData:thumbnailData];

    activityData = self->_activityData;
  }

  v13 = activityData;

  return activityData;
}

- (INShortcut)shortcutWithActivityBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  userActivity = [(INShortcut *)self userActivity];

  if (userActivity)
  {
    v6 = objc_alloc(objc_opt_class());
    activityData = [(INShortcut *)self activityData];
    activityImage = [(INShortcut *)self activityImage];
    activitySubtitle = [(INShortcut *)self activitySubtitle];
    selfCopy = [v6 initWithActivityData:activityData activityImage:activityImage activitySubtitle:activitySubtitle activityBundleIdentifier:identifierCopy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (INShortcut)shortcutWithActivityImage:(id)image
{
  imageCopy = image;
  userActivity = [(INShortcut *)self userActivity];

  if (userActivity)
  {
    v6 = objc_alloc(objc_opt_class());
    activityData = [(INShortcut *)self activityData];
    activitySubtitle = [(INShortcut *)self activitySubtitle];
    activityBundleIdentifier = [(INShortcut *)self activityBundleIdentifier];
    selfCopy = [v6 initWithActivityData:activityData activityImage:imageCopy activitySubtitle:activitySubtitle activityBundleIdentifier:activityBundleIdentifier];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (INShortcut)initWithActivityData:(id)data activityImage:(id)image activitySubtitle:(id)subtitle activityBundleIdentifier:(id)identifier
{
  dataCopy = data;
  imageCopy = image;
  subtitleCopy = subtitle;
  identifierCopy = identifier;
  v31.receiver = self;
  v31.super_class = INShortcut;
  v14 = [(INShortcut *)&v31 init];
  if (v14)
  {
    v15 = [dataCopy copy];
    activityData = v14->_activityData;
    v14->_activityData = v15;

    v17 = [imageCopy copy];
    activityImage = v14->_activityImage;
    v14->_activityImage = v17;

    v19 = [subtitleCopy length];
    if (v19)
    {
      v19 = [subtitleCopy copy];
    }

    activitySubtitle = v14->_activitySubtitle;
    v14->_activitySubtitle = v19;

    v21 = [identifierCopy copy];
    activityBundleIdentifier = v14->_activityBundleIdentifier;
    v14->_activityBundleIdentifier = v21;

    if ([dataCopy length])
    {
      v23 = INUserActivityDeserializeFromData(dataCopy);
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
      _imageData = [(INImage *)v14->_activityImage _imageData];
      [v27 setThumbnailData:_imageData];

      [(NSUserActivity *)v14->_userActivity setContentAttributeSet:v27];
    }

    v29 = v14;
  }

  return v14;
}

- (INShortcut)initWithUserActivity:(id)activity bundleIdentifier:(id)identifier
{
  activityCopy = activity;
  if (activityCopy)
  {
    identifierCopy = identifier;
    title = [activityCopy title];
    v10 = [title length];

    if (!v10)
    {
      NSLog(@"Shortcut created from user activity (%@) is invalid because it is missing a title", activityCopy);
    }

    contentAttributeSet = [activityCopy contentAttributeSet];
    thumbnailURL = [contentAttributeSet thumbnailURL];
    if ([thumbnailURL isFileURL])
    {
      v13 = [INImage imageWithURL:thumbnailURL];
    }

    else
    {
      thumbnailData = [contentAttributeSet thumbnailData];
      if ([thumbnailData length])
      {
        v13 = [INImage imageWithImageData:thumbnailData];
      }

      else
      {
        v13 = 0;
      }
    }

    contentDescription = [contentAttributeSet contentDescription];
    self = [(INShortcut *)self initWithActivityData:0 activityImage:v13 activitySubtitle:contentDescription activityBundleIdentifier:identifierCopy];

    if (self)
    {
      objc_storeStrong(&self->_userActivity, activity);
      selfCopy = self;
    }

    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (id)_initWithIntent:(id)intent
{
  intentCopy = intent;
  v10.receiver = self;
  v10.super_class = INShortcut;
  v5 = [(INShortcut *)&v10 init];
  if (v5)
  {
    v6 = [intentCopy copy];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end