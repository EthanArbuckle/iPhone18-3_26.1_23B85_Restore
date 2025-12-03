@interface CADSPBox
- (CADSPBox)initWithBox:(shared_ptr<AudioDSPGraph:(id)box :Box>)a3 model:;
- (CADSPBox)initWithModel:(id)model error:(id *)error;
- (NSArray)eventListeners;
- (id).cxx_construct;
- (void)addEventListener:(id)listener;
- (void)removeAllEventListeners;
- (void)removeEventListener:(id)listener;
@end

@implementation CADSPBox

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (CADSPBox)initWithBox:(shared_ptr<AudioDSPGraph:(id)box :Box>)a3 model:
{
  ptr = a3.__ptr_;
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3.__cntrl_;
  if (!*ptr)
  {
    v17 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 134217984;
    v19 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v16.receiver = self;
  v16.super_class = CADSPBox;
  v7 = [(CADSPBox *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v9 = *ptr;
    v10 = *(ptr + 1);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v7->_this.__cntrl_;
    v8->_this.__ptr_ = v9;
    v8->_this.__cntrl_ = v10;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      v9 = v8->_this.__ptr_;
    }

    *(v9 + 1) = v8;
    v12 = [(__shared_weak_count *)v6 copy];
    model = v8->_model;
    v8->_model = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (CADSPBox)initWithModel:(id)model error:(id *)error
{
  v7 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  AudioDSPGraph::BoxRegistry::BoxRegistry(v6);
}

- (void)removeAllEventListeners
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = selfCopy->_eventListeners;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        ptr = selfCopy->_this.__ptr_;
        v9 = v7[1];
        v10 = v7[2];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12[0] = v9;
        v12[1] = v10;
        AudioDSPGraph::Box::removeEventHandler(ptr, v12);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)selfCopy->_eventListeners removeAllObjects];
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeEventListener:(id)listener
{
  listenerCopy = listener;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableArray *)selfCopy->_eventListeners containsObject:listenerCopy])
  {
    ptr = selfCopy->_this.__ptr_;
    v6 = listenerCopy[1];
    v7 = listenerCopy[2];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9[0] = v6;
    v9[1] = v7;
    AudioDSPGraph::Box::removeEventHandler(ptr, v9);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    [(NSMutableArray *)selfCopy->_eventListeners removeObject:listenerCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)addEventListener:(id)listener
{
  listenerCopy = listener;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  eventListeners = selfCopy->_eventListeners;
  if (eventListeners)
  {
    if (([(NSMutableArray *)eventListeners containsObject:listenerCopy]& 1) == 0)
    {
      ptr = selfCopy->_this.__ptr_;
      v8 = listenerCopy[1];
      v7 = listenerCopy[2];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      *&v15 = v8;
      *(&v15 + 1) = v7;
      AudioDSPGraph::Box::addEventHandler(ptr, &v15);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }

      [(NSMutableArray *)selfCopy->_eventListeners addObject:listenerCopy];
    }
  }

  else
  {
    v9 = selfCopy->_this.__ptr_;
    v11 = listenerCopy[1];
    v10 = listenerCopy[2];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *&v16 = v11;
    *(&v16 + 1) = v10;
    AudioDSPGraph::Box::addEventHandler(v9, &v16);
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }

    v12 = [MEMORY[0x1E695DF70] arrayWithObject:listenerCopy];
    v13 = selfCopy->_eventListeners;
    selfCopy->_eventListeners = v12;
  }

  objc_sync_exit(selfCopy);
}

- (NSArray)eventListeners
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  eventListeners = selfCopy->_eventListeners;
  if (eventListeners)
  {
    v4 = [(NSMutableArray *)eventListeners copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(selfCopy);

  return v4;
}

@end