@interface NSXPCInterface
+ (NSXPCInterface)interfaceWithProtocol:(Protocol *)protocol;
+ (id)signatureForBlock:(id)a3;
- (BOOL)_hasProxiesInArgumentsOfSelector:(SEL)a3;
- (BOOL)_hasProxiesInReplyBlockArgumentsOfSelector:(SEL)a3;
- (BOOL)_selectorIsAllowed:(SEL)a3 isReply:(BOOL)a4 methodSignature:(id *)a5 allowedClasses:(id *)a6;
- (Class)_customSubclass;
- (Class)_returnClassForSelector:(SEL)a3;
- (Class)classForSelector:(SEL)a3 argumentIndex:(unint64_t)a4 ofReply:(BOOL)a5;
- (NSSet)classesForSelector:(SEL)sel argumentIndex:(NSUInteger)arg ofReply:(BOOL)ofReply;
- (NSXPCInterface)init;
- (NSXPCInterface)interfaceForSelector:(SEL)sel argumentIndex:(NSUInteger)arg ofReply:(BOOL)ofReply;
- (id)_generateAndCacheMethodSignatureForRemoteSelector:(SEL)a3;
- (id)_interfaceForArgument:(unint64_t)a3 ofSelector:(SEL)a4 reply:(BOOL)a5;
- (id)_methodSignatureForRemoteSelector:(SEL)a3;
- (id)_methodSignatureForReplyBlockOfSelector:(SEL)a3;
- (id)debugDescription;
- (id)replyBlockSignatureForSelector:(SEL)a3;
- (unint64_t)_respondsToRemoteSelector:(SEL)a3;
- (unint64_t)version;
- (unint64_t)versionForSelector:(SEL)a3;
- (void)_locked_methodInfoForSelector:(int)a3 createIfNecessary:;
- (void)dealloc;
- (void)setClass:(Class)a3 forSelector:(SEL)a4 argumentIndex:(unint64_t)a5 ofReply:(BOOL)a6;
- (void)setClasses:(NSSet *)classes forSelector:(SEL)sel argumentIndex:(NSUInteger)arg ofReply:(BOOL)ofReply;
- (void)setInterface:(NSXPCInterface *)ifc forSelector:(SEL)sel argumentIndex:(NSUInteger)arg ofReply:(BOOL)ofReply;
- (void)setProtocol:(Protocol *)protocol;
- (void)setVersion:(unint64_t)a3 forSelector:(SEL)a4;
- (void)setXPCType:(xpc_type_t)type forSelector:(SEL)sel argumentIndex:(NSUInteger)arg ofReply:(BOOL)ofReply;
- (xpc_type_t)XPCTypeForSelector:(SEL)sel argumentIndex:(NSUInteger)arg ofReply:(BOOL)ofReply;
@end

@implementation NSXPCInterface

- (Class)_customSubclass
{
  os_unfair_lock_lock(&self->_knownSelectorsLock);
  xpcDOSubclass = self->_xpcDOSubclass;
  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  if (xpcDOSubclass)
  {
    return xpcDOSubclass;
  }

  return objc_opt_class();
}

- (NSXPCInterface)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSXPCInterface;
  result = [(NSXPCInterface *)&v3 init];
  if (result)
  {
    result->_remoteVersion = 1;
    result->_knownSelectorsLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  methodInfo = self->_methodInfo;
  if (methodInfo)
  {
    CFDictionaryApplyFunction(methodInfo, _NSXPCInterfaceMethodInfoDealloc, 0);
    CFRelease(self->_methodInfo);
  }

  knownSelectors = self->_knownSelectors;
  if (knownSelectors)
  {
    CFRelease(knownSelectors);
  }

  v5.receiver = self;
  v5.super_class = NSXPCInterface;
  [(NSXPCInterface *)&v5 dealloc];
}

+ (NSXPCInterface)interfaceWithProtocol:(Protocol *)protocol
{
  v4 = objc_opt_new();
  [v4 setProtocol:protocol];

  return v4;
}

