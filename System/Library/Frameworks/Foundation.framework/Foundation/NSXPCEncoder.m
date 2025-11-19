@interface NSXPCEncoder
- (NSXPCEncoder)initWithStackSpace:(char *)a3 size:(unint64_t)a4;
- (id)_newRootXPCObject;
- (id)_replaceObject:(id)a3;
- (id)connection;
- (id)debugDescription;
- (id)finishEncoding;
- (unint64_t)_addOOLXPCObject:(id)a3;
- (void)_checkObject:(id)a3;
- (void)_encodeArrayOfObjects:(id)a3 forKey:(id)a4;
- (void)_encodeCString:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5;
- (void)_encodeInvocation:(id)a3 isReply:(BOOL)a4 into:(id)a5;
- (void)_encodeInvocationObjectArgumentsOnly:(id *)a3 count:(unint64_t)a4 typeString:(const char *)a5 selector:(SEL)a6 isReply:(BOOL)a7 into:(id)a8;
- (void)_encodeObject:(id)a3;
- (void)_encodeUnkeyedObject:(id)a3;
- (void)_setConnection:(id)a3;
- (void)dealloc;
- (void)encodeBool:(BOOL)a3 forKey:(id)a4;
- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeFloat:(float)a3 forKey:(id)a4;
- (void)encodeInt32:(int)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeInt:(int)a3 forKey:(id)a4;
- (void)encodeInteger:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4;
- (void)encodeXPCObject:(id)a3 forKey:(id)a4;
@end

@implementation NSXPCEncoder

- (id)finishEncoding
{
  v2 = [(NSXPCEncoder *)self _newRootXPCObject];

  return v2;
}

- (id)_newRootXPCObject
{
  if (self->_topLevelDictionary)
  {
    _NSXPCSerializationEndArrayWrite(self->_encoder.collectionSizeOffset);
  }

  v3 = _NSXPCSerializationCreateWriteData(&self->_encoder);
  if (!v3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSCoder is unable to serialize objects to be sent" userInfo:0]);
  }

  v4 = v3;
  self->_finished = 1;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v5, "root", v4);
  xpc_release(v4);
  oolObjects = self->_oolObjects;
  if (oolObjects)
  {
    xpc_dictionary_set_value(v5, "ool", oolObjects);
  }

  return v5;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  oolObjects = self->_oolObjects;
  if (oolObjects)
  {
    xpc_release(oolObjects);
  }

  replacedByDelegateObjects = self->_replacedByDelegateObjects;
  if (replacedByDelegateObjects)
  {
    CFRelease(replacedByDelegateObjects);
  }

  if (!self->_finished)
  {
    v5 = _NSXPCSerializationCreateWriteData(&self->_encoder);
    xpc_release(v5);
  }

  v6.receiver = self;
  v6.super_class = NSXPCEncoder;
  [(NSXPCCoder *)&v6 dealloc];
}

- (id)connection
{
  v2 = self->_connection;

  return v2;
}

- (void)_setConnection:(id)a3
{
  connection = self->_connection;
  if (connection != a3)
  {

    self->_connection = a3;
  }
}

- (NSXPCEncoder)initWithStackSpace:(char *)a3 size:(unint64_t)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSXPCEncoder;
  v6 = [(NSXPCCoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    _NSXPCSerializationStartWrite(&v6->_encoder, a3, a4);
  }

  return v7;
}

- (id)debugDescription
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSXPCEncoder;
  return [(NSXPCEncoder *)&v3 debugDescription];
}

- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4
{
  p_encoder = &self->_encoder;
  _reserveSpace(&self->_encoder, 1);
  p_encoder->data[p_encoder->dataLen++] = _NSXPCSerializationAddNull_nullMarker;
  _NSXPCSerializationStartArrayWrite(p_encoder);
  _NSXPCSerializationAddTypedObjCValuesToArray(self, p_encoder, a3, a4);

  _NSXPCSerializationEndArrayWrite(p_encoder);
}

