@interface APSTimeSyncNetworkClock
- (APSTimeSyncNetworkClock)init;
- (int)addIPv6PortAndGetIdentity:(__CFString *)a3 destinationAddress:(in6_addr)a4 clockIdentity:(unint64_t *)a5 localPortNumber:(unsigned __int16 *)a6;
- (int)removeIPv6Port:(__CFString *)a3 destinationAddress:(in6_addr)a4;
- (int)setAllPortRemoteSyncMessageIntervals:(id *)a3;
- (void)dealloc;
@end

@implementation APSTimeSyncNetworkClock

- (int)setAllPortRemoteSyncMessageIntervals:(id *)a3
{
  [(APSTimeSyncNetworkClock *)self cm8021ASClock];
  v5 = *a3;
  return CM8021ASClockSetAllPortRemoteSyncMessageIntervals();
}

- (int)removeIPv6Port:(__CFString *)a3 destinationAddress:(in6_addr)a4
{
  v4 = *&a4.__u6_addr32[2];
  v5 = *a4.__u6_addr8;
  v7 = [(APSTimeSyncNetworkClock *)self cm8021ASClock];

  return MEMORY[0x282111A20](v7, a3, v5, v4);
}

- (int)addIPv6PortAndGetIdentity:(__CFString *)a3 destinationAddress:(in6_addr)a4 clockIdentity:(unint64_t *)a5 localPortNumber:(unsigned __int16 *)a6
{
  v8 = *&a4.__u6_addr32[2];
  v9 = *a4.__u6_addr8;
  v11 = [(APSTimeSyncNetworkClock *)self cm8021ASClock];

  return MEMORY[0x2821119D0](v11, a3, v9, v8, a5, a6);
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