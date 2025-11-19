@interface NSXPCDecoder
- (BOOL)containsValueForKey:(id)a3;
- (BOOL)decodeBoolForKey:(id)a3;
- (NSXPCDecoder)init;
- (NSXPCDecoder)initWithInterface:(id)a3;
- (const)_decodeCStringForKey:(id)a3;
- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4;
- (double)decodeDoubleForKey:(id)a3;
- (float)decodeFloatForKey:(id)a3;
- (id)__decoderInfoForAllowedClassesWarning;
- (id)_currentClassAllowlist;
- (id)_decodeArrayOfObjectsForKey:(id)a3;
- (id)_decodeCollectionOfClass:(Class)a3 allowedClasses:(id)a4 forKey:(id)a5;
- (id)_decodeObjectOfClasses:(id)a3 atObject:(id *)a4;
- (id)_decodeReplyFromXPCObject:(id)a3 forSelector:(SEL)a4;
- (id)_xpcObjectForIndex:(int64_t)a3;
- (id)allowedClasses;
- (id)connection;
- (id)debugDescription;
- (id)decodeArrayOfObjectsOfClasses:(id)a3 forKey:(id)a4;
- (id)decodeDictionaryWithKeysOfClasses:(id)a3 objectsOfClasses:(id)a4 forKey:(id)a5;
- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4;
- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4;
- (id)decodeXPCObjectForKey:(id)a3;
- (id)decodeXPCObjectOfType:(_xpc_type_s *)a3 forKey:(id)a4;
- (int)__decodeXPCObject:(id)a3 allowingSimpleMessageSend:(BOOL)a4 outInvocation:(id *)a5 outArguments:(id *)a6 outArgumentsMaxCount:(unint64_t)a7 outMethodSignature:(id *)a8 outSelector:(SEL *)a9 isReply:(BOOL)a10 replySelector:(SEL)a11;
- (int)decodeInt32ForKey:(id)a3;
- (int)decodeIntForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
- (int64_t)decodeIntegerForKey:(id)a3;
- (void)_setConnection:(id)a3;
- (void)_validateAllowedClass:(Class)a3 forKey:(id)a4 allowingInvocations:(BOOL)a5;
- (void)_validateAllowedXPCType:(_xpc_type_s *)a3 forKey:(id)a4;
- (void)_validateReusedReference:(id)a3 forKey:(id)a4;
- (void)beginReadingFromXPCObject:(id)a3;
- (void)dealloc;
- (void)decodeValueOfObjCType:(const char *)a3 at:(void *)a4;
- (void)decodeValueOfObjCType:(const char *)a3 at:(void *)a4 size:(unint64_t)a5;
@end

@implementation NSXPCDecoder

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  oolObjects = self->_oolObjects;
  if (oolObjects)
  {
    xpc_release(oolObjects);
  }

  objectReferences = self->_decoder.objectReferences;
  if (objectReferences)
  {
    CFRelease(objectReferences);
    self->_decoder.objectReferences = 0;
  }

  allowedClassesIndex = self->_allowedClassesIndex;
  if ((allowedClassesIndex & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = self->_allowedClassesList[v6];
      if (v8)
      {

        allowedClassesIndex = self->_allowedClassesIndex;
      }

      v6 = v7;
    }

    while (allowedClassesIndex >= v7++);
  }

  v10.receiver = self;
  v10.super_class = NSXPCDecoder;
  [(NSXPCCoder *)&v10 dealloc];
}

- (id)_currentClassAllowlist
{
  v2 = self->_allowedClassesList[self->_allowedClassesIndex];
  v3 = objc_opt_class();
  if (v3 != v2)
  {
    if (v3 != NSXPCInterface)
    {
      return v2;
    }

    v2 = _NSXPCDistantObject;
  }

  v5 = MEMORY[0x1E695DFD8];

  return [v5 setWithObject:v2];
}

- (NSXPCDecoder)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSXPCDecoder;
  result = [(NSXPCCoder *)&v3 init];
  if (result)
  {
    result->_allowedClassesIndex = 0;
    result->_allowedClassesList[0] = 0;
    result->_collectionPointer = 0;
    result->expectedUnnestedCollectionType = 0;
    result->_strictSecureDecodingEnabled = 0;
    result->_enforceSubclassesMustBeExplicitlyMentionedWhenDecoded = 0;
    result->_interface = 0;
  }

  return result;
}

