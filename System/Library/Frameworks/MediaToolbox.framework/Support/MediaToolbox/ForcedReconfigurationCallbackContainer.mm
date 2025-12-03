@interface ForcedReconfigurationCallbackContainer
- (ForcedReconfigurationCallbackContainer)initWithLabel:(const void *)label;
- (id).cxx_construct;
- (unint64_t)addCallback:(id)callback;
- (void)fireAll;
- (void)removeCallback:(unint64_t)callback;
@end

@implementation ForcedReconfigurationCallbackContainer

- (id).cxx_construct
{
  *(self + 24) = 0uLL;
  *(self + 5) = 0;
  return self;
}

- (void)fireAll
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_callbacks;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [(NSMutableDictionary *)self->_callbacks objectForKey:*(*(&v9 + 1) + 8 * v6), v9];
        v7[2]();

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeCallback:(unint64_t)callback
{
  callbacks = self->_callbacks;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:callback];
  [(NSMutableDictionary *)callbacks removeObjectForKey:?];
}

- (unint64_t)addCallback:(id)callback
{
  v19 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  if (callbackCopy)
  {
    v5 = self->_callbackCounter + 1;
    do
    {
      v6 = v5;
      v5 = 1;
    }

    while (!v6);
    self->_callbackCounter = v6;
    callbacks = self->_callbacks;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
    v9 = [(NSMutableDictionary *)callbacks objectForKey:v8];

    if (v9)
    {
      v10 = STS_N_Log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        p_label = &self->_label;
        if (*(&self->_label.__rep_.__l + 23) < 0)
        {
          p_label = p_label->__rep_.__l.__data_;
        }

        v17 = 136315138;
        v18 = p_label;
        _os_log_error_impl(&dword_23988E000, v10, OS_LOG_TYPE_ERROR, "overwriting ForcedReconfigurationCallback for label %s", &v17, 0xCu);
      }
    }

    v11 = self->_callbacks;
    v12 = MEMORY[0x23EE7A570](callbackCopy);
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
    [(NSMutableDictionary *)v11 setObject:v12 forKey:v13];
  }

  else
  {
    v6 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (ForcedReconfigurationCallbackContainer)initWithLabel:(const void *)label
{
  v9.receiver = self;
  v9.super_class = ForcedReconfigurationCallbackContainer;
  v4 = [(ForcedReconfigurationCallbackContainer *)&v9 init];
  v5 = v4;
  if (v4)
  {
    std::string::operator=(v4 + 1, label);
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    callbacks = v5->_callbacks;
    v5->_callbacks = v6;
  }

  return v5;
}

@end