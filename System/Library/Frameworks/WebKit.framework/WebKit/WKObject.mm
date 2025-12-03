@interface WKObject
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)isMemberOfClass:(Class)class;
- (BOOL)isNSArray__;
- (BOOL)isNSCFConstantString__;
- (BOOL)isNSData__;
- (BOOL)isNSDate__;
- (BOOL)isNSDictionary__;
- (BOOL)isNSNumber__;
- (BOOL)isNSObject__;
- (BOOL)isNSOrderedSet__;
- (BOOL)isNSSet__;
- (BOOL)isNSString__;
- (BOOL)isNSTimeZone__;
- (BOOL)isNSValue__;
- (BOOL)respondsToSelector:(SEL)selector;
- (Class)classForCoder;
- (Class)classForKeyedArchiver;
- (NSString)debugDescription;
- (NSString)description;
- (Object)_apiObject;
- (id)methodSignatureForSelector:(SEL)selector;
- (unint64_t)hash;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation WKObject

- (Object)_apiObject
{
  __space = 16;
  IndexedIvars = object_getIndexedIvars(self);
  return std::align(8uLL, 0x10uLL, &IndexedIvars, &__space);
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    __space = 16;
    __ptr = object_getIndexedIvars(self);
    v4 = *std::align(8uLL, 0x10uLL, &__ptr, &__space);
    (*v4)();
    v5.receiver = self;
    v5.super_class = WKObject;
    [(WKObject *)&v5 dealloc];
  }
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  initializeTargetIfNeeded(self);
  m_ptr = self->_target.m_ptr;

  return [m_ptr isEqual:equal];
}

- (unint64_t)hash
{
  initializeTargetIfNeeded(self);
  m_ptr = self->_target.m_ptr;
  if (m_ptr)
  {

    return [m_ptr hash];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WKObject;
    return [(WKObject *)&v5 hash];
  }
}

- (BOOL)isKindOfClass:(Class)class
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  return objc_opt_isKindOfClass() & 1;
}

- (BOOL)isMemberOfClass:(Class)class
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v7 = self->_target.m_ptr;

  return [v7 isMemberOfClass:class];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  initializeTargetIfNeeded(self);
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = WKObject;
  return [(WKObject *)&v6 respondsToSelector:selector];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  initializeTargetIfNeeded(self);
  if (([self->_target.m_ptr conformsToProtocol:protocol]& 1) != 0)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = WKObject;
  return [(WKObject *)&v6 conformsToProtocol:protocol];
}

- (NSString)description
{
  initializeTargetIfNeeded(self);
  m_ptr = self->_target.m_ptr;
  if (m_ptr)
  {

    return [m_ptr description];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WKObject;
    return [(WKObject *)&v5 description];
  }
}

- (NSString)debugDescription
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;
  if (v5)
  {

    return [v5 debugDescription];
  }

  else
  {

    return [(WKObject *)self description];
  }
}

- (Class)classForCoder
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 classForCoder];
}

- (Class)classForKeyedArchiver
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 classForKeyedArchiver];
}

- (void)forwardInvocation:(id)invocation
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v7 = self->_target.m_ptr;

  [invocation invokeWithTarget:v7];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v7 = self->_target.m_ptr;

  return [v7 methodSignatureForSelector:selector];
}

- (BOOL)isNSObject__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSObject];
}

- (BOOL)isNSArray__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSArray];
}

- (BOOL)isNSCFConstantString__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSCFConstantString];
}

- (BOOL)isNSData__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSData];
}

- (BOOL)isNSDate__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSDate];
}

- (BOOL)isNSDictionary__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSDictionary];
}

- (BOOL)isNSNumber__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSNumber];
}

- (BOOL)isNSOrderedSet__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSOrderedSet];
}

- (BOOL)isNSSet__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSSet];
}

- (BOOL)isNSString__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSString];
}

- (BOOL)isNSTimeZone__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSTimeZone];
}

- (BOOL)isNSValue__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    _web_createTarget = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = _web_createTarget;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSValue];
}

@end