- (id)connection
{
  v2 = self->_connection;

  return v2;
}

- (id)allowedClasses
{
  v2 = self->_allowedClassesList[self->_allowedClassesIndex];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E695DFD8];

    return [v5 setWithObject:v2];
  }
}

- (void)_setConnection:(id)a3
{
  connection = self->_connection;
  if (connection != a3)
  {

    self->_connection = a3;
  }
}

- (NSXPCDecoder)initWithInterface:(id)a3
{
  v4 = [(NSXPCDecoder *)self init];
  if (v4)
  {
    v4->_interface = a3;
  }

  return v4;
}

- (void)beginReadingFromXPCObject:(id)a3
{
  p_rootObject = &self->_rootObject;
  if (!_NSXPCSerializationStartRead(a3, &self->_decoder.data, &self->_rootObject))
  {
    v9 = [NSString stringWithFormat:@"%@: encoded data has been corrupted, there is no payload", _NSMethodExceptionProem(self, a2)];
    goto LABEL_8;
  }

  self->_collections[self->_collectionPointer] = p_rootObject;
  value = xpc_dictionary_get_value(a3, "ool");
  if (!value)
  {
    return;
  }

  v8 = value;
  if (object_getClass(value) != MEMORY[0x1E69E9E50])
  {
    v9 = [NSString stringWithFormat:@"%@: encoded data has been corrupted, out of line data is not an XPC array", _NSMethodExceptionProem(self, a2)];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0]);
  }

  self->_oolObjects = xpc_retain(v8);
}

- (id)debugDescription
{
  v11 = *MEMORY[0x1E69E9840];
  oolObjects = self->_oolObjects;
  if (oolObjects)
  {
    v4 = MEMORY[0x1865D3A50](oolObjects, a2);
  }

  else
  {
    v4 = 0;
  }

  Data = _NSXPCSerializationDebugInfoForReadData(&self->_decoder);
  v10.receiver = self;
  v10.super_class = NSXPCDecoder;
  v6 = [(NSXPCDecoder *)&v10 debugDescription];
  v7 = "(none)";
  if (v4)
  {
    v7 = v4;
  }

  v8 = [NSString stringWithFormat:@"%@ Container data:\n%@\n OOL XPC data: %s", v6, Data, v7];
  if (v4)
  {
    free(v4);
  }

  return v8;
}

- (id)__decoderInfoForAllowedClassesWarning
{
  connection = self->_connection;
  if (connection)
  {
    return [NSString stringWithFormat:@"\n%@", [(NSXPCConnection *)connection _serviceInfoForDecoder]];
  }

  else
  {
    return &stru_1EEEFDF90;
  }
}

