@interface CKWeakObjectCallbackProxy
- (CKWeakObjectCallbackProxy)initWithWeakObject:(id)object callbackProtocol:(id)protocol;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)weakObject;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CKWeakObjectCallbackProxy

- (id)weakObject
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);

  return WeakRetained;
}

- (CKWeakObjectCallbackProxy)initWithWeakObject:(id)object callbackProtocol:(id)protocol
{
  objectCopy = object;
  protocolCopy = protocol;
  v10 = objc_msgSend_init(self, v8, v9);
  v11 = v10;
  if (v10)
  {
    *(v10 + 8) = objectCopy != 0;
    objc_storeWeak((v10 + 16), objectCopy);
    objc_storeStrong(&v11->_callbackProtocol, protocol);
  }

  return v11;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = objc_msgSend_callbackProtocol(self, a2, selector);
  MethodDescription = protocol_getMethodDescription(v4, selector, 1, 1);

  if (MethodDescription.name)
  {
    v7 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v6, MethodDescription.types);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  objc_msgSend_retainArguments(invocationCopy, v5, v6);
  v9 = objc_msgSend_callbackProtocol(self, v7, v8);
  v12 = objc_msgSend_selector(invocationCopy, v10, v11);
  name = protocol_getMethodDescription(v9, v12, 1, 1).name;

  if (name)
  {
    v18 = objc_msgSend_weakObject(self, v14, v15);
    if (v18)
    {
      objc_msgSend_setTarget_(invocationCopy, v16, v18);
      objc_msgSend_invoke(invocationCopy, v19, v20);
    }

    else
    {
      v21 = objc_msgSend_hadObject(self, v16, v17);
      v24 = objc_msgSend_selector(invocationCopy, v22, v23);
      v25 = NSStringFromSelector(v24);
      v27 = v25;
      if (v21)
      {
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKInternalErrorDomain", 1000, @"Weak object went nil before proxy could forward %@ to it.", v25);
      }

      else
      {
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKInternalErrorDomain", 1000, @"Proxy never had a real target for %@", v25);
      }
      v28 = ;

      v31 = objc_msgSend_callbackProtocol(self, v29, v30);
      objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(invocationCopy, v32, v28, v31);
    }
  }

  else
  {
    v33.receiver = self;
    v33.super_class = CKWeakObjectCallbackProxy;
    [(CKWeakObjectCallbackProxy *)&v33 forwardInvocation:invocationCopy];
  }
}

@end