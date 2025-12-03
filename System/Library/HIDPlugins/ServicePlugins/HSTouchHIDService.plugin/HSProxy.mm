@interface HSProxy
+ (BOOL)resolveInstanceMethod:(SEL)method;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)hsProxyAlive;
- (BOOL)hsProxyAsync;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (id).cxx_construct;
@end

@implementation HSProxy

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  if (!method)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HSRemoteObject.mm" lineNumber:744 description:{@"Invalid parameter not satisfying: %@", @"sel"}];
  }

  Name = sel_getName(method);
  if (Name)
  {
    v6 = 0;
    do
    {
      while (1)
      {
        v8 = *Name++;
        v7 = v8;
        if (v8 != 58)
        {
          break;
        }

        ++v6;
      }
    }

    while (v7);
    strcpy(types, "@@:@@@@@@@@@@@@");
    if (v6 <= 0xC)
    {
      types[v6 + 3] = 0;
      v9 = objc_opt_class();
      if (v6 >= 4)
      {
        abort();
      }

      LOBYTE(Name) = class_addMethod(v9, method, *(&off_10A2F0 + v6), types);
    }

    else
    {
      LOBYTE(Name) = 0;
    }
  }

  return Name;
}

- (BOOL)hsProxyAlive
{
  cntrl = self->mapper.__cntrl_;
  if (!cntrl)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(cntrl);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  ptr = self->mapper.__ptr_;
  if (ptr)
  {
    v7 = *(ptr + 2);
    std::mutex::lock((v7 + 112));
    v8 = *(v7 + 224);
    std::mutex::unlock((v7 + 112));
    v9 = v8 == 1;
  }

  else
  {
    v9 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v9;
}

- (BOOL)hsProxyAsync
{
  cntrl = self->mapper.__cntrl_;
  if (cntrl && (v4 = std::__shared_weak_count::lock(cntrl)) != 0)
  {
    ptr = self->mapper.__ptr_;
    if (ptr)
    {
      v6 = *(ptr + 40);
    }

    else
    {
      v6 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)isKindOfClass:(Class)class
{
  v9.receiver = self;
  v9.super_class = HSProxy;
  if ([(HSProxy *)&v9 isKindOfClass:?])
  {
    return 1;
  }

  v6 = NSStringFromClass(class);
  v7 = proxyFn1(self, "HSProxy_isKindOfClass:", v6);

  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = HSProxy;
  if ([(HSProxy *)&v9 respondsToSelector:?])
  {
    return 1;
  }

  v6 = NSStringFromSelector(selector);
  v7 = proxyFn1(self, "HSProxy_respondsToSelector:", v6);

  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v9.receiver = self;
  v9.super_class = HSProxy;
  if ([(HSProxy *)&v9 conformsToProtocol:protocolCopy])
  {
    bOOLValue = 1;
  }

  else
  {
    v6 = NSStringFromProtocol(protocolCopy);
    v7 = proxyFn1(self, "HSProxy_conformsToProtocol:", v6);

    if (v7)
    {
      bOOLValue = [v7 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end