- (id)debugDescription
{
  v11 = *MEMORY[0x1E69E9840];
  protocol = self->_protocol;
  if (protocol)
  {
    Name = protocol_getName(protocol);
  }

  else
  {
    Name = 0;
  }

  v10.receiver = self;
  v10.super_class = NSXPCInterface;
  v5 = [(NSXPCInterface *)&v10 debugDescription];
  v6 = "(none set)";
  if (Name)
  {
    v6 = Name;
  }

  v7 = [(NSString *)NSMutableString stringWithFormat:@"%@\nProtocol: %s\n", v5, v6];
  os_unfair_lock_lock(&self->_knownSelectorsLock);
  methodInfo = self->_methodInfo;
  if (methodInfo)
  {
    CFDictionaryApplyFunction(methodInfo, _NSXPCInterfaceDebugDescriptionHelper, v7);
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  return v7;
}

+ (id)signatureForBlock:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = _Block_signature(a3);

  return [NSString stringWithUTF8String:v4];
}

- (void)setProtocol:(Protocol *)protocol
{
  cls[386] = *MEMORY[0x1E69E9840];
  if (self->_protocol != protocol)
  {
    v5 = objc_autoreleasePoolPush();
    os_unfair_lock_lock(&self->_knownSelectorsLock);
    os_unfair_lock_lock_with_options();
    Name = protocol_getName(protocol);
    if (!strncmp(Name, "EXExtensionContextHosting", 0x19uLL))
    {
      self->_specialCaseObject = 1;
    }

    if (strchr(Name, 46))
    {
      v7 = @"..__NSXPCInterfaceProxy_%s";
    }

    else
    {
      v7 = @"__NSXPCInterfaceProxy_%s";
    }

    v8 = [+[NSString stringWithFormat:](NSString UTF8String:v7];
    v9 = objc_lookUpClass(v8);
    bzero(cls, 0xC10uLL);
    if (!v9)
    {
      v10 = objc_opt_class();
      cls[0] = objc_allocateClassPair(v10, v8, 0);
    }

    methodInfo = self->_methodInfo;
    if (methodInfo)
    {
      CFRelease(methodInfo);
    }

    self->_methodInfo = 0;
    setProtocolMetadata(protocol, cls);
    if (cls[0])
    {
      setProtocolContextFlush(cls);
      objc_registerClassPair(cls[0]);
    }

    os_unfair_lock_unlock(&setProtocol__globalRuntimeLockForObjC);
    v12 = cls[0];
    if (v9)
    {
      v12 = v9;
    }

    self->_xpcDOSubclass = v12;
    os_unfair_lock_unlock(&self->_knownSelectorsLock);
    self->_protocol = protocol;
    objc_autoreleasePoolPop(v5);
  }
}

- (void)_locked_methodInfoForSelector:(int)a3 createIfNecessary:
{
  if (!a1)
  {
    return 0;
  }

  Mutable = *(a1 + 32);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, &kNSXPCSelKeyCallbacks, 0);
    *(a1 + 32) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (Value)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3 == 0;
  }

  if (!v8)
  {
    MethodTypeEncoding = _protocol_getMethodTypeEncoding();
    v10 = *(a1 + 8);
    v11 = key;
    if (MethodTypeEncoding)
    {
      v12 = 1;
    }

    else
    {
      MethodTypeEncoding = _protocol_getMethodTypeEncoding();
      v10 = *(a1 + 8);
      v11 = key;
      if (!MethodTypeEncoding)
      {
        if (protocol_getMethodDescription(v10, key, 1, 1).name || protocol_getMethodDescription(*(a1 + 8), key, 0, 1).name)
        {
          Name = protocol_getName(*(a1 + 8));
          v18 = [NSString stringWithFormat:@"NSXPCInterface: Unable to get extended method signature from Protocol data (%s / %s). Use of clang is required for NSXPCInterface.", Name, sel_getName(key)];
          goto LABEL_21;
        }

        return 0;
      }

      v12 = 0;
    }

    if (!isMethodFromNSObjectProtocol(v10, v11, v12))
    {
      v13 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodTypeEncoding];
      if (v13)
      {
        v14 = v13;
        Value = malloc_type_malloc(0x30uLL, 0x10800402B8B78F1uLL);
        *Value = 0;
        Value[1] = 0;
        Value[2] = 0;
        Value[3] = 1;
        Value[4] = 0;
        *(Value + 10) = -1;
        *(Value + 22) = 0;
        CFDictionarySetValue(*(a1 + 32), key, Value);
        v15 = protocol_getName(*(a1 + 8));
        setProtocolMetadataWithSignature(key, v15, v14, Value, 0);
        return Value;
      }

      v17 = protocol_getName(*(a1 + 8));
      v18 = [NSString stringWithFormat:@"NSXPCInterface: Unable to get method signature from Protocol data (%s / %s)", v17, sel_getName(key)];
LABEL_21:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0]);
    }

    return 0;
  }

  return Value;
}

