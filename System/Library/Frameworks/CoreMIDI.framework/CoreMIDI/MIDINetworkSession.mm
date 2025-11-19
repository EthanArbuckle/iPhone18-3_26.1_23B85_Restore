@interface MIDINetworkSession
+ (MIDINetworkSession)defaultSession;
- (BOOL)addConnection:(MIDINetworkConnection *)connection;
- (BOOL)addContact:(MIDINetworkHost *)contact;
- (BOOL)addOrRemoveConnection:(id)a3 add:(BOOL)a4;
- (BOOL)isEnabled;
- (BOOL)removeConnection:(MIDINetworkConnection *)connection;
- (BOOL)removeContact:(MIDINetworkHost *)contact;
- (MIDINetworkConnectionPolicy)connectionPolicy;
- (MIDINetworkSession)init;
- (NSSet)connections;
- (NSSet)contacts;
- (NSString)localName;
- (NSString)networkName;
- (NSUInteger)networkPort;
- (void)contactsChanged;
- (void)dealloc;
- (void)refreshBonjourName;
- (void)sessionChanged;
- (void)setConnectionPolicy:(MIDINetworkConnectionPolicy)connectionPolicy;
- (void)setEnabled:(BOOL)enabled;
- (void)setStateToEntity;
- (void)updateFromEntity;
@end

@implementation MIDINetworkSession

- (void)contactsChanged
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"MIDINetworkNotificationContactsDidChange" object:self];
}

- (void)sessionChanged
{
  [(MIDINetworkSession *)self updateFromEntity];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"MIDINetworkNotificationSessionDidChange" object:self];
}

