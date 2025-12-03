@interface NFExtensionKitWrapper
- (BOOL)isEqual:(id)equal;
- (BOOL)isLaunched;
- (NFExtensionKitWrapper)initWithExtensionIdentity:(id)identity extensionProcess:(id)process xpc:(id)xpc;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateXPC;
@end

@implementation NFExtensionKitWrapper

- (NFExtensionKitWrapper)initWithExtensionIdentity:(id)identity extensionProcess:(id)process xpc:(id)xpc
{
  identityCopy = identity;
  processCopy = process;
  xpcCopy = xpc;
  if (objc_opt_class() && objc_opt_class() && (v17.receiver = self, v17.super_class = NFExtensionKitWrapper, v12 = [(NFExtensionKitWrapper *)&v17 init], (self = v12) != 0))
  {
    objc_storeStrong(&v12->_xpcConnection, xpc);
    objc_storeStrong(&self->_identity, identity);
    objc_storeStrong(&self->_extensionProcess, process);
    self->_presentUI = 1;
    v13 = [identityCopy entitlementNamed:@"com.apple.nfcd.background.tag.reading.extension.swipeToDismiss" ofClass:objc_opt_class()];
    v14 = v13;
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        LOBYTE(v13) = [v14 BOOLValue];
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    self->_swipeToDismiss = v13;
    self = self;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NFExtensionKitWrapper;
    if ([(NFExtensionKitWrapper *)&v9 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      identity = [(NFExtensionKitWrapper *)self identity];
      identity2 = [(NFExtensionKitWrapper *)equalCopy identity];
      v7 = [identity isEqual:identity2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  identity = [(NFExtensionKitWrapper *)self identity];
  v3 = [identity hash];

  return v3;
}

- (BOOL)isLaunched
{
  extensionProcess = self->_extensionProcess;
  if (extensionProcess)
  {
    LOBYTE(extensionProcess) = [(_EXExtensionProcess *)extensionProcess isValid];
  }

  return extensionProcess;
}

- (void)invalidate
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  [(_EXExtensionProcess *)self->_extensionProcess invalidate];
  extensionProcess = self->_extensionProcess;
  self->_extensionProcess = 0;
}

- (void)invalidateXPC
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

- (void)dealloc
{
  [(NFExtensionKitWrapper *)self invalidate];
  v3.receiver = self;
  v3.super_class = NFExtensionKitWrapper;
  [(NFExtensionKitWrapper *)&v3 dealloc];
}

- (id)description
{
  v3 = [NSString alloc];
  identity = [(NFExtensionKitWrapper *)self identity];
  bundleIdentifier = [identity bundleIdentifier];
  v6 = bundleIdentifier;
  if (self->_presentUI)
  {
    v7 = "";
  }

  else
  {
    v7 = ", (nonui)";
  }

  v8 = [v3 initWithFormat:@"%@%s", bundleIdentifier, v7];

  return v8;
}

@end