@interface MFMessageViewControllerReuseQueue
- (ComposeCapable)scene;
- (MFMessageViewControllerReuseQueue)initWithScene:(id)scene;
- (id)_dequeueLeastRecentlyUsedMessageViewController;
- (id)_dequeueMessageViewControllerForKey:(id)key;
- (id)debugDescription;
- (id)dequeueMessageViewControllerForContentRequest:(id)request;
- (void)_evictLeastRecentlyUsedMessageViewControllers;
- (void)drain;
- (void)enqueueMessageViewController:(id)controller;
@end

@implementation MFMessageViewControllerReuseQueue

- (MFMessageViewControllerReuseQueue)initWithScene:(id)scene
{
  sceneCopy = scene;
  v12.receiver = self;
  v12.super_class = MFMessageViewControllerReuseQueue;
  v5 = [(MFMessageViewControllerReuseQueue *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
    v7 = objc_alloc_init(NSMutableOrderedSet);
    keyOrdering = v6->_keyOrdering;
    v6->_keyOrdering = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    messageViewControllers = v6->_messageViewControllers;
    v6->_messageViewControllers = v9;
  }

  return v6;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  generatedMessageViewControllersCount = [(MFMessageViewControllerReuseQueue *)self generatedMessageViewControllersCount];
  keyOrdering = [(MFMessageViewControllerReuseQueue *)self keyOrdering];
  messageViewControllers = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
  v7 = [NSString stringWithFormat:@"<%@:%p (\n\tgenerated:%lu\n\tkeyOrdering: %@\n\tmessageViewControllers:%@)", v3, self, generatedMessageViewControllersCount, keyOrdering, messageViewControllers];

  return v7;
}

- (id)_dequeueMessageViewControllerForKey:(id)key
{
  keyCopy = key;
  messageViewControllers = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
  v6 = [messageViewControllers objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    messageViewControllers2 = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
    [messageViewControllers2 removeObjectForKey:keyCopy];

    keyOrdering = [(MFMessageViewControllerReuseQueue *)self keyOrdering];
    [keyOrdering removeObject:keyCopy];
  }

  return v6;
}

- (id)_dequeueLeastRecentlyUsedMessageViewController
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyOrdering = [(MFMessageViewControllerReuseQueue *)self keyOrdering];
  reverseObjectEnumerator = [keyOrdering reverseObjectEnumerator];

  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v8 = [(MFMessageViewControllerReuseQueue *)self _dequeueMessageViewControllerForKey:*(*(&v10 + 1) + 8 * v7)];
      if (v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  return v8;
}

- (void)_evictLeastRecentlyUsedMessageViewControllers
{
  while (1)
  {
    messageViewControllers = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
    v4 = [messageViewControllers count];

    if (v4 < 6)
    {
      break;
    }

    _dequeueLeastRecentlyUsedMessageViewController = [(MFMessageViewControllerReuseQueue *)self _dequeueLeastRecentlyUsedMessageViewController];
  }
}

- (id)dequeueMessageViewControllerForContentRequest:(id)request
{
  requestCopy = request;
  itemID = [requestCopy itemID];
  v6 = [(MFMessageViewControllerReuseQueue *)self _dequeueMessageViewControllerForKey:itemID];
  if (v6)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v19 = 138412546;
      v20 = itemID;
      v21 = 2112;
      v22 = v6;
      v8 = "#MVCReuseQueue ← [%@: %@]";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v8, &v19, 0x16u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if ([(MFMessageViewControllerReuseQueue *)self generatedMessageViewControllersCount]< 5)
  {
    goto LABEL_9;
  }

  messageViewControllers = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
  v10 = [messageViewControllers count];

  if (!v10)
  {
    goto LABEL_9;
  }

  _dequeueLeastRecentlyUsedMessageViewController = [(MFMessageViewControllerReuseQueue *)self _dequeueLeastRecentlyUsedMessageViewController];
  [(MFMessageViewController *)_dequeueLeastRecentlyUsedMessageViewController prepareForReuse];
  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v19 = 138412546;
    v20 = itemID;
    v21 = 2112;
    v22 = _dequeueLeastRecentlyUsedMessageViewController;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#MVCReuseQueue ⇠ [%@: %@]", &v19, 0x16u);
  }

  if (!_dequeueLeastRecentlyUsedMessageViewController)
  {
LABEL_9:
    v13 = [MFMessageViewController alloc];
    scene = [(MFMessageViewControllerReuseQueue *)self scene];
    v15 = +[UIApplication sharedApplication];
    accountsController = [v15 accountsController];
    v6 = [(MFMessageViewController *)v13 initWithScene:scene accountsController:accountsController];

    [(MFMessageViewControllerReuseQueue *)self setGeneratedMessageViewControllersCount:[(MFMessageViewControllerReuseQueue *)self generatedMessageViewControllersCount]+ 1];
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v19 = 138412546;
      v20 = itemID;
      v21 = 2112;
      v22 = v6;
      v8 = "#MVCReuseQueue + [%@: %@]";
      goto LABEL_11;
    }

LABEL_12:

    _dequeueLeastRecentlyUsedMessageViewController = v6;
  }

  v17 = _dequeueLeastRecentlyUsedMessageViewController;

  return v17;
}

- (void)enqueueMessageViewController:(id)controller
{
  controllerCopy = controller;
  contentRequest = [controllerCopy contentRequest];
  itemID = [contentRequest itemID];

  if (itemID)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = itemID;
      v12 = 2112;
      v13 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#MVCReuseQueue → [%@: %@]", &v10, 0x16u);
    }

    messageViewControllers = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
    [messageViewControllers setObject:controllerCopy forKey:itemID];

    keyOrdering = [(MFMessageViewControllerReuseQueue *)self keyOrdering];
    [keyOrdering insertObject:itemID atIndex:0];
  }

  [(MFMessageViewControllerReuseQueue *)self _evictLeastRecentlyUsedMessageViewControllers];
}

- (void)drain
{
  messageViewControllers = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
  [messageViewControllers removeAllObjects];

  keyOrdering = [(MFMessageViewControllerReuseQueue *)self keyOrdering];
  [keyOrdering removeAllObjects];

  [(MFMessageViewControllerReuseQueue *)self setGeneratedMessageViewControllersCount:0];
}

- (ComposeCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end