- (void)_validateAllowedClass:(Class)a3 forKey:(id)a4 allowingInvocations:(BOOL)a5
{
  if (!a3)
  {
    v13 = [NSString stringWithFormat:@"Attempt to decode an object with no class for key '%@'.", a4, v18];
    goto LABEL_16;
  }

  v6 = a5;
  v9 = [(NSXPCDecoder *)self _currentClassAllowlist];
  if (([(NSCoder *)self _walkAllowedClassListLookingForClass:a3 forKey:a4 allowedClasses:v9 strictModeEnabled:self->_strictSecureDecodingEnabled alwaysEnforceExplicitSubclasses:self->_enforceSubclassesMustBeExplicitlyMentionedWhenDecoded specialCaseObject:[(NSXPCInterface *)self->_interface _specialCaseObject]]& 1) == 0)
  {
    v13 = [(NSCoder *)self __descriptionForUnexpectedClass:a3 forKey:a4 allowedClasses:v9];
LABEL_16:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v13 userInfo:0]);
  }

  if (v6 && (MEMORY[0x1E695DF50] == a3 || MEMORY[0x1E695DED8] == a3))
  {
    return;
  }

  connection = self->_connection;
  if (connection)
  {
    if (([(_NSXPCConnectionClassCache *)connection->_dCache containsClass:a3]& 1) != 0)
    {
      return;
    }
  }

  if (([(objc_class *)a3 conformsToProtocol:&unk_1EEF5E4A0]& 1) == 0)
  {
    Name = class_getName(a3);
    v12 = @"This decoder will only decode classes that adopt NSSecureCoding. Class '%s' does not adopt it.";
LABEL_15:
    v13 = [NSString stringWithFormat:v12, Name, v18];
    goto LABEL_16;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    Name = class_getName(a3);
    v12 = @"Class '%s' disallows secure coding. It must implement supportsSecureCoding and return YES.";
    goto LABEL_15;
  }

  if (![(objc_class *)a3 supportsSecureCoding])
  {
    Name = class_getName(a3);
    v12 = @"Class '%s' disallows secure coding. It must return YES from supportsSecureCoding.";
    goto LABEL_15;
  }

  Superclass = a3;
  while ((_classOverridesSelector(Superclass, sel_initWithCoder_) & 1) == 0)
  {
    Superclass = class_getSuperclass(Superclass);
    if (!Superclass)
    {
      Name = class_getName(a3);
      v12 = @"Class '%s' does not implement initWithCoder:.";
      goto LABEL_15;
    }
  }

  Class = object_getClass(Superclass);
  if ((_classOverridesSelector(Class, sel_supportsSecureCoding) & 1) == 0)
  {
    Name = class_getName(a3);
    v18 = class_getName(a3);
    v12 = @"Class '%s' has a superclass that supports secure coding, but '%s' overrides -initWithCoder: and does not override +supportsSecureCoding. The class must implement +supportsSecureCoding and return YES to verify that its implementation of -initWithCoder: is secure coding compliant.";
    goto LABEL_15;
  }

  v15 = self->_connection;
  if (v15)
  {
    dCache = v15->_dCache;

    [(_NSXPCConnectionClassCache *)dCache addClass:a3];
  }
}

- (void)_validateReusedReference:(id)a3 forKey:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v7 = [(NSXPCDecoder *)self _currentClassAllowlist];
  if (([(NSCoder *)self _walkAllowedClassListValidatingInstance:a3 forKey:a4 allowedClasses:v7 strictModeEnabled:self->_strictSecureDecodingEnabled alwaysEnforceExplicitSubclasses:self->_enforceSubclassesMustBeExplicitlyMentionedWhenDecoded specialCaseObject:[(NSXPCInterface *)self->_interface _specialCaseObject] invalidElementClass:v9]& 1) == 0)
  {
    if (v9[0])
    {
      v8 = [(NSCoder *)self __descriptionForUnexpectedElementClass:a4 forContainerKey:v7 allowedClasses:?];
    }

    else
    {
      v8 = [(NSCoder *)self __descriptionForUnexpectedClass:a4 forKey:v7 allowedClasses:?];
    }

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v8 userInfo:0]);
  }
}

- (void)_validateAllowedXPCType:(_xpc_type_s *)a3 forKey:(id)a4
{
  if (!a3)
  {
    v9 = [NSString stringWithFormat:@"Attempt to decode an xpc type with no xpc for key '%@'.", a4, v11, v12];
    goto LABEL_14;
  }

  if (!xpc_get_class4NSXPC())
  {
    v9 = [NSString stringWithFormat:@"Attempt to decode an xpc type that has no class for key '%@'.", a4, v11, v12];
    goto LABEL_14;
  }

  v7 = self->_allowedClassesList[self->_allowedClassesIndex];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [NSString stringWithFormat:@"Attempt to decode an xpc type but allowed list does not specify an XPC type '%@'.", a4, v11, v12];
    goto LABEL_14;
  }

  if (!v7)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = *(v7 + 1);
  if (v8 != a3)
  {
LABEL_11:
    v10 = @"(no key, possibly an argument to a message)";
    if (a4)
    {
      v10 = a4;
    }

    v9 = [NSString stringWithFormat:@"value for key '%@' was of unexpected XPC type '%@'. Allowed type is '%@'.", v10, a3, v8];
LABEL_14:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v9 userInfo:0]);
  }
}