- (BOOL)removeContact:(MIDINetworkHost *)contact
{
  v3 = contact;
  v4 = globals;
  if (globals)
  {
    v5 = (*(*globals + 16))(globals);
    v6 = globals;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = MNSGlobalState::AddOrRemoveContact(v6, v3, 0);
  if (v5)
  {
    (*(*v4 + 24))(v4);
  }

  return v7;
}

- (BOOL)addContact:(MIDINetworkHost *)contact
{
  v3 = contact;
  v4 = globals;
  if (globals)
  {
    v5 = (*(*globals + 16))(globals);
    v6 = globals;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = MNSGlobalState::AddOrRemoveContact(v6, v3, 1);
  if (v5)
  {
    (*(*v4 + 24))(v4);
  }

  return v7;
}

- (NSSet)contacts
{
  v2 = globals;
  if (globals)
  {
    v3 = (*(*globals + 16))(globals, a2);
    v4 = *(globals + 112);
    caulk::mach::os_object<NSObject  {objcproto15OS_os_eventlink}* {__strong}>::get(v4);
    objc_claimAutoreleasedReturnValue();
    if (v3)
    {
      (*(*v2 + 24))(v2);
    }
  }

  else
  {
    v4 = MEMORY[0x70];
    caulk::mach::os_object<NSObject  {objcproto15OS_os_eventlink}* {__strong}>::get(MEMORY[0x70]);
    objc_claimAutoreleasedReturnValue();
  }

  return v4;
}

- (BOOL)removeConnection:(MIDINetworkConnection *)connection
{
  v4 = connection;
  v5 = globals;
  if (globals)
  {
    v9 = globals;
    v6 = (*(*globals + 16))(globals);
  }

  else
  {
    v6 = 0;
    v9 = 0;
  }

  LOBYTE(v10) = v6;
  v7 = [(MIDINetworkSession *)self addOrRemoveConnection:v4 add:0, v9, v10];
  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  return v7;
}

- (BOOL)addConnection:(MIDINetworkConnection *)connection
{
  v4 = connection;
  v5 = globals;
  if (globals)
  {
    v9 = globals;
    v6 = (*(*globals + 16))(globals);
  }

  else
  {
    v6 = 0;
    v9 = 0;
  }

  LOBYTE(v10) = v6;
  v7 = [(MIDINetworkSession *)self addOrRemoveConnection:v4 add:1, v9, v10];
  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  return v7;
}

- (BOOL)addOrRemoveConnection:(id)a3 add:(BOOL)a4
{
  v5 = ContactOrConnectionSet::AddOrRemoveItem(self->_imp + 4, a3, a4);
  if (v5)
  {
    [*(self->_imp + 3) setObject:v5 forKey:@"peers"];
    [(MIDINetworkSession *)self setStateToEntity];
  }

  return v5 != 0;
}

- (NSSet)connections
{
  v3 = globals;
  if (globals)
  {
    v4 = (*(*globals + 16))(globals, a2);
    v5 = *(self->_imp + 5);
    if (v4)
    {
      (*(*v3 + 24))(v3);
    }
  }

  else
  {
    v5 = *(self->_imp + 5);
  }

  return v5;
}

- (void)setConnectionPolicy:(MIDINetworkConnectionPolicy)connectionPolicy
{
  v5 = globals;
  if (globals)
  {
    v9 = globals;
    v6 = (*(*globals + 16))(globals, a2);
  }

  else
  {
    v6 = 0;
    v9 = 0;
  }

  LOBYTE(v10) = v6;
  v7 = *(self->_imp + 3);
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{connectionPolicy, v9, v10}];
  [v7 setObject:v8 forKey:@"join-policy"];

  [(MIDINetworkSession *)self setStateToEntity];
  if (v6)
  {
    (*(*v5 + 24))(v5);
  }
}

- (MIDINetworkConnectionPolicy)connectionPolicy
{
  v3 = globals;
  if (globals)
  {
    v8 = globals;
    v4 = (*(*globals + 16))(globals, a2);
  }

  else
  {
    v4 = 0;
    v8 = 0;
  }

  LOBYTE(v9) = v4;
  v5 = [*(self->_imp + 3) objectForKey:{@"join-policy", v8, v9}];
  v6 = [v5 intValue];

  if (v4)
  {
    (*(*v3 + 24))(v3);
  }

  return v6;
}

- (NSString)localName
{
  v3 = globals;
  if (globals)
  {
    v4 = (*(*globals + 16))(globals, a2);
    v5 = *(self->_imp + 2);
    if (v4)
    {
      (*(*v3 + 24))(v3);
    }
  }

  else
  {
    v5 = *(self->_imp + 2);
  }

  return v5;
}

- (NSString)networkName
{
  v3 = globals;
  if (globals)
  {
    v7 = globals;
    v4 = (*(*globals + 16))(globals, a2);
  }

  else
  {
    v4 = 0;
    v7 = 0;
  }

  LOBYTE(v8) = v4;
  v5 = [*(self->_imp + 3) objectForKey:{@"dns-sd-name", v7, v8}];
  if (v4)
  {
    (*(*v3 + 24))(v3);
  }

  return v5;
}

- (NSUInteger)networkPort
{
  v3 = globals;
  if (globals)
  {
    v8 = globals;
    v4 = (*(*globals + 16))(globals, a2);
  }

  else
  {
    v4 = 0;
    v8 = 0;
  }

  LOBYTE(v9) = v4;
  v5 = [*(self->_imp + 3) objectForKey:{@"port", v8, v9}];
  v6 = [v5 unsignedIntValue];

  if (v4)
  {
    (*(*v3 + 24))(v3);
  }

  return v6;
}

- (void)setEnabled:(BOOL)enabled
{
  v3 = enabled;
  v5 = globals;
  if (globals)
  {
    v12 = globals;
    v6 = (*(*globals + 16))(globals, a2);
  }

  else
  {
    v6 = 0;
    v12 = 0;
  }

  LOBYTE(v13) = v6;
  v7 = [*(self->_imp + 3) objectForKey:{@"flags", v12, v13}];
  v8 = [v7 unsignedIntValue];

  v9 = v8 & 0xFFFFFFFE;
  v10 = *(self->_imp + 3);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9 | v3];
  [v10 setObject:v11 forKey:@"flags"];

  [(MIDINetworkSession *)self setStateToEntity];
  if (v3)
  {
    [(MIDINetworkSession *)self refreshBonjourName];
  }

  if (v6)
  {
    (*(*v5 + 24))(v5);
  }
}

