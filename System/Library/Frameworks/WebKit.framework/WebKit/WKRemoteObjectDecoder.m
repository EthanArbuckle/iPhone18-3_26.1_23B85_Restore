@interface WKRemoteObjectDecoder
- (BOOL)containsValueForKey:(id)a3;
- (BOOL)decodeBoolForKey:(id)a3;
- (WKRemoteObjectDecoder)initWithInterface:(id)a3 rootObjectDictionary:(void *)a4 replyToSelector:(SEL)a5;
- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4;
- (double)decodeDoubleForKey:(id)a3;
- (float)decodeFloatForKey:(id)a3;
- (id).cxx_construct;
- (id)allowedClasses;
- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4;
- (int)decodeInt32ForKey:(id)a3;
- (int)decodeIntForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
- (void)decodeValueOfObjCType:(const char *)a3 at:(void *)a4;
@end

@implementation WKRemoteObjectDecoder

- (WKRemoteObjectDecoder)initWithInterface:(id)a3 rootObjectDictionary:(void *)a4 replyToSelector:(SEL)a5
{
  v21.receiver = self;
  v21.super_class = WKRemoteObjectDecoder;
  v8 = [(WKRemoteObjectDecoder *)&v21 init];
  v9 = v8;
  if (v8)
  {
    WTF::RetainPtr<NSNumber>::operator=(&v8->_interface.m_ptr, a3);
    if (v9->_rootDictionary.m_ptr)
    {
      __break(0xC471u);
      goto LABEL_19;
    }

    v10 = *a4;
    *a4 = 0;
    m_ptr = v9->_rootDictionary.m_ptr;
    v9->_rootDictionary.m_ptr = v10;
    if (m_ptr)
    {
      CFRelease(*(m_ptr + 1));
      v10 = v9->_rootDictionary.m_ptr;
    }

    WTF::RefPtr<API::Dictionary const,WTF::RawPtrTraits<API::Dictionary const>,WTF::DefaultRefDerefTraits<API::Dictionary const>>::operator=(&v9->_currentDictionary, v10);
    if (a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = 0;
    }

    v9->_replyToSelector = v12;
    v13 = v9->_rootDictionary.m_ptr;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v15 = API::Dictionary::get<API::Array>(v13, &v20, v14);
    v17 = v15;
    if (v15)
    {
      CFRetain(*(v15 + 1));
    }

    v18 = v20;
    v20 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v16);
    }

    if (v17)
    {
      if (!v9->_objectStream.m_ptr)
      {
        v9->_objectStream.m_ptr = v17;
        return v9;
      }

      __break(0xC471u);
LABEL_19:
      JUMPOUT(0x19D9911F4);
    }
  }

  return v9;
}