- (void)setClasses:(NSSet *)classes forSelector:(SEL)sel argumentIndex:(NSUInteger)arg ofReply:(BOOL)ofReply
{
  v38 = *MEMORY[0x1E69E9840];
  protocol = self->_protocol;
  if (!protocol)
  {
    v26 = [NSString stringWithFormat:@"%@: Protocol must be set before calling this method.", _NSMethodExceptionProem(self, a2), v31, v32];
    goto LABEL_29;
  }

  if (!sel)
  {
    v26 = [NSString stringWithFormat:@"%@: Selector argument must be non-NULL.", _NSMethodExceptionProem(self, a2), v31, v32];
    goto LABEL_29;
  }

  v10 = ofReply;
  if (!selectorInProtocol(sel, protocol))
  {
    v27 = _NSMethodExceptionProem(self, a2);
    Name = sel_getName(sel);
    v26 = [NSString stringWithFormat:@"%@: Selector '%s' is not in protocol '%s', or is not an instance method.", v27, Name, protocol_getName(protocol)];
LABEL_29:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v26 userInfo:0]);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_22:
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Classes argument must be an NSSet of Class objects.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v21);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = [(NSSet *)classes countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v13)
  {
    v14 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(classes);
        }

        if (!class_getName(*(*(&v34 + 1) + 8 * i)))
        {
          goto LABEL_22;
        }
      }

      v13 = [(NSSet *)classes countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v13);
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v16 = [(NSXPCInterface *)self _locked_methodInfoForSelector:1 createIfNecessary:?];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_23;
  }

  v18 = 2;
  if (v10)
  {
    v18 = 1;
  }

  v19 = [v16[v18] mutableCopy];
  v20 = v19;
  if (!v19)
  {
LABEL_23:
    v22 = _NSMethodExceptionProem(self, a2);
    v23 = sel_getName(sel);
    v24 = @"selector";
    if (v10)
    {
      v24 = @"reply block of selector";
    }

    v25 = [NSString stringWithFormat:@"%@: No arguments were detected for %@ %s", v22, v24, v23];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v25 userInfo:0]);
  }

  if ([v19 count] <= arg)
  {
    v29 = _NSMethodExceptionProem(self, a2);
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Argument index  '%ld' is out of range for selector %s. The maximum index is %ld.", v29, arg, sel_getName(sel), objc_msgSend(v20, "count") - 1), 0}];
    objc_exception_throw(v30);
  }

  [v20 replaceObjectAtIndex:arg withObject:classes];
  if (v10)
  {

    v17[1] = [v20 copy];
  }

  else
  {

    v17[2] = [v20 copy];
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
}

- (NSSet)classesForSelector:(SEL)sel argumentIndex:(NSUInteger)arg ofReply:(BOOL)ofReply
{
  protocol = self->_protocol;
  if (!protocol)
  {
    v23 = [NSString stringWithFormat:@"%@: Protocol must be set before calling this method.", _NSMethodExceptionProem(self, a2), v28, v29];
    goto LABEL_25;
  }

  if (!sel)
  {
    v23 = [NSString stringWithFormat:@"%@: Selector argument must be non-NULL.", _NSMethodExceptionProem(self, a2), v28, v29];
    goto LABEL_25;
  }

  v9 = ofReply;
  if (!selectorInProtocol(sel, protocol))
  {
    v24 = _NSMethodExceptionProem(self, a2);
    Name = sel_getName(sel);
    v23 = [NSString stringWithFormat:@"%@: Selector '%s' is not in protocol '%s', or is not an instance method.", v24, Name, protocol_getName(protocol)];
LABEL_25:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0]);
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v11 = [(NSXPCInterface *)self _locked_methodInfoForSelector:1 createIfNecessary:?];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = 2;
  if (v9)
  {
    v12 = 1;
  }

  v13 = v11[v12];
  if (!v13)
  {
LABEL_19:
    v19 = _NSMethodExceptionProem(self, a2);
    v20 = sel_getName(sel);
    v21 = @"selector";
    if (v9)
    {
      v21 = @"reply block of selector";
    }

    v22 = [NSString stringWithFormat:@"%@: No arguments were detected for %@ %s", v19, v21, v20];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v22 userInfo:0]);
  }

  if ([v11[v12] count] <= arg)
  {
    v26 = _NSMethodExceptionProem(self, a2);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Argument index  '%ld' is out of range for selector %s. The maximum index is %ld.", v26, arg, sel_getName(sel), objc_msgSend(v13, "count") - 1), 0}];
    objc_exception_throw(v27);
  }

  v14 = [v13 objectAtIndex:arg];
  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  if (v14 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    Class = object_getClass(v14);
    if (class_isMetaClass(Class))
    {
      v18 = MEMORY[0x1E695DFD8];

      return [v18 setWithObject:v14];
    }

    else
    {
      return v14;
    }
  }

  else
  {
    v15 = MEMORY[0x1E695DFD8];

    return [v15 set];
  }
}

