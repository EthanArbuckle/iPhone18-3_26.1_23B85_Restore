@interface _WKLinkIconParameters
- (id).cxx_construct;
- (id)_initWithLinkIcon:(const void *)a3;
@end

@implementation _WKLinkIconParameters

- (id)_initWithLinkIcon:(const void *)a3
{
  v37.receiver = self;
  v37.super_class = _WKLinkIconParameters;
  v4 = [(_WKLinkIconParameters *)&v37 init];
  if (!v4)
  {
    return v4;
  }

  WTF::URL::createCFURL(&v36, a3);
  v5 = v36;
  v36 = 0;
  m_ptr = v4->_url.m_ptr;
  v4->_url.m_ptr = v5;
  if (m_ptr)
  {

    v7 = v36;
    v36 = 0;
    if (v7)
    {
    }
  }

  v8 = *(a3 + 6);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v36, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v36 = &stru_1F1147748;
    v10 = &stru_1F1147748;
  }

  v11 = v36;
  v36 = 0;
  v12 = v4->_mimeType.m_ptr;
  v4->_mimeType.m_ptr = &v11->isa;
  if (v12)
  {

    v13 = v36;
    v36 = 0;
    if (v13)
    {
    }
  }

  if (*(a3 + 60) == 1)
  {
    v14 = objc_alloc(MEMORY[0x1E696AD98]);
    if (*(a3 + 60))
    {
      v15 = [v14 initWithUnsignedInt:*(a3 + 14)];
      v16 = v4->_size.m_ptr;
      v4->_size.m_ptr = v15;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      std::__throw_bad_optional_access[abi:sn200100]();
    }
  }

LABEL_15:
  v17 = *(a3 + 40);
  switch(v17)
  {
    case 1:
      v18 = 0;
      goto LABEL_21;
    case 4:
      v18 = 2;
      goto LABEL_21;
    case 2:
      v18 = 1;
LABEL_21:
      v4->_iconType = v18;
      break;
  }

  v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(a3 + 19)];
  v20 = v4->_attributes.m_ptr;
  v4->_attributes.m_ptr = v19;
  if (v20)
  {
  }

  v21 = *(a3 + 19);
  if (v21)
  {
    v22 = 16 * v21;
    v23 = (*(a3 + 8) + 8);
    do
    {
      v24 = *v23;
      if (*v23)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v36, v24);
        if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v25);
        }
      }

      else
      {
        v36 = &stru_1F1147748;
        v26 = &stru_1F1147748;
      }

      v27 = v36;
      v28 = v4->_attributes.m_ptr;
      v29 = *(v23 - 1);
      if (v29)
      {
        atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v35, v29);
        if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v30);
        }
      }

      else
      {
        v35 = &stru_1F1147748;
        v31 = &stru_1F1147748;
      }

      [(NSMutableDictionary *)v28 setObject:v27 forKeyedSubscript:v35, v35];
      v32 = v35;
      v35 = 0;
      if (v32)
      {
      }

      v33 = v36;
      v36 = 0;
      if (v33)
      {
      }

      v23 += 2;
      v22 -= 16;
    }

    while (v22);
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  return self;
}

@end