- (void)decodeValueOfObjCType:(const char *)a3 at:(void *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = *a3;
  if (v6 <= 0x62)
  {
    if (*a3 > 0x4Bu)
    {
      switch(v6)
      {
        case 'L':
          v17[0] = objc_opt_class();
          WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
          decodeObjectFromObjectStream(&v16, self, &v15);
          v7 = v16;
          v8 = [v16 unsignedLongValue];
          break;
        case 'Q':
          v17[0] = objc_opt_class();
          WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
          decodeObjectFromObjectStream(&v16, self, &v15);
          v7 = v16;
          v8 = [v16 unsignedLongLongValue];
          break;
        case 'S':
          v17[0] = objc_opt_class();
          WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
          decodeObjectFromObjectStream(&v16, self, &v15);
          v7 = v16;
          v12 = [v16 unsignedShortValue];
LABEL_24:
          *a4 = v12;
          if (!v7)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        default:
          goto LABEL_43;
      }

LABEL_39:
      *a4 = v8;
      if (!v7)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    switch(v6)
    {
      case 'B':
        v17[0] = objc_opt_class();
        WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
        decodeObjectFromObjectStream(&v16, self, &v15);
        v7 = v16;
        v13 = [v16 BOOLValue];
        break;
      case 'C':
        v17[0] = objc_opt_class();
        WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
        decodeObjectFromObjectStream(&v16, self, &v15);
        v7 = v16;
        v13 = [v16 unsignedCharValue];
        break;
      case 'I':
        v17[0] = objc_opt_class();
        WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
        decodeObjectFromObjectStream(&v16, self, &v15);
        v7 = v16;
        v10 = [v16 unsignedIntValue];
        goto LABEL_27;
      default:
        goto LABEL_43;
    }

    goto LABEL_36;
  }

  if (*a3 > 0x68u)
  {
    if (*a3 <= 0x70u)
    {
      if (v6 != 105)
      {
        if (v6 == 108)
        {
          v17[0] = objc_opt_class();
          WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
          decodeObjectFromObjectStream(&v16, self, &v15);
          v7 = v16;
          v8 = [v16 longValue];
          goto LABEL_39;
        }

LABEL_43:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"Unsupported type '%s'", a3}];
        return;
      }

      v17[0] = objc_opt_class();
      WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
      decodeObjectFromObjectStream(&v16, self, &v15);
      v7 = v16;
      v10 = [v16 intValue];
LABEL_27:
      *a4 = v10;
      if (!v7)
      {
        goto LABEL_41;
      }

LABEL_40:

      goto LABEL_41;
    }

    if (v6 != 113)
    {
      if (v6 != 115)
      {
        goto LABEL_43;
      }

      v17[0] = objc_opt_class();
      WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
      decodeObjectFromObjectStream(&v16, self, &v15);
      v7 = v16;
      v12 = [v16 shortValue];
      goto LABEL_24;
    }

    v17[0] = objc_opt_class();
    WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
    decodeObjectFromObjectStream(&v16, self, &v15);
    v7 = v16;
    v8 = [v16 longLongValue];
    goto LABEL_39;
  }

  switch(v6)
  {
    case 'c':
      v17[0] = objc_opt_class();
      WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
      decodeObjectFromObjectStream(&v16, self, &v15);
      v7 = v16;
      v13 = [v16 charValue];
LABEL_36:
      *a4 = v13;
      if (v7)
      {
        goto LABEL_40;
      }

      break;
    case 'd':
      v17[0] = objc_opt_class();
      WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
      decodeObjectFromObjectStream(&v16, self, &v15);
      v7 = v16;
      [v16 doubleValue];
      *a4 = v14;
      if (v7)
      {
        goto LABEL_40;
      }

      break;
    case 'f':
      v17[0] = objc_opt_class();
      WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v17, 1);
      decodeObjectFromObjectStream(&v16, self, &v15);
      v7 = v16;
      [v16 floatValue];
      *a4 = v11;
      if (v7)
      {
        goto LABEL_40;
      }

      break;
    default:
      goto LABEL_43;
  }

LABEL_41:
  if (v15)
  {
    WTF::fastFree((v15 - 16), v9);
  }
}

