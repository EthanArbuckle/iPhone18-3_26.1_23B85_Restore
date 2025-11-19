@interface _WKMockTKSmartCard
- (_WKMockTKSmartCard)initWithService:(void *)a3;
- (void)transmitRequest:(id)a3 reply:(id)a4;
@end

@implementation _WKMockTKSmartCard

- (_WKMockTKSmartCard)initWithService:(void *)a3
{
  v10.receiver = self;
  v10.super_class = _WKMockTKSmartCard;
  v4 = [(_WKMockTKSmartCard *)&v10 init];
  v6 = v4;
  if (v4)
  {
    v7 = *a3;
    *a3 = 0;
    m_ptr = v4->m_service.m_impl.m_ptr;
    v6->m_service.m_impl.m_ptr = v7;
    if (m_ptr)
    {
      if (atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, m_ptr);
        WTF::fastFree(m_ptr, v5);
      }
    }
  }

  return v6;
}

- (void)transmitRequest:(id)a3 reply:(id)a4
{
  m_ptr = self->m_service.m_impl.m_ptr;
  if (!m_ptr || (v5 = *(m_ptr + 1)) == 0)
  {
    __break(0xC471u);
    goto LABEL_28;
  }

  ++*(v5 + 24);
  if ((*(v5 + 296) & 1) == 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (*(v5 + 292))
  {
    v7 = objc_alloc(MEMORY[0x1E695DEF0]);
    if (*(v5 + 296))
    {
      if (!*(v5 + 292))
      {
LABEL_29:
        __break(0xC471u);
        return;
      }

      v8 = v7;
      v9 = **(v5 + 280);
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v18, v9);
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v10);
        }
      }

      else
      {
        v18 = &stru_1F1147748;
        v12 = &stru_1F1147748;
      }

      v11 = [v8 initWithBase64EncodedString:v18 options:1];
      v14 = v18;
      v18 = 0;
      if (v14)
      {
      }

      if ((*(v5 + 296) & 1) != 0 && *(v5 + 292))
      {
        v15 = *(v5 + 280);
        v16 = *v15;
        *v15 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v13);
        }

        memmove(v15, v15 + 1, *(v5 + 280) + 8 * *(v5 + 292) - (v15 + 1));
        --*(v5 + 292);
        goto LABEL_20;
      }
    }

    goto LABEL_28;
  }

  v11 = 0;
LABEL_20:
  (*(a4 + 2))(a4, v11, 0);
  if (v11)
  {
  }

  if (*(v5 + 24) == 1)
  {
    v17 = *(*v5 + 24);

    v17(v5);
  }

  else
  {
    --*(v5 + 24);
  }
}

@end