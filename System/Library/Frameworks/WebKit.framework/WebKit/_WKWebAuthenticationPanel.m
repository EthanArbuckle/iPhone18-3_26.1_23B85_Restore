@interface _WKWebAuthenticationPanel
+ (PublicKeyCredentialCreationOptions)convertToCoreCreationOptionsWithOptions:(SEL)a3;
+ (PublicKeyCredentialRequestOptions)convertToCoreRequestOptionsWithOptions:(SEL)a3;
+ (id)encodeGetAssertionCommandWithClientDataHash:(id)a3 options:(id)a4 userVerificationAvailability:(int64_t)a5 authenticatorSupportedExtensions:(id)a6;
+ (id)encodeGetAssertionCommandWithClientDataJSON:(id)a3 options:(id)a4 userVerificationAvailability:(int64_t)a5 authenticatorSupportedExtensions:(id)a6;
+ (id)encodeMakeCredentialCommandWithClientDataHash:(id)a3 options:(id)a4 userVerificationAvailability:(int64_t)a5 authenticatorSupportedCredentialParameters:(id)a6;
+ (id)encodeMakeCredentialCommandWithClientDataHash:(id)a3 options:(id)a4 userVerificationAvailability:(int64_t)a5 authenticatorSupportedExtensions:(id)a6;
+ (id)encodeMakeCredentialCommandWithClientDataJSON:(id)a3 options:(id)a4 userVerificationAvailability:(int64_t)a5 authenticatorSupportedExtensions:(id)a6;
+ (id)exportLocalAuthenticatorCredentialWithGroupAndID:(id)a3 credential:(id)a4 error:(id *)a5;
+ (id)getAllLocalAuthenticatorCredentials;
+ (id)getAllLocalAuthenticatorCredentialsWithAccessGroup:(id)a3;
+ (id)getAllLocalAuthenticatorCredentialsWithCredentialID:(id)a3;
+ (id)getAllLocalAuthenticatorCredentialsWithCredentialIDAndAccessGroup:(id)a3 credentialID:(id)a4;
+ (id)getAllLocalAuthenticatorCredentialsWithRPID:(id)a3;
+ (id)getAllLocalAuthenticatorCredentialsWithRPIDAndAccessGroup:(id)a3 rpID:(id)a4;
+ (id)getClientDataJSONForAuthenticationType:(int64_t)a3 challenge:(id)a4 origin:(id)a5;
+ (id)getClientDataJSONWithTopOrigin:(int64_t)a3 challenge:(id)a4 origin:(id)a5 topOrigin:(id)a6 crossOrigin:(BOOL)a7;
+ (id)importLocalAuthenticatorWithAccessGroup:(id)a3 credential:(id)a4 error:(id *)a5;
+ (void)deleteLocalAuthenticatorCredentialWithGroupAndID:(id)a3 credential:(id)a4;
+ (void)setDisplayNameForLocalCredentialWithGroupAndID:(id)a3 credential:(id)a4 displayName:(id)a5;
+ (void)setNameForLocalCredentialWithGroupAndID:(id)a3 credential:(id)a4 name:(id)a5;
- (NSSet)transports;
- (NSString)relyingPartyID;
- (NSString)userName;
- (Ref<API::WebAuthenticationPanel,)_protectedPanel;
- (_WKWebAuthenticationPanel)init;
- (_WKWebAuthenticationPanelDelegate)delegate;
- (id).cxx_construct;
- (uint64_t)getAssertionWithChallenge:(uint64_t)a1 origin:options:completionHandler:;
- (uint64_t)getAssertionWithMediationRequirement:(const void *)a1 clientDataHash:options:completionHandler:;
- (uint64_t)getAssertionWithMediationRequirement:(uint64_t)a1 clientDataHash:options:completionHandler:;
- (uint64_t)makeCredentialWithChallenge:(uint64_t)a1 origin:options:completionHandler:;
- (uint64_t)makeCredentialWithMediationRequirement:(const void *)a1 clientDataHash:options:completionHandler:;
- (uint64_t)makeCredentialWithMediationRequirement:(uint64_t)a1 clientDataHash:options:completionHandler:;
- (void)cancel;
- (void)dealloc;
- (void)getAssertionWithChallenge:(id)a3 origin:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)getAssertionWithChallenge:(mpark *)a1 origin:(unsigned __int8 *)a2 options:completionHandler:;
- (void)getAssertionWithMediationRequirement:(int64_t)a3 clientDataHash:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)getAssertionWithMediationRequirement:(mpark *)a1 clientDataHash:(unsigned __int8 *)a2 options:completionHandler:;
- (void)makeCredentialWithChallenge:(id)a3 origin:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)makeCredentialWithChallenge:(mpark *)a1 origin:(unsigned __int8 *)a2 options:completionHandler:;
- (void)makeCredentialWithMediationRequirement:(int64_t)a3 clientDataHash:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)makeCredentialWithMediationRequirement:(mpark *)a1 clientDataHash:(unsigned __int8 *)a2 options:completionHandler:;
- (void)setDelegate:(id)a3;
- (void)setMockConfiguration:(id)a3;
@end

@implementation _WKWebAuthenticationPanel

- (_WKWebAuthenticationPanel)init
{
  v7.receiver = self;
  v7.super_class = _WKWebAuthenticationPanel;
  v2 = [(_WKWebAuthenticationPanel *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = API::Object::apiObjectsUnderConstruction(v2);
    v5 = [(_WKWebAuthenticationPanel *)v3 _apiObject];
    v9 = v3;
    v10 = v5;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v10, &v9, v8);
    API::WebAuthenticationPanel::WebAuthenticationPanel([(_WKWebAuthenticationPanel *)v3 _apiObject]);
  }

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    if (self)
    {
      [(_WKWebAuthenticationPanel *)self _protectedPanel];
      v5 = v8;
    }

    else
    {
      v5 = 0;
      v8 = 0;
    }

    API::WebAuthenticationPanel::~WebAuthenticationPanel(v5, v4);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      CFRelease(*(v6 + 1));
    }

    v7.receiver = self;
    v7.super_class = _WKWebAuthenticationPanel;
    [(_WKWebAuthenticationPanel *)&v7 dealloc];
  }
}

- (Ref<API::WebAuthenticationPanel,)_protectedPanel
{
  v3 = v2;
  p_panel = &self->_panel;
  v5 = CFRetain(*&self->_panel.m_storage.data[8]);
  *v3 = p_panel;
  return v5;
}

- (_WKWebAuthenticationPanelDelegate)delegate
{
  m_ptr = self->_client.m_impl.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v3 = *(m_ptr + 1);
  if (!v3)
  {
    return 0;
  }

  ++*(v3 + 8);
  WeakRetained = objc_loadWeakRetained((v3 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  if (*(v3 + 8) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  else
  {
    --*(v3 + 8);
  }

  return v5;
}

- (void)setDelegate:(id)a3
{
  WebKit::WebAuthenticationPanelClient::create(self, a3, &v12);
  v5 = v12;
  if (v12)
  {
    v6 = *(v12 + 16);
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = WTF::fastCompactMalloc(0x10);
    *v6 = 1;
    *(v6 + 8) = v5;
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;
    if (!v7)
    {
      goto LABEL_7;
    }

    if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7);
      WTF::fastFree(v7, v4);
    }

    v6 = *(v5 + 16);
    if (v6)
    {
LABEL_7:
      atomic_fetch_add(v6, 1u);
    }
  }

  else
  {
    v6 = 0;
  }

  m_ptr = self->_client.m_impl.m_ptr;
  self->_client.m_impl.m_ptr = v6;
  if (m_ptr)
  {
    if (atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v4);
    }
  }

  [(_WKWebAuthenticationPanel *)self _protectedPanel];
  v9 = v11;
  v10 = *(v11 + 32);
  *(v11 + 32) = v12;
  if (!v10)
  {
    goto LABEL_15;
  }

  if (v10[2] != 1)
  {
    --v10[2];
LABEL_15:
    CFRelease(*(v9 + 8));
    return;
  }

  (*(*v10 + 8))(v10);
  v9 = v11;
  if (v11)
  {
    goto LABEL_15;
  }
}

- (NSString)relyingPartyID
{
  v2 = *self->_anon_38;
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

- (NSSet)transports
{
  result = &self->_transports.m_ptr->super;
  if (!result)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:*&self->_anon_38[20]];
    m_ptr = self->_transports.m_ptr;
    self->_transports.m_ptr = v4;
    if (m_ptr)
    {
    }

    v6 = *&self->_anon_38[20];
    if (v6)
    {
      v7 = *&self->_anon_38[8];
      do
      {
        v8 = self->_transports.m_ptr;
        v9 = objc_alloc(MEMORY[0x1E696AD98]);
        if (*v7 - 1 < 6)
        {
          v10 = (*v7 - 1) + 1;
        }

        else
        {
          v10 = 0;
        }

        v11 = [v9 initWithInt:v10];
        [(NSMutableSet *)v8 addObject:v11];
        if (v11)
        {
        }

        ++v7;
        --v6;
      }

      while (v6);
    }

    return &self->_transports.m_ptr->super;
  }

  return result;
}