- (BOOL)containsValueForKey:(id)a3
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a3 length] && objc_msgSend(a3, "characterAtIndex:", 0) == 36)
  {
    a3 = [@"$" stringByAppendingString:a3];
  }

  MEMORY[0x19EB02040](&v16, a3);
  v7 = *(m_ptr + 2);
  v8 = v16;
  if (v7)
  {
    if (v16 == -1 || !v16)
    {
      __break(0xC471u);
      JUMPOUT(0x19D991A38);
    }

    v9 = *(v7 - 8);
    v10 = *(v16 + 4);
    if (v10 < 0x100)
    {
      v11 = WTF::StringImpl::hashSlowCase(v16);
    }

    else
    {
      v11 = v10 >> 8;
    }

    for (i = 0; ; v11 = i + v13)
    {
      v13 = v11 & v9;
      v14 = *(v7 + 16 * (v11 & v9));
      if (v14 != -1)
      {
        if (!v14)
        {
          LOBYTE(v7) = 0;
          goto LABEL_16;
        }

        if (WTF::equal(v14, v16, v6))
        {
          break;
        }
      }

      ++i;
    }

    LOBYTE(v7) = 1;
LABEL_16:
    v8 = v16;
  }

  v16 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
    if (!m_ptr)
    {
      return v7;
    }

    goto LABEL_20;
  }

  if (m_ptr)
  {
LABEL_20:
    CFRelease(*(m_ptr + 1));
  }

  return v7;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a3 length] && objc_msgSend(a3, "characterAtIndex:", 0) == 36)
  {
    a3 = [@"$" stringByAppendingString:a3];
  }

  MEMORY[0x19EB02040](&v12, a3);
  v6 = API::Dictionary::get<API::Boolean>(m_ptr, &v12, v5);
  v8 = v6;
  if (v6)
  {
    CFRetain(*(v6 + 1));
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  CFRelease(*(m_ptr + 1));
  if (v8)
  {
    v10 = *(v8 + 16);
    CFRelease(*(v8 + 1));
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (int)decodeIntForKey:(id)a3
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a3 length] && objc_msgSend(a3, "characterAtIndex:", 0) == 36)
  {
    a3 = [@"$" stringByAppendingString:a3];
  }

  MEMORY[0x19EB02040](&v12, a3);
  v6 = API::Dictionary::get<API::UInt64>(m_ptr, &v12, v5);
  v8 = v6;
  if (v6)
  {
    CFRetain(*(v6 + 1));
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  CFRelease(*(m_ptr + 1));
  if (!v8)
  {
    return 0;
  }

  v10 = *(v8 + 4);
  CFRelease(*(v8 + 1));
  return v10;
}

- (int)decodeInt32ForKey:(id)a3
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a3 length] && objc_msgSend(a3, "characterAtIndex:", 0) == 36)
  {
    a3 = [@"$" stringByAppendingString:a3];
  }

  MEMORY[0x19EB02040](&v12, a3);
  v6 = API::Dictionary::get<API::UInt64>(m_ptr, &v12, v5);
  v8 = v6;
  if (v6)
  {
    CFRetain(*(v6 + 1));
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  CFRelease(*(m_ptr + 1));
  if (!v8)
  {
    return 0;
  }

  v10 = *(v8 + 4);
  CFRelease(*(v8 + 1));
  return v10;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a3 length] && objc_msgSend(a3, "characterAtIndex:", 0) == 36)
  {
    a3 = [@"$" stringByAppendingString:a3];
  }

  MEMORY[0x19EB02040](&v12, a3);
  v6 = API::Dictionary::get<API::UInt64>(m_ptr, &v12, v5);
  v8 = v6;
  if (v6)
  {
    CFRetain(*(v6 + 1));
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  CFRelease(*(m_ptr + 1));
  if (!v8)
  {
    return 0;
  }

  v10 = *(v8 + 2);
  CFRelease(*(v8 + 1));
  return v10;
}

- (float)decodeFloatForKey:(id)a3
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a3 length] && objc_msgSend(a3, "characterAtIndex:", 0) == 36)
  {
    a3 = [@"$" stringByAppendingString:a3];
  }

  MEMORY[0x19EB02040](&v12, a3);
  v6 = API::Dictionary::get<API::Double>(m_ptr, &v12, v5);
  v8 = v6;
  if (v6)
  {
    CFRetain(*(v6 + 1));
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  CFRelease(*(m_ptr + 1));
  if (!v8)
  {
    return 0.0;
  }

  v10 = *(v8 + 2);
  CFRelease(*(v8 + 1));
  return v10;
}