- (BOOL)isEnabled
{
  v3 = globals;
  if (globals)
  {
    v8 = globals;
    v4 = (*(*globals + 16))(globals, a2);
  }

  else
  {
    v4 = 0;
    v8 = 0;
  }

  LOBYTE(v9) = v4;
  v5 = [*(self->_imp + 3) objectForKey:{@"flags", v8, v9}];
  v6 = [v5 unsignedIntValue];

  if (v4)
  {
    (*(*v3 + 24))(v3);
  }

  return v6 & 1;
}

- (void)dealloc
{
  imp = self->_imp;
  if (imp)
  {

    MEMORY[0x2383C8250](imp, 0x1080C4029CCB1DCLL);
  }

  v4.receiver = self;
  v4.super_class = MIDINetworkSession;
  [(MIDINetworkSession *)&v4 dealloc];
}

- (MIDINetworkSession)init
{
  v4.receiver = self;
  v4.super_class = MIDINetworkSession;
  if ([(MIDINetworkSession *)&v4 init])
  {
    operator new();
  }

  v2 = 0;

  return v2;
}

- (void)refreshBonjourName
{
  v5 = [(MIDINetworkSession *)self networkName];
  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"Unknown";
  }

  if (!v5 || ([v5 isEqualToString:&stru_284A49B90] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", v4) & 1) == 0)
  {
    [*(self->_imp + 3) setObject:v4 forKey:@"dns-sd-name"];
    [(MIDINetworkSession *)self setStateToEntity];
  }
}

- (void)setStateToEntity
{
  imp = self->_imp;
  v4 = *(imp + 2);
  if (v4)
  {
    MIDIObjectSetStringProperty(*imp, kMIDIPropertyName, v4);
    imp = self->_imp;
  }

  MIDIObjectSetDictionaryProperty(*imp, @"apple.midirtp.session", *(imp + 3));
  v5 = ![(MIDINetworkSession *)self isEnabled];
  v6 = *self->_imp;

  MIDIObjectSetIntegerProperty(v6, kMIDIPropertyOffline, v5);
}

- (void)updateFromEntity
{
  str = 0;
  if (!MIDIObjectGetStringProperty(*self->_imp, kMIDIPropertyName, &str))
  {
    objc_storeStrong(self->_imp + 2, str);
  }

  cf = 0;
  if (!MIDIObjectGetDictionaryProperty(*self->_imp, @"apple.midirtp.session", &cf))
  {
    v3 = [cf mutableCopy];
    imp = self->_imp;
    v5 = imp[3];
    imp[3] = v3;

    CFRelease(cf);
    v6 = self->_imp;
    v7 = [v6[3] objectForKey:@"peers"];
    ContactOrConnectionSet::UpdateFromDriver(v6 + 4, v7);
  }
}

+ (MIDINetworkSession)defaultSession
{
  if (atomic_load_explicit(&+[MIDINetworkSession defaultSession]::once, memory_order_acquire) != -1)
  {
    v10 = &v12;
    v13 = &v10;
    std::__call_once(&+[MIDINetworkSession defaultSession]::once, &v13, std::__call_once_proxy[abi:ne200100]<std::tuple<+[MIDINetworkSession defaultSession]::$_0 &&>>);
  }

  v2 = globals;
  if (!globals)
  {
    v5 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_12;
  }

  v10 = globals;
  v3 = (*(*globals + 16))(globals);
  v4 = v3;
  v5 = globals;
  v11 = v3;
  if (!globals)
  {
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = *(globals + 96);
  if (!v6)
  {
    v7 = objc_alloc_init(MIDINetworkSession);
    v8 = v5[12];
    v5[12] = v7;

    v6 = v5[12];
  }

  v5 = v6;
  if (v4)
  {
LABEL_11:
    (*(*v2 + 24))(v2);
  }

LABEL_12:

  return v5;
}

@end