- (NSString)userName
{
  v2 = *&self->_anon_38[32];
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

+ (id)getAllLocalAuthenticatorCredentials
{
  getAllLocalAuthenticatorCredentialsImpl(&v5, &cfstr_ComAppleWebkit_19.isa, 0, 0);
  v2 = v5;
  if (v5)
  {
    v3 = v5;
  }

  return v2;
}

+ (id)getAllLocalAuthenticatorCredentialsWithAccessGroup:(id)a3
{
  getAllLocalAuthenticatorCredentialsImpl(&v6, a3, 0, 0);
  v3 = v6;
  if (v6)
  {
    v4 = v6;
  }

  return v3;
}

+ (id)getAllLocalAuthenticatorCredentialsWithRPID:(id)a3
{
  getAllLocalAuthenticatorCredentialsImpl(&v6, &cfstr_ComAppleWebkit_19.isa, a3, 0);
  v3 = v6;
  if (v6)
  {
    v4 = v6;
  }

  return v3;
}

+ (id)getAllLocalAuthenticatorCredentialsWithCredentialID:(id)a3
{
  getAllLocalAuthenticatorCredentialsImpl(&v6, &cfstr_ComAppleWebkit_19.isa, 0, a3);
  v3 = v6;
  if (v6)
  {
    v4 = v6;
  }

  return v3;
}

+ (id)getAllLocalAuthenticatorCredentialsWithRPIDAndAccessGroup:(id)a3 rpID:(id)a4
{
  getAllLocalAuthenticatorCredentialsImpl(&v7, a3, a4, 0);
  v4 = v7;
  if (v7)
  {
    v5 = v7;
  }

  return v4;
}

+ (id)getAllLocalAuthenticatorCredentialsWithCredentialIDAndAccessGroup:(id)a3 credentialID:(id)a4
{
  getAllLocalAuthenticatorCredentialsImpl(&v7, a3, 0, a4);
  v4 = v7;
  if (v7)
  {
    v5 = v7;
  }

  return v4;
}

+ (void)deleteLocalAuthenticatorCredentialWithGroupAndID:(id)a3 credential:(id)a4
{
  v14[3] = *MEMORY[0x1E69E9840];
  shouldUseAlternateKeychainAttribute = WebKit::shouldUseAlternateKeychainAttribute(a1);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = *MEMORY[0x1E697B020];
  v9 = *MEMORY[0x1E697B390];
  v13[0] = *MEMORY[0x1E697AFF8];
  v13[1] = v9;
  v14[0] = v8;
  v14[1] = MEMORY[0x1E695E118];
  v13[2] = *MEMORY[0x1E697AEB0];
  v14[2] = *MEMORY[0x1E697AEB8];
  [v7 setDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, v13, 3)}];
  if (a3)
  {
    [v7 setObject:a3 forKey:*MEMORY[0x1E697AE90]];
  }

  v10 = *MEMORY[0x1E697AC38];
  v11 = *MEMORY[0x1E697AC40];
  if (shouldUseAlternateKeychainAttribute)
  {
    v12 = *MEMORY[0x1E697AC38];
  }

  else
  {
    v12 = *MEMORY[0x1E697AC40];
  }

  [v7 setObject:a4 forKey:v12];
  SecItemDelete(v7);
  if (shouldUseAlternateKeychainAttribute)
  {
    [v7 removeObjectForKey:v10];
    [v7 setObject:a4 forKey:v11];
    SecItemDelete(v7);
  }

  if (v7)
  {
  }
}

