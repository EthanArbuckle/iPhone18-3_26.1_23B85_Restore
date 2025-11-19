@interface _WKRemoteObjectInterface
+ (_WKRemoteObjectInterface)remoteObjectInterfaceWithProtocol:(id)a3;
- (_WKRemoteObjectInterface)initWithProtocol:(id)a3 identifier:(id)a4;
- (id).cxx_construct;
- (id)_invocationForReplyBlockOfSelector:(SEL)a3;
- (id)_invocationForSelector:(SEL)a3;
- (id)classesForSelector:(SEL)a3 argumentIndex:(unint64_t)a4 ofReply:(BOOL)a5;
- (id)debugDescription;
- (uint64_t)debugDescription;
- (void)setClasses:(id)a3 forSelector:(SEL)a4 argumentIndex:(unint64_t)a5 ofReply:(BOOL)a6;
@end

@implementation _WKRemoteObjectInterface

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (_WKRemoteObjectInterface)initWithProtocol:(id)a3 identifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = _WKRemoteObjectInterface;
  v6 = [(_WKRemoteObjectInterface *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_protocol = a3;
    v8 = [a4 copy];
    m_ptr = v7->_identifier.m_ptr;
    v7->_identifier.m_ptr = v8;
    if (m_ptr)
    {
    }

    initializeMethods(v7, v7->_protocol);
  }

  return v7;
}

+ (_WKRemoteObjectInterface)remoteObjectInterfaceWithProtocol:(id)a3
{
  v3 = [[a1 alloc] initWithProtocol:a3 identifier:NSStringFromProtocol(a3)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p; protocol = %@; identifier = %@\n", v5, self, self->_identifier.m_ptr, NSStringFromProtocol(self->_protocol)];
  m_table = self->_methods.m_impl.m_table;
  if (!m_table)
  {
    v9 = 0;
    LODWORD(v8) = 0;
    goto LABEL_10;
  }

  v8 = *(m_table - 1);
  v9 = &m_table[14 * v8];
  if (!*(m_table - 3))
  {
LABEL_10:
    v11 = v9;
    v9 = &m_table[14 * v8];
    goto LABEL_11;
  }

  if (!v8)
  {
    v11 = self->_methods.m_impl.m_table;
LABEL_12:
    v12 = &m_table[14 * *(m_table - 1)];
    goto LABEL_13;
  }

  v10 = 56 * v8;
  v11 = self->_methods.m_impl.m_table;
  while ((*v11 + 1) <= 1)
  {
    v11 += 7;
    v10 -= 56;
    if (!v10)
    {
      v11 = v9;
      break;
    }
  }

LABEL_11:
  if (m_table)
  {
    goto LABEL_12;
  }

  v12 = 0;
LABEL_13:
  while (v11 != v12)
  {
    Name = sel_getName(*v11);
    [v6 appendFormat:@" selector = %s\n  argument classes = %@\n", Name, -[_WKRemoteObjectInterface debugDescription]::$_1::operator()<WTF::Vector<WTF::HashSet<void const*, WTF::DefaultHash<void const*>, WTF::HashTraits<void const*>, WTF::HashTableTraits, (WTF::ShouldValidateKey)1>, 0ul, WTF::CrashOnOverflow, 16ul, WTF::FastMalloc>>((v11 + 1))];
    v14 = v11[6];
    if (v14)
    {
      [v6 appendFormat:@"  reply block = (argument '%@') %@\n", objc_msgSend(objc_msgSend(v14, "methodSignature"), "_typeString"), -[_WKRemoteObjectInterface debugDescription]::$_1::operator()<WTF::Vector<WTF::HashSet<void const*, WTF::DefaultHash<void const*>, WTF::HashTraits<void const*>, WTF::HashTableTraits, (WTF::ShouldValidateKey)1>, 0ul, WTF::CrashOnOverflow, 16ul, WTF::FastMalloc>>((v11 + 4))];
    }

    do
    {
      v11 += 7;
    }

    while (v11 != v9 && (*v11 + 1) <= 1);
  }

  [v6 appendString:@">\n"];
  if (v6)
  {
    v15 = v6;
  }

  return v6;
}

- (uint64_t)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 0;
    v5 = *a1;
    v6 = *a1 + 8 * v3;
    while (1)
    {
      if (v4)
      {
        [v2 appendString:{@", "}];
      }

      result = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{"];
      v8 = result;
      v9 = *v5;
      if (!*v5)
      {
        break;
      }

      v10 = *(v9 - 12);
      if (v10)
      {
        if (v10 >> 29)
        {
          __break(0xC471u);
          return result;
        }

        v11 = WTF::fastMalloc((8 * v10));
        v9 = *v5;
        v12 = WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::begin(*v5);
        if (!v9)
        {
          goto LABEL_36;
        }

        v14 = *(v9 - 4);
      }

      else
      {
        v11 = 0;
        v14 = *(v9 - 4);
        v12 = (v9 + 8 * v14);
        v13 = v12;
      }

      v15 = (v9 + 8 * v14);
LABEL_12:
      if (v15 == v12)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        do
        {
          v17 = *v12++;
          *(v11 + v16) = v17;
          while (v12 != v13 && (*v12 + 1) <= 1)
          {
            ++v12;
          }

          ++v16;
        }

        while (v12 != v15);
      }

      v18 = v16;
      v19 = 126 - 2 * __clz(v16);
      if (v16)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      _ZNSt3__111__introsortINS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Lb0EEEvT1_SR_T0_NS_15iterator_traitsISR_E15difference_typeEb(v11, v11 + v16, v20, 1);
      if (v18)
      {
        v21 = 0;
        v22 = 8 * v18;
        v23 = v11;
        do
        {
          if (v21)
          {
            [v8 appendString:{@", "}];
          }

          [v8 appendFormat:@"%s", class_getName(*v23++)];
          v21 = 1;
          v22 -= 8;
        }

        while (v22);
      }

      [v8 appendString:@"}"];
      if (v8)
      {
        v25 = v8;
      }

      if (v11)
      {
        WTF::fastFree(v11, v24);
      }

      [v2 appendString:v8];
      ++v5;
      v4 = 1;
      if (v5 == v6)
      {
        goto LABEL_37;
      }
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_36:
    v15 = 0;
    goto LABEL_12;
  }

LABEL_37:
  [v2 appendString:@"]"];
  if (v2)
  {
    v26 = v2;
  }

  return v2;
}

