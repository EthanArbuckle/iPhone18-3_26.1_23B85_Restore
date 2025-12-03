@interface _WKRemoteObjectRegistry
- (id).cxx_construct;
- (id)_initWithWebPage:(reference_wrapper<WebKit::WebPage>)page;
- (id)_initWithWebPageProxy:(reference_wrapper<WebKit::WebPageProxy>)proxy;
- (id)remoteObjectProxyWithInterface:(id)interface;
- (uint64_t)_invokeMethod:()WTF::DestructionThread;
- (uint64_t)_invokeMethod:(uint64_t)method;
- (unsigned)_invokeMethod:()WTF::DestructionThread;
- (void)_callReplyWithID:(unint64_t)d blockInvocation:(const void *)invocation;
- (void)_invalidate;
- (void)_invokeMethod:(const void *)method;
- (void)_invokeMethod:(uint64_t)method;
- (void)_invokeMethod:(void *)method;
- (void)_releaseReplyWithID:(unint64_t)d;
- (void)_sendInvocation:(id)invocation interface:(id)interface;
- (void)registerExportedObject:(id)object interface:(id)interface;
- (void)unregisterExportedObject:(id)object interface:(id)interface;
@end

@implementation _WKRemoteObjectRegistry

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)_invalidate
{
  m_ptr = self->_remoteObjectRegistry.m_ptr;
  self->_remoteObjectRegistry.m_ptr = 0;
  if (m_ptr)
  {
    (*(*m_ptr + 8))();
  }
}

- (void)registerExportedObject:(id)object interface:(id)interface
{
  MEMORY[0x19EB02040](&v33, [interface identifier]);
  if (object)
  {
    objectCopy = object;
  }

  if (interface)
  {
    interfaceCopy = interface;
  }

  objectCopy2 = object;
  interfaceCopy2 = interface;
  if (v33 == -1 || !v33)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9943A0);
  }

  m_table = self->_exportedObjects.m_impl.m_table;
  if (m_table || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&self->_exportedObjects), (m_table = self->_exportedObjects.m_impl.m_table) != 0))
  {
    v12 = *(m_table - 2);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v33 + 4);
  if (v13 < 0x100)
  {
    v14 = WTF::StringImpl::hashSlowCase(v33);
  }

  else
  {
    v14 = v13 >> 8;
  }

  v15 = 0;
  for (i = 1; ; ++i)
  {
    v17 = v14 & v12;
    v18 = &m_table[6 * (v14 & v12)];
    v19 = *v18;
    if (!*v18)
    {
      break;
    }

    if (v19 != -1)
    {
      v18 = v15;
      if (WTF::equal(v19, v33, v8))
      {
        goto LABEL_27;
      }
    }

    v14 = i + v17;
    v15 = v18;
  }

  if (v15)
  {
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = 0;
    --*(self->_exportedObjects.m_impl.m_table - 4);
    v18 = v15;
  }

  v20 = v33;
  v33 = 0;
  v21 = *v18;
  *v18 = v20;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v7);
  }

  v22 = objectCopy2;
  v23 = interfaceCopy2;
  objectCopy2 = 0;
  interfaceCopy2 = 0;
  v24 = *(v18 + 1);
  *(v18 + 1) = v22;
  if (v24)
  {
  }

  v25 = *(v18 + 2);
  *(v18 + 2) = v23;
  if (v25)
  {
  }

  v26 = self->_exportedObjects.m_impl.m_table;
  if (v26)
  {
    v27 = *(v26 - 3) + 1;
  }

  else
  {
    v27 = 1;
  }

  *(v26 - 3) = v27;
  v28 = (*(v26 - 4) + v27);
  v29 = *(v26 - 1);
  if (v29 > 0x400)
  {
    if (v29 > 2 * v28)
    {
      goto LABEL_27;
    }
  }

  else if (3 * v29 > 4 * v28)
  {
    goto LABEL_27;
  }

  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&self->_exportedObjects);
