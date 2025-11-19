@interface WKObject
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)isMemberOfClass:(Class)a3;
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
- (BOOL)respondsToSelector:(SEL)a3;
- (Class)classForCoder;
- (Class)classForKeyedArchiver;
- (NSString)debugDescription;
- (NSString)description;
- (Object)_apiObject;
- (id)methodSignatureForSelector:(SEL)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  initializeTargetIfNeeded(self);
  m_ptr = self->_target.m_ptr;

  return [m_ptr isEqual:a3];
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

- (BOOL)isKindOfClass:(Class)a3
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    v4 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v4;
    if (m_ptr)
    {
    }
  }

  return objc_opt_isKindOfClass() & 1;
}

- (BOOL)isMemberOfClass:(Class)a3
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    v5 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v5;
    if (m_ptr)
    {
    }
  }

  v7 = self->_target.m_ptr;

  return [v7 isMemberOfClass:a3];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  initializeTargetIfNeeded(self);
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = WKObject;
  return [(WKObject *)&v6 respondsToSelector:a3];
}

- (BOOL)conformsToProtocol:(id)a3
{
  initializeTargetIfNeeded(self);
  if (([self->_target.m_ptr conformsToProtocol:a3]& 1) != 0)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = WKObject;
  return [(WKObject *)&v6 conformsToProtocol:a3];
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 classForKeyedArchiver];
}

- (void)forwardInvocation:(id)a3
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    v5 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v5;
    if (m_ptr)
    {
    }
  }

  v7 = self->_target.m_ptr;

  [a3 invokeWithTarget:v7];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    v5 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v5;
    if (m_ptr)
    {
    }
  }

  v7 = self->_target.m_ptr;

  return [v7 methodSignatureForSelector:a3];
}

- (BOOL)isNSObject__
{
  if (!self->_hasInitializedTarget)
  {
    self->_hasInitializedTarget = 1;
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
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
    v3 = [(WKObject *)self _web_createTarget];
    m_ptr = self->_target.m_ptr;
    self->_target.m_ptr = v3;
    if (m_ptr)
    {
    }
  }

  v5 = self->_target.m_ptr;

  return [v5 isNSValue];
}

@end