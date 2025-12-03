@interface _WKMockUserNotificationCenter
- (_WKMockUserNotificationCenter)initWithBundleIdentifier:(id)identifier;
- (id).cxx_construct;
- (id)_internalInitWithBundleIdentifier:(id)identifier;
- (id)notificationSettings;
- (void)addNotificationRequest:(id)request withCompletionHandler:(id)handler;
- (void)getDeliveredNotificationsWithCompletionHandler:(id)handler;
- (void)getNotificationSettingsWithCompletionHandler:(id)handler;
- (void)removePendingNotificationRequestsWithIdentifiers:(id)identifiers;
- (void)requestAuthorizationWithOptions:(unint64_t)options completionHandler:(id)handler;
@end

@implementation _WKMockUserNotificationCenter

- (id)_internalInitWithBundleIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = _WKMockUserNotificationCenter;
  v4 = [(_WKMockUserNotificationCenter *)&v11 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4->m_queue = dispatch_queue_create(0, v5);
    if (identifier)
    {
      identifierCopy = identifier;
    }

    m_ptr = v4->m_bundleIdentifier.m_ptr;
    v4->m_bundleIdentifier.m_ptr = identifier;
    if (m_ptr)
    {
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = v4->m_notifications.m_ptr;
    v4->m_notifications.m_ptr = v8;
    if (v9)
    {
    }
  }

  return v4;
}

- (_WKMockUserNotificationCenter)initWithBundleIdentifier:(id)identifier
{
  if (_MergedGlobals_37 == 1)
  {
    v4 = qword_1ED641718;
  }

  else
  {
    v4 = objc_opt_new();
    qword_1ED641718 = v4;
    _MergedGlobals_37 = 1;
  }

  if (![v4 objectForKeyedSubscript:identifier])
  {
    v5 = [[_WKMockUserNotificationCenter alloc] _internalInitWithBundleIdentifier:identifier];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    [qword_1ED641718 setObject:v6 forKeyedSubscript:identifier];
  }

  v8 = [qword_1ED641718 objectForKeyedSubscript:identifier];

  return v8;
}

- (void)addNotificationRequest:(id)request withCompletionHandler:(id)handler
{
  -[NSMutableArray addObject:](self->m_notifications.m_ptr, "addObject:", [MEMORY[0x1E6983240] notificationWithRequest:request date:{objc_msgSend(MEMORY[0x1E695DF00], "now")}]);
  if (![objc_msgSend(request "content")])
  {
    WTF::RetainPtr<NSNumber>::operator=(&self->m_appBadge.m_ptr, [objc_msgSend(request "content")]);
  }

  m_queue = self->m_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___WKMockUserNotificationCenter_addNotificationRequest_withCompletionHandler___block_invoke;
  block[3] = &unk_1E762FC60;
  block[4] = handler;
  dispatch_async(m_queue, block);
}

- (void)getDeliveredNotificationsWithCompletionHandler:(id)handler
{
  v5 = [(NSMutableArray *)self->m_notifications.m_ptr copy];
  v6 = v5;
  m_queue = self->m_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = __80___WKMockUserNotificationCenter_getDeliveredNotificationsWithCompletionHandler___block_invoke;
  v10[3] = &unk_1F10E5F50;
  v10[4] = handler;
  v11 = v5;
  if (v5)
  {
    v8 = v5;
  }

  dispatch_async(m_queue, v10);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
  }

  if (v6)
  {
  }
}

- (void)removePendingNotificationRequestsWithIdentifiers:(id)identifiers
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  m_ptr = self->m_notifications.m_ptr;
  v7 = [(NSMutableArray *)m_ptr countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(m_ptr);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([identifiers containsObject:{objc_msgSend(objc_msgSend(v10, "request"), "identifier")}])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [(NSMutableArray *)m_ptr countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->m_notifications.m_ptr removeObjectsInArray:v5];
  if (v5)
  {
  }
}

- (void)getNotificationSettingsWithCompletionHandler:(id)handler
{
  m_hasPermission = self->m_hasPermission;
  m_queue = self->m_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78___WKMockUserNotificationCenter_getNotificationSettingsWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E762FC88;
  v6 = m_hasPermission;
  v5[4] = handler;
  dispatch_async(m_queue, v5);
}

- (void)requestAuthorizationWithOptions:(unint64_t)options completionHandler:(id)handler
{
  self->m_hasPermission = 1;
  m_queue = self->m_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83___WKMockUserNotificationCenter_requestAuthorizationWithOptions_completionHandler___block_invoke;
  block[3] = &unk_1E762FC60;
  block[4] = handler;
  dispatch_async(m_queue, block);
}

- (id)notificationSettings
{
  emptySettings = [MEMORY[0x1E6983230] emptySettings];
  v4 = emptySettings;
  if (emptySettings)
  {
    v5 = emptySettings;
  }

  if (self->m_hasPermission)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [v4 setAuthorizationStatus:v6];
  if (v4)
  {
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end