- (id)_replaceObject:(id)a3
{
  v3 = a3;
  value[1] = *MEMORY[0x1E69E9840];
  value[0] = a3;
  if (self->_askForReplacement)
  {
    if (a3)
    {
      v6 = [a3 replacementObjectForCoder:self];
      if (v6 == v3 || (value[0] = v6, (v3 = v6) != 0))
      {
        if (objc_loadWeak(&self->_delegate))
        {
          replacedByDelegateObjects = self->_replacedByDelegateObjects;
          if (replacedByDelegateObjects && CFDictionaryGetValueIfPresent(replacedByDelegateObjects, v3, value))
          {
            return value[0];
          }

          else
          {
            Weak = objc_loadWeak(&self->_delegate);
            v9 = [Weak replacementObjectForEncoder:self object:value[0]];
            if (!v9)
            {
              v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: The replacement object must not be nil.", _NSMethodExceptionProem(self, a2)), 0}];
              objc_exception_throw(v13);
            }

            v3 = v9;
            v10 = value[0];
            if (v9 == value[0])
            {
              return value[0];
            }

            else
            {
              Mutable = self->_replacedByDelegateObjects;
              if (!Mutable)
              {
                Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                self->_replacedByDelegateObjects = Mutable;
                v10 = value[0];
              }

              CFDictionarySetValue(Mutable, v10, v3);
            }
          }
        }
      }
    }
  }

  return v3;
}

- (void)_checkObject:(id)a3
{
  if (!a3)
  {
    return;
  }

  v6 = objc_opt_class();
  if (!v6)
  {
    v11 = [NSString stringWithFormat:@"%@: An object had no class.", _NSMethodExceptionProem(self, a2), v14];
    goto LABEL_14;
  }

  v7 = v6;
  connection = self->_connection;
  if (connection && ([(_NSXPCConnectionClassCache *)connection->_eCache containsClass:v6]& 1) != 0)
  {
    return;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0 && ([a3 conformsToProtocol:&unk_1EEF5E4A0] & 1) == 0 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = _NSMethodExceptionProem(self, a2);
    v13 = objc_opt_class();
    v11 = [NSString stringWithFormat:@"%@: This coder only encodes objects that adopt NSSecureCoding (object is of class '%s').", v12, class_getName(v13)];
LABEL_14:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v11 userInfo:0]);
  }

  v9 = self->_connection;
  if (v9)
  {
    eCache = v9->_eCache;

    [(_NSXPCConnectionClassCache *)eCache addClass:v7];
  }
}

- (void)_encodeObject:(id)a3
{
  p_encoder = &self->_encoder;
  if (!a3)
  {
    _reserveSpace(&self->_encoder, 1);
    p_encoder->data[p_encoder->dataLen++] = _NSXPCSerializationAddNull_nullMarker;
    return;
  }

  objectReferences = self->_encoder._objectReferences;
  if (objectReferences)
  {
    Value = CFDictionaryGetValue(objectReferences, a3);
    if (Value)
    {

      _NSXPCSerializationAddReference(p_encoder, Value);
      return;
    }
  }

  if (![a3 _allowsDirectEncoding])
  {
    _NSXPCSerializationAddObjectRef(p_encoder, a3);
    goto LABEL_14;
  }

  if (_NSIsNSString())
  {

    _NSXPCSerializationAddString(p_encoder, a3, 0);
    return;
  }

  if (_NSIsNSNumber())
  {

    _NSXPCSerializationAddNumber(p_encoder, a3);
    return;
  }

  if (!_NSIsNSData())
  {
LABEL_14:
    genericIndex = self->_genericIndex;
    self->_genericIndex = 0;
    _NSXPCSerializationStartDictionaryWrite(p_encoder);
    askForReplacement = self->_askForReplacement;
    self->_askForReplacement = 0;
    Class = object_getClass(a3);
    if (class_isMetaClass(Class))
    {
      v15 = [NSString stringWithFormat:@"%@: Class objects may not be encoded at this time.", _NSMethodExceptionProem(self, a2)];
    }

    else
    {
      v12 = [a3 classForCoder];
      if (v12)
      {
        Name = class_getName(v12);
        _NSXPCSerializationAddASCIIString(p_encoder, "$class", 6, 1);
        v14 = strlen(Name);
        _NSXPCSerializationAddASCIIString(p_encoder, Name, v14, 1);
        self->_askForReplacement = askForReplacement;
        if (objc_opt_isKindOfClass())
        {
          _NSXPCSerializationAddASCIIString(p_encoder, "$xpc", 4, 1);
          _NSXPCSerializationAddInteger(p_encoder, [(NSXPCEncoder *)self _addOOLXPCObject:a3]);
        }

        else
        {
          [a3 encodeWithCoder:self];
        }

        _NSXPCSerializationEndArrayWrite(p_encoder);
        self->_genericIndex = genericIndex;
        return;
      }

      v15 = [NSString stringWithFormat:@"%@: Unable to determine what Class the encoded object should encode (classForCoder returned nil)", _NSMethodExceptionProem(self, a2)];
    }

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0]);
  }

  _NSXPCSerializationAddData(p_encoder, a3);
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v6 = [(NSXPCEncoder *)self _replaceObject:a3];
  [(NSXPCEncoder *)self _checkObject:v6];
  if (a4)
  {
    _NSXPCSerializationAddString(&self->_encoder, a4, 1);
  }

  else
  {
    _reserveSpace(&self->_encoder, 1);
    self->_encoder.data[self->_encoder.dataLen++] = _NSXPCSerializationAddNull_nullMarker;
  }

  [(NSXPCEncoder *)self _encodeObject:v6];
}