+ (void)setDisplayNameForLocalCredentialWithGroupAndID:(id)a3 credential:(id)a4 displayName:(id)a5
{
  v68[5] = *MEMORY[0x1E69E9840];
  shouldUseAlternateKeychainAttribute = WebKit::shouldUseAlternateKeychainAttribute(a1);
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = *MEMORY[0x1E697AFF8];
  v11 = *MEMORY[0x1E697B020];
  v12 = *MEMORY[0x1E697B310];
  v67[0] = *MEMORY[0x1E697AFF8];
  v67[1] = v12;
  v68[0] = v11;
  v68[1] = MEMORY[0x1E695E118];
  v13 = *MEMORY[0x1E695E4D0];
  v14 = *MEMORY[0x1E697AEB0];
  v67[2] = *MEMORY[0x1E697B320];
  v67[3] = v14;
  v50 = v14;
  v15 = *MEMORY[0x1E697AEB8];
  v68[2] = v13;
  v68[3] = v15;
  v49 = v15;
  v67[4] = *MEMORY[0x1E697B390];
  v68[4] = MEMORY[0x1E695E118];
  [v9 setDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v68, v67, 5)}];
  if (a3)
  {
    [v9 setObject:a3 forKey:*MEMORY[0x1E697AE90]];
  }

  v16 = *MEMORY[0x1E697AC38];
  v17 = *MEMORY[0x1E697AC40];
  if (shouldUseAlternateKeychainAttribute)
  {
    v18 = *MEMORY[0x1E697AC38];
  }

  else
  {
    v18 = *MEMORY[0x1E697AC40];
  }

  [v9 setObject:a4 forKey:v18];
  result = 0;
  v19 = SecItemCopyMatching(v9, &result);
  if (v19 == -25300)
  {
    v20 = shouldUseAlternateKeychainAttribute;
  }

  else
  {
    v20 = 0;
  }

  if (v20 == 1)
  {
    [v9 removeObjectForKey:v16];
    [v9 setObject:a4 forKey:v17];
    v19 = SecItemCopyMatching(v9, &result);
  }

  if (v19 && v19 != -25300)
  {
    goto LABEL_28;
  }

  v21 = result;
  v22 = *MEMORY[0x1E697AC48];
  v23 = [result objectForKeyedSubscript:*MEMORY[0x1E697AC48]];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 bytes];
    v26 = [v24 length];
    v27 = v26;
    if (v26)
    {
      if (HIDWORD(v26))
      {
        __break(0xC471u);
        return;
      }

      v28 = WTF::fastMalloc(v26);
      v24 = v28;
      v29 = 0;
      do
      {
        *(v28 + v29) = *(v25 + v29);
        ++v29;
      }

      while (v27 != v29);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v56[0] = v24;
  v56[1] = v27;
  cbor::CBORReader::read();
  if (v24)
  {
    WTF::fastFree(v24, v30);
  }

  v31 = v60 == 1 && v59[0] == 5;
  if (v31)
  {
    Map = cbor::CBORValue::getMap(v59);
    v48 = v10;
    v47 = v11;
    v58[0] = 0;
    v58[1] = 0;
    v57 = v58;
    v33 = Map + 1;
    v34 = *Map;
    if (*Map == Map + 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = 0;
      do
      {
        if (*(v34 + 8) == 3 && (String = cbor::CBORValue::getString((v34 + 4)), MEMORY[0x19EB01EF0](*String, "displayName", 11)))
        {
          if (a5)
          {
            MEMORY[0x19EB02040](&v55, a5);
            cbor::CBORValue::CBORValue();
            cbor::CBORValue::clone(&v51, (v34 + 4));
            v62 = &v51;
            std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v57, &v51);
            cbor::CBORValue::operator=();
            cbor::CBORValue::~CBORValue(&v51);
            cbor::CBORValue::~CBORValue(v56);
            v38 = v55;
            v55 = 0;
            if (v38)
            {
              if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v37);
              }
            }
          }

          v35 = 1;
        }

        else
        {
          cbor::CBORValue::clone(v56, (v34 + 8));
          cbor::CBORValue::clone(&v51, (v34 + 4));
          v62 = &v51;
          std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v57, &v51);
          cbor::CBORValue::operator=();
          cbor::CBORValue::~CBORValue(&v51);
          cbor::CBORValue::~CBORValue(v56);
        }

        v39 = v34[1];
        if (v39)
        {
          do
          {
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          do
          {
            v40 = v34[2];
            v31 = *v40 == v34;
            v34 = v40;
          }

          while (!v31);
        }

        v34 = v40;
      }

      while (v40 != v33);
    }

    if (a5)
    {
      if ((v35 & 1) == 0)
      {
        MEMORY[0x19EB02040](&v55, a5);
        cbor::CBORValue::CBORValue();
        cbor::CBORValue::CBORValue();
        v62 = &v51;
        std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v57, &v51);
        cbor::CBORValue::operator=();
        cbor::CBORValue::~CBORValue(&v51);
        cbor::CBORValue::~CBORValue(v56);
        v42 = v55;
        v55 = 0;
        if (v42)
        {
          if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v41);
          }
        }
      }
    }

    cbor::CBORValue::CBORValue();
    cbor::CBORWriter::write();
    cbor::CBORValue::~CBORValue(v56);
    if ((v54 & 1) == 0)
    {
      __break(1u);
    }

    v43 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v51 length:v53];
    v65 = v22;
    v66 = v43;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v63[0] = *MEMORY[0x1E697B3C8];
    v64[0] = [v21 objectForKey:?];
    v64[1] = v47;
    v63[1] = v48;
    v63[2] = v50;
    v64[2] = v49;
    [v9 setDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v64, v63, 3)}];
    if (a3)
    {
      [v9 setObject:a3 forKey:*MEMORY[0x1E697AE90]];
    }

    SecItemUpdate(v9, v44);
    if (v43)
    {
    }

    if (v54 == 1)
    {
      v46 = v51;
      if (v51)
      {
        v51 = 0;
        v52 = 0;
        WTF::fastFree(v46, v45);
      }
    }

    std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(&v57, v58[0]);
    if ((v60 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (!v60)
  {
    goto LABEL_26;
  }

  cbor::CBORValue::~CBORValue(v59);
LABEL_26:
  if (v21)
  {
  }

LABEL_28:
  if (v9)
  {
  }
}

+ (void)setNameForLocalCredentialWithGroupAndID:(id)a3 credential:(id)a4 name:(id)a5
{
  v68[5] = *MEMORY[0x1E69E9840];
  shouldUseAlternateKeychainAttribute = WebKit::shouldUseAlternateKeychainAttribute(a1);
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = *MEMORY[0x1E697AFF8];
  v11 = *MEMORY[0x1E697B020];
  v12 = *MEMORY[0x1E697B310];
  v67[0] = *MEMORY[0x1E697AFF8];
  v67[1] = v12;
  v68[0] = v11;
  v68[1] = MEMORY[0x1E695E118];
  v13 = *MEMORY[0x1E695E4D0];
  v14 = *MEMORY[0x1E697AEB0];
  v67[2] = *MEMORY[0x1E697B320];
  v67[3] = v14;
  v50 = v14;
  v15 = *MEMORY[0x1E697AEB8];
  v68[2] = v13;
  v68[3] = v15;
  v49 = v15;
  v67[4] = *MEMORY[0x1E697B390];
  v68[4] = MEMORY[0x1E695E118];
  [v9 setDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v68, v67, 5)}];
  if (a3)
  {
    [v9 setObject:a3 forKey:*MEMORY[0x1E697AE90]];
  }

  v16 = *MEMORY[0x1E697AC38];
  v17 = *MEMORY[0x1E697AC40];
  if (shouldUseAlternateKeychainAttribute)
  {
    v18 = *MEMORY[0x1E697AC38];
  }

  else
  {
    v18 = *MEMORY[0x1E697AC40];
  }

  [v9 setObject:a4 forKey:v18];
  result = 0;
  v19 = SecItemCopyMatching(v9, &result);
  if (v19 == -25300)
  {
    v20 = shouldUseAlternateKeychainAttribute;
  }

  else
  {
    v20 = 0;
  }

  if (v20 == 1)
  {
    [v9 removeObjectForKey:v16];
    [v9 setObject:a4 forKey:v17];
    v19 = SecItemCopyMatching(v9, &result);
  }

  if (v19 && v19 != -25300)
  {
    goto LABEL_28;
  }

  v21 = result;
  v22 = *MEMORY[0x1E697AC48];
  v23 = [result objectForKeyedSubscript:*MEMORY[0x1E697AC48]];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 bytes];
    v26 = [v24 length];
    v27 = v26;
    if (v26)
    {
      if (HIDWORD(v26))
      {
        __break(0xC471u);
        return;
      }

      v28 = WTF::fastMalloc(v26);
      v24 = v28;
      v29 = 0;
      do
      {
        *(v28 + v29) = *(v25 + v29);
        ++v29;
      }

      while (v27 != v29);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v56[0] = v24;
  v56[1] = v27;
  cbor::CBORReader::read();
  if (v24)
  {
    WTF::fastFree(v24, v30);
  }

  v31 = v60 == 1 && v59[0] == 5;
  if (v31)
  {
    Map = cbor::CBORValue::getMap(v59);
    v48 = v10;
    v47 = v11;
    v58[0] = 0;
    v58[1] = 0;
    v57 = v58;
    v33 = Map + 1;
    v34 = *Map;
    if (*Map == Map + 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = 0;
      do
      {
        if (*(v34 + 8) == 3 && (String = cbor::CBORValue::getString((v34 + 4)), MEMORY[0x19EB01EF0](*String, "name", 4)))
        {
          if (a5)
          {
            MEMORY[0x19EB02040](&v55, a5);
            cbor::CBORValue::CBORValue();
            cbor::CBORValue::clone(&v51, (v34 + 4));
            v62 = &v51;
            std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v57, &v51);
            cbor::CBORValue::operator=();
            cbor::CBORValue::~CBORValue(&v51);
            cbor::CBORValue::~CBORValue(v56);
            v38 = v55;
            v55 = 0;
            if (v38)
            {
              if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v37);
              }
            }
          }

          v35 = 1;
        }

        else
        {
          cbor::CBORValue::clone(v56, (v34 + 8));
          cbor::CBORValue::clone(&v51, (v34 + 4));
          v62 = &v51;
          std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v57, &v51);
          cbor::CBORValue::operator=();
          cbor::CBORValue::~CBORValue(&v51);
          cbor::CBORValue::~CBORValue(v56);
        }

        v39 = v34[1];
        if (v39)
        {
          do
          {
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          do
          {
            v40 = v34[2];
            v31 = *v40 == v34;
            v34 = v40;
          }

          while (!v31);
        }

        v34 = v40;
      }

      while (v40 != v33);
    }

    if (a5)
    {
      if ((v35 & 1) == 0)
      {
        MEMORY[0x19EB02040](&v55, a5);
        cbor::CBORValue::CBORValue();
        cbor::CBORValue::CBORValue();
        v62 = &v51;
        std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v57, &v51);
        cbor::CBORValue::operator=();
        cbor::CBORValue::~CBORValue(&v51);
        cbor::CBORValue::~CBORValue(v56);
        v42 = v55;
        v55 = 0;
        if (v42)
        {
          if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v41);
          }
        }
      }
    }

    cbor::CBORValue::CBORValue();
    cbor::CBORWriter::write();
    cbor::CBORValue::~CBORValue(v56);
    if ((v54 & 1) == 0)
    {
      __break(1u);
    }

    v43 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v51 length:v53];
    v65 = v22;
    v66 = v43;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v63[0] = *MEMORY[0x1E697B3C8];
    v64[0] = [v21 objectForKey:?];
    v64[1] = v47;
    v63[1] = v48;
    v63[2] = v50;
    v64[2] = v49;
    [v9 setDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v64, v63, 3)}];
    if (a3)
    {
      [v9 setObject:a3 forKey:*MEMORY[0x1E697AE90]];
    }

    SecItemUpdate(v9, v44);
    if (v43)
    {
    }

    if (v54 == 1)
    {
      v46 = v51;
      if (v51)
      {
        v51 = 0;
        v52 = 0;
        WTF::fastFree(v46, v45);
      }
    }

    std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(&v57, v58[0]);
    if ((v60 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (!v60)
  {
    goto LABEL_26;
  }

  cbor::CBORValue::~CBORValue(v59);
LABEL_26:
  if (v21)
  {
  }

LABEL_28:
  if (v9)
  {
  }
}

+ (id)importLocalAuthenticatorWithAccessGroup:(id)a3 credential:(id)a4 error:(id *)a5
{
  v6 = a4;
  v98[3] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = [a4 bytes];
    result = [v6 length];
    v10 = result;
    if (result)
    {
      if (result >> 32)
      {
        __break(0xC471u);
        goto LABEL_132;
      }

      v11 = WTF::fastMalloc(result);
      v6 = v11;
      v12 = 0;
      do
      {
        v12[v11] = v12[v8];
        ++v12;
      }

      while (v10 != v12);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v93 = v6;
  v94 = v10;
  cbor::CBORReader::read();
  if (v6)
  {
    WTF::fastFree(v6, v13);
  }

  if (v96 == 1 && v95[0] == 5)
  {
    Map = cbor::CBORValue::getMap(v95);
    cbor::CBORValue::CBORValue(&v93, "priv");
    v17 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, &v93);
    cbor::CBORValue::~CBORValue(&v93);
    v18 = Map + 8;
    if (Map + 8 == v17 || (v20 = *(v17 + 64), v19 = (v17 + 64), v20 != 2))
    {
      if (a5)
      {
        v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:16 userInfo:0];
        goto LABEL_35;
      }

LABEL_36:
      v49 = 0;
      goto LABEL_47;
    }

    ByteString = cbor::CBORValue::getByteString(v19);
    v22 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*ByteString length:*(ByteString + 12)];
    cbor::CBORValue::CBORValue(&v93, "key_type");
    v23 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, &v93);
    cbor::CBORValue::~CBORValue(&v93);
    if (v18 == v23 || (v25 = *(v23 + 64), v24 = (v23 + 64), v25 >= 2))
    {
      if (!a5)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v26 = *cbor::CBORValue::getInteger(v24);
      cbor::CBORValue::CBORValue(&v93, "key_size");
      v27 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, &v93);
      cbor::CBORValue::~CBORValue(&v93);
      if (v18 != v27)
      {
        v29 = *(v27 + 64);
        v28 = (v27 + 64);
        if (v29 < 2)
        {
          v30 = *cbor::CBORValue::getInteger(v28);
          cbor::CBORValue::CBORValue(&v93, "rp");
          v31 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, &v93);
          cbor::CBORValue::~CBORValue(&v93);
          if (v18 != v31)
          {
            v33 = *(v31 + 64);
            v32 = (v31 + 64);
            if (v33 == 3)
            {
              v34 = *cbor::CBORValue::getString(v32);
              if (v34)
              {
                atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
              }

              cbor::CBORValue::CBORValue(&v93, "tag");
              v35 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, &v93);
              cbor::CBORValue::~CBORValue(&v93);
              if (v18 == v35 || (v38 = *(v35 + 64), v37 = (v35 + 64), v38 != 5))
              {
                v49 = 0;
                if (a5)
                {
                  *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:16 userInfo:0];
                }

                goto LABEL_124;
              }

              v39 = cbor::CBORValue::getMap(v37);
              MEMORY[0x19EB024C0](&v93, v39);
              cbor::CBORWriter::write();
              cbor::CBORValue::~CBORValue(&v93);
              v97[0] = *MEMORY[0x1E697AD68];
              v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%i", v26];
              v41 = *MEMORY[0x1E697AD30];
              v42 = *MEMORY[0x1E697AD38];
              v98[0] = v40;
              v98[1] = v42;
              v84 = v42;
              v85 = v41;
              v43 = *MEMORY[0x1E697AD50];
              v97[1] = v41;
              v97[2] = v43;
              v98[2] = [MEMORY[0x1E696AD98] numberWithLongLong:v30];
              v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:3];
              v45 = v44;
              if (v44)
              {
                v46 = v44;
              }

              if (v40)
              {
              }

              error = 0;
              v47 = SecKeyCreateWithData(v22, v45, &error);
              v48 = v47;
              if (error)
              {
                v49 = 0;
                if (a5)
                {
                  *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:16 userInfo:0];
                }

LABEL_119:
                if (v48)
                {
                  CFRelease(v48);
                }

                if (v45)
                {
                }

                if (v92 == 1)
                {
                  v77 = v89;
                  if (v89)
                  {
                    v89 = 0;
                    v90 = 0;
                    WTF::fastFree(v77, v36);
                  }
                }