LABEL_27:
  if (interfaceCopy2)
  {
  }

  if (objectCopy2)
  {
  }

  v30 = v33;
  v33 = 0;
  if (v30)
  {
    if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v7);
    }
  }
}

- (void)unregisterExportedObject:(id)object interface:(id)interface
{
  MEMORY[0x19EB02040](&v26, [interface identifier]);
  m_table = self->_exportedObjects.m_impl.m_table;
  p_exportedObjects = &self->_exportedObjects;
  v8 = m_table;
  if (m_table)
  {
    if (v26 == -1 || !v26)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9945E8);
    }

    v10 = *(v8 - 2);
    v11 = *(v26 + 4);
    if (v11 < 0x100)
    {
      v12 = WTF::StringImpl::hashSlowCase(v26);
    }

    else
    {
      v12 = v11 >> 8;
    }

    for (i = 0; ; v12 = i + v14)
    {
      v14 = v12 & v10;
      v15 = &v8[6 * (v12 & v10)];
      v16 = *v15;
      if (*v15 != -1)
      {
        if (!v16)
        {
          v17 = *p_exportedObjects;
          if (!*p_exportedObjects)
          {
            goto LABEL_24;
          }

          v15 = v17 + 24 * *(v17 - 4);
          goto LABEL_12;
        }

        if (WTF::equal(v16, v26, v6))
        {
          break;
        }
      }

      ++i;
    }

    v17 = *p_exportedObjects;
    if (!*p_exportedObjects)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 += 24 * *(v17 - 4);
    if (v17 == v15)
    {
      goto LABEL_24;
    }

LABEL_13:
    if (v17 != v15)
    {
      v18 = *v15;
      *v15 = -1;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v5);
      }

      v19 = *(v15 + 16);
      *(v15 + 16) = 0;
      if (v19)
      {
      }

      v20 = *(v15 + 8);
      *(v15 + 8) = 0;
      if (v20)
      {
      }

      v21 = *p_exportedObjects;
      v22 = vadd_s32(*(*p_exportedObjects - 16), 0xFFFFFFFF00000001);
      *(v21 - 16) = v22;
      v23 = *(v21 - 4);
      if (6 * v22.i32[1] < v23 && v23 >= 9)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(p_exportedObjects, v23 >> 1);
      }
    }
  }

LABEL_24:
  v25 = v26;
  v26 = 0;
  if (v25)
  {
    if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v5);
    }
  }
}

- (id)remoteObjectProxyWithInterface:(id)interface
{
  p_remoteObjectProxies = &self->_remoteObjectProxies;
  m_ptr = self->_remoteObjectProxies.m_ptr;
  if (!m_ptr)
  {
    WTF::RetainPtr<NSNumber>::operator=(&p_remoteObjectProxies->m_ptr, [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable]);
    m_ptr = p_remoteObjectProxies->m_ptr;
  }

  v7 = -[NSMapTable objectForKey:](m_ptr, "objectForKey:", [interface identifier]);
  if (v7)
  {
    v8 = v7;
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v12 = [objc_msgSend(interface "identifier")];
    v8 = [[WKRemoteObject alloc] _initWithObjectRegistry:self interface:interface];
    [(NSMapTable *)p_remoteObjectProxies->m_ptr setObject:v8 forKey:v12];
    if (v8)
    {
      v13 = v8;
    }

    if (v12)
    {
    }
  }

  return v8;
}

- (id)_initWithWebPage:(reference_wrapper<WebKit::WebPage>)page
{
  v8.receiver = self;
  v8.super_class = _WKRemoteObjectRegistry;
  v4 = [(_WKRemoteObjectRegistry *)&v8 init];
  if (v4)
  {
    WebKit::WebPage::ref(page.var0);
    WebKit::WebRemoteObjectRegistry::create(&v7, v4, page.var0);
    m_ptr = v4->_remoteObjectRegistry.m_ptr;
    v4->_remoteObjectRegistry.m_ptr = v7;
    if (m_ptr)
    {
      (*(*m_ptr + 8))(m_ptr);
    }

    WebKit::WebPage::deref(page.var0);
  }

  return v4;
}

