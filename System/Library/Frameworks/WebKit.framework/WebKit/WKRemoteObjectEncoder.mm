@interface WKRemoteObjectEncoder
- (WKRemoteObjectEncoder)init;
- (id).cxx_construct;
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeInt32:(int)int32 forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeInt:(int)int forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at;
@end

@implementation WKRemoteObjectEncoder

- (WKRemoteObjectEncoder)init
{
  v7.receiver = self;
  v7.super_class = WKRemoteObjectEncoder;
  v2 = [(WKRemoteObjectEncoder *)&v7 init];
  if (!v2)
  {
    return v2;
  }

  v3 = API::Object::newObject(0x18uLL, 9);
  v4 = API::Object::Object(v3);
  *v4 = &unk_1F110EAE0;
  *(v4 + 2) = 0;
  if (!v2->_rootDictionary.m_ptr)
  {
    v2->_rootDictionary.m_ptr = v3;
    CFRetain(v3[1]);
    m_ptr = v2->_currentDictionary.m_ptr;
    v2->_currentDictionary.m_ptr = v3;
    if (m_ptr)
    {
      CFRelease(*(m_ptr + 1));
    }

    return v2;
  }

  result = 272;
  __break(0xC471u);
  return result;
}

- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at
{
  v6 = *type;
  if (v6 > 0x62)
  {
    if (*type <= 0x68u)
    {
      switch(v6)
      {
        case 'c':
          v7 = [MEMORY[0x1E696AD98] numberWithChar:*at];
          goto LABEL_34;
        case 'd':
          v7 = [MEMORY[0x1E696AD98] numberWithDouble:*at];
          goto LABEL_34;
        case 'f':
          LODWORD(v4) = *at;
          v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
          goto LABEL_34;
      }
    }

    else if (*type > 0x70u)
    {
      if (v6 == 113)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithLongLong:*at];
        goto LABEL_34;
      }

      if (v6 == 115)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithShort:*at];
        goto LABEL_34;
      }
    }

    else
    {
      if (v6 == 105)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInt:*at];
        goto LABEL_34;
      }

      if (v6 == 108)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithLong:*at];
        goto LABEL_34;
      }
    }

LABEL_38:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported type '%s'", type}];
    return;
  }

  if (*type > 0x48u)
  {
    if (*type > 0x50u)
    {
      if (v6 == 81)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*at];
        goto LABEL_34;
      }

      if (v6 == 83)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*at];
        goto LABEL_34;
      }
    }

    else
    {
      if (v6 == 73)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*at];
        goto LABEL_34;
      }

      if (v6 == 76)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*at];
LABEL_34:
        v8 = v7;
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  if (v6 != 64)
  {
    if (v6 == 66)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithBool:*at];
      goto LABEL_34;
    }

    if (v6 == 67)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*at];
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  v8 = *at;
LABEL_35:

  encodeToObjectStream(self, v8);
}

- (void)encodeObject:(id)object forKey:(id)key
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([key length] && objc_msgSend(key, "characterAtIndex:", 0) == 36)
  {
    key = [@"$" stringByAppendingString:key];
  }

  MEMORY[0x19EB02040](&v13, key);
  createEncodedObject(&v11, self, object);
  v12 = v11;
  WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(m_ptr + 2, &v13, &v12, v14);
  v9 = v12;
  v12 = 0;
  if (v9)
  {
    CFRelease(*(v9 + 8));
  }

  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  CFRelease(*(m_ptr + 1));
}

- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([key length] && objc_msgSend(key, "characterAtIndex:", 0) == 36)
  {
    key = [@"$" stringByAppendingString:key];
  }

  MEMORY[0x19EB02040](&v16, key);
  API::Data::create(length, bytes, &v14);
  v9 = v14;
  v14 = 0;
  v15 = v9;
  WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(m_ptr + 2, &v16, &v15, v17);
  v11 = v15;
  v15 = 0;
  if (v11)
  {
    CFRelease(*(v11 + 8));
  }

  v12 = v14;
  v14 = 0;
  if (v12)
  {
    CFRelease(*(v12 + 1));
  }

  v13 = v16;
  v16 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  CFRelease(*(m_ptr + 1));
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([key length] && objc_msgSend(key, "characterAtIndex:", 0) == 36)
  {
    key = [@"$" stringByAppendingString:key];
  }

  MEMORY[0x19EB02040](&v13, key);
  v7 = API::Object::newObject(0x18uLL, 31);
  *(v7 + 16) = bool;
  v8 = API::Object::Object(v7);
  *v8 = &unk_1F10E82D8;
  v12 = v8;
  WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(m_ptr + 2, &v13, &v12, v14);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    CFRelease(*(v10 + 8));
  }

  v11 = v13;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  CFRelease(*(m_ptr + 1));
}

- (void)encodeInt:(int)int forKey:(id)key
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([key length] && objc_msgSend(key, "characterAtIndex:", 0) == 36)
  {
    key = [@"$" stringByAppendingString:key];
  }

  MEMORY[0x19EB02040](&v14, key);
  API::UInt64::create(int, &v12);
  v7 = v12;
  v12 = 0;
  v13 = v7;
  WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(m_ptr + 2, &v14, &v13, v15);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    CFRelease(*(v9 + 8));
  }

  v10 = v12;
  v12 = 0;
  if (v10)
  {
    CFRelease(*(v10 + 1));
  }

  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  CFRelease(*(m_ptr + 1));
}

- (void)encodeInt32:(int)int32 forKey:(id)key
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([key length] && objc_msgSend(key, "characterAtIndex:", 0) == 36)
  {
    key = [@"$" stringByAppendingString:key];
  }

  MEMORY[0x19EB02040](&v14, key);
  API::UInt64::create(int32, &v12);
  v7 = v12;
  v12 = 0;
  v13 = v7;
  WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(m_ptr + 2, &v14, &v13, v15);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    CFRelease(*(v9 + 8));
  }

  v10 = v12;
  v12 = 0;
  if (v10)
  {
    CFRelease(*(v10 + 1));
  }

  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  CFRelease(*(m_ptr + 1));
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([key length] && objc_msgSend(key, "characterAtIndex:", 0) == 36)
  {
    key = [@"$" stringByAppendingString:key];
  }

  MEMORY[0x19EB02040](&v14, key);
  API::UInt64::create(int64, &v12);
  v7 = v12;
  v12 = 0;
  v13 = v7;
  WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(m_ptr + 2, &v14, &v13, v15);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    CFRelease(*(v9 + 8));
  }

  v10 = v12;
  v12 = 0;
  if (v10)
  {
    CFRelease(*(v10 + 1));
  }

  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  CFRelease(*(m_ptr + 1));
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([key length] && objc_msgSend(key, "characterAtIndex:", 0) == 36)
  {
    key = [@"$" stringByAppendingString:key];
  }

  MEMORY[0x19EB02040](&v13, key);
  v7 = API::Object::newObject(0x18uLL, 32);
  v7[2] = float;
  v8 = API::Object::Object(v7);
  *v8 = &unk_1F10E8350;
  v12 = v8;
  WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(m_ptr + 2, &v13, &v12, v14);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    CFRelease(*(v10 + 8));
  }

  v11 = v13;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  CFRelease(*(m_ptr + 1));
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([key length] && objc_msgSend(key, "characterAtIndex:", 0) == 36)
  {
    key = [@"$" stringByAppendingString:key];
  }

  MEMORY[0x19EB02040](&v13, key);
  v7 = API::Object::newObject(0x18uLL, 32);
  v7[2] = double;
  v8 = API::Object::Object(v7);
  *v8 = &unk_1F10E8350;
  v12 = v8;
  WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(m_ptr + 2, &v13, &v12, v14);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    CFRelease(*(v10 + 8));
  }

  v11 = v13;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  CFRelease(*(m_ptr + 1));
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end