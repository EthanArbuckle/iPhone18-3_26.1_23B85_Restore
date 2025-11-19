@interface MFMessageViewControllerReuseQueue
- (ComposeCapable)scene;
- (MFMessageViewControllerReuseQueue)initWithScene:(id)a3;
- (id)_dequeueLeastRecentlyUsedMessageViewController;
- (id)_dequeueMessageViewControllerForKey:(id)a3;
- (id)debugDescription;
- (id)dequeueMessageViewControllerForContentRequest:(id)a3;
- (void)_evictLeastRecentlyUsedMessageViewControllers;
- (void)drain;
- (void)enqueueMessageViewController:(id)a3;
@end

@implementation MFMessageViewControllerReuseQueue

- (MFMessageViewControllerReuseQueue)initWithScene:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MFMessageViewControllerReuseQueue;
  v5 = [(MFMessageViewControllerReuseQueue *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
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
  v4 = [(MFMessageViewControllerReuseQueue *)self generatedMessageViewControllersCount];
  v5 = [(MFMessageViewControllerReuseQueue *)self keyOrdering];
  v6 = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
  v7 = [NSString stringWithFormat:@"<%@:%p (\n\tgenerated:%lu\n\tkeyOrdering: %@\n\tmessageViewControllers:%@)", v3, self, v4, v5, v6];

  return v7;
}

- (id)_dequeueMessageViewControllerForKey:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
    [v7 removeObjectForKey:v4];

    v8 = [(MFMessageViewControllerReuseQueue *)self keyOrdering];
    [v8 removeObject:v4];
  }

  return v6;
}

- (id)_dequeueLeastRecentlyUsedMessageViewController
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(MFMessageViewControllerReuseQueue *)self keyOrdering];
  v4 = [v3 reverseObjectEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = [(MFMessageViewControllerReuseQueue *)self _dequeueMessageViewControllerForKey:*(*(&v10 + 1) + 8 * v7)];
      if (v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    v3 = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
    v4 = [v3 count];

    if (v4 < 6)
    {
      break;
    }

    v5 = [(MFMessageViewControllerReuseQueue *)self _dequeueLeastRecentlyUsedMessageViewController];
  }
}

- (id)dequeueMessageViewControllerForContentRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 itemID];
  v6 = [(MFMessageViewControllerReuseQueue *)self _dequeueMessageViewControllerForKey:v5];
  if (v6)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v19 = 138412546;
      v20 = v5;
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

  v9 = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
  v10 = [v9 count];

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [(MFMessageViewControllerReuseQueue *)self _dequeueLeastRecentlyUsedMessageViewController];
  [(MFMessageViewController *)v11 prepareForReuse];
  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v19 = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#MVCReuseQueue ⇠ [%@: %@]", &v19, 0x16u);
  }

  if (!v11)
  {
LABEL_9:
    v13 = [MFMessageViewController alloc];
    v14 = [(MFMessageViewControllerReuseQueue *)self scene];
    v15 = +[UIApplication sharedApplication];
    v16 = [v15 accountsController];
    v6 = [(MFMessageViewController *)v13 initWithScene:v14 accountsController:v16];

    [(MFMessageViewControllerReuseQueue *)self setGeneratedMessageViewControllersCount:[(MFMessageViewControllerReuseQueue *)self generatedMessageViewControllersCount]+ 1];
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v19 = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      v8 = "#MVCReuseQueue + [%@: %@]";
      goto LABEL_11;
    }

LABEL_12:

    v11 = v6;
  }

  v17 = v11;

  return v17;
}

- (void)enqueueMessageViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 contentRequest];
  v6 = [v5 itemID];

  if (v6)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#MVCReuseQueue → [%@: %@]", &v10, 0x16u);
    }

    v8 = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
    [v8 setObject:v4 forKey:v6];

    v9 = [(MFMessageViewControllerReuseQueue *)self keyOrdering];
    [v9 insertObject:v6 atIndex:0];
  }

  [(MFMessageViewControllerReuseQueue *)self _evictLeastRecentlyUsedMessageViewControllers];
}

- (void)drain
{
  v3 = [(MFMessageViewControllerReuseQueue *)self messageViewControllers];
  [v3 removeAllObjects];

  v4 = [(MFMessageViewControllerReuseQueue *)self keyOrdering];
  [v4 removeAllObjects];

  [(MFMessageViewControllerReuseQueue *)self setGeneratedMessageViewControllersCount:0];
}

- (ComposeCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end