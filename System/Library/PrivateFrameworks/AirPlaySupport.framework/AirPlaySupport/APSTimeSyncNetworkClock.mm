@interface APSTimeSyncNetworkClock
- (APSTimeSyncNetworkClock)init;
- (int)addIPv6PortAndGetIdentity:(__CFString *)identity destinationAddress:(in6_addr)address clockIdentity:(unint64_t *)clockIdentity localPortNumber:(unsigned __int16 *)number;
- (int)removeIPv6Port:(__CFString *)port destinationAddress:(in6_addr)address;
- (int)setAllPortRemoteSyncMessageIntervals:(id *)intervals;
- (void)dealloc;
@end

@implementation APSTimeSyncNetworkClock

- (int)setAllPortRemoteSyncMessageIntervals:(id *)intervals
{
  [(APSTimeSyncNetworkClock *)self cm8021ASClock];
  v5 = *intervals;
  return CM8021ASClockSetAllPortRemoteSyncMessageIntervals();
}

- (int)removeIPv6Port:(__CFString *)port destinationAddress:(in6_addr)address
{
  v4 = *&address.__u6_addr32[2];
  v5 = *address.__u6_addr8;
  cm8021ASClock = [(APSTimeSyncNetworkClock *)self cm8021ASClock];

  return MEMORY[0x282111A20](cm8021ASClock, port, v5, v4);
}

- (int)addIPv6PortAndGetIdentity:(__CFString *)identity destinationAddress:(in6_addr)address clockIdentity:(unint64_t *)clockIdentity localPortNumber:(unsigned __int16 *)number
{
  v8 = *&address.__u6_addr32[2];
  v9 = *address.__u6_addr8;
  cm8021ASClock = [(APSTimeSyncNetworkClock *)self cm8021ASClock];

  return MEMORY[0x2821119D0](cm8021ASClock, identity, v9, v8, clockIdentity, number);
}

- (void)dealloc
{
  cm8021ASClock = self->_cm8021ASClock;
  if (cm8021ASClock)
  {
    CFRelease(cm8021ASClock);
    self->_cm8021ASClock = 0;
  }

  v4.receiver = self;
  v4.super_class = APSTimeSyncNetworkClock;
  [(APSTimeSyncNetworkClock *)&v4 dealloc];
}

- (APSTimeSyncNetworkClock)init
{
  v5.receiver = self;
  v5.super_class = APSTimeSyncNetworkClock;
  v2 = [(APSTimeSyncNetworkClock *)&v5 init];
  v3 = v2;
  if (v2 && [(APSTimeSyncNetworkClock *)v2 setupClock])
  {

    return 0;
  }

  return v3;
}

@end