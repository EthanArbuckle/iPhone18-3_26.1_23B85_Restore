@interface NFExtensionKitWrapper
- (BOOL)isEqual:(id)a3;
- (BOOL)isLaunched;
- (NFExtensionKitWrapper)initWithExtensionIdentity:(id)a3 extensionProcess:(id)a4 xpc:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateXPC;
@end

@implementation NFExtensionKitWrapper

- (NFExtensionKitWrapper)initWithExtensionIdentity:(id)a3 extensionProcess:(id)a4 xpc:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (objc_opt_class() && objc_opt_class() && (v17.receiver = self, v17.super_class = NFExtensionKitWrapper, v12 = [(NFExtensionKitWrapper *)&v17 init], (self = v12) != 0))
  {
    objc_storeStrong(&v12->_xpcConnection, a5);
    objc_storeStrong(&self->_identity, a3);
    objc_storeStrong(&self->_extensionProcess, a4);
    self->_presentUI = 1;
    v13 = [v9 entitlementNamed:@"com.apple.nfcd.background.tag.reading.extension.swipeToDismiss" ofClass:objc_opt_class()];
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

    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NFExtensionKitWrapper;
    if ([(NFExtensionKitWrapper *)&v9 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [(NFExtensionKitWrapper *)self identity];
      v6 = [(NFExtensionKitWrapper *)v4 identity];
      v7 = [v5 isEqual:v6];
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
  v2 = [(NFExtensionKitWrapper *)self identity];
  v3 = [v2 hash];

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
  v4 = [(NFExtensionKitWrapper *)self identity];
  v5 = [v4 bundleIdentifier];
  v6 = v5;
  if (self->_presentUI)
  {
    v7 = "";
  }

  else
  {
    v7 = ", (nonui)";
  }

  v8 = [v3 initWithFormat:@"%@%s", v5, v7];

  return v8;
}

@end