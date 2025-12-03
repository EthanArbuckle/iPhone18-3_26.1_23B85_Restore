@interface _WKAutomationSession
- (BOOL)isSimulatingUserInteraction;
- (NSString)sessionIdentifier;
- (_WKAutomationSession)init;
- (_WKAutomationSession)initWithConfiguration:(id)configuration;
- (_WKAutomationSessionConfiguration)configuration;
- (id).cxx_construct;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)setSessionIdentifier:(id)identifier;
@end

@implementation _WKAutomationSession

- (_WKAutomationSession)init
{
  v3 = objc_alloc_init(_WKAutomationSessionConfiguration);
  v4 = [(_WKAutomationSession *)self initWithConfiguration:v3];
  if (v3)
  {
  }

  return v4;
}

- (_WKAutomationSession)initWithConfiguration:(id)configuration
{
  v10.receiver = self;
  v10.super_class = _WKAutomationSession;
  v4 = [(_WKAutomationSession *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = API::Object::apiObjectsUnderConstruction(v4);
    _apiObject = [(_WKAutomationSession *)v5 _apiObject];
    v12 = v5;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v6, &_apiObject, &v12, v11);
    WebKit::WebAutomationSession::WebAutomationSession([(_WKAutomationSession *)v5 _apiObject]);
    v7 = [configuration copy];
    m_ptr = v5->_configuration.m_ptr;
    v5->_configuration.m_ptr = v7;
    if (m_ptr)
    {
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v5 = *&self->_anon_38[8];
    *&self->_anon_38[8] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    WebKit::WebAutomationSession::~WebAutomationSession(&self->_session, v4);
    v6.receiver = self;
    v6.super_class = _WKAutomationSession;
    [(_WKAutomationSession *)&v6 dealloc];
  }
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate.m_weakReference, delegate);
  if (delegate)
  {
    if (WebKit::AutomationSessionClient::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::AutomationSessionClient::s_heapRef, v5);
    }

    else
    {
      NonCompact = WebKit::AutomationSessionClient::operatorNewSlow(0x18);
    }

    v7 = NonCompact;
    WebKit::AutomationSessionClient::AutomationSessionClient(NonCompact, delegate);
  }

  else
  {
    v7 = 0;
  }

  v8 = *&self->_anon_38[8];
  *&self->_anon_38[8] = v7;
  if (v8)
  {
    v9 = *(*v8 + 8);

    v9();
  }
}

- (NSString)sessionIdentifier
{
  v2 = *&self->_anon_38[16];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v4 = v9;
    v9 = 0;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
  }

  v6 = v4;
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  if (v2)
  {
LABEL_10:
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  return &v4->isa;
}

- (void)setSessionIdentifier:(id)identifier
{
  MEMORY[0x19EB02040](&v8, identifier);
  v5 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v6 = *&self->_anon_38[16];
  *&self->_anon_38[16] = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = v8;
  v8 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }
  }
}

- (_WKAutomationSessionConfiguration)configuration
{
  v2 = [(_WKAutomationSessionConfiguration *)self->_configuration.m_ptr copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (BOOL)isSimulatingUserInteraction
{
  v2 = *&self->_anon_38[136];
  if (v2 && *(v2 - 12))
  {
    v3 = 1;
  }

  else
  {
    v3 = self->_anon_38[260];
  }

  return v3 & 1;
}

- (id).cxx_construct
{
  *(self + 42) = 0;
  *(self + 43) = 0;
  return self;
}

@end