- (id)_initWithWebPageProxy:(reference_wrapper<WebKit::WebPageProxy>)proxy
{
  v12.receiver = self;
  v12.super_class = _WKRemoteObjectRegistry;
  v4 = [(_WKRemoteObjectRegistry *)&v12 init];
  if (v4)
  {
    CFRetain(*(proxy.var0 + 1));
    if (WebKit::UIRemoteObjectRegistry::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::UIRemoteObjectRegistry::s_heapRef, v5);
    }

    else
    {
      NonCompact = WebKit::UIRemoteObjectRegistry::operatorNewSlow(0x30);
    }

    v7 = NonCompact;
    v8 = WebKit::RemoteObjectRegistry::RemoteObjectRegistry(NonCompact, v4);
    *(v8 + 8) = 1;
    *v8 = &unk_1F111DD48;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(proxy.var0 + 6, proxy.var0 + 16);
    v9 = *(proxy.var0 + 3);
    atomic_fetch_add(v9, 1u);
    *(v7 + 5) = v9;
    m_ptr = v4->_remoteObjectRegistry.m_ptr;
    v4->_remoteObjectRegistry.m_ptr = v7;
    if (m_ptr)
    {
      (*(*m_ptr + 8))(m_ptr);
    }

    CFRelease(*(proxy.var0 + 1));
  }

  return v4;
}