- (id)classesForSelector:(SEL)a3 argumentIndex:(unint64_t)a4 ofReply:(BOOL)a5
{
  v5 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = *classesForSelectorArgument(self, a3, a4, v5);
  v11 = WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::begin(v10);
  v12 = v11;
  v14 = v13;
  if (v10)
  {
    v10 += *(v10 - 1);
  }

  if (v10 != v11)
  {
    do
    {
      [v9 addObject:*v12];
      do
      {
        ++v12;
      }

      while (v12 != v14 && (*v12 + 1) <= 1);
    }

    while (v12 != v10);
  }

  if (v9)
  {
    v15 = v9;
  }

  return v9;
}

- (void)setClasses:(id)a3 forSelector:(SEL)a4 argumentIndex:(unint64_t)a5 ofReply:(BOOL)a6
{
  v6 = a6;
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [a3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v11)
  {
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(a3);
        }

        v18 = *(*(&v19 + 1) + 8 * v13);
        WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v17, &v23, &v18);
        ++v13;
      }

      while (v11 != v13);
      v11 = [a3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v11);
  }

  v14 = classesForSelectorArgument(self, a4, a5, v6);
  v16 = *v14;
  *v14 = v23;
  if (v16)
  {
    WTF::fastFree((v16 - 16), v15);
  }
}

- (id)_invocationForSelector:(SEL)a3
{
  v10 = a3;
  v4 = WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,MethodInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,MethodInfo>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<objc_selector *>>,(WTF::ShouldValidateKey)1,objc_selector *>(&self->_methods, &v10);
  m_table = self->_methods.m_impl.m_table;
  if (m_table)
  {
    m_table += 7 * *(m_table - 1);
  }

  if (m_table == v4)
  {
    return 0;
  }

  v6 = [v4[3] copy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  return v7;
}

- (id)_invocationForReplyBlockOfSelector:(SEL)a3
{
  v10 = a3;
  v4 = WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,MethodInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,MethodInfo>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<objc_selector *>>,(WTF::ShouldValidateKey)1,objc_selector *>(&self->_methods, &v10);
  m_table = self->_methods.m_impl.m_table;
  if (m_table)
  {
    m_table += 7 * *(m_table - 1);
  }

  if (m_table == v4)
  {
    return 0;
  }

  v6 = [v4[6] copy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  return v7;
}

@end