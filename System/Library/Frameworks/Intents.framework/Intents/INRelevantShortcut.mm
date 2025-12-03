@interface INRelevantShortcut
- (INImage)_keyImage;
- (INRelevantShortcut)init;
- (INRelevantShortcut)initWithCoder:(id)coder;
- (INRelevantShortcut)initWithShortcut:(INShortcut *)shortcut;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_compareSubProducerOne:(id)one subProducerTwo:(id)two;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)setRelevanceProviders:(NSArray *)relevanceProviders;
@end

@implementation INRelevantShortcut

- (int64_t)_compareSubProducerOne:(id)one subProducerTwo:(id)two
{
  oneCopy = one;
  twoCopy = two;
  _keyImage = [oneCopy _keyImage];
  _keyImage2 = [twoCopy _keyImage];

  if (_keyImage && _keyImage2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    if (_keyImage2)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (_keyImage)
    {
      v9 = 1;
    }

    else
    {
      v9 = v10;
    }
  }

  return v9;
}

- (INImage)_keyImage
{
  watchTemplate = [(INRelevantShortcut *)self watchTemplate];
  _keyImage = [watchTemplate _keyImage];
  v5 = _keyImage;
  if (_keyImage)
  {
    _keyImage2 = _keyImage;
  }

  else
  {
    shortcut = [(INRelevantShortcut *)self shortcut];
    _keyImage2 = [shortcut _keyImage];
  }

  return _keyImage2;
}

- (void)encodeWithCoder:(id)coder
{
  shortcut = self->_shortcut;
  coderCopy = coder;
  [coderCopy encodeObject:shortcut forKey:@"shortcut"];
  [coderCopy encodeObject:self->_relevanceProviders forKey:@"relevanceProviders"];
  [coderCopy encodeObject:self->_watchTemplate forKey:@"watchTemplate"];
  [coderCopy encodeObject:self->_widgetKind forKey:@"widgetKind"];
  [coderCopy encodeInteger:self->_shortcutRole forKey:@"shortcutRole"];
}

- (INRelevantShortcut)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = INRelevantShortcut;
  v5 = [(INRelevantShortcut *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];
    shortcut = v5->_shortcut;
    v5->_shortcut = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"relevanceProviders"];
    relevanceProviders = v5->_relevanceProviders;
    v5->_relevanceProviders = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchTemplate"];
    watchTemplate = v5->_watchTemplate;
    v5->_watchTemplate = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetKind"];
    widgetKind = v5->_widgetKind;
    v5->_widgetKind = v15;

    v5->_shortcutRole = [coderCopy decodeIntegerForKey:@"shortcutRole"];
    v17 = v5;
  }

  return v5;
}

- (void)setRelevanceProviders:(NSArray *)relevanceProviders
{
  v35[2] = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = relevanceProviders;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v35[0] = objc_opt_class();
        v35[1] = objc_opt_class();
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
        v10 = [v9 arrayByAddingObject:objc_opt_class()];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (!v12)
        {
LABEL_18:

          v19 = MEMORY[0x1E696AEC0];
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = [v19 stringWithFormat:@"%@ is not a valid relevance provider class", v21];

          v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
          objc_exception_throw(v23);
        }

        v13 = v12;
        v14 = *v30;
LABEL_8:
        v15 = 0;
        while (1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([v8 isMemberOfClass:*(*(&v29 + 1) + 8 * v15)])
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (!v13)
            {
              goto LABEL_18;
            }

            goto LABEL_8;
          }
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v5);
  }

  v16 = [(NSArray *)v3 copy];
  v17 = self->_relevanceProviders;
  self->_relevanceProviders = v16;

  v18 = *MEMORY[0x1E69E9840];
}

- (INRelevantShortcut)initWithShortcut:(INShortcut *)shortcut
{
  v4 = shortcut;
  v12.receiver = self;
  v12.super_class = INRelevantShortcut;
  v5 = [(INRelevantShortcut *)&v12 init];
  if (v5)
  {
    v6 = [(INShortcut *)v4 copy];
    v7 = v5->_shortcut;
    v5->_shortcut = v6;

    v8 = objc_opt_new();
    relevanceProviders = v5->_relevanceProviders;
    v5->_relevanceProviders = v8;

    v5->_shortcutRole = 0;
    v10 = v5;
  }

  return v5;
}

- (INRelevantShortcut)init
{
  v3 = [INShortcut alloc];
  v4 = objc_opt_new();
  v5 = [(INShortcut *)v3 _initWithIntent:v4];
  v6 = [(INRelevantShortcut *)self initWithShortcut:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  relevanceProviders = [(INRelevantShortcut *)self relevanceProviders];
  [v4 setRelevanceProviders:relevanceProviders];

  watchTemplate = [(INRelevantShortcut *)self watchTemplate];
  [v4 setWatchTemplate:watchTemplate];

  widgetKind = [(INRelevantShortcut *)self widgetKind];
  [v4 setWidgetKind:widgetKind];

  shortcut = [(INRelevantShortcut *)self shortcut];
  [v4 setShortcut:shortcut];

  [v4 setShortcutRole:{-[INRelevantShortcut shortcutRole](self, "shortcutRole")}];
  return v4;
}

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [(INRelevantShortcut *)self copy];
    v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v10 = INImageProxyInjectionQueue();
    [v9 setUnderlyingQueue:v10];

    [v9 setMaxConcurrentOperationCount:1];
    [v9 setSuspended:1];
    v11 = MEMORY[0x1E696AAE0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__INRelevantShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
    v19[3] = &unk_1E7287140;
    v19[4] = v8;
    v20 = completionCopy;
    v12 = [v11 blockOperationWithBlock:v19];
    shortcut = [(INRelevantShortcut *)self shortcut];
    if (shortcut)
    {
      v14 = objc_alloc_init(INImageProxyInjectionOperation);
      [(INImageProxyInjectionOperation *)v14 setInjector:shortcut];
      [(INImageProxyInjectionOperation *)v14 setImageProxyRequestBlock:imagesCopy];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __80__INRelevantShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2;
      v18[3] = &unk_1E7285B78;
      v18[4] = v8;
      [(INImageProxyInjectionOperation *)v14 setCopyReturnBlock:v18];
      [v12 addDependency:v14];
      [v9 addOperation:v14];
    }

    watchTemplate = [(INRelevantShortcut *)self watchTemplate];
    if (watchTemplate)
    {
      v16 = objc_alloc_init(INImageProxyInjectionOperation);
      [(INImageProxyInjectionOperation *)v16 setInjector:watchTemplate];
      [(INImageProxyInjectionOperation *)v16 setImageProxyRequestBlock:imagesCopy];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __80__INRelevantShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_3;
      v17[3] = &unk_1E7285B78;
      v17[4] = v8;
      [(INImageProxyInjectionOperation *)v16 setCopyReturnBlock:v17];
      [v12 addDependency:v16];
      [v9 addOperation:v16];
    }

    [v9 addOperation:v12];
    [v9 setSuspended:0];
  }
}

uint64_t __80__INRelevantShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) setShortcut:a2];
  }

  return result;
}

uint64_t __80__INRelevantShortcut_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) setWatchTemplate:a2];
  }

  return result;
}

@end