- (void)_sendInvocation:(id)invocation interface:(id)interface
{
  if (WTF::isMainRunLoop(self))
  {
    v42 = 0;
    methodSignature = [invocation methodSignature];
    v8 = methodSignature;
    if (methodSignature)
    {
      v9 = methodSignature;
    }

    numberOfArguments = [v8 numberOfArguments];
    if (numberOfArguments)
    {
      v11 = 0;
      do
      {
        v12 = [v8 getArgumentTypeAtIndex:v11];
        v13 = v12;
        if (v12 && strlen(v12) == 2 && *v13 == 16192)
        {
          v35 = *MEMORY[0x1E695D940];
          if (v42)
          {
            [MEMORY[0x1E695DF30] raise:v35 format:{@"Only one reply block is allowed per message send. (%s)", sel_getName(objc_msgSend(invocation, "selector"))}];
          }

          aBlock = 0;
          [invocation getArgument:&aBlock atIndex:v11];
          v24 = aBlock;
          if (!aBlock)
          {
            [MEMORY[0x1E695DF30] raise:v35 format:{@"A NULL reply block was passed into a message. (%s)", sel_getName(objc_msgSend(invocation, "selector"))}];
            v24 = aBlock;
          }

          v25 = _Block_signature(v24);
          if ((WTF::methodHasReturnType<void>([MEMORY[0x1E695DF68] signatureWithObjCTypes:v25]) & 1) == 0)
          {
            [MEMORY[0x1E695DF30] raise:v35 format:{@"Return value of block argument must be 'void'. (%s)", sel_getName(objc_msgSend(invocation, "selector"))}];
          }

          v26 = v25;
          v27 = ++generateReplyIdentifier(void)::identifier;
          WTF::String::String(v36, v26);
          v29 = WebKit::RemoteObjectInvocation::ReplyInfo::operator new(0x10, v28);
          *v29 = v27;
          v30 = v36[0];
          v36[0] = 0;
          *(v29 + 1) = v30;
          v37 = 0;
          std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>::reset[abi:sn200100](&v42, v29);
          std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>::reset[abi:sn200100](&v37, 0);
          v32 = v36[0];
          v36[0] = 0;
          if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, v31);
          }

          v40 = 0;
          [invocation setArgument:&v40 atIndex:v11];
          v33 = v42;
          selector = [invocation selector];
          PendingReply::PendingReply(&v37, interface, selector, aBlock);
          WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<PendingReply>(v36, &self->_pendingReplies, v33, &v37);
          PendingReply::~PendingReply(&v37);
        }

        ++v11;
      }

      while (numberOfArguments != v11);
    }

    v14 = objc_alloc_init(WKRemoteObjectEncoder);
    [(WKRemoteObjectEncoder *)v14 encodeObject:invocation forKey:@"invocation"];
    m_ptr = self->_remoteObjectRegistry.m_ptr;
    if (m_ptr)
    {
      (**m_ptr)(m_ptr);
      MEMORY[0x19EB02040](v36, [interface identifier]);
      rootObjectDictionary = [(WKRemoteObjectEncoder *)v14 rootObjectDictionary];
      v17 = rootObjectDictionary;
      if (rootObjectDictionary)
      {
        CFRetain(*(rootObjectDictionary + 8));
      }

      v18 = v36[0];
      if (v36[0])
      {
        atomic_fetch_add_explicit(v36[0], 2u, memory_order_relaxed);
      }

      v37 = v18;
      v38 = v17;
      v19 = v42;
      v42 = 0;
      v39 = v19;
      (*(*m_ptr + 56))(m_ptr, &v37);
      std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>::reset[abi:sn200100](&v39, 0);
      v21 = v38;
      v38 = 0;
      if (v21)
      {
        CFRelease(*(v21 + 8));
      }

      v22 = v37;
      v37 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v20);
      }

      v23 = v36[0];
      v36[0] = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v20);
      }

      (*(*m_ptr + 8))(m_ptr);
    }

    if (v14)
    {
    }

    if (v8)
    {
    }

    std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>::reset[abi:sn200100](&v42, 0);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)_invokeMethod:(const void *)method
{
  v3 = *(method + 1);
  if (!v3)
  {
    return;
  }

  CFRetain(v3[1]);
  WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(&v41, &self->_exportedObjects, method);
  v6 = v42;
  if (v42)
  {
    v7 = v42;
    v39[0] = v3;
    v8 = [[WKRemoteObjectDecoder alloc] initWithInterface:v6 rootObjectDictionary:v39 replyToSelector:0];
    v9 = v39[0];
    v39[0] = 0;
    if (v9)
    {
      CFRelease(*(v9 + 1));
    }

    v10 = [(WKRemoteObjectDecoder *)v8 decodeObjectOfClass:objc_opt_class() forKey:@"invocation"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    methodSignature = [v11 methodSignature];
    v14 = methodSignature;
    if (methodSignature)
    {
      v15 = methodSignature;
    }

    numberOfArguments = [v14 numberOfArguments];
    if (numberOfArguments)
    {
      v17 = 0;
      while (1)
      {
        v18 = [v14 getArgumentTypeAtIndex:v17];
        v19 = v18;
        if (v18)
        {
          if (strlen(v18) == 2 && *v19 == 16192)
          {
            break;
          }
        }

        if (numberOfArguments == ++v17)
        {
          goto LABEL_15;
        }
      }

      if (!*(method + 2))
      {
        NSLog(&cfstr_InvokemethodEx.isa);
        goto LABEL_16;
      }

      v21 = MEMORY[0x1E695DF68];
      WTF::String::utf8();
      if (v39[0])
      {
        v22 = v39[0] + 16;
      }

      else
      {
        v22 = 0;
      }

      v23 = [objc_msgSend(v21 signatureWithObjCTypes:{v22), "_typeString"}];
      v25 = v23;
      if (v23)
      {
        v26 = v23;
      }

      v27 = v39[0];
      v39[0] = 0;
      if (v27)
      {
        if (*v27 == 1)
        {
          WTF::fastFree(v27, v24);
        }

        else
        {
          --*v27;
        }
      }

      v28 = replyBlockSignature([v6 protocol], objc_msgSend(v11, "selector"), v17);
      v29 = v28;
      if (v28)
      {
        v31 = v28;
        v30 = WebKit::methodSignaturesAreCompatible(v25, v29, v32);
        if (v30)
        {
          if (self)
          {
            selfCopy = self;
          }

          v34 = **(method + 2);
          [_WKRemoteObjectRegistry _invokeMethod:]::ReplyBlockCallChecker::create(v39, self, v34);
          v38 = v39[0];
          [(WebKit *)v25 UTF8String];
          v39[4] = MEMORY[0x1E69E9820];
          v39[5] = 3321888768;
          v39[6] = __41___WKRemoteObjectRegistry__invokeMethod___block_invoke;
          v39[7] = &__block_descriptor_64_e8_32c54_ZTSKZ41___WKRemoteObjectRegistry__invokeMethod__E3__2_e22_v16__0__NSInvocation_8l;
          v39[0] = v6;
          v35 = v6;
          v39[1] = self;
          if (self)
          {
            selfCopy2 = self;
          }

          v39[2] = v34;
          if (v38)
          {
            atomic_fetch_add(v38, 1u);
          }

          v39[3] = v38;
          [_WKRemoteObjectRegistry _invokeMethod:]::$_2::$_2(v40, v39);
          v37 = __NSMakeSpecialForwardingCaptureBlock();
          [_WKRemoteObjectRegistry _invokeMethod:]::$_2::~$_2(v39);
          v39[0] = v37;
          [v11 setArgument:v39 atIndex:v17];
          objc_setAssociatedObject(v11, replyBlockKey, v37, 0x301);
          if (v37)
          {
          }

          [_WKRemoteObjectRegistry _invokeMethod:]::$_2::~$_2(v40);
          if (v38)
          {
            WTF::ThreadSafeRefCounted<[_WKRemoteObjectRegistry _invokeMethod:]::ReplyBlockCallChecker,(WTF::DestructionThread)2>::deref(v38);
          }

          if (self)
          {
          }
        }

        else
        {
          NSLog(&cfstr_InvokemethodFa_0.isa, v25, v29);
        }
      }

      else
      {
        NSLog(&cfstr_InvokemethodFa.isa);
        v30 = 0;
      }

      if (v25)
      {
      }

      if (!v30)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    [v11 setTarget:v41];
    [v11 invoke];
LABEL_16:
    if (v14)
    {
    }

    if (v11)
    {
    }

    if (v8)
    {
    }

    std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>::~pair(&v41);
    return;
  }

  WTF::String::createNSString(method, v39);
  NSLog(&cfstr_DidNotFindAReg.isa, v39[0]);
  v20 = v39[0];
  v39[0] = 0;
  if (v20)
  {
  }

  std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>::~pair(&v41);
  CFRelease(v3[1]);
}

- (void)_invokeMethod:(uint64_t)method
{
  result = WTF::fastMalloc(0x20);
  v7 = result;
  *result = 1;
  result[1] = a2;
  if (a2)
  {
    result = a2;
  }

  v7[2] = method;
  *(v7 + 24) = 0;
  *self = v7;
  return result;
}

- (void)_invokeMethod:(void *)method
{
  v4 = *a2;
  *method = *a2;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(a2 + 8);
  method[1] = v6;
  if (v6)
  {
    v7 = v6;
  }

  v8 = *(a2 + 24);
  method[2] = *(a2 + 16);
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
  }

  method[3] = v8;
  return method;
}

- (uint64_t)_invokeMethod:(uint64_t)method
{
  v2 = *(method + 24);
  *(method + 24) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<[_WKRemoteObjectRegistry _invokeMethod:]::ReplyBlockCallChecker,(WTF::DestructionThread)2>::deref(v2);
  }

  v3 = *(method + 8);
  *(method + 8) = 0;
  if (v3)
  {
  }

  v4 = *method;
  *method = 0;
  if (v4)
  {
  }

  return method;
}

