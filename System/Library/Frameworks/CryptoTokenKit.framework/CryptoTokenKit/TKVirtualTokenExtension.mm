@interface TKVirtualTokenExtension
+ (BOOL)isAvailable;
+ (id)extensionsWithMatchingAttributes:(id)attributes error:(id *)error;
- (TKVirtualTokenExtension)init;
- (id)_extensionContextForUUID:(id)d;
- (id)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items error:(id *)error;
- (void)cancelExtensionRequestWithIdentifier:(id)identifier;
- (void)removeContext:(id)context;
@end

@implementation TKVirtualTokenExtension

+ (BOOL)isAvailable
{
  if (qword_100043348 != -1)
  {
    sub_10001E7E4();
  }

  return byte_100043340;
}

- (TKVirtualTokenExtension)init
{
  v20.receiver = self;
  v20.super_class = TKVirtualTokenExtension;
  v2 = [(TKVirtualTokenExtension *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableDictionary dictionary];
    contexts = v3->_contexts;
    v3->_contexts = v4;

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    extensionBundle = v3->__extensionBundle;
    v3->__extensionBundle = v6;

    v8 = sub_10000A480();
    localizedName = v3->__localizedName;
    v3->__localizedName = v8;

    v10 = sub_10000A480();
    localizedShortName = v3->__localizedShortName;
    v3->__localizedShortName = v10;

    v12 = sub_100009E14();
    identifier = v3->_identifier;
    v3->_identifier = v12;

    v21 = TKTokenClassDriverClassIDKey;
    v14 = sub_100009E14();
    v22 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    attributes = v3->_attributes;
    v3->_attributes = v15;

    v17 = objc_alloc_init(TKVirtualTokenPlugin);
    plugIn = v3->__plugIn;
    v3->__plugIn = v17;
  }

  return v3;
}

- (void)removeContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  contexts = [(TKVirtualTokenExtension *)self contexts];
  v5 = [contexts objectForKeyedSubscript:contextCopy];

  if (v5)
  {
    connection = [v5 connection];
    [connection invalidate];

    contexts2 = [(TKVirtualTokenExtension *)self contexts];
    [contexts2 setObject:0 forKeyedSubscript:contextCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items error:(id *)error
{
  v6 = objc_alloc_init(TKTokenDriverHostContext);
  v7 = +[NSUUID UUID];
  v8 = [NSXPCConnection alloc];
  v9 = sub_100009FD8();
  v10 = [v8 initWithServiceName:v9];

  v11 = objc_alloc_init(TKVirtualTokenContext);
  [(TKVirtualTokenContext *)v11 setHostContext:v6];
  [(TKVirtualTokenContext *)v11 setConnection:v10];
  [(TKTokenDriverHostContext *)v6 setVirtualTokenDelegate:v11];
  os_unfair_lock_lock(&self->_lock);
  contexts = [(TKVirtualTokenExtension *)self contexts];
  [contexts setObject:v11 forKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_lock);
  v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKTokenDriverHostProtocol];
  [v10 setExportedInterface:v13];

  [v10 setExportedObject:v6];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKTokenDriverProtocol];
  [v10 setRemoteObjectInterface:v14];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000A884;
  v26[3] = &unk_100038760;
  v26[4] = self;
  v15 = v7;
  v27 = v15;
  [v10 setInterruptionHandler:v26];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10000A8F4;
  v23 = &unk_100038760;
  selfCopy = self;
  v16 = v15;
  v25 = v16;
  [v10 setInvalidationHandler:&v20];
  [v10 resume];
  v17 = v25;
  v18 = v16;

  return v16;
}

- (id)_extensionContextForUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  contexts = [(TKVirtualTokenExtension *)self contexts];
  v6 = [contexts objectForKeyedSubscript:dCopy];

  hostContext = [v6 hostContext];

  os_unfair_lock_unlock(&self->_lock);

  return hostContext;
}

- (void)cancelExtensionRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requestCancellationBlock = [(TKVirtualTokenExtension *)self requestCancellationBlock];

  if (requestCancellationBlock)
  {
    requestCancellationBlock2 = [(TKVirtualTokenExtension *)self requestCancellationBlock];
    (requestCancellationBlock2)[2](requestCancellationBlock2, identifierCopy, 0);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TKVirtualTokenExtension *)self removeContext:identifierCopy];
  }
}

+ (id)extensionsWithMatchingAttributes:(id)attributes error:(id *)error
{
  v4 = objc_alloc_init(TKVirtualTokenExtension);
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  return v5;
}

@end