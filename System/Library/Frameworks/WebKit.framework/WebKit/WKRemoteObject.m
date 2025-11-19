@interface WKRemoteObject
- (BOOL)conformsToProtocol:(id)a3;
- (id).cxx_construct;
- (id)_initWithObjectRegistry:(id)a3 interface:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
@end

@implementation WKRemoteObject

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (id)_initWithObjectRegistry:(id)a3 interface:(id)a4
{
  v9.receiver = self;
  v9.super_class = WKRemoteObject;
  v6 = [(WKRemoteObject *)&v9 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    WTF::RetainPtr<NSNumber>::operator=(&v6->_objectRegistry.m_ptr, a3);
    WTF::RetainPtr<NSNumber>::operator=(p_isa + 2, a4);
  }

  return p_isa;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v6.receiver = self;
  v6.super_class = WKRemoteObject;
  return [(WKRemoteObject *)&v6 conformsToProtocol:?]|| protocol_conformsToProtocol([(_WKRemoteObjectInterface *)self->_interface.m_ptr protocol], a3);
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(_WKRemoteObjectInterface *)self->_interface.m_ptr protocol];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    MethodDescription = protocol_getMethodDescription(v6, v3, 1, 1);
    types = MethodDescription.types;
    if ((MethodDescription.name || (v12 = protocol_getMethodDescription(v6, v3, 0, 1), types = v12.types, v12.name)) && types)
    {
      v10 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:types];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = WKRemoteObject;
      v10 = [(WKRemoteObject *)&v13 methodSignatureForSelector:v3];
    }

    v3 = v10;
    if (v6)
    {
    }
  }

  return v3;
}

@end