- (void)setInterface:(NSXPCInterface *)ifc forSelector:(SEL)sel argumentIndex:(NSUInteger)arg ofReply:(BOOL)ofReply
{
  protocol = self->_protocol;
  if (!protocol)
  {
    v31 = [NSString stringWithFormat:@"%@: Protocol must be set before calling this method.", _NSMethodExceptionProem(self, a2), v47, v48];
    goto LABEL_37;
  }

  if (!sel)
  {
    v31 = [NSString stringWithFormat:@"%@: Selector argument must be non-NULL.", _NSMethodExceptionProem(self, a2), v47, v48];
    goto LABEL_37;
  }

  v10 = ofReply;
  if (!selectorInProtocol(sel, protocol))
  {
    v32 = _NSMethodExceptionProem(self, a2);
    Name = sel_getName(sel);
    v31 = [NSString stringWithFormat:@"%@: Selector '%s' is not in protocol '%s', or is not an instance method.", v32, Name, protocol_getName(protocol)];
    goto LABEL_37;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = [NSString stringWithFormat:@"%@: Invalid value for interface argument.", _NSMethodExceptionProem(self, a2), v47, v48];
LABEL_37:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v31 userInfo:0]);
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v13 = [(NSXPCInterface *)self _locked_methodInfoForSelector:1 createIfNecessary:?];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v15 = 2;
  if (v10)
  {
    v15 = 1;
  }

  v16 = [v13[v15] mutableCopy];
  v17 = v16;
  if (!v16)
  {
LABEL_30:
    v27 = _NSMethodExceptionProem(self, a2);
    v28 = sel_getName(sel);
    v29 = @"selector";
    if (v10)
    {
      v29 = @"reply block of selector";
    }

    v30 = [NSString stringWithFormat:@"%@: No arguments were detected for %@ %s", v27, v29, v28];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v30 userInfo:0]);
  }

  if ([v16 count] <= arg)
  {
    v34 = _NSMethodExceptionProem(self, a2);
    v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Argument index %ld is out of range for selector (%s). The maximum index is %ld.", v34, arg, sel_getName(sel), objc_msgSend(v17, "count") - 1), 0}];
    objc_exception_throw(v35);
  }

  if (v10)
  {
    v18 = *v14;
    if (!*v14)
    {
      v40 = _NSMethodExceptionProem(self, a2);
      v41 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: No reply block signature has been set for selector %s", v40, sel_getName(sel)), 0}];
      objc_exception_throw(v41);
    }

    if ([*v14 numberOfArguments] < 2 || arg + 1 >= objc_msgSend(v18, "numberOfArguments"))
    {
      v36 = _NSMethodExceptionProem(self, a2);
      v37 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Argument '%ld' of selector '%s' does not exist.", v36, arg, sel_getName(sel)), 0}];
      objc_exception_throw(v37);
    }

    v19 = [v18 _argInfo:?];
    v20 = v19[17];
    if ((v20 & 0x80) != 0)
    {
      v20 = *(*v19 + 34);
    }

    if ((v20 & 0x2000) == 0)
    {
      v21 = _NSMethodExceptionProem(self, a2);
      v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Argument '%ld' of selector '%s' is not an object.", v21, arg, sel_getName(sel)), 0}];
      objc_exception_throw(v22);
    }
  }

  else
  {
    v23 = methodSignatureForSelectorInProtocol(sel, self->_protocol);
    v24 = v23;
    if (!v23)
    {
      v42 = _NSMethodExceptionProem(self, a2);
      v43 = sel_getName(sel);
      v44 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Selector '%s' not found in protocol '%s'.", v42, v43, protocol_getName(self->_protocol)), 0}];
      objc_exception_throw(v44);
    }

    if ([v23 numberOfArguments] < 3 || arg + 2 >= objc_msgSend(v24, "numberOfArguments"))
    {
      v38 = _NSMethodExceptionProem(self, a2);
      v39 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Argument '%ld' of selector '%s' does not exist.", v38, arg, sel_getName(sel)), 0}];
      objc_exception_throw(v39);
    }

    v25 = [v24 _argInfo:?];
    v26 = v25[17];
    if ((v26 & 0x80) != 0)
    {
      v26 = *(*v25 + 34);
    }

    if ((v26 & 0x2000) == 0)
    {
      v45 = _NSMethodExceptionProem(self, a2);
      v46 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Argument '%ld' of selector '%s' is not an object.", v45, arg, sel_getName(sel)), 0}];
      objc_exception_throw(v46);
    }
  }

  [v17 replaceObjectAtIndex:arg withObject:ifc];
  if (v10)
  {

    v14[1] = [v17 copy];
    *(v14 + 45) = 1;
  }

  else
  {

    v14[2] = [v17 copy];
    *(v14 + 44) = 1;
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
}

