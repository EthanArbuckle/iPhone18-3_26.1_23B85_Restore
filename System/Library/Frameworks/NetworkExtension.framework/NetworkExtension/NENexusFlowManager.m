@interface NENexusFlowManager
- (void)dealloc;
@end

@implementation NENexusFlowManager

- (void)dealloc
{
  if (self)
  {
    protocol = self->_protocol;
    if (protocol)
    {
      free(protocol);
      self->_protocol = 0;
    }

    v4 = objc_getProperty(self, a2, 8, 1);
    if (v4)
    {
      v5 = v4;
      v6 = nw_context_copy_implicit_context();
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __29__NENexusFlowManager_dealloc__block_invoke;
      v12 = &unk_1E7F0B0E8;
      v13 = v5;
      v7 = v5;
      nw_queue_context_async_if_needed();
    }
  }

  v8.receiver = self;
  v8.super_class = NENexusFlowManager;
  [(NENexusFlowManager *)&v8 dealloc];
}

@end