- (void)_encodeUnkeyedObject:(id)a3
{
  v4 = [(NSXPCEncoder *)self _replaceObject:a3];
  [(NSXPCEncoder *)self _checkObject:v4];

  [(NSXPCEncoder *)self _encodeObject:v4];
}

- (void)_encodeInvocation:(id)a3 isReply:(BOOL)a4 into:(id)a5
{
  v6 = a4;
  genericIndex = self->_genericIndex;
  self->_genericIndex = 0;
  p_encoder = &self->_encoder;
  _NSXPCSerializationStartArrayWrite(&self->_encoder);
  if (v6)
  {
    v11 = 1;
    _reserveSpace(p_encoder, 1);
    p_encoder->data[p_encoder->dataLen++] = _NSXPCSerializationAddNull_nullMarker;
  }

  else
  {
    Name = sel_getName([a3 selector]);
    v13 = strlen(Name);
    _NSXPCSerializationAddASCIIString(p_encoder, Name, v13, 0);
    v11 = 2;
  }

  v14 = [a3 methodSignature];
  v15 = [v14 _cTypeString];
  v16 = strlen(v15);
  _NSXPCSerializationAddASCIIString(p_encoder, v15, v16, 0);
  self->_askForReplacement = 1;
  _NSXPCSerializationAddInvocationArgumentsArray(a3, v14, self, p_encoder, v11);
  self->_askForReplacement = 0;
  _NSXPCSerializationEndArrayWrite(p_encoder);
  self->_genericIndex = genericIndex;
  v17 = _NSXPCSerializationCreateWriteData(p_encoder);
  if (!v17)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSCoder is unable to serialize objects to be sent" userInfo:0]);
  }

  v18 = v17;
  self->_finished = 1;
  xpc_dictionary_set_value(a5, "root", v17);
  xpc_release(v18);
  oolObjects = self->_oolObjects;
  if (oolObjects)
  {

    xpc_dictionary_set_value(a5, "ool", oolObjects);
  }
}

- (void)_encodeInvocationObjectArgumentsOnly:(id *)a3 count:(unint64_t)a4 typeString:(const char *)a5 selector:(SEL)a6 isReply:(BOOL)a7 into:(id)a8
{
  v9 = a7;
  genericIndex = self->_genericIndex;
  self->_genericIndex = 0;
  p_encoder = &self->_encoder;
  _NSXPCSerializationStartArrayWrite(&self->_encoder);
  if (v9)
  {
    _reserveSpace(p_encoder, 1);
    p_encoder->data[p_encoder->dataLen++] = _NSXPCSerializationAddNull_nullMarker;
  }

  else
  {
    Name = sel_getName(a6);
    v18 = strlen(Name);
    _NSXPCSerializationAddASCIIString(p_encoder, Name, v18, 0);
  }

  v19 = strlen(a5);
  _NSXPCSerializationAddASCIIString(p_encoder, a5, v19, 0);
  self->_askForReplacement = 1;
  _NSXPCSerializationAddInvocationWithOnlyObjectArgumentsArray(a3, a4, self, p_encoder);
  self->_askForReplacement = 0;
  _NSXPCSerializationEndArrayWrite(p_encoder);
  self->_genericIndex = genericIndex;
  v20 = _NSXPCSerializationCreateWriteData(p_encoder);
  if (!v20)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSCoder is unable to serialize objects to be sent" userInfo:0]);
  }

  v21 = v20;
  self->_finished = 1;
  xpc_dictionary_set_value(a8, "root", v20);
  xpc_release(v21);
  oolObjects = self->_oolObjects;
  if (oolObjects)
  {

    xpc_dictionary_set_value(a8, "ool", oolObjects);
  }
}