- (NSXPCInterface)interfaceForSelector:(SEL)sel argumentIndex:(NSUInteger)arg ofReply:(BOOL)ofReply
{
  protocol = self->_protocol;
  if (!protocol)
  {
    v25 = _NSMethodExceptionProem(self, a2);
    v16 = @"%@: Protocol must be set before calling this method.";
    goto LABEL_16;
  }

  if (!sel)
  {
    v25 = _NSMethodExceptionProem(self, a2);
    v16 = @"%@: Selector argument must be non-NULL.";
    goto LABEL_16;
  }

  v9 = ofReply;
  if (!selectorInProtocol(sel, protocol))
  {
    v17 = _NSMethodExceptionProem(self, a2);
    Name = sel_getName(sel);
    v27 = protocol_getName(protocol);
    v25 = v17;
    v16 = @"%@: Selector '%s' is not in protocol '%s', or is not an instance method.";
LABEL_16:
    v18 = [NSString stringWithFormat:v16, v25, Name, v27];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0]);
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v11 = [(NSXPCInterface *)self _locked_methodInfoForSelector:0 createIfNecessary:?];
  if (v11)
  {
    v12 = 2;
    if (v9)
    {
      v12 = 1;
    }

    v13 = v11[v12];
    if (!v13)
    {
      v19 = _NSMethodExceptionProem(self, a2);
      v20 = sel_getName(sel);
      v21 = @"selector";
      if (v9)
      {
        v21 = @"reply block of selector";
      }

      v22 = [NSString stringWithFormat:@"%@: No arguments were detected for %@ %s", v19, v21, v20];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v22 userInfo:0]);
    }

    if ([v11[v12] count] <= arg)
    {
      v23 = _NSMethodExceptionProem(self, a2);
      v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Argument index %ld is out of range for selector (%s)", v23, arg, sel_getName(sel)), 0}];
      objc_exception_throw(v24);
    }

    v14 = [v13 objectAtIndex:arg];
    os_unfair_lock_unlock(&self->_knownSelectorsLock);
    if (objc_opt_isKindOfClass())
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_knownSelectorsLock);
    return 0;
  }
}

