@interface NSXPCEncoder
- (NSXPCEncoder)initWithStackSpace:(char *)space size:(unint64_t)size;
- (id)_newRootXPCObject;
- (id)_replaceObject:(id)object;
- (id)connection;
- (id)debugDescription;
- (id)finishEncoding;
- (unint64_t)_addOOLXPCObject:(id)object;
- (void)_checkObject:(id)object;
- (void)_encodeArrayOfObjects:(id)objects forKey:(id)key;
- (void)_encodeCString:(const char *)string length:(unint64_t)length forKey:(id)key;
- (void)_encodeInvocation:(id)invocation isReply:(BOOL)reply into:(id)into;
- (void)_encodeInvocationObjectArgumentsOnly:(id *)only count:(unint64_t)count typeString:(const char *)string selector:(SEL)selector isReply:(BOOL)reply into:(id)into;
- (void)_encodeObject:(id)object;
- (void)_encodeUnkeyedObject:(id)object;
- (void)_setConnection:(id)connection;
- (void)dealloc;
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeInt32:(int)int32 forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeInt:(int)int forKey:(id)key;
- (void)encodeInteger:(int64_t)integer forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at;
- (void)encodeXPCObject:(id)object forKey:(id)key;
@end

@implementation NSXPCEncoder

- (id)finishEncoding
{
  _newRootXPCObject = [(NSXPCEncoder *)self _newRootXPCObject];

  return _newRootXPCObject;
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

- (void)_setConnection:(id)connection
{
  connection = self->_connection;
  if (connection != connection)
  {

    self->_connection = connection;
  }
}

- (NSXPCEncoder)initWithStackSpace:(char *)space size:(unint64_t)size
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSXPCEncoder;
  v6 = [(NSXPCCoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    _NSXPCSerializationStartWrite(&v6->_encoder, space, size);
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

- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at
{
  p_encoder = &self->_encoder;
  _reserveSpace(&self->_encoder, 1);
  p_encoder->data[p_encoder->dataLen++] = _NSXPCSerializationAddNull_nullMarker;
  _NSXPCSerializationStartArrayWrite(p_encoder);
  _NSXPCSerializationAddTypedObjCValuesToArray(self, p_encoder, type, at);

  _NSXPCSerializationEndArrayWrite(p_encoder);
}

- (id)_replaceObject:(id)object
{
  objectCopy = object;
  value[1] = *MEMORY[0x1E69E9840];
  value[0] = object;
  if (self->_askForReplacement)
  {
    if (object)
    {
      v6 = [object replacementObjectForCoder:self];
      if (v6 == objectCopy || (value[0] = v6, (objectCopy = v6) != 0))
      {
        if (objc_loadWeak(&self->_delegate))
        {
          replacedByDelegateObjects = self->_replacedByDelegateObjects;
          if (replacedByDelegateObjects && CFDictionaryGetValueIfPresent(replacedByDelegateObjects, objectCopy, value))
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

            objectCopy = v9;
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

              CFDictionarySetValue(Mutable, v10, objectCopy);
            }
          }
        }
      }
    }
  }

  return objectCopy;
}

- (void)_checkObject:(id)object
{
  if (!object)
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

  if ((objc_opt_isKindOfClass() & 1) == 0 && ([object conformsToProtocol:&unk_1EEF5E4A0] & 1) == 0 && (objc_opt_isKindOfClass() & 1) == 0)
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

- (void)_encodeObject:(id)object
{
  p_encoder = &self->_encoder;
  if (!object)
  {
    _reserveSpace(&self->_encoder, 1);
    p_encoder->data[p_encoder->dataLen++] = _NSXPCSerializationAddNull_nullMarker;
    return;
  }

  objectReferences = self->_encoder._objectReferences;
  if (objectReferences)
  {
    Value = CFDictionaryGetValue(objectReferences, object);
    if (Value)
    {

      _NSXPCSerializationAddReference(p_encoder, Value);
      return;
    }
  }

  if (![object _allowsDirectEncoding])
  {
    _NSXPCSerializationAddObjectRef(p_encoder, object);
    goto LABEL_14;
  }

  if (_NSIsNSString())
  {

    _NSXPCSerializationAddString(p_encoder, object, 0);
    return;
  }

  if (_NSIsNSNumber())
  {

    _NSXPCSerializationAddNumber(p_encoder, object);
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
    Class = object_getClass(object);
    if (class_isMetaClass(Class))
    {
      v15 = [NSString stringWithFormat:@"%@: Class objects may not be encoded at this time.", _NSMethodExceptionProem(self, a2)];
    }

    else
    {
      classForCoder = [object classForCoder];
      if (classForCoder)
      {
        Name = class_getName(classForCoder);
        _NSXPCSerializationAddASCIIString(p_encoder, "$class", 6, 1);
        v14 = strlen(Name);
        _NSXPCSerializationAddASCIIString(p_encoder, Name, v14, 1);
        self->_askForReplacement = askForReplacement;
        if (objc_opt_isKindOfClass())
        {
          _NSXPCSerializationAddASCIIString(p_encoder, "$xpc", 4, 1);
          _NSXPCSerializationAddInteger(p_encoder, [(NSXPCEncoder *)self _addOOLXPCObject:object]);
        }

        else
        {
          [object encodeWithCoder:self];
        }

        _NSXPCSerializationEndArrayWrite(p_encoder);
        self->_genericIndex = genericIndex;
        return;
      }

      v15 = [NSString stringWithFormat:@"%@: Unable to determine what Class the encoded object should encode (classForCoder returned nil)", _NSMethodExceptionProem(self, a2)];
    }

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0]);
  }

  _NSXPCSerializationAddData(p_encoder, object);
}

