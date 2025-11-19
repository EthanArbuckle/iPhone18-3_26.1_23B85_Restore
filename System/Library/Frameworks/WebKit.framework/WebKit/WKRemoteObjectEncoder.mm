@interface WKRemoteObjectEncoder
- (WKRemoteObjectEncoder)init;
- (id).cxx_construct;
- (void)encodeBool:(BOOL)a3 forKey:(id)a4;
- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeFloat:(float)a3 forKey:(id)a4;
- (void)encodeInt32:(int)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeInt:(int)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4;
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

- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4
{
  v6 = *a3;
  if (v6 > 0x62)
  {
    if (*a3 <= 0x68u)
    {
      switch(v6)
      {
        case 'c':
          v7 = [MEMORY[0x1E696AD98] numberWithChar:*a4];
          goto LABEL_34;
        case 'd':
          v7 = [MEMORY[0x1E696AD98] numberWithDouble:*a4];
          goto LABEL_34;
        case 'f':
          LODWORD(v4) = *a4;
          v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
          goto LABEL_34;
      }
    }

    else if (*a3 > 0x70u)
    {
      if (v6 == 113)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithLongLong:*a4];
        goto LABEL_34;
      }

      if (v6 == 115)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithShort:*a4];
        goto LABEL_34;
      }
    }

    else
    {
      if (v6 == 105)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInt:*a4];
        goto LABEL_34;
      }

      if (v6 == 108)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithLong:*a4];
        goto LABEL_34;
      }
    }

LABEL_38:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported type '%s'", a3}];
    return;
  }

  if (*a3 > 0x48u)
  {
    if (*a3 > 0x50u)
    {
      if (v6 == 81)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*a4];
        goto LABEL_34;
      }

      if (v6 == 83)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*a4];
        goto LABEL_34;
      }
    }

    else
    {
      if (v6 == 73)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*a4];
        goto LABEL_34;
      }

      if (v6 == 76)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*a4];
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
      v7 = [MEMORY[0x1E696AD98] numberWithBool:*a4];
      goto LABEL_34;
    }

    if (v6 == 67)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*a4];
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  v8 = *a4;
LABEL_35:

  encodeToObjectStream(self, v8);
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a4 length] && objc_msgSend(a4, "characterAtIndex:", 0) == 36)
  {
    a4 = [@"$" stringByAppendingString:a4];
  }

  MEMORY[0x19EB02040](&v13, a4);
  createEncodedObject(&v11, self, a3);
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

- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a5 length] && objc_msgSend(a5, "characterAtIndex:", 0) == 36)
  {
    a5 = [@"$" stringByAppendingString:a5];
  }

  MEMORY[0x19EB02040](&v16, a5);
  API::Data::create(a4, a3, &v14);
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

- (void)encodeBool:(BOOL)a3 forKey:(id)a4
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a4 length] && objc_msgSend(a4, "characterAtIndex:", 0) == 36)
  {
    a4 = [@"$" stringByAppendingString:a4];
  }

  MEMORY[0x19EB02040](&v13, a4);
  v7 = API::Object::newObject(0x18uLL, 31);
  *(v7 + 16) = a3;
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

- (void)encodeInt:(int)a3 forKey:(id)a4
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a4 length] && objc_msgSend(a4, "characterAtIndex:", 0) == 36)
  {
    a4 = [@"$" stringByAppendingString:a4];
  }

  MEMORY[0x19EB02040](&v14, a4);
  API::UInt64::create(a3, &v12);
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

- (void)encodeInt32:(int)a3 forKey:(id)a4
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a4 length] && objc_msgSend(a4, "characterAtIndex:", 0) == 36)
  {
    a4 = [@"$" stringByAppendingString:a4];
  }

  MEMORY[0x19EB02040](&v14, a4);
  API::UInt64::create(a3, &v12);
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

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a4 length] && objc_msgSend(a4, "characterAtIndex:", 0) == 36)
  {
    a4 = [@"$" stringByAppendingString:a4];
  }

  MEMORY[0x19EB02040](&v14, a4);
  API::UInt64::create(a3, &v12);
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

- (void)encodeFloat:(float)a3 forKey:(id)a4
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a4 length] && objc_msgSend(a4, "characterAtIndex:", 0) == 36)
  {
    a4 = [@"$" stringByAppendingString:a4];
  }

  MEMORY[0x19EB02040](&v13, a4);
  v7 = API::Object::newObject(0x18uLL, 32);
  v7[2] = a3;
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

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a4 length] && objc_msgSend(a4, "characterAtIndex:", 0) == 36)
  {
    a4 = [@"$" stringByAppendingString:a4];
  }

  MEMORY[0x19EB02040](&v13, a4);
  v7 = API::Object::newObject(0x18uLL, 32);
  v7[2] = a3;
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