- (void)setXPCType:(xpc_type_t)type forSelector:(SEL)sel argumentIndex:(NSUInteger)arg ofReply:(BOOL)ofReply
{
  protocol = self->_protocol;
  if (!protocol)
  {
    v24 = [NSString stringWithFormat:@"%@: Protocol must be set before calling this method.", _NSMethodExceptionProem(self, a2), v29, v30];
    goto LABEL_23;
  }

  if (!sel)
  {
    v24 = [NSString stringWithFormat:@"%@: Selector argument must be non-NULL.", _NSMethodExceptionProem(self, a2), v29, v30];
    goto LABEL_23;
  }

  v10 = ofReply;
  if (!selectorInProtocol(sel, protocol))
  {
    v25 = _NSMethodExceptionProem(self, a2);
    Name = sel_getName(sel);
    v24 = [NSString stringWithFormat:@"%@: Selector '%s' is not in protocol '%s', or is not an instance method.", v25, Name, protocol_getName(protocol)];
LABEL_23:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0]);
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v13 = [(NSXPCInterface *)self _locked_methodInfoForSelector:1 createIfNecessary:?];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_17;
  }

  v15 = 2;
  if (v10)
  {
    v15 = 1;
  }

  v16 = [v13[v15] mutableCopy];
  v17 = v16;
  if (!v16)
  {
LABEL_17:
    v20 = _NSMethodExceptionProem(self, a2);
    v21 = sel_getName(sel);
    v22 = @"selector";
    if (v10)
    {
      v22 = @"reply block of selector";
    }

    v23 = [NSString stringWithFormat:@"%@: No arguments were detected for %@ %s", v20, v22, v21];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v23 userInfo:0]);
  }

  if ([v16 count] <= arg)
  {
    v27 = _NSMethodExceptionProem(self, a2);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Argument index  '%ld' is out of range for selector %s. The maximum index is %ld.", v27, arg, sel_getName(sel), objc_msgSend(v17, "count") - 1), 0}];
    objc_exception_throw(v28);
  }

  v18 = objc_opt_new();
  v19 = v18;
  if (v18)
  {
    *(v18 + 8) = type;
  }

  [v17 replaceObjectAtIndex:arg withObject:v18];

  if (v10)
  {

    v14[1] = [v17 copy];
  }

  else
  {

    v14[2] = [v17 copy];
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
}

- (xpc_type_t)XPCTypeForSelector:(SEL)sel argumentIndex:(NSUInteger)arg ofReply:(BOOL)ofReply
{
  protocol = self->_protocol;
  if (!protocol)
  {
    v17 = [NSString stringWithFormat:@"%@: Protocol must be set before calling this method.", _NSMethodExceptionProem(self, a2), v26, v27];
    goto LABEL_17;
  }

  if (!sel)
  {
    v17 = [NSString stringWithFormat:@"%@: Selector argument must be non-NULL.", _NSMethodExceptionProem(self, a2), v26, v27];
    goto LABEL_17;
  }

  v9 = ofReply;
  if (!selectorInProtocol(sel, protocol))
  {
    v18 = _NSMethodExceptionProem(self, a2);
    Name = sel_getName(sel);
    v17 = [NSString stringWithFormat:@"%@: Selector '%s' is not in protocol '%s', or is not an instance method.", v18, Name, protocol_getName(protocol)];
LABEL_17:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0]);
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v11 = [(NSXPCInterface *)self _locked_methodInfoForSelector:0 createIfNecessary:?];
  if (v11)
  {
    v12 = 2;
    if (v9)
    {
      v12 = 1;
    }

    v13 = v11[v12];
    if (!v13)
    {
      v20 = _NSMethodExceptionProem(self, a2);
      v21 = sel_getName(sel);
      v22 = @"selector";
      if (v9)
      {
        v22 = @"reply block of selector";
      }

      v23 = [NSString stringWithFormat:@"%@: No arguments were detected for %@ %s", v20, v22, v21];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v23 userInfo:0]);
    }

    if ([v11[v12] count] <= arg)
    {
      v24 = _NSMethodExceptionProem(self, a2);
      v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Argument index  '%ld' is out of range for selector %s. The maximum index is %ld.", v24, arg, sel_getName(sel), objc_msgSend(v13, "count") - 1), 0}];
      objc_exception_throw(v25);
    }

    v14 = [v13 objectAtIndex:arg];
    os_unfair_lock_unlock(&self->_knownSelectorsLock);
    isKindOfClass = objc_opt_isKindOfClass();
    result = 0;
    if (isKindOfClass)
    {
      if (v14)
      {
        return *(v14 + 1);
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_knownSelectorsLock);
    return 0;
  }

  return result;
}

- (void)setClass:(Class)a3 forSelector:(SEL)a4 argumentIndex:(unint64_t)a5 ofReply:(BOOL)a6
{
  v6 = a6;
  v10 = [MEMORY[0x1E695DFD8] setWithObject:a3];

  [(NSXPCInterface *)self setClasses:v10 forSelector:a4 argumentIndex:a5 ofReply:v6];
}

- (Class)classForSelector:(SEL)a3 argumentIndex:(unint64_t)a4 ofReply:(BOOL)a5
{
  v5 = [(NSXPCInterface *)self classesForSelector:a3 argumentIndex:a4 ofReply:a5];

  return [(NSSet *)v5 anyObject];
}