- (void)_callReplyWithID:(unint64_t)d blockInvocation:(const void *)invocation
{
  v4 = *invocation;
  if (!*invocation)
  {
    return;
  }

  CFRetain(v4[1]);
  if ((*(*v4 + 2))(v4) != 9)
  {
    goto LABEL_30;
  }

  m_table = self->_pendingReplies.m_impl.m_table;
  p_pendingReplies = &self->_pendingReplies;
  ShouldValidate = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,PendingReply>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,PendingReply>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,(WTF::ShouldValidateKey)1,unsigned long long>(m_table, d);
  v10 = ShouldValidate;
  v11 = *p_pendingReplies;
  if (*p_pendingReplies)
  {
    v11 += 32 * *(v11 - 4);
  }

  if (v11 == ShouldValidate)
  {
    goto LABEL_30;
  }

  v12 = *(ShouldValidate + 8);
  if (v12)
  {
    v13 = v12;
  }

  v15 = v10[2];
  v14 = v10[3];
  if (v14)
  {
    v16 = v14;
  }

  if (*p_pendingReplies)
  {
    v17 = *p_pendingReplies + 32 * *(*p_pendingReplies - 4);
    if (v17 == v10)
    {
      goto LABEL_17;
    }

LABEL_15:
    if (v17 != v10)
    {
      WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,PendingReply>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,PendingReply>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::remove(p_pendingReplies, v10);
    }

    goto LABEL_17;
  }

  if (v10)
  {
    v17 = 0;
    goto LABEL_15;
  }

LABEL_17:
  v18 = [WKRemoteObjectDecoder alloc];
  if ((*(*v4 + 2))(v4) == 9)
  {
    CFRetain(v4[1]);
    v24 = v4;
    v19 = [(WKRemoteObjectDecoder *)v18 initWithInterface:v12 rootObjectDictionary:&v24 replyToSelector:v15];
    v20 = v24;
    v24 = 0;
    if (v20)
    {
      CFRelease(v20[1]);
    }

    v21 = [(WKRemoteObjectDecoder *)v19 decodeObjectOfClass:objc_opt_class() forKey:@"invocation"];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    [v22 setTarget:v14];
    [v22 invoke];
    if (v22)
    {
    }

    if (v19)
    {
    }

    if (v14)
    {
    }

    if (v12)
    {
    }

LABEL_30:
    CFRelease(v4[1]);
    return;
  }

  __break(0xC471u);
}