- (double)decodeDoubleForKey:(id)a3
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a3 length] && objc_msgSend(a3, "characterAtIndex:", 0) == 36)
  {
    a3 = [@"$" stringByAppendingString:a3];
  }

  MEMORY[0x19EB02040](&v12, a3);
  v6 = API::Dictionary::get<API::Double>(m_ptr, &v12, v5);
  v8 = v6;
  if (v6)
  {
    CFRetain(*(v6 + 1));
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  CFRelease(*(m_ptr + 1));
  if (!v8)
  {
    return 0.0;
  }

  v10 = *(v8 + 2);
  CFRelease(*(v8 + 1));
  return v10;
}

- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4
{
  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a3 length] && objc_msgSend(a3, "characterAtIndex:", 0) == 36)
  {
    a3 = [@"$" stringByAppendingString:a3];
  }

  MEMORY[0x19EB02040](&v16, a3);
  v8 = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(m_ptr + 2, &v16, v7);
  v10 = v8;
  if (!v8)
  {
    goto LABEL_8;
  }

  if ((*(*v8 + 16))(v8) != 8)
  {
    v10 = 0;
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  CFRetain(*(v10 + 1));
  v11 = 0;
LABEL_9:
  v12 = v16;
  v16 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  CFRelease(*(m_ptr + 1));
  if (v11)
  {
    v13 = 0;
    *a4 = 0;
  }

  else
  {
    v14 = *(v10 + 3);
    if (v14)
    {
      v13 = *(v10 + 2);
    }

    else
    {
      v13 = 0;
    }

    *a4 = v14;
    CFRelease(*(v10 + 1));
  }

  return v13;
}

- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0;
  memset(&v21._replyToSelector, 0, 32);
  v22 = 0u;
  v23 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v21._replyToSelector objects:v25 count:16];
  if (v7)
  {
    v8 = *v21._objectStreamPosition;
    do
    {
      v9 = 0;
      do
      {
        if (*v21._objectStreamPosition != v8)
        {
          objc_enumerationMutation(a3);
        }

        v21._currentDictionary.m_ptr = *(v21._objectStream.m_ptr + v9);
        WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v21, &v24, &v21._currentDictionary);
        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v21._replyToSelector objects:v25 count:16];
    }

    while (v7);
  }

  m_ptr = self->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 1));
  if ([a4 length] && objc_msgSend(a4, "characterAtIndex:", 0) == 36)
  {
    a4 = [@"$" stringByAppendingString:a4];
  }

  MEMORY[0x19EB02040](&v21, a4);
  v12 = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(m_ptr + 2, &v21.super.super.isa, v11);
  v14 = v12;
  if (!v12)
  {
    goto LABEL_25;
  }

  if ((*(*v12 + 16))(v12) != 9)
  {
    v14 = 0;
LABEL_25:
    v15 = 1;
    goto LABEL_14;
  }

  CFRetain(*(v14 + 8));
  v15 = 0;
LABEL_14:
  isa = v21.super.super.isa;
  v21.super.super.isa = 0;
  if (isa && atomic_fetch_add_explicit(isa, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(isa, v13);
  }

  CFRelease(*(m_ptr + 1));
  decodeObject(&v21, self, v14, &v24);
  v18 = v21.super.super.isa;
  if (v21.super.super.isa)
  {
    v19 = v21.super.super.isa;
  }

  if ((v15 & 1) == 0)
  {
    CFRelease(*(v14 + 8));
  }

  if (v24)
  {
    WTF::fastFree((v24 - 16), v17);
  }

  return v18;
}

- (id)allowedClasses
{
  if (self->_allowedClasses)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = *self->_allowedClasses;
    v5 = WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::begin(v4);
    v6 = v5;
    v8 = v7;
    if (v4)
    {
      v4 += *(v4 - 1);
    }

    if (v4 != v5)
    {
      do
      {
        [v3 addObject:*v6];
        do
        {
          ++v6;
        }

        while (v6 != v8 && (*v6 + 1) <= 1);
      }

      while (v6 != v4);
    }

    if (v3)
    {
      v9 = v3;
    }

    return v3;
  }

  else
  {
    v11 = MEMORY[0x1E695DFD8];

    return [v11 set];
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 5) = 0;
  return self;
}

@end