- (void)decodeValueOfObjCType:(const char *)a3 at:(void *)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = 0;
  p_decoder = &self->_decoder;
  v8 = self->_collections[self->_collectionPointer];
  genericIndex = self->_genericIndex;
  self->_genericIndex = genericIndex + 1;
  if (_NSXPCSerializationCreateObjectInDictionaryForGenericKey(&self->_decoder, v8, genericIndex, v12))
  {
    if (((v12[0] >= 0xFFFFFFFFFFFFFFF7) << 63) >> 63 != v12[0] >= 0xFFFFFFFFFFFFFFF7 || p_decoder[1] <= (v12[0] + 9))
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Expected to find array of Objective-C typed arguments but there was nothing there" userInfo:0]);
    }

    v10 = *(*p_decoder + v12[0] + 1);
    v11[0] = v12[0] + 9;
    v11[1] = v10;
    _NSXPCSerializationDecodeTypedObjCValuesFromArray(self, p_decoder, a3, a4, 0xFFFFFFFFuLL, 1, v12, v11, 0, 0);
  }
}

- (void)decodeValueOfObjCType:(const char *)a3 at:(void *)a4 size:(unint64_t)a5
{
  v14[2] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v14[1] = 0;
  p_decoder = &self->_decoder;
  v10 = self->_collections[self->_collectionPointer];
  genericIndex = self->_genericIndex;
  self->_genericIndex = genericIndex + 1;
  if (_NSXPCSerializationCreateObjectInDictionaryForGenericKey(&self->_decoder, v10, genericIndex, v14))
  {
    if (((v14[0] >= 0xFFFFFFFFFFFFFFF7) << 63) >> 63 != v14[0] >= 0xFFFFFFFFFFFFFFF7 || p_decoder[1] <= (v14[0] + 9))
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Expected to find array of Objective-C typed arguments but there was nothing there" userInfo:0]);
    }

    v12 = *(*p_decoder + v14[0] + 1);
    v13[0] = v14[0] + 9;
    v13[1] = v12;
    _NSXPCSerializationDecodeTypedObjCValuesFromArray(self, p_decoder, a3, a4, a5, 1, v14, v13, 0, 0);
  }
}

- (BOOL)containsValueForKey:(id)a3
{
  v5[2] = *MEMORY[0x1E69E9840];
  v3 = self->_collections[self->_collectionPointer];
  v5[0] = 0;
  v5[1] = 0;
  result = _NSXPCSerializationCreateObjectInDictionaryForKey(&self->_decoder, v3, a3, v5);
  if (!v5[0])
  {
    return 0;
  }

  return result;
}

- (id)_decodeObjectOfClasses:(id)a3 atObject:(id *)a4
{
  Class = object_getClass(a3);
  if (class_isMetaClass(Class))
  {
    _setAllowedClass(self, a3);
    v8 = _decodeObject_0(self, 0, a4);
    if (a3)
    {
      self->_allowedClassesList[self->_allowedClassesIndex--] = 0;
    }
  }

  else
  {
    _setAllowedClasses(self, a3);
    v8 = _decodeObject_0(self, 0, a4);
    _resetAllowedClasses(self, a3);
  }

  return v8;
}

- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4
{
  _setAllowedClass(self, a3);
  result = _decodeObjectAfterSettingAllowListForKey(self, a4);
  if (a3)
  {
    self->_allowedClassesList[self->_allowedClassesIndex--] = 0;
  }

  return result;
}

- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4
{
  _setAllowedClasses(self, a3);
  v7 = _decodeObjectAfterSettingAllowListForKey(self, a4);
  _resetAllowedClasses(self, a3);
  return v7;
}

- (id)_decodeReplyFromXPCObject:(id)a3 forSelector:(SEL)a4
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  LOBYTE(v5) = 1;
  [(NSXPCDecoder *)self __decodeXPCObject:a3 allowingSimpleMessageSend:0 outInvocation:v6 outArguments:0 outArgumentsMaxCount:0 outMethodSignature:0 outSelector:0 isReply:v5 replySelector:a4];
  return v6[0];
}