LABEL_124:
                if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v34, v36);
                }

                goto LABEL_45;
              }

              v50 = SecKeyCopyPublicKey(v47);
              v83 = SecKeyCopyExternalRepresentation(v50, &error);
              if (error)
              {
                v49 = 0;
                if (a5)
                {
                  *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:16 userInfo:0];
                }

                v53 = v83;
LABEL_115:
                if (v53)
                {
                }

                if (v50)
                {
                  CFRelease(v50);
                }

                goto LABEL_119;
              }

              v80 = v50;
              PAL::CryptoDigest::create();
              if (v83)
              {
                [(__CFData *)v83 bytes];
                [(__CFData *)v83 length];
              }

              PAL::CryptoDigest::addBytes();
              PAL::CryptoDigest::computeHash(&v93, v87);
              v49 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v93 length:HIDWORD(v94)];
              shouldUseAlternateKeychainAttribute = WebKit::shouldUseAlternateKeychainAttribute(v49);
              v51 = objc_alloc(MEMORY[0x1E695DF90]);
              if (v34)
              {
                atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
                MEMORY[0x19EB00B70](&v86, v34);
                if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v34, v52);
                }
              }

              else
              {
                v86 = &stru_1F1147748;
                v54 = &stru_1F1147748;
              }

              v55 = *MEMORY[0x1E697ADC8];
              v79 = *MEMORY[0x1E697B390];
              v56 = [v51 initWithObjectsAndKeys:{*MEMORY[0x1E697B020], *MEMORY[0x1E697AFF8], v86, *MEMORY[0x1E697ADC8], MEMORY[0x1E695E118], *MEMORY[0x1E697B390], 0}];
              query = v56;
              v78 = v55;
              v57 = v86;
              v86 = 0;
              if (v57)
              {
              }

              v58 = WebKit::getASCWebKitSPISupportClass[0](v56);
              if (v58 && [WebKit::getASCWebKitSPISupportClass[0](v58) shouldUseAlternateCredentialStore])
              {
                [(__CFDictionary *)query setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E697AEB0]];
              }

              v59 = *MEMORY[0x1E697AC38];
              v60 = *MEMORY[0x1E697AC40];
              if (shouldUseAlternateKeychainAttribute)
              {
                v61 = *MEMORY[0x1E697AC38];
              }

              else
              {
                v61 = *MEMORY[0x1E697AC40];
              }

              [(__CFDictionary *)query setObject:v49 forKey:v61];
              if (a3)
              {
                [(__CFDictionary *)query setObject:a3 forKey:*MEMORY[0x1E697ABD0]];
              }

              result = SecItemCopyMatching(query, 0);
              if (result == -25300)
              {
                v62 = shouldUseAlternateKeychainAttribute;
              }

              else
              {
                v62 = 0;
              }

              if (v62 == 1)
              {
                [(__CFDictionary *)query removeObjectForKey:v59];
                [(__CFDictionary *)query setObject:v49 forKey:v60];
                result = SecItemCopyMatching(query, 0);
              }

              if (!result)
              {
                if (a5)
                {
                  *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:15 userInfo:0];
                }

                v66 = v49;
                v49 = 0;
                goto LABEL_107;
              }

              if (v92)
              {
                v63 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v89 length:v91];
                v64 = objc_alloc(MEMORY[0x1E695DF90]);
                if (v34)
                {
                  atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
                  MEMORY[0x19EB00B70](&v86, v34);
                  if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v34, v65);
                  }
                }

                else
                {
                  v86 = &stru_1F1147748;
                  v67 = &stru_1F1147748;
                }

                v68 = [v64 initWithObjectsAndKeys:{v48, *MEMORY[0x1E697B3D0], v84, v85, v86, v78, v63, *MEMORY[0x1E697AC48], MEMORY[0x1E695E118], v79, *MEMORY[0x1E697ABE0], *MEMORY[0x1E697ABD8], 0}];
                v69 = v68;
                v70 = v86;
                v86 = 0;
                if (v70)
                {
                }

                v71 = WebKit::getASCWebKitSPISupportClass[0](v68);
                if (v71 && [WebKit::getASCWebKitSPISupportClass[0](v71) shouldUseAlternateCredentialStore])
                {
                  [(WebKit *)v69 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E697AEB0]];
                }

                if (a3)
                {
                  [(WebKit *)v69 setObject:a3 forKey:*MEMORY[0x1E697ABD0]];
                }

                if (SecItemAdd(v69, 0))
                {
                  if (a5)
                  {
                    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:1 userInfo:0];
                  }

                  v66 = v49;
                  v49 = 0;
                }

                else
                {
                  if (v49)
                  {
                    v72 = v49;
                  }

                  v66 = 0;
                }

                if (v69)
                {
                }

                if (v63)
                {
                }

LABEL_107:
                v50 = v80;
                if (query)
                {
                }

                if (v66)
                {
                }

                v73 = v93;
                if (v93)
                {
                  v93 = 0;
                  LODWORD(v94) = 0;
                  WTF::fastFree(v73, v36);
                }

                v74 = v87;
                v87 = 0;
                v53 = v83;
                if (v74)
                {
                  PAL::CryptoDigest::~CryptoDigest(v74);
                  bmalloc::api::tzoneFree(v75, v76);
                }

                goto LABEL_115;
              }

LABEL_132:
              __break(1u);
              return result;
            }
          }

          if (a5)
          {
            goto LABEL_43;
          }

LABEL_44:
          v49 = 0;
LABEL_45:
          if (v22)
          {
          }

          goto LABEL_47;
        }
      }

      if (!a5)
      {
        goto LABEL_44;
      }
    }

LABEL_43:
    v49 = 0;
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:16 userInfo:0];
    goto LABEL_45;
  }

  if (!a5)
  {
    goto LABEL_36;
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:16 userInfo:0];
LABEL_35:
  v49 = 0;
  *a5 = v15;
LABEL_47:
  if (v96 == 1)
  {
    cbor::CBORValue::~CBORValue(v95);
  }

  return v49;
}

+ (id)exportLocalAuthenticatorCredentialWithGroupAndID:(id)a3 credential:(id)a4 error:(id *)a5
{
  shouldUseAlternateKeychainAttribute = WebKit::shouldUseAlternateKeychainAttribute(a1);
  v9 = objc_alloc(MEMORY[0x1E695DF90]);
  v10 = *MEMORY[0x1E697B328];
  v11 = [v9 initWithObjectsAndKeys:{*MEMORY[0x1E697B020], *MEMORY[0x1E697AFF8], MEMORY[0x1E695E118], *MEMORY[0x1E697B328], MEMORY[0x1E695E118], *MEMORY[0x1E697B390], *MEMORY[0x1E697AEB8], *MEMORY[0x1E697AEB0], 0}];
  v12 = v11;
  if (a3)
  {
    [v11 setObject:a3 forKey:*MEMORY[0x1E697AE90]];
  }

  v13 = *MEMORY[0x1E697AC38];
  v14 = *MEMORY[0x1E697AC40];
  if (shouldUseAlternateKeychainAttribute)
  {
    v15 = *MEMORY[0x1E697AC38];
  }

  else
  {
    v15 = *MEMORY[0x1E697AC40];
  }

  [v12 setObject:a4 forKey:v15];
  result = 0;
  v16 = SecItemCopyMatching(v12, &result);
  if (v16 == -25300)
  {
    v17 = shouldUseAlternateKeychainAttribute;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    [v12 removeObjectForKey:v13];
    [v12 setObject:a4 forKey:v14];
    v16 = SecItemCopyMatching(v12, &result);
  }

  if (v16 != -25300 && v16)
  {
    v21 = 0;
    if (a5)
    {
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:17 userInfo:0];
    }

    goto LABEL_68;
  }

  v18 = result;
  error = 0;
  v19 = SecKeyCopyExternalRepresentation(result, &error);
  v20 = error;
  if (!error)
  {
    [v12 removeObjectForKey:v10];
    [v12 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E697B310]];
    v53 = 0;
    v22 = SecItemCopyMatching(v12, &v53);
    if (v22 != -25300 && v22)
    {
      if (a5)
      {
        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:17 userInfo:0];
      }

      goto LABEL_17;
    }

    v23 = v53;
    v51 = 0;
    valuePtr = 0;
    if (CFNumberGetValue([v53 objectForKeyedSubscript:*MEMORY[0x1E697AD68]], kCFNumberSInt64Type, &valuePtr))
    {
      if (CFNumberGetValue([v23 objectForKeyedSubscript:*MEMORY[0x1E697AD50]], kCFNumberSInt64Type, &v51))
      {
        v50[0] = 0;
        v50[1] = 0;
        v49 = v50;
        if (v19)
        {
          [(__CFData *)v19 bytes];
          [(__CFData *)v19 length];
        }

        JSC::ArrayBuffer::tryCreate();
        v24 = v56;
        v56 = 0;
        LOBYTE(v48) = 1;
        v47 = 0;
        v43.var0.var0.var0.var1.var0.var0 = v24;
        v43.var0.var0.var1 = 1;
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v47);
        v25 = v56;
        v56 = 0;
        if (v25)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v25);
        }

        cbor::CBORValue::CBORValue(v45, &v43);
        cbor::CBORValue::CBORValue(&v47, "priv");
        v56 = &v47;
        std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v49, &v47);
        cbor::CBORValue::operator=();
        cbor::CBORValue::~CBORValue(&v47);
        cbor::CBORValue::~CBORValue(v45);
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v43);
        cbor::CBORValue::CBORValue(v45);
        cbor::CBORValue::CBORValue(&v47, "key_type");
        v43.var0.var0.var0.var1.var0.var0 = &v47;
        std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v49, &v47);
        cbor::CBORValue::operator=();
        cbor::CBORValue::~CBORValue(&v47);
        cbor::CBORValue::~CBORValue(v45);
        cbor::CBORValue::CBORValue(v45);
        cbor::CBORValue::CBORValue(&v47, "key_size");
        v43.var0.var0.var0.var1.var0.var0 = &v47;
        std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v49, &v47);
        cbor::CBORValue::operator=();
        cbor::CBORValue::~CBORValue(&v47);
        cbor::CBORValue::~CBORValue(v45);
        v26 = WTF::dynamic_objc_cast<NSString>([v23 objectForKeyedSubscript:*MEMORY[0x1E697ADC8]]);
        MEMORY[0x19EB02040](&v56, v26);
        cbor::CBORValue::CBORValue();
        cbor::CBORValue::CBORValue(&v47, "rp");
        v43.var0.var0.var0.var1.var0.var0 = &v47;
        std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v49, &v47);
        cbor::CBORValue::operator=();
        cbor::CBORValue::~CBORValue(&v47);
        cbor::CBORValue::~CBORValue(v45);
        v28 = v56;
        v56 = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v27);
        }

        v29 = [v23 objectForKeyedSubscript:*MEMORY[0x1E697AC48]];
        v30 = v29;
        if (!v29)
        {
          v33 = 0;
          goto LABEL_36;
        }

        v31 = [v29 bytes];
        v32 = [v30 length];
        v33 = v32;
        if (!v32)
        {
          goto LABEL_74;
        }

        if (v32 >> 32)
        {
          __break(0xC471u);
          return v32;
        }

        v34 = WTF::fastMalloc(v32);
        v30 = v34;
        v35 = 0;
        do
        {
          v35[v34] = v35[v31];
          ++v35;
        }

        while (v33 != v35);
        while (1)
        {
LABEL_36:
          v47 = v30;
          v48 = v33;
          cbor::CBORReader::read();
          if (v30)
          {
            WTF::fastFree(v30, v36);
          }

          if (v46 != 1 || v45[0] != 5)
          {
            v21 = 0;
            if (a5)
            {
              *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:16 userInfo:0];
            }

            goto LABEL_59;
          }

          cbor::CBORValue::CBORValue();
          a5 = &v43;
          cbor::CBORValue::CBORValue(&v43, "tag");
          v56 = &v43;
          std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v49, &v43);
          cbor::CBORValue::operator=();
          cbor::CBORValue::~CBORValue(&v43);
          cbor::CBORValue::~CBORValue(&v47);
          cbor::CBORValue::CBORValue();
          cbor::CBORWriter::write();
          cbor::CBORValue::~CBORValue(&v47);
          if (v44)
          {
            break;
          }

          std::__throw_bad_optional_access[abi:sn200100]();
