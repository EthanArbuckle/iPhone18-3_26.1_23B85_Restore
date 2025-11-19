@interface AVAudioSessionManager
+ (id)defaultManager;
- (AVAudioSessionManager)init;
- (BOOL)trackDaemonPID:(int)a3;
- (id).cxx_construct;
@end

@implementation AVAudioSessionManager

- (AVAudioSessionManager)init
{
  v5.receiver = self;
  v5.super_class = AVAudioSessionManager;
  v2 = [(AVAudioSessionManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    os_unfair_lock_lock(&v2->_state.mMutex.m_lock);
    boost::circular_buffer<int,std::allocator<int>>::set_capacity(&v3->_state.mObject, 0x10uLL);
    os_unfair_lock_unlock(&v3->_state.mMutex.m_lock);
  }

  return v3;
}

+ (id)defaultManager
{
  {
    +[AVAudioSessionManager defaultManager]::gManager = objc_opt_new();
  }

  v2 = +[AVAudioSessionManager defaultManager]::gManager;

  return v2;
}

- (BOOL)trackDaemonPID:(int)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_state.mMutex.m_lock);
  if (self->_state.mObject.mServerPIDs.m_size && (m_buff = self->_state.mObject.mServerPIDs.m_first) != 0)
  {
    while (*m_buff != a3)
    {
      if (++m_buff == self->_state.mObject.mServerPIDs.m_end)
      {
        m_buff = self->_state.mObject.mServerPIDs.m_buff;
      }

      if (!m_buff || m_buff == self->_state.mObject.mServerPIDs.m_last)
      {
        goto LABEL_8;
      }
    }

    v6 = 0;
  }

  else
  {
LABEL_8:
    boost::circular_buffer<int,std::allocator<int>>::push_back_impl<int const&>(&self->_state.mObject.mServerPIDs.m_buff, &v8);
    v6 = 1;
  }

  os_unfair_lock_unlock(&self->_state.mMutex.m_lock);
  return v6;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 6) = 0;
  return self;
}

@end