- (void)encodeObject:(id)object forKey:(id)key
{
  v6 = [(NSXPCEncoder *)self _replaceObject:object];
  [(NSXPCEncoder *)self _checkObject:v6];
  if (key)
  {
    _NSXPCSerializationAddString(&self->_encoder, key, 1);
  }

  else
  {
    _reserveSpace(&self->_encoder, 1);
    self->_encoder.data[self->_encoder.dataLen++] = _NSXPCSerializationAddNull_nullMarker;
  }

  [(NSXPCEncoder *)self _encodeObject:v6];
}

- (void)_encodeUnkeyedObject:(id)object
{
  v4 = [(NSXPCEncoder *)self _replaceObject:object];
  [(NSXPCEncoder *)self _checkObject:v4];

  [(NSXPCEncoder *)self _encodeObject:v4];
}

- (void)_encodeInvocation:(id)invocation isReply:(BOOL)reply into:(id)into
{
  replyCopy = reply;
  genericIndex = self->_genericIndex;
  self->_genericIndex = 0;
  p_encoder = &self->_encoder;
  _NSXPCSerializationStartArrayWrite(&self->_encoder);
  if (replyCopy)
  {
    v11 = 1;
    _reserveSpace(p_encoder, 1);
    p_encoder->data[p_encoder->dataLen++] = _NSXPCSerializationAddNull_nullMarker;
  }

  else
  {
    Name = sel_getName([invocation selector]);
    v13 = strlen(Name);
    _NSXPCSerializationAddASCIIString(p_encoder, Name, v13, 0);
    v11 = 2;
  }

  methodSignature = [invocation methodSignature];
  _cTypeString = [methodSignature _cTypeString];
  v16 = strlen(_cTypeString);
  _NSXPCSerializationAddASCIIString(p_encoder, _cTypeString, v16, 0);
  self->_askForReplacement = 1;
  _NSXPCSerializationAddInvocationArgumentsArray(invocation, methodSignature, self, p_encoder, v11);
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
  xpc_dictionary_set_value(into, "root", v17);
  xpc_release(v18);
  oolObjects = self->_oolObjects;
  if (oolObjects)
  {

    xpc_dictionary_set_value(into, "ool", oolObjects);
  }
}