LABEL_74:
          v30 = 0;
        }

        v39 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v43.var0.var0.var0.var1.var0.var0 length:*(&v43.var0.var0.var1 + 1)];
        v21 = v39;
        if (v39)
        {
          v41 = v39;
        }

        if (v44 == 1)
        {
          var0 = v43.var0.var0.var0.var1.var0.var0;
          if (v43.var0.var0.var0.var1.var0.var0)
          {
            v43.var0.var0.var0.var1.var0.var0 = 0;
            *&v43.var0.var0.var1 = 0;
            WTF::fastFree(var0, v40);
          }
        }

LABEL_59:
        if (v46 == 1)
        {
          cbor::CBORValue::~CBORValue(v45);
        }

        std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(&v49, v50[0]);
        goto LABEL_62;
      }

      if (a5)
      {
        v38 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:16 userInfo:0];
        goto LABEL_51;
      }
    }

    else if (a5)
    {
      v38 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:16 userInfo:0];
LABEL_51:
      v21 = 0;
      *a5 = v38;
      goto LABEL_62;
    }

    v21 = 0;
LABEL_62:
    if (v23)
    {
    }

    goto LABEL_64;
  }

  if (a5)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:17 userInfo:0];
  }

  CFRelease(v20);
LABEL_17:
  v21 = 0;
LABEL_64:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_68:
  if (v12)
  {
  }

  return v21;
}

- (void)cancel
{
  if (self)
  {
    [(_WKWebAuthenticationPanel *)self _protectedPanel];
    self = v3;
  }

  else
  {
    v3 = 0;
  }

  API::WebAuthenticationPanel::cancel(self);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    CFRelease(*(v2 + 1));
  }
}

+ (PublicKeyCredentialCreationOptions)convertToCoreCreationOptionsWithOptions:(SEL)a3
{
  retstr->var3.var0 = 0;
  p_var3 = &retstr->var3;
  retstr->var5.var0 = 0;
  p_var5 = &retstr->var5;
  retstr->var4.__engaged_ = 0;
  retstr->var6.var1 = 0;
  retstr->var8.var0.var1.var1.var0.__null_state_ = 0;
  p_var1 = &retstr->var8.var0.var1.var1;
  LOBYTE(retstr[1].var0.var0.m_impl.m_ptr) = 0;
  *&retstr->var0.var0.m_impl.m_ptr = 0u;
  *&retstr->var0.var2.m_impl.m_ptr = 0u;
  *&retstr->var1.var1.m_impl.m_ptr = 0u;
  retstr->var1.var2.var0.var0.var1 = 0;
  retstr->var1.var3.m_impl.m_ptr = 0;
  retstr->var2.var0.var0.var0.var1.var0.var0 = 0;
  retstr->var2.var0.var0.var1 = 0;
  *&retstr->var3.var1 = 0;
  retstr->var4.var0.__null_state_ = 0;
  *&retstr->var5.var1 = 0;
  retstr->var6.var0.var0 = 0;
  v9 = [a4 relyingParty];
  MEMORY[0x19EB02040](&v59, [v9 name]);
  v10 = v59;
  MEMORY[0x19EB02040](&v59, [v9 icon]);
  v11 = v59;
  MEMORY[0x19EB02040](&v59, [v9 identifier]);
  v13 = v59;
  m_ptr = retstr->var0.var0.m_impl.m_ptr;
  retstr->var0.var0.m_impl.m_ptr = v10;
  if (m_ptr && atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v12);
  }

  v15 = retstr->var0.var1.m_impl.m_ptr;
  retstr->var0.var1.m_impl.m_ptr = v11;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v12);
  }

  v16 = retstr->var0.var2.m_impl.m_ptr;
  retstr->var0.var2.m_impl.m_ptr = v13;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v12);
  }

  v17 = [a4 user];
  v63 = 0;
  v61 = 0;
  v62 = 0;
  MEMORY[0x19EB02040](&v79, [v17 name]);
  v59 = v79;
  MEMORY[0x19EB02040](&v79, [v17 icon]);
  v60 = v79;
  v18 = [v17 identifier];
  v19 = v18;
  if (v18)
  {
    [v18 bytes];
    [v19 length];
  }

  JSC::ArrayBuffer::tryCreate();
  v20 = v78;
  v78 = 0;
  v79 = 0;
  v80 = 1;
  v74 = v20;
  v75 = 1;
  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v79);
  v21 = v78;
  v78 = 0;
  if (v21)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v21);
  }

  LOBYTE(v76) = 0;
  v77 = -1;
  v22 = v75;
  if (v75 == 255)
  {
    v61 = 0;
    v62 = -1;
  }

  else
  {
    v23 = v74;
    if (v74)
    {
      if (v75)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      *v74 += v24;
    }

    v76 = v23;
    v77 = v22;
    v79 = &v61;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignINS0_15move_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRSK_SO_EEEDcmSQ_DpOT0_(v22);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v76);
  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v74);
  MEMORY[0x19EB02040](&v79, [v17 displayName]);
  v26 = v79;
  v79 = 0;
  v27 = v63;
  v63 = v26;
  if (v27)
  {
    if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }

    v28 = v79;
    v79 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v25);
    }
  }

  WebCore::PublicKeyCredentialUserEntity::operator=(&retstr->var1, &v59);
  v30 = v63;
  v63 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v29);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v61);
  v32 = v60;
  v60 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v31);
  }

  v33 = v59;
  v59 = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v31);
  }

  publicKeyCredentialParameters(&v59, [a4 publicKeyCredentialParamaters]);
  var0 = p_var3->var0;
  if (p_var3->var0)
  {
    retstr->var3.var0 = 0;
    retstr->var3.var1 = 0;
    WTF::fastFree(var0, v34);
  }

  retstr->var3.var0 = v59;
  *&retstr->var3.var1 = v60;
  if ([a4 timeout])
  {
    retstr->var4.var0.__val_ = [objc_msgSend(a4 "timeout")];
    retstr->var4.__engaged_ = 1;
  }

  if ([a4 excludeCredentials])
  {
    publicKeyCredentialDescriptors(&v59, [a4 excludeCredentials]);
    var2 = retstr->var5.var2;
    if (var2)
    {
      WTF::VectorTypeOperations<WebCore::PublicKeyCredentialDescriptor>::destruct(*p_var5, (*p_var5 + 40 * var2));
    }

    v38 = *p_var5;
    if (*p_var5)
    {
      retstr->var5.var0 = 0;
      retstr->var5.var1 = 0;
      WTF::fastFree(v38, v36);
    }

    retstr->var5.var0 = v59;
    v39 = v60;
    v59 = 0;
    v60 = 0;
    *&retstr->var5.var1 = v39;
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59);
  }

  if ([a4 authenticatorSelection])
  {
    v40 = [a4 authenticatorSelection];
    v41 = [v40 authenticatorAttachment];
    if (v41 == 2)
    {
      v42 = 1;
    }

    else
    {
      if (v41 != 1)
      {
        v42 = 0;
        v43 = 0;
        goto LABEL_54;
      }

      v42 = 0;
    }

    v43 = 1;
LABEL_54:
    v44 = [v40 residentKey];
    v45 = [v40 requireResidentKey];
    v46 = [v40 userVerification];
    v47 = v46 << 40;
    if (v46 >= 3)
    {
      WORD2(v47) = 256;
    }

    v48 = WORD2(v47) | (v45 != 0);
    v49 = ((0x2010000u >> (8 * v44)) & 3 | ((0x1010100u >> (8 * v44)) << 8)) << 16;
    if (v44 >= 4)
    {
      v49 = 16842752;
    }

    var1 = retstr->var6.var1;
    *&retstr->var6.var0.var1.var2 = v48;
    *&retstr->var6.var0.var0 = v49 | v42 | (v43 << 8);
    if (!var1)
    {
      retstr->var6.var1 = 1;
    }
  }

  v51 = [a4 attestation];
  if (v51 >= 4)
  {
    v52 = 0;
  }

  else
  {
    v52 = v51;
  }

  retstr->var8.var0.var0 = v52;
  if (![a4 extensionsCBOR])
  {
    v57 = [a4 extensions];
    LOWORD(v60) = 0;
    LOBYTE(v61) = 0;
    v65 = 0;
    v66[0] = 0;
    v72 = 0;
    MEMORY[0x19EB02040](&v79, [v57 appid]);
    v59 = v79;
    std::optional<WebCore::AuthenticationExtensionsClientInputs>::operator=[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs,void>(p_var1, &v59);
    if (v72 != 1)
    {
      goto LABEL_81;
    }

    if (v71 == 1)
    {
      WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v70);
    }

    if (v69 != 1)
    {
      goto LABEL_81;
    }

    if (v68 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v67);
    }

    goto LABEL_80;
  }

  v53 = [a4 extensionsCBOR];
  v54 = v53;
  if (v53)
  {
    [v53 bytes];
    [v54 length];
  }

  WebCore::AuthenticationExtensionsClientInputs::fromCBOR();
  std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs,false>>(p_var1, &v59);
  if (v73 == 1)
  {
    if (v72 != 1)
    {
      goto LABEL_81;
    }

    if (v71 == 1)
    {
      WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v70);
    }

    if (v69 != 1)
    {
      goto LABEL_81;
    }

    if (v68 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v67);
    }