- (id)replyBlockSignatureForSelector:(SEL)a3
{
  protocol = self->_protocol;
  if (!protocol)
  {
    v16 = _NSMethodExceptionProem(self, a2);
    v13 = @"%@: Protocol must be set before calling this method.";
    goto LABEL_12;
  }

  if (!a3)
  {
    v16 = _NSMethodExceptionProem(self, a2);
    v13 = @"%@: Selector argument must be non-NULL.";
    goto LABEL_12;
  }

  if (!selectorInProtocol(a3, protocol))
  {
    v14 = _NSMethodExceptionProem(self, a2);
    Name = sel_getName(a3);
    v18 = protocol_getName(protocol);
    v16 = v14;
    v13 = @"%@: Selector '%s' is not in protocol '%s', or is not an instance method.";
LABEL_12:
    v15 = [NSString stringWithFormat:v13, v16, Name, v18];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0]);
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v7 = [(NSXPCInterface *)self _locked_methodInfoForSelector:a3 createIfNecessary:1];
  v8 = v7;
  if (v7)
  {
    v9 = [*v7 _typeString];
    if ((v8[5] & 0x80000000) != 0)
    {
      v10 = _NSMethodExceptionProem(self, a2);
      v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Selector %s has no reply block.", v10, sel_getName(a3)), 0}];
      objc_exception_throw(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  return v9;
}

- (void)setVersion:(unint64_t)a3 forSelector:(SEL)a4
{
  protocol = self->_protocol;
  if (!protocol)
  {
    v10 = [NSString stringWithFormat:@"%@: Protocol must be set before calling this method.", _NSMethodExceptionProem(self, a2), v13, v14];
    goto LABEL_12;
  }

  if (!a4)
  {
    v10 = [NSString stringWithFormat:@"%@: Selector argument must be non-NULL.", _NSMethodExceptionProem(self, a2), v13, v14];
    goto LABEL_12;
  }

  if (!selectorInProtocol(a4, protocol))
  {
    v11 = _NSMethodExceptionProem(self, a2);
    Name = sel_getName(a4);
    v10 = [NSString stringWithFormat:@"%@: Selector '%s' is not in protocol '%s', or is not an instance method.", v11, Name, protocol_getName(protocol)];
LABEL_12:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v9 = [(NSXPCInterface *)self _locked_methodInfoForSelector:a4 createIfNecessary:1];
  if (v9)
  {
    v9[3] = a3;
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
}

- (unint64_t)versionForSelector:(SEL)a3
{
  protocol = self->_protocol;
  if (!protocol)
  {
    v13 = _NSMethodExceptionProem(self, a2);
    v10 = @"%@: Protocol must be set before calling this method.";
    goto LABEL_11;
  }

  if (!a3)
  {
    v13 = _NSMethodExceptionProem(self, a2);
    v10 = @"%@: Selector argument must be non-NULL.";
    goto LABEL_11;
  }

  if (!selectorInProtocol(a3, protocol))
  {
    v11 = _NSMethodExceptionProem(self, a2);
    Name = sel_getName(a3);
    v15 = protocol_getName(protocol);
    v13 = v11;
    v10 = @"%@: Selector '%s' is not in protocol '%s', or is not an instance method.";
LABEL_11:
    v12 = [NSString stringWithFormat:v10, v13, Name, v15];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0]);
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v7 = [(NSXPCInterface *)self _locked_methodInfoForSelector:a3 createIfNecessary:0];
  if (v7)
  {
    v8 = v7[3];
  }

  else
  {
    v8 = 1;
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  return v8;
}

- (unint64_t)version
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 1;
  os_unfair_lock_lock(&self->_knownSelectorsLock);
  methodInfo = self->_methodInfo;
  if (methodInfo)
  {
    CFDictionaryApplyFunction(methodInfo, _maxVersionFinder, v5);
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  return v5[0];
}

- (unint64_t)_respondsToRemoteSelector:(SEL)a3
{
  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v5 = [(NSXPCInterface *)self _locked_methodInfoForSelector:a3 createIfNecessary:1];
  if (v5)
  {
    v6 = v5[3];
    os_unfair_lock_unlock(&self->_knownSelectorsLock);
    if (v6)
    {
      return 2 * ([(NSXPCInterface *)self _remoteVersion]< v6);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_knownSelectorsLock);
  }

  return 1;
}

- (id)_generateAndCacheMethodSignatureForRemoteSelector:(SEL)a3
{
  v5 = methodSignatureForSelectorInProtocol(a3, self->_protocol);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  os_unfair_lock_lock(&self->_knownSelectorsLock);
  knownSelectors = self->_knownSelectors;
  if (!knownSelectors)
  {
    knownSelectors = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, &kNSXPCSelKeyCallbacks, MEMORY[0x1E695E9E8]);
    self->_knownSelectors = knownSelectors;
  }

  Value = CFDictionaryGetValue(knownSelectors, a3);
  if (!Value)
  {
    Mutable = self->_knownSelectors;
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, &kNSXPCSelKeyCallbacks, MEMORY[0x1E695E9E8]);
      self->_knownSelectors = Mutable;
    }

    CFDictionarySetValue(Mutable, a3, v6);
    Value = v6;
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  return Value;
}

- (id)_methodSignatureForRemoteSelector:(SEL)a3
{
  if (!self->_protocol)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: No protocol has been set on interface", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  if (!a3)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  knownSelectors = self->_knownSelectors;
  if (!knownSelectors)
  {
    knownSelectors = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, &kNSXPCSelKeyCallbacks, MEMORY[0x1E695E9E8]);
    self->_knownSelectors = knownSelectors;
  }

  Value = CFDictionaryGetValue(knownSelectors, a3);
  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  if (Value)
  {
    return Value;
  }

  return [(NSXPCInterface *)self _generateAndCacheMethodSignatureForRemoteSelector:a3];
}

- (id)_methodSignatureForReplyBlockOfSelector:(SEL)a3
{
  if (!self->_protocol)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v5 = [(NSXPCInterface *)self _locked_methodInfoForSelector:a3 createIfNecessary:1];
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  return v6;
}

- (BOOL)_hasProxiesInArgumentsOfSelector:(SEL)a3
{
  if (!self->_protocol)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: No protocol has been set on interface", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v5 = [(NSXPCInterface *)self _locked_methodInfoForSelector:a3 createIfNecessary:1];
  if (v5)
  {
    v6 = *(v5 + 44);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  return v6 & 1;
}

- (BOOL)_hasProxiesInReplyBlockArgumentsOfSelector:(SEL)a3
{
  if (!self->_protocol)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: No protocol has been set on interface", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v5 = [(NSXPCInterface *)self _locked_methodInfoForSelector:a3 createIfNecessary:1];
  if (v5)
  {
    v6 = *(v5 + 45);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  return v6 & 1;
}

- (id)_interfaceForArgument:(unint64_t)a3 ofSelector:(SEL)a4 reply:(BOOL)a5
{
  v5 = a5;
  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v9 = [(NSXPCInterface *)self _locked_methodInfoForSelector:a4 createIfNecessary:0];
  if (v9)
  {
    v10 = 2;
    if (v5)
    {
      v10 = 1;
    }

    v11 = v9[v10];
  }

  else
  {
    v11 = 0;
  }

  if ([v11 count] <= a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v11 objectAtIndex:a3];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  return v12;
}

- (Class)_returnClassForSelector:(SEL)a3
{
  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v5 = [(NSXPCInterface *)self _locked_methodInfoForSelector:a3 createIfNecessary:1];
  if (v5)
  {
    v6 = v5[4];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_knownSelectorsLock);
  return v6;
}

- (BOOL)_selectorIsAllowed:(SEL)a3 isReply:(BOOL)a4 methodSignature:(id *)a5 allowedClasses:(id *)a6
{
  v8 = a4;
  os_unfair_lock_lock(&self->_knownSelectorsLock);
  v11 = [(NSXPCInterface *)self _locked_methodInfoForSelector:a3 createIfNecessary:1];
  v12 = v11;
  if (v11)
  {
    if (v8)
    {
      v13 = *v11;
      v14 = 1;
    }

    else
    {
      knownSelectors = self->_knownSelectors;
      if (!knownSelectors)
      {
        knownSelectors = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, &kNSXPCSelKeyCallbacks, MEMORY[0x1E695E9E8]);
        self->_knownSelectors = knownSelectors;
      }

      v13 = CFDictionaryGetValue(knownSelectors, a3);
      v14 = 2;
    }

    *a6 = [v12[v14] copy];
    os_unfair_lock_unlock(&self->_knownSelectorsLock);
    if (!v13)
    {
      v13 = [(NSXPCInterface *)self _generateAndCacheMethodSignatureForRemoteSelector:a3];
    }

    *a5 = v13;
  }

  else
  {
    os_unfair_lock_unlock(&self->_knownSelectorsLock);
  }

  return v12 != 0;
}

@end