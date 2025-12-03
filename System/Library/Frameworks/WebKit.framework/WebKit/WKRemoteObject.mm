@interface WKRemoteObject
- (BOOL)conformsToProtocol:(id)protocol;
- (id).cxx_construct;
- (id)_initWithObjectRegistry:(id)registry interface:(id)interface;
- (id)methodSignatureForSelector:(SEL)selector;
@end

@implementation WKRemoteObject

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (id)_initWithObjectRegistry:(id)registry interface:(id)interface
{
  v9.receiver = self;
  v9.super_class = WKRemoteObject;
  v6 = [(WKRemoteObject *)&v9 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    WTF::RetainPtr<NSNumber>::operator=(&v6->_objectRegistry.m_ptr, registry);
    WTF::RetainPtr<NSNumber>::operator=(p_isa + 2, interface);
  }

  return p_isa;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v6.receiver = self;
  v6.super_class = WKRemoteObject;
  return [(WKRemoteObject *)&v6 conformsToProtocol:?]|| protocol_conformsToProtocol([(_WKRemoteObjectInterface *)self->_interface.m_ptr protocol], protocol);
}

- (id)methodSignatureForSelector:(SEL)selector
{
  selectorCopy = selector;
  if (selector)
  {
    protocol = [(_WKRemoteObjectInterface *)self->_interface.m_ptr protocol];
    v6 = protocol;
    if (protocol)
    {
      v7 = protocol;
    }

    MethodDescription = protocol_getMethodDescription(v6, selectorCopy, 1, 1);
    types = MethodDescription.types;
    if ((MethodDescription.name || (v12 = protocol_getMethodDescription(v6, selectorCopy, 0, 1), types = v12.types, v12.name)) && types)
    {
      v10 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:types];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = WKRemoteObject;
      v10 = [(WKRemoteObject *)&v13 methodSignatureForSelector:selectorCopy];
    }

    selectorCopy = v10;
    if (v6)
    {
    }
  }

  return selectorCopy;
}

@end