LABEL_80:
    mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v66);
LABEL_81:
    if (v65 == 1)
    {
      if (v64 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v63);
      }

      v58 = v61;
      v61 = 0;
      if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, v56);
      }
    }

    result = v59;
    v59 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v56);
      }
    }
  }

  return result;
}

- (void)makeCredentialWithChallenge:(id)a3 origin:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  produceClientDataJson(&v22, 0, a3, a4, 0);
  v9 = v22;
  produceClientDataJsonHash(&v20, v22);
  v10 = _Block_copy(a6);
  v22 = 0;
  if (self)
  {
    [(_WKWebAuthenticationPanel *)self _protectedPanel];
    self = v19;
  }

  else
  {
    v19 = 0;
  }

  v23[0] = v20.super.isa;
  v11 = v21;
  v20.super.isa = 0;
  v21 = 0;
  v23[1] = v11;
  [_WKWebAuthenticationPanel convertToCoreCreationOptionsWithOptions:a5];
  WebCore::PublicKeyCredentialCreationOptions::PublicKeyCredentialCreationOptions(v24, v18);
  v24[288] = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0u;
  v33 = 0;
  v12 = WTF::fastMalloc(0x18);
  *v12 = &unk_1F10FC340;
  v12[1] = v10;
  v12[2] = v9;
  v17 = v12;
  API::WebAuthenticationPanel::handleRequest(self, v23, &v17);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData(v23);
  WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(v18);
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    CFRelease(*v14->_panel.m_storage.data);
  }

  _Block_release(0);
  isa = v20.super.isa;
  if (v20.super.isa)
  {
    v20.super.isa = 0;
    LODWORD(v21) = 0;
    WTF::fastFree(isa, v15);
  }
}

- (void)makeCredentialWithMediationRequirement:(int64_t)a3 clientDataHash:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = _Block_copy(a6);
  if (self)
  {
    [(_WKWebAuthenticationPanel *)self _protectedPanel];
    self = v22;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_16:
    v23 = 0;
    v24 = 0;
    goto LABEL_7;
  }

  v22 = 0;
  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v11 = [a4 bytes];
  v12 = [a4 length];
  v13 = v12;
  v23 = 0;
  LODWORD(v24) = 0;
  HIDWORD(v24) = v12;
  if (v12)
  {
    if (HIDWORD(v12))
    {
      __break(0xC471u);
      return;
    }

    v14 = WTF::fastMalloc(v12);
    v15 = 0;
    LODWORD(v24) = v13;
    v23 = v14;
    do
    {
      *(v14 + v15) = *(v11 + v15);
      ++v15;
    }

    while (v13 != v15);
  }

LABEL_7:
  [_WKWebAuthenticationPanel convertToCoreCreationOptionsWithOptions:a5];
  WebCore::PublicKeyCredentialCreationOptions::PublicKeyCredentialCreationOptions(v25, v21);
  v25[288] = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0u;
  if (a3 >= 4)
  {
    v16 = 1;
  }

  else
  {
    v16 = a3;
  }

  v34 = v16;
  v35 = 1;
  v36 = 0;
  v37 = 0;
  v17 = WTF::fastMalloc(0x10);
  *v17 = &unk_1F10FC368;
  v17[1] = v10;
  v20 = v17;
  API::WebAuthenticationPanel::handleRequest(self, &v23, &v20);
  v18 = v20;
  v20 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData(&v23);
  WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(v21);
  v19 = v22;
  v22 = 0;
  if (v19)
  {
    CFRelease(*v19->_panel.m_storage.data);
  }

  _Block_release(0);
}

+ (PublicKeyCredentialRequestOptions)convertToCoreRequestOptionsWithOptions:(SEL)a3
{
  retstr->var0.var0.var0.var0.var1.var0.var0 = 0;
  retstr->var0.var0.var0.var1 = 0;
  retstr->var1.var0.__null_state_ = 0;
  retstr->var1.__engaged_ = 0;
  retstr->var2.m_impl.m_ptr = 0;
  p_var2 = &retstr->var2;
  retstr->var3.var0 = 0;
  *&retstr->var3.var1 = 0;
  retstr->var4 = 1;
  retstr->var5.var0.var0 = 0;
  retstr->var5.var1 = 0;
  retstr->var6 = 0;
  if ([a4 timeout])
  {
    retstr->var1.var0.__val_ = [objc_msgSend(a4 "timeout")];
    retstr->var1.__engaged_ = 1;
  }

  if ([a4 relyingPartyIdentifier])
  {
    MEMORY[0x19EB02040](&v26, [a4 relyingPartyIdentifier]);
    v8 = v26;
    v26 = 0;
    m_ptr = p_var2->m_impl.m_ptr;
    p_var2->m_impl.m_ptr = v8;
    if (m_ptr)
    {
      if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(m_ptr, v7);
      }

      v10 = v26;
      v26 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }
    }
  }

  if ([a4 allowCredentials])
  {
    publicKeyCredentialDescriptors(&v26, [a4 allowCredentials]);
    var2 = retstr->var3.var2;
    if (var2)
    {
      WTF::VectorTypeOperations<WebCore::PublicKeyCredentialDescriptor>::destruct(retstr->var3.var0, (retstr->var3.var0 + 40 * var2));
    }

    var0 = retstr->var3.var0;
    if (var0)
    {
      retstr->var3.var0 = 0;
      retstr->var3.var1 = 0;
      WTF::fastFree(var0, v11);
    }

    retstr->var3.var0 = v26;
    v14 = v27;
    v26 = 0;
    v27 = 0;
    *&retstr->var3.var1 = v14;
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26);
  }

  if (![a4 extensionsCBOR])
  {
    v18 = [a4 extensions];
    LOWORD(v27) = 0;
    LOBYTE(v28) = 0;
    v30 = 0;
    v31[0] = 0;
    v37 = 0;
    MEMORY[0x19EB02040](&v39, [v18 appid]);
    v26 = v39;
    std::optional<WebCore::AuthenticationExtensionsClientInputs>::operator=[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs,void>(&retstr->var5, &v26);
    if (v37 != 1)
    {
      goto LABEL_34;
    }

    if (v36 == 1)
    {
      WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v35);
    }

    if (v34 != 1)
    {
      goto LABEL_34;
    }

    if (v33 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v32);
    }

    goto LABEL_33;
  }

  v15 = [a4 extensionsCBOR];
  v16 = v15;
  if (v15)
  {
    [v15 bytes];
    [v16 length];
  }

  WebCore::AuthenticationExtensionsClientInputs::fromCBOR();
  std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs,false>>(&retstr->var5, &v26);
  if (v38 == 1)
  {
    if (v37 != 1)
    {
      goto LABEL_34;
    }

    if (v36 == 1)
    {
      WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v35);
    }

    if (v34 != 1)
    {
      goto LABEL_34;
    }

    if (v33 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v32);
    }

LABEL_33:
    mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v31);
LABEL_34:
    if (v30 == 1)
    {
      if (v29[16] == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v29);
      }

      v19 = v28;
      v28 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v17);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }
  }

  v21 = [a4 userVerification];
  if (v21 >= 3)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  retstr->var4 = v22;
  result = [a4 authenticatorAttachment];
  if (result == 2)
  {
    v24 = 1;
  }

  else
  {
    if (result != 1)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_52;
    }

    v24 = 0;
  }

  v25 = 1;
LABEL_52:
  retstr->var6 = (v24 | (v25 << 8));
  return result;
}

