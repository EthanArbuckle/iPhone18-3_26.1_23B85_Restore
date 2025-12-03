@interface WKVisibilityPropagationView
- (BOOL)_containsInteractionForProcess:(void *)process;
- (id).cxx_construct;
- (void)propagateVisibilityToProcess:(void *)process;
- (void)stopPropagatingVisibilityToProcess:(void *)process;
@end

@implementation WKVisibilityPropagationView

- (id).cxx_construct
{
  *(self + 51) = 0;
  *(self + 52) = 0;
  return self;
}

- (void)propagateVisibilityToProcess:(void *)process
{
  v29 = *MEMORY[0x1E69E9840];
  if (![(WKVisibilityPropagationView *)self _containsInteractionForProcess:?])
  {
    v5 = *(process + 10);
    if (v5)
    {
      std::__optional_copy_base<WebKit::ExtensionProcess,false>::__optional_copy_base[abi:sn200100](&v22, v5 + 40);
      if (v24)
      {
        WebKit::ExtensionProcess::createVisibilityPropagationInteraction(&v22, &v21);
        v6 = v21;
        if (v21)
        {
          [(WKVisibilityPropagationView *)self addInteraction:v21];
          v7 = qword_1ED6416A0;
          if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(process + 10);
            if (v8)
            {
              LODWORD(v8) = *(v8 + 108);
            }

            *buf = 138412546;
            v26 = v6;
            v27 = 1024;
            v28 = v8;
            _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "Created visibility propagation interaction %@ for process with PID=%d", buf, 0x12u);
          }

          WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(process + 2, process);
          v9 = *(process + 1);
          atomic_fetch_add(v9, 1u);
          v10 = v21;
          if (v21)
          {
            v11 = v21;
          }

          p_processesAndInteractions = &self->_processesAndInteractions;
          m_size = self->_processesAndInteractions.m_size;
          if (m_size == self->_processesAndInteractions.m_capacity)
          {
            v14 = m_size + (m_size >> 1);
            if (v14 <= m_size + 1)
            {
              v14 = m_size + 1;
            }

            if (v14 >> 28)
            {
              __break(0xC471u);
              return;
            }

            m_buffer = p_processesAndInteractions->m_buffer;
            if (v14 <= 0x10)
            {
              v16 = 16;
            }

            else
            {
              v16 = v14;
            }

            v17 = WTF::fastMalloc((16 * v16));
            p_processesAndInteractions->m_capacity = v16;
            p_processesAndInteractions->m_buffer = v17;
            WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::RetainPtr<objc_object  {objcproto13UIInteraction}*>>>::move(m_buffer, &m_buffer[4 * m_size], v17);
            if (m_buffer)
            {
              if (p_processesAndInteractions->m_buffer == m_buffer)
              {
                p_processesAndInteractions->m_buffer = 0;
                p_processesAndInteractions->m_capacity = 0;
              }

              WTF::fastFree(m_buffer, v18);
            }

            m_size = p_processesAndInteractions->m_size;
            v19 = (p_processesAndInteractions->m_buffer + 16 * m_size);
          }

          else
          {
            v19 = (p_processesAndInteractions->m_buffer + 16 * m_size);
          }

          *v19 = v9;
          v19[1] = v10;
          p_processesAndInteractions->m_size = m_size + 1;
          if (v10)
          {
          }
        }

        if ((v24 & 1) != 0 && v23 != 255)
        {
          v20 = v22;
          v22 = 0;
          if (v20)
          {
          }
        }
      }
    }
  }
}

- (void)stopPropagatingVisibilityToProcess:(void *)process
{
  v26 = *MEMORY[0x1E69E9840];
  p_processesAndInteractions = &self->_processesAndInteractions;
  m_buffer = self->_processesAndInteractions.m_buffer;
  m_size = self->_processesAndInteractions.m_size;
  v7 = &m_buffer[4 * m_size];
  if (m_size)
  {
    v10 = 0;
    *&v3 = 134217984;
    v23 = v3;
    v11 = self->_processesAndInteractions.m_buffer;
    v12 = &m_buffer[4 * m_size];
    v13 = v12;
    do
    {
      if (!*m_buffer || ((v14 = *(*m_buffer + 8)) != 0 ? (v15 = v14 == process) : (v15 = 1), v15))
      {
        v16 = qword_1ED6416A0;
        if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(m_buffer + 1);
          *buf = v23;
          v25 = v17;
          _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "Removing visibility propagation interaction %p", buf, 0xCu);
        }

        [(WKVisibilityPropagationView *)self removeInteraction:*(m_buffer + 1), v23];
        v19 = m_buffer;
        if (v12 != p_processesAndInteractions->m_buffer + 2 * p_processesAndInteractions->m_size)
        {
          if (m_buffer == v13)
          {
            v19 = v12;
          }

          else
          {
            WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::RetainPtr<objc_object  {objcproto13UIInteraction}*>>>::moveOverlapping(v13, m_buffer, v12);
            v19 = (v12 + v11 - v13);
          }
        }

        v20 = *(m_buffer + 1);
        *(m_buffer + 1) = 0;
        if (v20)
        {
        }

        v21 = *m_buffer;
        *m_buffer = 0;
        if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v21);
          WTF::fastFree(v21, v18);
        }

        v13 = m_buffer + 4;
        ++v10;
        v12 = v19;
      }

      else
      {
        v19 = v12;
      }

      m_buffer += 4;
      v11 += 16;
    }

    while (m_buffer < v7);
    m_buffer = p_processesAndInteractions->m_buffer;
    LODWORD(m_size) = p_processesAndInteractions->m_size;
    v7 = v13;
  }

  else
  {
    v10 = 0;
    v19 = &m_buffer[4 * m_size];
  }

  v22 = &m_buffer[4 * m_size];
  if (v7 != v22)
  {
    WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::RetainPtr<objc_object  {objcproto13UIInteraction}*>>>::moveOverlapping(v7, v22, v19);
    LODWORD(m_size) = p_processesAndInteractions->m_size;
  }

  p_processesAndInteractions->m_size = m_size - v10;
}

- (BOOL)_containsInteractionForProcess:(void *)process
{
  m_size = self->_processesAndInteractions.m_size;
  if (!m_size)
  {
    return 0;
  }

  for (i = self->_processesAndInteractions.m_buffer; !*i || *(*i + 8) != process; i += 16)
  {
    if (!--m_size)
    {
      return 0;
    }
  }

  return 1;
}

@end