- (int)__decodeXPCObject:(id)a3 allowingSimpleMessageSend:(BOOL)a4 outInvocation:(id *)a5 outArguments:(id *)a6 outArgumentsMaxCount:(unint64_t)a7 outMethodSignature:(id *)a8 outSelector:(SEL *)a9 isReply:(BOOL)a10 replySelector:(SEL)a11
{
  v15 = a4;
  v76 = *MEMORY[0x1E69E9840];
  [(NSXPCDecoder *)self _startReadingFromXPCObject:a3];
  offset = self->_rootObject.offset;
  v18 = offset + 9;
  if (((offset >= 0xFFFFFFFFFFFFFFF7) << 63) >> 63 != offset >= 0xFFFFFFFFFFFFFFF7 || (p_decoder = &self->_decoder, self->_decoder.dataLen <= v18))
  {
    v56 = MEMORY[0x1E695DF30];
    v57 = @"NSInvalidUnarchiveOperationException";
    v58 = @"Expected to find array of NSInvocation metadata but there were no entries";
    goto LABEL_70;
  }

  v20 = *p_decoder;
  v21 = *(*p_decoder + offset + 1);
  v74 = v18;
  v75 = v21;
  v73 = 0;
  if (v21 < v18)
  {
    v56 = MEMORY[0x1E695DF30];
    v57 = @"NSInvalidUnarchiveOperationException";
    v58 = @"Expected to find SEL for NSInvocation";
    goto LABEL_70;
  }

  v72 = v18;
  v22 = *(v20 + v18) & 0xF0;
  LODWORD(v73) = v22;
  v67 = a5;
  if (a10)
  {
    if (v22 == 224)
    {
      v23 = a11;
      v71 = a11;
      goto LABEL_11;
    }

    v60 = [NSString stringWithFormat:@"%@ received a reply that has should have been a reply, but does not have a null selector.", self, v62, v63, v65];
LABEL_81:
    v58 = v60;
    v56 = MEMORY[0x1E695DF30];
    v59 = &NSInvalidUnarchiveOperationException;
LABEL_82:
    v57 = *v59;
LABEL_70:
    objc_exception_throw([v56 exceptionWithName:v57 reason:v58 userInfo:0]);
  }

  if (v22 != 112)
  {
    v60 = [NSString stringWithFormat:@"%@ received a message that should have had a selector, but it does not (non-string).", self, v62, v63, v65];
    goto LABEL_81;
  }

  v24 = _NSXPCSerializationASCIIStringForObject(p_decoder, &v72);
  if (!v24)
  {
    goto LABEL_75;
  }

  v25 = sel_registerName(v24);
  v23 = v25;
  v71 = v25;
  if (a9)
  {
    *a9 = v25;
  }

LABEL_11:
  v66 = a8;
  v69 = 0;
  v70 = 0;
  if ([(NSXPCInterface *)self->_interface _selectorIsAllowed:v23 isReply:a10 methodSignature:&v69 allowedClasses:&v70])
  {
    v26 = v69 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    v60 = [NSString stringWithFormat:@"%@ received a message or reply block that is not in the interface of the remote object (%s), dropping.", self, sel_getName(v23), v63, v65];
    goto LABEL_81;
  }

  _getLastByteOfValueIncludingMarker(p_decoder, v18, &v74);
  v27 = v74 + 1;
  v28 = v74++ == -1;
  if (v28 << 63 >> 63 != v28)
  {
LABEL_73:
    v56 = MEMORY[0x1E695DF30];
    v57 = @"NSInvalidUnarchiveOperationException";
    v58 = @"Overflow of array data";
    goto LABEL_70;
  }

  if (v75 < v27 || self->_decoder.dataLen <= v27)
  {
    v56 = MEMORY[0x1E695DF30];
    v57 = @"NSInvalidUnarchiveOperationException";
    v58 = @"Expected to find types for NSInvocation";
    goto LABEL_70;
  }

  v72 = v27;
  LODWORD(v73) = *(*p_decoder + v27) & 0xF0;
  if (v73 != 112)
  {
    v60 = [NSString stringWithFormat:@"%@ received a message that has no NSInvocation types (non-string) (%s), dropping.", self, sel_getName(v23), v63, v65];
    goto LABEL_81;
  }

  v29 = _NSXPCSerializationASCIIStringForObject(p_decoder, &v72);
  if (!v29)
  {
LABEL_75:
    v60 = [NSString stringWithFormat:@"%@ received a message that should have had a selector, but it does not.", self, v62, v63, v65];
    goto LABEL_81;
  }

  v30 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:v29];
  v31 = v30;
  v32 = v69;
  if (v30 && v69)
  {
    if ([v30 isEqual:v69])
    {
      v33 = 1;
      goto LABEL_29;
    }

    v32 = v69;
  }

  if (!v31 || !v32 || ([v32 _isCompatibleWithMethodSignature:v31] & 1) == 0)
  {
    Name = sel_getName(v23);
    v64 = [v31 _cTypeString];
    v60 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ received a message (%s) with an incompatible message signature (wire: %s vs local: %s)", self, Name, v64, [v69 _cTypeString]);
    goto LABEL_81;
  }

  v33 = 0;
