@interface CTXPCNotificationProxy
- (BOOL)_resolvePlaceholders_sync:(id)placeholders_sync;
- (CTXPCDataProviderInterface)dataProviderDelegate;
- (CTXPCNotificationProxy)initWithRegistry:(const void *)registry queue:(queue)queue;
- (CTXPCNotificationSinkInterface)sinkDelegate;
- (id).cxx_construct;
- (id)_contextForSlotIDPlaceholder_sync:(id)placeholder_sync;
- (id)_contextForUUIDPlaceholder_sync:(id)placeholder_sync;
- (id)methodSignatureForSelector:(SEL)selector;
- (queue)queue;
- (shared_ptr<const)registry;
- (void)anyClientRespondsToSelector:(SEL)selector completion:(id)completion;
- (void)forwardInvocation:(id)invocation;
- (void)setQueue:(queue)queue;
- (void)setRegistry:(shared_ptr<const Registry>)registry;
@end

@implementation CTXPCNotificationProxy

- (CTXPCDataProviderInterface)dataProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProviderDelegate);

  return WeakRetained;
}

- (CTXPCNotificationSinkInterface)sinkDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sinkDelegate);

  return WeakRetained;
}

- (CTXPCNotificationProxy)initWithRegistry:(const void *)registry queue:(queue)queue
{
  p_registry = &self->_registry;
  v8 = *registry;
  v7 = *(registry + 1);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_registry.__cntrl_;
  p_registry->__ptr_ = v8;
  p_registry->__cntrl_ = v7;
  if (cntrl)
  {
    sub_100004A34(cntrl);
  }

  v10 = *queue.fObj.fObj;
  *queue.fObj.fObj = 0;
  fObj = self->_queue.fObj.fObj;
  self->_queue.fObj.fObj = v10;
  if (fObj)
  {
    dispatch_release(fObj);
  }

  objc_storeStrong(&self->_protocol, &OBJC_PROTOCOL___CoreTelephonyClientDelegateProxyInterface);
  return self;
}

- (id)_contextForSlotIDPlaceholder_sync:(id)placeholder_sync
{
  placeholder_syncCopy = placeholder_sync;
  dataProviderDelegate = [(CTXPCNotificationProxy *)self dataProviderDelegate];
  v6 = [dataProviderDelegate contextForSlot:{objc_msgSend(placeholder_syncCopy, "slot")}];

  return v6;
}

- (id)_contextForUUIDPlaceholder_sync:(id)placeholder_sync
{
  placeholder_syncCopy = placeholder_sync;
  dataProviderDelegate = [(CTXPCNotificationProxy *)self dataProviderDelegate];
  uuid = [placeholder_syncCopy uuid];
  v7 = [dataProviderDelegate contextForUUID:uuid];

  return v7;
}

- (BOOL)_resolvePlaceholders_sync:(id)placeholders_sync
{
  placeholders_syncCopy = placeholders_sync;
  methodSignature = [placeholders_syncCopy methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];
  if (numberOfArguments >= 3)
  {
    v6 = 0;
    v7 = 2;
    while (1)
    {
      __dst = 0;
      v19 = 0;
      v20 = 0;
      v8 = [methodSignature getArgumentTypeAtIndex:v7];
      v9 = strlen(v8);
      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1000A2378();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v20) = v9;
      if (v9)
      {
        memmove(&__dst, v8, v9);
      }

      *(&__dst + v10) = 0;
      v11 = SHIBYTE(v20);
      if (SHIBYTE(v20) < 0)
      {
        break;
      }

      if (SHIBYTE(v20) == 1)
      {
        p_dst = &__dst;
        goto LABEL_14;
      }

LABEL_30:
      v6 = ++v7 >= numberOfArguments;
      if (numberOfArguments == v7)
      {
        goto LABEL_31;
      }
    }

    p_dst = __dst;
    if (v19 != 1)
    {
      v13 = 4;
LABEL_28:
      operator delete(p_dst);
LABEL_29:
      if ((v13 | 4) != 4)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_14:
    if (*p_dst != 64)
    {
      v13 = 4;
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    v17 = 0;
    [placeholders_syncCopy getArgument:&v17 atIndex:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [(CTXPCNotificationProxy *)self _contextForSlotIDPlaceholder_sync:v17];
      if (!v16)
      {
        goto LABEL_26;
      }

      [placeholders_syncCopy setArgument:&v16 atIndex:v7];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    v16 = [(CTXPCNotificationProxy *)self _contextForUUIDPlaceholder_sync:v17];
    if (v16)
    {
      [placeholders_syncCopy setArgument:&v16 atIndex:v7];

LABEL_21:
      v13 = 0;
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_27:
      p_dst = __dst;
      goto LABEL_28;
    }

LABEL_26:
    v13 = 1;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v6 = 1;
LABEL_31:

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  [invocationCopy retainArguments];
  selfCopy = self;
  v6 = invocationCopy;
  operator new();
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v5 = &byte_1017D2143;
  v6 = 8;
  while (1)
  {
    MethodDescription = protocol_getMethodDescription(self->_protocol, selector, *(v5 - 1), *v5);
    if (MethodDescription.name)
    {
      break;
    }

    v5 += 2;
    v6 -= 2;
    if (!v6)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  v8 = [NSMethodSignature signatureWithObjCTypes:MethodDescription.types];
LABEL_6:

  return v8;
}

- (void)anyClientRespondsToSelector:(SEL)selector completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100125B40;
  v9[3] = &unk_101E2A5F0;
  objc_copyWeak(v11, &location);
  v11[1] = selector;
  v10 = completionCopy;
  fObj = self->_queue.fObj.fObj;
  v8 = completionCopy;
  dispatch_async(fObj, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (shared_ptr<const)registry
{
  cntrl = self->_registry.__cntrl_;
  *v2 = self->_registry.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setRegistry:(shared_ptr<const Registry>)registry
{
  p_registry = &self->_registry;
  v5 = *registry.__ptr_;
  v4 = *(registry.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_registry.__cntrl_;
  p_registry->__ptr_ = v5;
  p_registry->__cntrl_ = v4;
  if (cntrl)
  {
    sub_100004A34(cntrl);
  }
}

- (queue)queue
{
  fObj = self->_queue.fObj.fObj;
  *v2 = fObj;
  if (fObj)
  {
    dispatch_retain(fObj);
  }

  return fObj;
}

- (void)setQueue:(queue)queue
{
  v4 = *queue.fObj.fObj;
  if (*queue.fObj.fObj)
  {
    dispatch_retain(*queue.fObj.fObj);
  }

  fObj = self->_queue.fObj.fObj;
  self->_queue.fObj.fObj = v4;
  if (fObj)
  {

    dispatch_release(fObj);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end