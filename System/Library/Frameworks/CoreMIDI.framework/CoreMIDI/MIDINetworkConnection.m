@interface MIDINetworkConnection
+ (MIDINetworkConnection)connectionWithHost:(MIDINetworkHost *)host;
- (MIDINetworkConnection)init;
- (void)dealloc;
@end

@implementation MIDINetworkConnection

- (void)dealloc
{
  imp = self->_imp;
  if (imp)
  {

    MEMORY[0x2383C8250](imp, 0x80C40B8603338);
  }

  v4.receiver = self;
  v4.super_class = MIDINetworkConnection;
  [(MIDINetworkConnection *)&v4 dealloc];
}

- (MIDINetworkConnection)init
{
  v3.receiver = self;
  v3.super_class = MIDINetworkConnection;
  if ([(MIDINetworkConnection *)&v3 init])
  {
    operator new();
  }

  return 0;
}

+ (MIDINetworkConnection)connectionWithHost:(MIDINetworkHost *)host
{
  v3 = host;
  v4 = objc_alloc_init(MIDINetworkConnection);
  imp = v4->_imp;
  v6 = *imp;
  *imp = v3;

  return v4;
}

@end