LABEL_29:
  _getLastByteOfValueIncludingMarker(p_decoder, v27, &v74);
  v34 = v74 + 1;
  if (((v74 == -1) << 63) >> 63 != (v74 == -1))
  {
    goto LABEL_73;
  }

  if (v75 < v34 || self->_decoder.dataLen <= v34)
  {
    v56 = MEMORY[0x1E695DF30];
    v57 = @"NSInvalidUnarchiveOperationException";
    v58 = @"Expected to find arguments for NSInvocation";
    goto LABEL_70;
  }

  v72 = v74 + 1;
  LODWORD(v73) = *(*p_decoder + v34) & 0xF0;
  if (v73 != 160)
  {
    v60 = [NSString stringWithFormat:@"%@ received a message that has no NSInvocation arguments (non-array) (%s), dropping.", self, sel_getName(v23), v63, v65];
    goto LABEL_81;
  }

  if (v15 && [v69 _isAllObjects] && objc_msgSend(v69, "numberOfArguments") <= a7 + 2)
  {
    v48 = [v31 numberOfArguments];
    v49 = 1;
    if (!a10)
    {
      v49 = 2;
    }

    v50 = v48 - v49;
    if (v48 > v49)
    {
      _NSXPCSerializationDecodeInvocationObjectOnlyArgumentArray(a6, a7, v31, self, p_decoder, &v72, v70);
      for (i = 0; v50 != i; ++i)
      {
        v52 = a6[i];
        if (v52 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v53 = [(NSXPCInterface *)self->_interface _interfaceForArgument:i ofSelector:v23 reply:a10];
          if (!v53 || (v54 = v53, (objc_opt_isKindOfClass() & 1) == 0))
          {
LABEL_71:
            v58 = [NSString stringWithFormat:@"%@: Received a proxy object but the protocol does not describe a proxy object for this argument.", self];
            v56 = MEMORY[0x1E695DF30];
            v59 = MEMORY[0x1E695D940];
            goto LABEL_82;
          }

          objc_setProperty_atomic(v52, v55, v54, 16);
        }
      }
    }

    v46 = v66;
    *v67 = 0;
    result = 1;
    if (v66)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v35 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v31];
    _NSXPCSerializationDecodeInvocationArgumentArray(v35, v31, self, p_decoder, &v72, v70);
    if ((v33 & 1) == 0)
    {
      v36 = v35;
      v35 = convertInvocationToMethodSignature(v36, v69, 0);
    }

    if (a10)
    {
      v37 = 1;
    }

    else
    {
      [v35 setArgument:&v71 atIndex:1];
      v37 = 2;
    }

    v38 = [v31 numberOfArguments];
    if (v38 != v37)
    {
      v39 = v38;
      v40 = 0;
      do
      {
        v41 = [v31 _argInfo:v37];
        v42 = v41[17];
        if ((v42 & 0x80) != 0)
        {
          v42 = *(*v41 + 34);
        }

        if ((v42 & 0x2000) != 0)
        {
          selfa = 0;
          [v35 getArgument:&selfa atIndex:v37];
          if (selfa)
          {
            if (objc_opt_isKindOfClass())
            {
              v43 = [(NSXPCInterface *)self->_interface _interfaceForArgument:v40 ofSelector:v71 reply:a10];
              if (!v43)
              {
                goto LABEL_71;
              }

              v44 = v43;
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_71;
              }

              if (selfa)
              {
                objc_setProperty_atomic(selfa, v45, v44, 16);
              }
            }
          }
        }

        ++v40;
        ++v37;
      }

      while (v39 != v37);
    }

    v46 = v66;
    *v67 = v35;
    if (v66)
    {
      v31 = [v35 methodSignature];
      result = 0;
LABEL_55:
      *v46 = v31;
      return result;
    }

    return 0;
  }

  return result;
}