- (void)_encodeArrayOfObjects:(id)a3 forKey:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  _NSXPCSerializationAddString(&self->_encoder, a4, 1);
  _NSXPCSerializationStartArrayWrite(&self->_encoder);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a3);
        }

        [(NSXPCEncoder *)self _encodeUnkeyedObject:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }

  _NSXPCSerializationEndArrayWrite(self->_encoder.collectionSizeOffset);
}

- (void)encodeBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  p_encoder = &self->_encoder;
  _NSXPCSerializationAddString(&self->_encoder, a4, 1);
  _reserveSpace(p_encoder, 1);
  v6 = &_NSXPCSerializationAddBool_trueMarker;
  if (!v4)
  {
    v6 = &_NSXPCSerializationAddBool_falseMarker;
  }

  p_encoder->data[p_encoder->dataLen++] = *v6;
}

- (void)encodeInt:(int)a3 forKey:(id)a4
{
  _NSXPCSerializationAddString(&self->_encoder, a4, 1);

  _NSXPCSerializationAddInteger(&self->_encoder, a3);
}

- (void)encodeInt32:(int)a3 forKey:(id)a4
{
  _NSXPCSerializationAddString(&self->_encoder, a4, 1);

  _NSXPCSerializationAddInteger(&self->_encoder, a3);
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  _NSXPCSerializationAddString(&self->_encoder, a4, 1);

  _NSXPCSerializationAddInteger(&self->_encoder, a3);
}

- (void)encodeFloat:(float)a3 forKey:(id)a4
{
  _NSXPCSerializationAddString(&self->_encoder, a4, 1);

  _NSXPCSerializationAddFloat(&self->_encoder, a3);
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  _NSXPCSerializationAddString(&self->_encoder, a4, 1);

  _NSXPCSerializationAddDouble(&self->_encoder, a3);
}

- (void)encodeInteger:(int64_t)a3 forKey:(id)a4
{
  _NSXPCSerializationAddString(&self->_encoder, a4, 1);

  _NSXPCSerializationAddInteger(&self->_encoder, a3);
}

- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5
{
  if (!a3 && a4)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: argument inconsistency: bytes pointer is null but length (%ld) is not zero", _NSMethodExceptionProem(self, a2), a4), 0}];
    objc_exception_throw(v7);
  }

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a4];
  _NSXPCSerializationAddString(&self->_encoder, a5, 1);
  _NSXPCSerializationAddData(&self->_encoder, v8);
}

- (void)_encodeCString:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5
{
  _NSXPCSerializationAddString(&self->_encoder, a5, 1);

  _NSXPCSerializationAddASCIIString(&self->_encoder, a3, a4, 1);
}

- (unint64_t)_addOOLXPCObject:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = a3;
  oolObjects = self->_oolObjects;
  if (oolObjects)
  {
    count = xpc_array_get_count(oolObjects);
    xpc_array_append_value(self->_oolObjects, a3);
    return count;
  }

  else
  {
    self->_oolObjects = xpc_array_create(v8, 1uLL);
    return 0;
  }
}

- (void)encodeXPCObject:(id)a3 forKey:(id)a4
{
  _NSXPCSerializationAddString(&self->_encoder, a4, 1);
  v6 = [(NSXPCEncoder *)self _addOOLXPCObject:a3];

  _NSXPCSerializationAddInteger(&self->_encoder, v6);
}

@end