- (void)_encodeInvocationObjectArgumentsOnly:(id *)only count:(unint64_t)count typeString:(const char *)string selector:(SEL)selector isReply:(BOOL)reply into:(id)into
{
  replyCopy = reply;
  genericIndex = self->_genericIndex;
  self->_genericIndex = 0;
  p_encoder = &self->_encoder;
  _NSXPCSerializationStartArrayWrite(&self->_encoder);
  if (replyCopy)
  {
    _reserveSpace(p_encoder, 1);
    p_encoder->data[p_encoder->dataLen++] = _NSXPCSerializationAddNull_nullMarker;
  }

  else
  {
    Name = sel_getName(selector);
    v18 = strlen(Name);
    _NSXPCSerializationAddASCIIString(p_encoder, Name, v18, 0);
  }

  v19 = strlen(string);
  _NSXPCSerializationAddASCIIString(p_encoder, string, v19, 0);
  self->_askForReplacement = 1;
  _NSXPCSerializationAddInvocationWithOnlyObjectArgumentsArray(only, count, self, p_encoder);
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
  xpc_dictionary_set_value(into, "root", v20);
  xpc_release(v21);
  oolObjects = self->_oolObjects;
  if (oolObjects)
  {

    xpc_dictionary_set_value(into, "ool", oolObjects);
  }
}

- (void)_encodeArrayOfObjects:(id)objects forKey:(id)key
{
  v15 = *MEMORY[0x1E69E9840];
  _NSXPCSerializationAddString(&self->_encoder, key, 1);
  _NSXPCSerializationStartArrayWrite(&self->_encoder);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [objects countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(objects);
        }

        [(NSXPCEncoder *)self _encodeUnkeyedObject:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [objects countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }

  _NSXPCSerializationEndArrayWrite(self->_encoder.collectionSizeOffset);
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  p_encoder = &self->_encoder;
  _NSXPCSerializationAddString(&self->_encoder, key, 1);
  _reserveSpace(p_encoder, 1);
  v6 = &_NSXPCSerializationAddBool_trueMarker;
  if (!boolCopy)
  {
    v6 = &_NSXPCSerializationAddBool_falseMarker;
  }

  p_encoder->data[p_encoder->dataLen++] = *v6;
}

- (void)encodeInt:(int)int forKey:(id)key
{
  _NSXPCSerializationAddString(&self->_encoder, key, 1);

  _NSXPCSerializationAddInteger(&self->_encoder, int);
}

- (void)encodeInt32:(int)int32 forKey:(id)key
{
  _NSXPCSerializationAddString(&self->_encoder, key, 1);

  _NSXPCSerializationAddInteger(&self->_encoder, int32);
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  _NSXPCSerializationAddString(&self->_encoder, key, 1);

  _NSXPCSerializationAddInteger(&self->_encoder, int64);
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  _NSXPCSerializationAddString(&self->_encoder, key, 1);

  _NSXPCSerializationAddFloat(&self->_encoder, float);
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  _NSXPCSerializationAddString(&self->_encoder, key, 1);

  _NSXPCSerializationAddDouble(&self->_encoder, double);
}

- (void)encodeInteger:(int64_t)integer forKey:(id)key
{
  _NSXPCSerializationAddString(&self->_encoder, key, 1);

  _NSXPCSerializationAddInteger(&self->_encoder, integer);
}

- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key
{
  if (!bytes && length)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: argument inconsistency: bytes pointer is null but length (%ld) is not zero", _NSMethodExceptionProem(self, a2), length), 0}];
    objc_exception_throw(v7);
  }

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:bytes length:length];
  _NSXPCSerializationAddString(&self->_encoder, key, 1);
  _NSXPCSerializationAddData(&self->_encoder, v8);
}

- (void)_encodeCString:(const char *)string length:(unint64_t)length forKey:(id)key
{
  _NSXPCSerializationAddString(&self->_encoder, key, 1);

  _NSXPCSerializationAddASCIIString(&self->_encoder, string, length, 1);
}

- (unint64_t)_addOOLXPCObject:(id)object
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = object;
  oolObjects = self->_oolObjects;
  if (oolObjects)
  {
    count = xpc_array_get_count(oolObjects);
    xpc_array_append_value(self->_oolObjects, object);
    return count;
  }

  else
  {
    self->_oolObjects = xpc_array_create(v8, 1uLL);
    return 0;
  }
}

- (void)encodeXPCObject:(id)object forKey:(id)key
{
  _NSXPCSerializationAddString(&self->_encoder, key, 1);
  v6 = [(NSXPCEncoder *)self _addOOLXPCObject:object];

  _NSXPCSerializationAddInteger(&self->_encoder, v6);
}

@end