- (id)_decodeArrayOfObjectsForKey:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v5 = 0;
  if (_NSXPCSerializationCreateObjectInDictionaryForKey(&self->_decoder, self->_collections[self->_collectionPointer], a3, &v8))
  {
    v5 = 0;
    if (v8)
    {
      if (v9 == 160)
      {
        v5 = [MEMORY[0x1E695DF70] array];
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __44__NSXPCDecoder__decodeArrayOfObjectsForKey___block_invoke;
        v7[3] = &unk_1E69FA568;
        v7[4] = self;
        v7[5] = a3;
        v7[6] = v5;
        _NSXPCSerializationIterateArrayObject(&self->_decoder.data, &v8, v7);
      }
    }
  }

  return v5;
}

uint64_t __44__NSXPCDecoder__decodeArrayOfObjectsForKey___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = _decodeObject_0(*(a1 + 32), *(a1 + 40), a2);
  if (!v5)
  {
    v7 = [NSString stringWithFormat:@"A value in array of key %@ was decoded as nil, which is not allowed.", *(a1 + 40)];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v7 userInfo:0]);
  }

  [*(a1 + 48) addObject:v5];
  objc_autoreleasePoolPop(v4);
  return 1;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  p_decoder = &self->_decoder;
  ObjectInDictionaryForKey = _NSXPCSerializationCreateObjectInDictionaryForKey(&self->_decoder, self->_collections[self->_collectionPointer], a3, v6);
  if (ObjectInDictionaryForKey)
  {
    LOBYTE(ObjectInDictionaryForKey) = v6[0] && p_decoder->dataLen > v6[0] && p_decoder->data[v6[0]] == 176;
  }

  return ObjectInDictionaryForKey;
}

- (int)decodeIntForKey:(id)a3
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = 0;
  result = _NSXPCSerializationCreateObjectInDictionaryForKey(&self->_decoder, self->_collections[self->_collectionPointer], a3, v5);
  if (result)
  {
    return _NSXPCSerializationIntegerForObject(&self->_decoder.data, v5);
  }

  return result;
}

- (int)decodeInt32ForKey:(id)a3
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = 0;
  result = _NSXPCSerializationCreateObjectInDictionaryForKey(&self->_decoder, self->_collections[self->_collectionPointer], a3, v5);
  if (result)
  {
    return _NSXPCSerializationIntegerForObject(&self->_decoder.data, v5);
  }

  return result;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  ObjectInDictionaryForKey = _NSXPCSerializationCreateObjectInDictionaryForKey(&self->_decoder, self->_collections[self->_collectionPointer], a3, v6);
  result = 0;
  if (ObjectInDictionaryForKey)
  {
    return _NSXPCSerializationIntegerForObject(&self->_decoder.data, v6);
  }

  return result;
}

- (float)decodeFloatForKey:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v9[1] = 0;
  p_decoder = &self->_decoder;
  ObjectInDictionaryForKey = _NSXPCSerializationCreateObjectInDictionaryForKey(&self->_decoder, self->_collections[self->_collectionPointer], a3, v9);
  result = 0.0;
  if (ObjectInDictionaryForKey)
  {
    if (v9[0])
    {
      dataLen = p_decoder->dataLen;
      if (dataLen > v9[0])
      {
        v7 = &p_decoder->data[v9[0]];
        if (*v7 == 34 && ((v9[0] >= 0xFFFFFFFFFFFFFFFCLL) << 63) >> 63 == v9[0] >= 0xFFFFFFFFFFFFFFFCLL && dataLen > v9[0] + 4)
        {
          return *(v7 + 1);
        }
      }
    }
  }

  return result;
}

- (double)decodeDoubleForKey:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v9[1] = 0;
  p_decoder = &self->_decoder;
  ObjectInDictionaryForKey = _NSXPCSerializationCreateObjectInDictionaryForKey(&self->_decoder, self->_collections[self->_collectionPointer], a3, v9);
  result = 0.0;
  if (ObjectInDictionaryForKey)
  {
    if (v9[0])
    {
      dataLen = p_decoder->dataLen;
      if (dataLen > v9[0])
      {
        v7 = &p_decoder->data[v9[0]];
        if (*v7 == 35 && ((v9[0] >= 0xFFFFFFFFFFFFFFF8) << 63) >> 63 == v9[0] >= 0xFFFFFFFFFFFFFFF8 && dataLen > v9[0] + 8)
        {
          return *(v7 + 1);
        }
      }
    }
  }

  return result;
}

