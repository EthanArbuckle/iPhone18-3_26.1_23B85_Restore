@interface CADSPBoxEventListener
- (CADSPBoxEventListener)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)processPCMDataCallback;
- (void)setProcessPCMDataCallback:(id)callback;
@end

@implementation CADSPBoxEventListener

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CADSPBoxEventListener allocWithZone:?]];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_eventHandler.__ptr_)
  {
    operator new();
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)setProcessPCMDataCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (callbackCopy)
  {
    operator new();
  }

  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::clear[abi:ne200100](selfCopy->_eventHandlerTree.__ptr_ + 6);
  v10 = 0;
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::write(&v10, v6);
  std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](&v10);
  caulk::concurrent::exchanged_pointer_base<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::extract_retired(&v9, v7);
  std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](&v9);
  cntrl = selfCopy->_eventHandler.__cntrl_;
  selfCopy->_eventHandler.__ptr_ = 0;
  selfCopy->_eventHandler.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  objc_sync_exit(selfCopy);
}

- (id)processPCMDataCallback
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ptr = selfCopy->_eventHandler.__ptr_;
  if (ptr)
  {
    v4 = MEMORY[0x1CCA84FF0](*(ptr + 1));
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (CADSPBoxEventListener)init
{
  v3.receiver = self;
  v3.super_class = CADSPBoxEventListener;
  if ([(CADSPBoxEventListener *)&v3 init])
  {
    operator new();
  }

  return 0;
}

@end