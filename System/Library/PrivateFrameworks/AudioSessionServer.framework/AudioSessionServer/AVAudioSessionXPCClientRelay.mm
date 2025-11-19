@interface AVAudioSessionXPCClientRelay
- (AVAudioSessionXPCClientRelay)initWithConnection:(id)a3 token:(ProcessToken)a4;
- (id).cxx_construct;
- (void)sendControlValueChanged:(const void *)a3;
- (void)sendDeferredMessages;
- (void)sendInterruptionMessageForSession:(unsigned int)a3 userInfo:(id)a4;
- (void)sendServerConfigurationChange:(const void *)a3;
- (void)sendServerDefaultRouteChange:(const void *)a3;
- (void)sendSession:(unsigned int)a3 hasProxies:(BOOL)a4;
- (void)sendSessionNeedsStateSync:(unsigned int)a3;
- (void)sendSessionStoppedForAppStateChange:(unsigned int)a3;
- (void)setBarrierBlock;
@end

@implementation AVAudioSessionXPCClientRelay

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 66) = 0;
  return self;
}

- (AVAudioSessionXPCClientRelay)initWithConnection:(id)a3 token:(ProcessToken)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = AVAudioSessionXPCClientRelay;
  v7 = [(AVAudioSessionXPCClientRelay *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->connection, v6);
    v8->token = a4;
    os_unfair_lock_lock(&v8->guarded_impl.mMutex.m_lock);
    v9 = [v6 remoteObjectProxy];
    proxy = v8->guarded_impl.mObject.proxy;
    v8->guarded_impl.mObject.proxy = v9;

    v8->guarded_impl.mObject.mToken = a4;
    os_unfair_lock_unlock(&v8->guarded_impl.mMutex.m_lock);
  }

  return v8;
}

- (void)sendDeferredMessages
{
  os_unfair_lock_lock(&self->guarded_impl.mMutex.m_lock);
  if (!self->guarded_impl.mObject.mMessagePending)
  {
    v3 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v3 process:? delegate:?];
  }

  if (avas::server::DeferredMessageState::SendDeferredMessages(&self->guarded_impl.mObject))
  {
    [(AVAudioSessionXPCClientRelay *)self setBarrierBlock];
  }

  os_unfair_lock_unlock(&self->guarded_impl.mMutex.m_lock);
}

- (void)setBarrierBlock
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->connection);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__AVAudioSessionXPCClientRelay_setBarrierBlock__block_invoke;
  v4[3] = &unk_278CEAD58;
  objc_copyWeak(&v5, &location);
  [WeakRetained scheduleSendBarrierBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__AVAudioSessionXPCClientRelay_setBarrierBlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained sendDeferredMessages];
  }
}

- (void)sendServerDefaultRouteChange:(const void *)a3
{
  os_unfair_lock_lock(&self->guarded_impl.mMutex.m_lock);
  avas::server::DeferredMessageState::EnqueueDefaultRouteChange(&self->guarded_impl.mObject, a3);
  LODWORD(a3) = avas::server::DeferredMessageState::SendSingleMessage(&self->guarded_impl.mObject);
  os_unfair_lock_unlock(&self->guarded_impl.mMutex.m_lock);
  if (a3)
  {

    [(AVAudioSessionXPCClientRelay *)self setBarrierBlock];
  }
}

- (void)sendInterruptionMessageForSession:(unsigned int)a3 userInfo:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->guarded_impl.mMutex.m_lock);
  v7 = avas::server::DeferredMessageState::SendInterruptionMessage(&self->guarded_impl.mObject, a3, v6);

  os_unfair_lock_unlock(&self->guarded_impl.mMutex.m_lock);
  if (v7)
  {

    [(AVAudioSessionXPCClientRelay *)self setBarrierBlock];
  }
}

- (void)sendSessionStoppedForAppStateChange:(unsigned int)a3
{
  os_unfair_lock_lock(&self->guarded_impl.mMutex.m_lock);
  avas::server::DeferredMessageState::EnqueueStoppedForAppStateChange(&self->guarded_impl.mObject, a3);
  v5 = avas::server::DeferredMessageState::SendSingleMessage(&self->guarded_impl.mObject);
  os_unfair_lock_unlock(&self->guarded_impl.mMutex.m_lock);
  if (v5)
  {

    [(AVAudioSessionXPCClientRelay *)self setBarrierBlock];
  }
}

- (void)sendSession:(unsigned int)a3 hasProxies:(BOOL)a4
{
  v4 = a4;
  os_unfair_lock_lock(&self->guarded_impl.mMutex.m_lock);
  avas::server::DeferredMessageState::EnqueueHasProxies(&self->guarded_impl.mObject, a3, v4);
  v7 = avas::server::DeferredMessageState::SendSingleMessage(&self->guarded_impl.mObject);
  os_unfair_lock_unlock(&self->guarded_impl.mMutex.m_lock);
  if (v7)
  {

    [(AVAudioSessionXPCClientRelay *)self setBarrierBlock];
  }
}

- (void)sendSessionNeedsStateSync:(unsigned int)a3
{
  os_unfair_lock_lock(&self->guarded_impl.mMutex.m_lock);
  avas::server::DeferredMessageState::EnqueueNeedsStateSync(&self->guarded_impl.mObject, a3);
  v5 = avas::server::DeferredMessageState::SendSingleMessage(&self->guarded_impl.mObject);
  os_unfair_lock_unlock(&self->guarded_impl.mMutex.m_lock);
  if (v5)
  {

    [(AVAudioSessionXPCClientRelay *)self setBarrierBlock];
  }
}

- (void)sendServerConfigurationChange:(const void *)a3
{
  os_unfair_lock_lock(&self->guarded_impl.mMutex.m_lock);
  avas::server::DeferredMessageState::EnqueueConfigurationChange(&self->guarded_impl.mObject, a3);
  LODWORD(a3) = avas::server::DeferredMessageState::SendSingleMessage(&self->guarded_impl.mObject);
  os_unfair_lock_unlock(&self->guarded_impl.mMutex.m_lock);
  if (a3)
  {

    [(AVAudioSessionXPCClientRelay *)self setBarrierBlock];
  }
}

- (void)sendControlValueChanged:(const void *)a3
{
  os_unfair_lock_lock(&self->guarded_impl.mMutex.m_lock);
  avas::server::DeferredMessageState::EnqueueControlValueChanged(&self->guarded_impl.mObject, a3);
  LODWORD(a3) = avas::server::DeferredMessageState::SendSingleMessage(&self->guarded_impl.mObject);
  os_unfair_lock_unlock(&self->guarded_impl.mMutex.m_lock);
  if (a3)
  {

    [(AVAudioSessionXPCClientRelay *)self setBarrierBlock];
  }
}

@end