- (int64_t)decodeIntegerForKey:(id)a3
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  ObjectInDictionaryForKey = _NSXPCSerializationCreateObjectInDictionaryForKey(&self->_decoder, self->_collections[self->_collectionPointer], a3, v6);
  result = 0;
  if (ObjectInDictionaryForKey)
  {
    return _NSXPCSerializationIntegerForObject(&self->_decoder.data, v6);
  }

  return result;
}

- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4
{
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = 0;
  if ((_NSXPCSerializationCreateObjectInDictionaryForKey(&self->_decoder, self->_collections[self->_collectionPointer], a3, v10) & 1) != 0 && (v6 = _NSXPCSerializationDataForObject(&self->_decoder.data, v10)) != 0 && (v7 = v6, [v6 length]))
  {
    v8 = v7;
    if (a4)
    {
      *a4 = [v7 length];
    }

    return [v7 bytes];
  }

  else
  {
    result = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return result;
}

- (const)_decodeCStringForKey:(id)a3
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  ObjectInDictionaryForKey = _NSXPCSerializationCreateObjectInDictionaryForKey(&self->_decoder, self->_collections[self->_collectionPointer], a3, v6);
  result = 0;
  if (ObjectInDictionaryForKey)
  {
    return _NSXPCSerializationASCIIStringForObject(&self->_decoder, v6);
  }

  return result;
}

- (id)decodeXPCObjectForKey:(id)a3
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  ObjectInDictionaryForKey = _NSXPCSerializationCreateObjectInDictionaryForKey(&self->_decoder, self->_collections[self->_collectionPointer], a3, v6);
  result = 0;
  if (ObjectInDictionaryForKey)
  {
    return [(NSXPCDecoder *)self _xpcObjectForIndex:_NSXPCSerializationIntegerForObject(&self->_decoder.data, v6)];
  }

  return result;
}

- (id)_xpcObjectForIndex:(int64_t)a3
{
  oolObjects = self->_oolObjects;
  if (!oolObjects || xpc_array_get_count(oolObjects) - 1 < a3)
  {
    return 0;
  }

  v7 = self->_oolObjects;

  return xpc_array_get_value(v7, a3);
}

- (id)decodeXPCObjectOfType:(_xpc_type_s *)a3 forKey:(id)a4
{
  v6 = [(NSXPCDecoder *)self decodeXPCObjectForKey:a4];
  v7 = v6;
  if (v6 && object_getClass(v6) != a3)
  {
    v9 = MEMORY[0x1865D3A50](v7);
    if (v9)
    {
      v11 = v9;
      v10 = [NSString stringWithUTF8String:v9];
      free(v11);
    }

    else
    {
      v10 = 0;
    }

    v12 = [NSString stringWithFormat:@"Type of resulting xpc_object_t (%@) does not match expected type for key '%@'.", v10, a4];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v12 userInfo:0]);
  }

  return v7;
}

- (id)_decodeCollectionOfClass:(Class)a3 allowedClasses:(id)a4 forKey:(id)a5
{
  self->expectedUnnestedCollectionType = a3;
  result = -[NSXPCDecoder decodeObjectOfClasses:forKey:](self, "decodeObjectOfClasses:forKey:", [a4 setByAddingObject:?], a5);
  self->expectedUnnestedCollectionType = 0;
  return result;
}

- (id)decodeArrayOfObjectsOfClasses:(id)a3 forKey:(id)a4
{
  v7 = _NSMethodExceptionProem(self, a2);
  if (![(NSCoder *)self _validateDecodeCollectionAllowedClassesRequirementsWithClasses:a3 forMethodExceptionProem:v7])
  {
    return 0;
  }

  v8 = MEMORY[0x1E695DEC8];

  return [(NSXPCDecoder *)self _decodeCollectionOfClass:v8 allowedClasses:a3 forKey:a4];
}

- (id)decodeDictionaryWithKeysOfClasses:(id)a3 objectsOfClasses:(id)a4 forKey:(id)a5
{
  v8 = [a3 setByAddingObjectsFromSet:a4];
  v9 = _NSMethodExceptionProem(self, a2);
  if (![(NSCoder *)self _validateDecodeCollectionAllowedClassesRequirementsWithClasses:v8 forMethodExceptionProem:v9])
  {
    return 0;
  }

  v10 = MEMORY[0x1E695DF20];

  return [(NSXPCDecoder *)self _decodeCollectionOfClass:v10 allowedClasses:v8 forKey:a5];
}

@end