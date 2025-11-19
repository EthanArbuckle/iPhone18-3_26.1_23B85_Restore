@interface AVAudioIONodeSessionRemoteServer
- (AVAudioIONodeSessionRemoteServer)init;
- (id).cxx_construct;
@end

@implementation AVAudioIONodeSessionRemoteServer

- (AVAudioIONodeSessionRemoteServer)init
{
  v3.receiver = self;
  v3.super_class = AVAudioIONodeSessionRemoteServer;
  if ([(AVAudioIONodeSessionRemoteServer *)&v3 init])
  {
    _ZNSt3__115allocate_sharedB8ne200100INS_15recursive_mutexENS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end