- (void)_releaseReplyWithID:(unint64_t)d
{
  p_pendingReplies = &self->_pendingReplies;
  ShouldValidate = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,PendingReply>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,PendingReply>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,(WTF::ShouldValidateKey)1,unsigned long long>(self->_pendingReplies.m_impl.m_table, d);
  if (*p_pendingReplies)
  {
    v5 = *p_pendingReplies + 32 * *(*p_pendingReplies - 4);
    if (v5 == ShouldValidate)
    {
      return;
    }
  }

  else
  {
    if (!ShouldValidate)
    {
      return;
    }

    v5 = 0;
  }

  if (v5 != ShouldValidate)
  {

    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,PendingReply>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,PendingReply>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::remove(p_pendingReplies, ShouldValidate);
  }
}

- (unsigned)_invokeMethod:()WTF::DestructionThread
{
  if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    v1 = result;
    atomic_store(1u, result);
    v2 = WTF::fastMalloc(0x10);
    *v2 = &unk_1F10EEE90;
    *(v2 + 1) = v1;
    v3 = v2;
    WTF::ensureOnMainRunLoop();
    result = v3;
    if (v3)
    {
      return (*(*v3 + 8))(v3);
    }
  }

  return result;
}

- (uint64_t)_invokeMethod:()WTF::DestructionThread
{
  v2 = *(result + 8);
  if (v2)
  {
    if ((*(v2 + 24) & 1) == 0)
    {
      v3 = *(*(v2 + 8) + 8);
      if (v3)
      {
        (**v3)(v3);
        v5 = *(v2 + 16);
        WebKit::RemoteObjectRegistry::send<Messages::RemoteObjectRegistry::ReleaseUnusedReplyBlock>(v3, &v5);
        (*(*v3 + 8))(v3);
      }
    }

    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v4)
    {
    }

    return WTF::fastFree(v2, a2);
  }

  return result;
}

@end