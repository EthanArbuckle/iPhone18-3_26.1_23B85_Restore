@interface _WKSmartCardSlotStateObserver
- (_WKSmartCardSlotStateObserver)initWithService:(void *)service slot:(void *)slot;
- (atomic_ullong)observeValueForKeyPath:(atomic_ullong *)result ofObject:change:context:;
- (id).cxx_construct;
- (uint64_t)observeValueForKeyPath:(WTF *)this ofObject:(void *)object change:context:;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)observeValueForKeyPath:(void *)path ofObject:(void *)object change:context:;
- (void)removeObserver;
@end

@implementation _WKSmartCardSlotStateObserver

- (_WKSmartCardSlotStateObserver)initWithService:(void *)service slot:(void *)slot
{
  v14.receiver = self;
  v14.super_class = _WKSmartCardSlotStateObserver;
  v6 = [(_WKSmartCardSlotStateObserver *)&v14 init];
  v8 = v6;
  if (v6)
  {
    v9 = *service;
    *service = 0;
    m_ptr = v6->m_service.m_impl.m_ptr;
    v8->m_service.m_impl.m_ptr = v9;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v7);
    }

    v11 = *slot;
    *slot = 0;
    v12 = v8->m_slot.m_ptr;
    v8->m_slot.m_ptr = v11;
    if (v12)
    {
    }
  }

  return v8;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  m_ptr = self->m_service.m_impl.m_ptr;
  if (m_ptr && *(m_ptr + 1))
  {
    v9 = [objc_msgSend(change objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "intValue"}];
    if (v9 == 4)
    {
      makeSmartCard = [object makeSmartCard];
      v11 = makeSmartCard;
      if (makeSmartCard)
      {
        v12 = makeSmartCard;
      }

      v13 = self->m_service.m_impl.m_ptr;
      if (v13)
      {
        atomic_fetch_add(v13, 1u);
      }

      v14 = WTF::fastMalloc(0x18);
      *v14 = &unk_1F110B920;
      v14[1] = v13;
      v14[2] = v11;
      v15 = v14;
      WTF::callOnMainRunLoop();
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }
    }

    else if (!v9)
    {

      [(_WKSmartCardSlotStateObserver *)self removeObserver];
    }
  }
}

- (void)removeObserver
{
  m_ptr = self->m_slot.m_ptr;
  if (m_ptr)
  {
    [(TKSmartCardSlot *)m_ptr removeObserver:self forKeyPath:@"state"];
    v4 = self->m_slot.m_ptr;
    self->m_slot.m_ptr = 0;
    if (v4)
    {
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)observeValueForKeyPath:(void *)path ofObject:(void *)object change:context:
{
  *path = &unk_1F110B920;
  v3 = path[2];
  path[2] = 0;
  if (v3)
  {
  }

  v4 = path[1];
  path[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, object);
  }

  return path;
}

- (uint64_t)observeValueForKeyPath:(WTF *)this ofObject:(void *)object change:context:
{
  *this = &unk_1F110B920;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, object);
  }

  return WTF::fastFree(this, object);
}

- (atomic_ullong)observeValueForKeyPath:(atomic_ullong *)result ofObject:change:context:
{
  v1 = result[1];
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      return WebKit::CcidService::onValidCard(v2, result + 2);
    }
  }

  return result;
}

@end