- (void)getAssertionWithChallenge:(id)a3 origin:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  produceClientDataJson(&v22, 1, a3, a4, 0);
  v9 = v22;
  produceClientDataJsonHash(&v20, v22);
  v10 = _Block_copy(a6);
  v22 = 0;
  if (self)
  {
    [(_WKWebAuthenticationPanel *)self _protectedPanel];
    self = v19;
  }

  else
  {
    v19 = 0;
  }

  v23[0] = v20.super.isa;
  v11 = v21;
  v20.super.isa = 0;
  v21 = 0;
  v23[1] = v11;
  [_WKWebAuthenticationPanel convertToCoreRequestOptionsWithOptions:a5];
  WebCore::PublicKeyCredentialRequestOptions::PublicKeyCredentialRequestOptions(v24, v18);
  v24[288] = 1;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0u;
  v33 = 0;
  v12 = WTF::fastMalloc(0x18);
  *v12 = &unk_1F10FC390;
  v12[1] = v10;
  v12[2] = v9;
  v17 = v12;
  API::WebAuthenticationPanel::handleRequest(self, v23, &v17);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData(v23);
  WebCore::PublicKeyCredentialRequestOptions::~PublicKeyCredentialRequestOptions(v18);
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    CFRelease(*v14->_panel.m_storage.data);
  }

  _Block_release(0);
  isa = v20.super.isa;
  if (v20.super.isa)
  {
    v20.super.isa = 0;
    LODWORD(v21) = 0;
    WTF::fastFree(isa, v15);
  }
}

- (void)getAssertionWithMediationRequirement:(int64_t)a3 clientDataHash:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = _Block_copy(a6);
  if (self)
  {
    [(_WKWebAuthenticationPanel *)self _protectedPanel];
    self = v22;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_16:
    v23 = 0;
    v24 = 0;
    goto LABEL_7;
  }

  v22 = 0;
  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v11 = [a4 bytes];
  v12 = [a4 length];
  v13 = v12;
  v23 = 0;
  LODWORD(v24) = 0;
  HIDWORD(v24) = v12;
  if (v12)
  {
    if (HIDWORD(v12))
    {
      __break(0xC471u);
      return;
    }

    v14 = WTF::fastMalloc(v12);
    v15 = 0;
    LODWORD(v24) = v13;
    v23 = v14;
    do
    {
      *(v14 + v15) = *(v11 + v15);
      ++v15;
    }

    while (v13 != v15);
  }

LABEL_7:
  [_WKWebAuthenticationPanel convertToCoreRequestOptionsWithOptions:a5];
  WebCore::PublicKeyCredentialRequestOptions::PublicKeyCredentialRequestOptions(v25, v21);
  v25[288] = 1;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0u;
  if (a3 >= 4)
  {
    v16 = 1;
  }

  else
  {
    v16 = a3;
  }

  v34 = v16;
  v35 = 1;
  v36 = 0;
  v37 = 0;
  v17 = WTF::fastMalloc(0x10);
  *v17 = &unk_1F10FC3B8;
  v17[1] = v10;
  v20 = v17;
  API::WebAuthenticationPanel::handleRequest(self, &v23, &v20);
  v18 = v20;
  v20 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData(&v23);
  WebCore::PublicKeyCredentialRequestOptions::~PublicKeyCredentialRequestOptions(v21);
  v19 = v22;
  v22 = 0;
  if (v19)
  {
    CFRelease(*v19->_panel.m_storage.data);
  }

  _Block_release(0);
}

+ (id)getClientDataJSONForAuthenticationType:(int64_t)a3 challenge:(id)a4 origin:(id)a5
{
  produceClientDataJson(&v8, a3, a4, a5, 0);
  v5 = v8;
  if (v8)
  {
    v6 = v8;
  }

  return v5;
}

+ (id)getClientDataJSONWithTopOrigin:(int64_t)a3 challenge:(id)a4 origin:(id)a5 topOrigin:(id)a6 crossOrigin:(BOOL)a7
{
  produceClientDataJson(&v10, a3, a4, a5, a6);
  v7 = v10;
  if (v10)
  {
    v8 = v10;
  }

  return v7;
}

+ (id)encodeMakeCredentialCommandWithClientDataJSON:(id)a3 options:(id)a4 userVerificationAvailability:(int64_t)a5 authenticatorSupportedExtensions:(id)a6
{
  produceClientDataJsonHash(&v32, a3);
  [_WKWebAuthenticationPanel convertToCoreCreationOptionsWithOptions:a4];
  v20 = a6;
  v18[0] = &v20;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v27, [a6 count], v18, 0);
  v23 = 0;
  v26 = 0;
  LOBYTE(v20) = 0;
  v22 = 0;
  LOBYTE(v18[0]) = 0;
  v19 = 0;
  fido::encodeMakeCredentialRequestAsCBOR();
  if (v19 == 1)
  {
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18);
  }

  if (v22 == 1)
  {
    v9 = v20;
    if (v20)
    {
      v20 = 0;
      v21 = 0;
      WTF::fastFree(v9, v8);
    }
  }

  if (v26 == 1)
  {
    v10 = v24;
    if (v24)
    {
      v24 = 0;
      v25 = 0;
      WTF::fastFree(v10, v8);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v8);
  WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(v28);
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v29 length:v31];
  v13 = v11;
  if (v11)
  {
    v14 = v11;
  }

  v15 = v29;
  if (v29)
  {
    v29 = 0;
    v30 = 0;
    WTF::fastFree(v15, v12);
  }

  isa = v32.super.isa;
  if (v32.super.isa)
  {
    v32.super.isa = 0;
    v33 = 0;
    WTF::fastFree(isa, v12);
  }

  return v13;
}

+ (id)encodeGetAssertionCommandWithClientDataJSON:(id)a3 options:(id)a4 userVerificationAvailability:(int64_t)a5 authenticatorSupportedExtensions:(id)a6
{
  produceClientDataJsonHash(&v29, a3);
  [_WKWebAuthenticationPanel convertToCoreRequestOptionsWithOptions:a4];
  v18[0] = a6;
  v8 = [a6 count];
  v31 = v18;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v24, v8, &v31, 0);
  v20 = 0;
  v23 = 0;
  LOBYTE(v18[0]) = 0;
  v19 = 0;
  fido::encodeGetAssertionRequestAsCBOR();
  if (v19 == 1)
  {
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18);
  }

  if (v23 == 1)
  {
    v10 = v21;
    if (v21)
    {
      v21 = 0;
      v22 = 0;
      WTF::fastFree(v10, v9);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24, v9);
  WebCore::PublicKeyCredentialRequestOptions::~PublicKeyCredentialRequestOptions(v25);
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v26 length:v28];
  v13 = v11;
  if (v11)
  {
    v14 = v11;
  }

  v15 = v26;
  if (v26)
  {
    v26 = 0;
    v27 = 0;
    WTF::fastFree(v15, v12);
  }

  isa = v29.super.isa;
  if (v29.super.isa)
  {
    v29.super.isa = 0;
    v30 = 0;
    WTF::fastFree(isa, v12);
  }

  return v13;
}

