@interface ANAnnouncementStatePublisher
- (ANAnnouncementStatePublisher)init;
- (BOOL)_setName:(id)name;
- (BOOL)_setState:(unint64_t)state withToken:(int)token;
- (void)_publishState:(unint64_t)state name:(id)name;
- (void)_register;
- (void)_unregister;
- (void)dealloc;
- (void)invalidate;
- (void)publishState:(unint64_t)state name:(id)name;
@end

@implementation ANAnnouncementStatePublisher

- (void)dealloc
{
  [(ANAnnouncementStatePublisher *)self _unregister];
  name = self->_name;
  if (name)
  {
    free(name);
    self->_name = 0;
  }

  v4.receiver = self;
  v4.super_class = ANAnnouncementStatePublisher;
  [(ANAnnouncementStatePublisher *)&v4 dealloc];
}

- (ANAnnouncementStatePublisher)init
{
  v6.receiver = self;
  v6.super_class = ANAnnouncementStatePublisher;
  v2 = [(ANAnnouncementStatePublisher *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.announce.statePublisherQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)publishState:(unint64_t)state name:(id)name
{
  nameCopy = name;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__ANAnnouncementStatePublisher_publishState_name___block_invoke;
  v9[3] = &unk_278C876C0;
  objc_copyWeak(v11, &location);
  v11[1] = state;
  v10 = nameCopy;
  v8 = nameCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __50__ANAnnouncementStatePublisher_publishState_name___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _publishState:*(a1 + 48) name:*(a1 + 32)];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ANAnnouncementStatePublisher_invalidate__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_publishState:(unint64_t)state name:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dispatch_assert_queue_V2(self->_queue);
  if ([(ANAnnouncementStatePublisher *)self _setName:nameCopy])
  {
    [(ANAnnouncementStatePublisher *)self _register];
    if (self->_registrationToken != -1 && [(ANAnnouncementStatePublisher *)self _setState:state withToken:?])
    {
      notify_post(self->_name);
      v7 = ANLogHandleAnnouncementStatePublisher();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412802;
        v11 = &stru_2851BDB18;
        v12 = 2048;
        stateCopy = state;
        v14 = 2112;
        v15 = nameCopy;
        _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Publish state: %lu for name: %@", &v10, 0x20u);
      }
    }

    [(ANAnnouncementStatePublisher *)self _unregister];
  }

  else
  {
    v8 = ANLogHandleAnnouncementStatePublisher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      v11 = &stru_2851BDB18;
      v12 = 2112;
      stateCopy = nameCopy;
      _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_ERROR, "%@Error while setting name: %@.", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setName:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  [(ANAnnouncementStatePublisher *)self _unregister];
  name = self->_name;
  if (name)
  {
    free(name);
    self->_name = 0;
  }

  v6 = [nameCopy maximumLengthOfBytesUsingEncoding:4];
  v7 = malloc_type_malloc(v6 + 1, 0x57D6DC50uLL);
  self->_name = v7;
  v8 = [nameCopy getCString:v7 maxLength:v6 + 1 encoding:4];
  if ((v8 & 1) == 0)
  {
    v9 = ANLogHandleAnnouncementStatePublisher();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = &stru_2851BDB18;
      v14 = 2112;
      v15 = nameCopy;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_ERROR, "%@Unable to get C string of name from %@.", &v12, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_setState:(unint64_t)state withToken:(int)token
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = notify_set_state(token, state);
  if (v7)
  {
    v8 = ANLogHandleAnnouncementStatePublisher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      name = self->_name;
      v13 = 138413314;
      v14 = &stru_2851BDB18;
      v15 = 2048;
      stateCopy = state;
      v17 = 2080;
      v18 = name;
      v19 = 1024;
      tokenCopy = token;
      v21 = 1024;
      v22 = v7;
      _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_ERROR, "%@Failed to set state to %lu of %s with token %d (status = %u).", &v13, 0x2Cu);
    }

    v10 = +[ANAnalytics shared];
    [v10 error:5014];
  }

  result = v7 == 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_register
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_registrationToken == -1)
  {
    out_token = -1;
    v3 = notify_register_check(self->_name, &out_token);
    if (v3)
    {
      v4 = v3;
      v5 = ANLogHandleAnnouncementStatePublisher();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        name = self->_name;
        *buf = 138412802;
        v12 = &stru_2851BDB18;
        v13 = 2080;
        v14 = name;
        v15 = 1024;
        v16 = v4;
        _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_ERROR, "%@Failed to get registration token of %s (status = %u).", buf, 0x1Cu);
      }

      v7 = +[ANAnalytics shared];
      [v7 error:5015];
    }

    else
    {
      self->_registrationToken = out_token;
      v7 = ANLogHandleAnnouncementStatePublisher();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_name;
        *buf = 138412802;
        v12 = &stru_2851BDB18;
        v13 = 2080;
        v14 = v8;
        v15 = 1024;
        v16 = out_token;
        _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Registration token of %s is %d.", buf, 0x1Cu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_unregister
{
  v11 = *MEMORY[0x277D85DE8];
  registrationToken = self->_registrationToken;
  if (registrationToken != -1)
  {
    notify_cancel(registrationToken);
    self->_registrationToken = -1;
    v4 = ANLogHandleAnnouncementStatePublisher();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v7 = 138412546;
      v8 = &stru_2851BDB18;
      v9 = 2080;
      v10 = name;
      _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@Registration token of %s is invalidated.", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end