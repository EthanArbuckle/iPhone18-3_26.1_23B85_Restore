@interface CADSPGraphEventListener
- (CADSPGraphEventListener)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)processPCMDataCallback;
- (void)setProcessPCMDataCallback:(id)a3;
@end

@implementation CADSPGraphEventListener

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CADSPGraphEventListener allocWithZone:?]];
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_eventHandler.__ptr_)
  {
    operator new();
  }

  objc_sync_exit(v5);

  return v4;
}

- (void)setProcessPCMDataCallback:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    operator new();
  }

  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::clear[abi:ne200100](v5->_eventHandlerTree.__ptr_ + 6);
  v10 = 0;
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::write(&v10, v6);
  std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](&v10);
  caulk::concurrent::exchanged_pointer_base<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::extract_retired(&v9, v7);
  std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](&v9);
  cntrl = v5->_eventHandler.__cntrl_;
  v5->_eventHandler.__ptr_ = 0;
  v5->_eventHandler.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  objc_sync_exit(v5);
}

- (id)processPCMDataCallback
{
  v2 = self;
  objc_sync_enter(v2);
  ptr = v2->_eventHandler.__ptr_;
  if (ptr)
  {
    v4 = MEMORY[0x1CCA84FF0](*(ptr + 1));
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (CADSPGraphEventListener)init
{
  v3.receiver = self;
  v3.super_class = CADSPGraphEventListener;
  if ([(CADSPGraphEventListener *)&v3 init])
  {
    operator new();
  }

  return 0;
}

@end