+ (id)encodeMakeCredentialCommandWithClientDataHash:(id)a3 options:(id)a4 userVerificationAvailability:(int64_t)a5 authenticatorSupportedExtensions:(id)a6
{
  if (a3)
  {
    v9 = [a3 bytes];
    result = [a3 length];
    v11 = result;
    v35 = 0;
    LODWORD(v36) = 0;
    HIDWORD(v36) = result;
    if (result)
    {
      if (result >> 32)
      {
        __break(0xC471u);
        return result;
      }

      v12 = WTF::fastMalloc(result);
      LODWORD(v36) = v11;
      v35 = v12;
      do
      {
        v13 = *v9++;
        *v12 = v13;
        v12 = (v12 + 1);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  [_WKWebAuthenticationPanel convertToCoreCreationOptionsWithOptions:a4];
  v26 = a6;
  v24[0] = &v26;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v33, [a6 count], v24, 0);
  v29 = 0;
  v32 = 0;
  LOBYTE(v26) = 0;
  v28 = 0;
  LOBYTE(v24[0]) = 0;
  v25 = 0;
  fido::encodeMakeCredentialRequestAsCBOR();
  if (v25 == 1)
  {
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24);
  }

  if (v28 == 1)
  {
    v15 = v26;
    if (v26)
    {
      v26 = 0;
      v27 = 0;
      WTF::fastFree(v15, v14);
    }
  }

  if (v32 == 1)
  {
    v16 = v30;
    if (v30)
    {
      v30 = 0;
      v31 = 0;
      WTF::fastFree(v16, v14);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v14);
  WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(v34);
  v18 = v35;
  if (v35)
  {
    v35 = 0;
    LODWORD(v36) = 0;
    WTF::fastFree(v18, v17);
  }

  v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v37 length:v39];
  v21 = v19;
  if (v19)
  {
    v22 = v19;
  }

  v23 = v37;
  if (v37)
  {
    v37 = 0;
    v38 = 0;
    WTF::fastFree(v23, v20);
  }

  return v21;
}

+ (id)encodeMakeCredentialCommandWithClientDataHash:(id)a3 options:(id)a4 userVerificationAvailability:(int64_t)a5 authenticatorSupportedCredentialParameters:(id)a6
{
  if (a3)
  {
    v9 = [a3 bytes];
    result = [a3 length];
    v11 = result;
    v39 = 0;
    LODWORD(v40) = 0;
    HIDWORD(v40) = result;
    if (result)
    {
      if (result >> 32)
      {
        __break(0xC471u);
        return result;
      }

      v12 = WTF::fastMalloc(result);
      LODWORD(v40) = v11;
      v39 = v12;
      do
      {
        v13 = *v9++;
        *v12 = v13;
        v12 = (v12 + 1);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  [_WKWebAuthenticationPanel convertToCoreCreationOptionsWithOptions:a4];
  v37[0] = 0;
  v37[1] = 0;
  v33 = 0;
  v36 = 0;
  publicKeyCredentialParameters(v29, a6);
  v30 = v29[0];
  v31 = v29[1];
  v32 = 1;
  LOBYTE(v27) = 0;
  v28 = 0;
  fido::encodeMakeCredentialRequestAsCBOR();
  if (v32 == 1)
  {
    v15 = v30;
    if (v30)
    {
      v30 = 0;
      LODWORD(v31) = 0;
      WTF::fastFree(v15, v14);
    }
  }

  if (v36 == 1)
  {
    v16 = v34;
    if (v34)
    {
      v34 = 0;
      v35 = 0;
      WTF::fastFree(v16, v14);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v14);
  WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(v38);
  v18 = v39;
  if (v39)
  {
    v39 = 0;
    LODWORD(v40) = 0;
    WTF::fastFree(v18, v17);
  }

  v19 = v41;
  v20 = v43;
  v21 = objc_alloc(MEMORY[0x1E695DEF0]);
  v22 = [v21 initWithBytes:v19 length:{v20, v27}];
  v24 = v22;
  if (v22)
  {
    v25 = v22;
  }

  v26 = v41;
  if (v41)
  {
    v41 = 0;
    v42 = 0;
    WTF::fastFree(v26, v23);
  }

  return v24;
}

+ (id)encodeGetAssertionCommandWithClientDataHash:(id)a3 options:(id)a4 userVerificationAvailability:(int64_t)a5 authenticatorSupportedExtensions:(id)a6
{
  if (a3)
  {
    v9 = [a3 bytes];
    result = [a3 length];
    v11 = result;
    v32 = 0;
    LODWORD(v33) = 0;
    HIDWORD(v33) = result;
    if (result)
    {
      if (result >> 32)
      {
        __break(0xC471u);
        return result;
      }

      v12 = WTF::fastMalloc(result);
      v13 = 0;
      LODWORD(v33) = v11;
      v32 = v12;
      do
      {
        v13[v12] = v13[v9];
        ++v13;
      }

      while (v11 != v13);
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  [_WKWebAuthenticationPanel convertToCoreRequestOptionsWithOptions:a4];
  v24[0] = a6;
  v14 = [a6 count];
  v37 = v24;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v30, v14, &v37, 0);
  v26 = 0;
  v29 = 0;
  LOBYTE(v24[0]) = 0;
  v25 = 0;
  fido::encodeGetAssertionRequestAsCBOR();
  if (v25 == 1)
  {
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24);
  }

  if (v29 == 1)
  {
    v16 = v27;
    if (v27)
    {
      v27 = 0;
      v28 = 0;
      WTF::fastFree(v16, v15);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v15);
  WebCore::PublicKeyCredentialRequestOptions::~PublicKeyCredentialRequestOptions(v31);
  v18 = v32;
  if (v32)
  {
    v32 = 0;
    LODWORD(v33) = 0;
    WTF::fastFree(v18, v17);
  }

  v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v34 length:v36];
  v21 = v19;
  if (v19)
  {
    v22 = v19;
  }

  v23 = v34;
  if (v34)
  {
    v34 = 0;
    v35 = 0;
    WTF::fastFree(v23, v20);
  }

  return v21;
}

- (void)setMockConfiguration:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"privateKeyBase64"])
  {
    MEMORY[0x19EB02040](&v9, [a3 objectForKeyedSubscript:@"privateKeyBase64"]);
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  LOBYTE(v9) = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v10 = 1;
  v11 = v5;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  if (self)
  {
    [(_WKWebAuthenticationPanel *)self _protectedPanel];
    v6 = v8;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  API::WebAuthenticationPanel::setMockConfiguration(v6, &v9);
  if (v8)
  {
    CFRelease(*(v8 + 8));
  }

  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration(&v9, v7);
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

- (uint64_t)makeCredentialWithChallenge:(uint64_t)a1 origin:options:completionHandler:
{
  *a1 = &unk_1F10FC340;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
  }

  _Block_release(*(a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10FC340;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
  }

  _Block_release(*(a1 + 8));

  return WTF::fastFree(a1, v3);
}

- (void)makeCredentialWithChallenge:(mpark *)a1 origin:(unsigned __int8 *)a2 options:completionHandler:
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a2[16] == 1)
  {
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = *a2;
    v17[0] = *MEMORY[0x1E696A578];
    v10 = *(a2 + 1);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v15, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v15 = &stru_1F1147748;
      v12 = &stru_1F1147748;
    }

    v16[0] = v15;
    v13 = [v8 initWithDomain:@"WKErrorDomain" code:v9 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v16, v17, 1)}];
    (*(*(a1 + 1) + 16))();
    if (v13)
    {
    }

    v14 = v15;
    v15 = 0;
    if (v14)
    {
    }
  }

  else
  {
    if (a2[16])
    {
      mpark::throw_bad_variant_access(a1);
    }

    (*(**a2 + 24))(v16);
    v4 = *(a1 + 2);
    v5 = WebCore::AuthenticatorResponse::attachment(*a2);
    wkAuthenticatorAttestationResponse(v17, v16, v4, v5);
    v6 = v17[0];
    (*(*(a1 + 1) + 16))();
    if (v6)
    {
    }

    WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(v16, v7);
  }
}

- (uint64_t)makeCredentialWithMediationRequirement:(uint64_t)a1 clientDataHash:options:completionHandler:
{
  *a1 = &unk_1F10FC368;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)makeCredentialWithMediationRequirement:(const void *)a1 clientDataHash:options:completionHandler:
{
  *a1 = &unk_1F10FC368;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)makeCredentialWithMediationRequirement:(mpark *)a1 clientDataHash:(unsigned __int8 *)a2 options:completionHandler:
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a2[16] == 1)
  {
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v8 = *a2;
    v16[0] = *MEMORY[0x1E696A578];
    v9 = *(a2 + 1);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v14, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v14 = &stru_1F1147748;
      v11 = &stru_1F1147748;
    }

    v15[0] = v14;
    v12 = [v7 initWithDomain:@"WKErrorDomain" code:v8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v15, v16, 1)}];
    (*(*(a1 + 1) + 16))();
    if (v12)
    {
    }

    v13 = v14;
    v14 = 0;
    if (v13)
    {
    }
  }

  else
  {
    if (a2[16])
    {
      mpark::throw_bad_variant_access(a1);
    }

    (*(**a2 + 24))(v15);
    v4 = WebCore::AuthenticatorResponse::attachment(*a2);
    wkAuthenticatorAttestationResponse(v16, v15, 0, v4);
    v5 = v16[0];
    (*(*(a1 + 1) + 16))();
    if (v5)
    {
    }

    WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(v15, v6);
  }
}

- (uint64_t)getAssertionWithChallenge:(uint64_t)a1 origin:options:completionHandler:
{
  *a1 = &unk_1F10FC390;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
  }

  _Block_release(*(a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10FC390;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
  }

  _Block_release(*(a1 + 8));

  return WTF::fastFree(a1, v3);
}

- (void)getAssertionWithChallenge:(mpark *)a1 origin:(unsigned __int8 *)a2 options:completionHandler:
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a2[16] == 1)
  {
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = *a2;
    v17[0] = *MEMORY[0x1E696A578];
    v10 = *(a2 + 1);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v15, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v15 = &stru_1F1147748;
      v12 = &stru_1F1147748;
    }

    v16[0] = v15;
    v13 = [v8 initWithDomain:@"WKErrorDomain" code:v9 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v16, v17, 1)}];
    (*(*(a1 + 1) + 16))();
    if (v13)
    {
    }

    v14 = v15;
    v15 = 0;
    if (v14)
    {
    }
  }

  else
  {
    if (a2[16])
    {
      mpark::throw_bad_variant_access(a1);
    }

    (*(**a2 + 24))(v16);
    v4 = *(a1 + 2);
    v5 = WebCore::AuthenticatorResponse::attachment(*a2);
    wkAuthenticatorAssertionResponse(v17, v16, v4, v5);
    v6 = v17[0];
    (*(*(a1 + 1) + 16))();
    if (v6)
    {
    }

    WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(v16, v7);
  }
}

- (uint64_t)getAssertionWithMediationRequirement:(uint64_t)a1 clientDataHash:options:completionHandler:
{
  *a1 = &unk_1F10FC3B8;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)getAssertionWithMediationRequirement:(const void *)a1 clientDataHash:options:completionHandler:
{
  *a1 = &unk_1F10FC3B8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)getAssertionWithMediationRequirement:(mpark *)a1 clientDataHash:(unsigned __int8 *)a2 options:completionHandler:
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a2[16] == 1)
  {
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v8 = *a2;
    v16[0] = *MEMORY[0x1E696A578];
    v9 = *(a2 + 1);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v14, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v14 = &stru_1F1147748;
      v11 = &stru_1F1147748;
    }

    v15[0] = v14;
    v12 = [v7 initWithDomain:@"WKErrorDomain" code:v8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v15, v16, 1)}];
    (*(*(a1 + 1) + 16))();
    if (v12)
    {
    }

    v13 = v14;
    v14 = 0;
    if (v13)
    {
    }
  }

  else
  {
    if (a2[16])
    {
      mpark::throw_bad_variant_access(a1);
    }

    (*(**a2 + 24))(v15);
    v4 = WebCore::AuthenticatorResponse::attachment(*a2);
    wkAuthenticatorAssertionResponse(v16, v15, 0, v4);
    v5 = v16[0];
    (*(*(a1 + 1) + 16))();
    if (v5)
    {
    }

    WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(v15, v6);
  }
}

@end