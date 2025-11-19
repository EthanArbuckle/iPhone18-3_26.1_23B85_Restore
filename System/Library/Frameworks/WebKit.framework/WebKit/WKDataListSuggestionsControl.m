@interface WKDataListSuggestionsControl
- (String)suggestionAtIndex:(int64_t)a3;
- (String)suggestionLabelAtIndex:(int64_t)a3;
- (WKDataListSuggestionsControl)initWithInformation:(void *)a3 inView:(id)a4;
- (id).cxx_construct;
- (id)textSuggestions;
- (int64_t)textAlignment;
- (void)didSelectOptionAtIndex:(int64_t)a3;
- (void)showSuggestionsDropdown:(void *)a3 activationType:(unsigned __int8)a4;
- (void)updateWithInformation:(void *)a3;
@end

@implementation WKDataListSuggestionsControl

- (WKDataListSuggestionsControl)initWithInformation:(void *)a3 inView:(id)a4
{
  v10.receiver = self;
  v10.super_class = WKDataListSuggestionsControl;
  v6 = [(WKDataListSuggestionsControl *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_view, a4);
    m_size = v7->_suggestions.m_size;
    if (m_size)
    {
      WTF::VectorTypeOperations<WebCore::HTTPHeaderField>::destruct(v7->_suggestions.m_buffer, (v7->_suggestions.m_buffer + 16 * m_size));
    }

    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(&v7->_suggestions, a3 + 2);
    [objc_loadWeak(&v7->_view) _setDataListSuggestionsControl:v7];
  }

  return v7;
}

- (void)updateWithInformation:(void *)a3
{
  m_size = self->_suggestions.m_size;
  if (m_size)
  {
    WTF::VectorTypeOperations<WebCore::HTTPHeaderField>::destruct(self->_suggestions.m_buffer, (self->_suggestions.m_buffer + 16 * m_size));
  }

  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(&self->_suggestions, a3 + 2);
}

- (void)showSuggestionsDropdown:(void *)a3 activationType:(unsigned __int8)a4
{
  if (!*(a3 + 1))
  {
    v6 = WTF::fastCompactMalloc(0x10);
    *v6 = 1;
    *(v6 + 8) = a3;
    v7 = *(a3 + 1);
    *(a3 + 1) = v6;
    if (v7)
    {
      if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7);
        WTF::fastFree(v7, a2);
      }
    }
  }

  v8 = *(a3 + 1);
  atomic_fetch_add(v8, 1u);
  m_ptr = self->_dropdown.m_impl.m_ptr;
  self->_dropdown.m_impl.m_ptr = v8;
  if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, m_ptr);

    WTF::fastFree(m_ptr, a2);
  }
}

- (void)didSelectOptionAtIndex:(int64_t)a3
{
  m_ptr = self->_dropdown.m_impl.m_ptr;
  if (!m_ptr || (v4 = *(m_ptr + 1)) == 0 || self->_suggestions.m_size <= a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE6D8D0);
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      if ((*(v6 + 849) & 1) == 0 && *(v6 + 848) == 1)
      {
        v7 = (self->_suggestions.m_buffer + 16 * a3);
        WebKit::WebPageProxy::send<Messages::WebPage::DidSelectDataListOption>(v6 - 16, &v7);
      }

      WebKit::WebDataListSuggestionsDropdownIOS::close(v4);
    }
  }
}

- (id)textSuggestions
{
  v3 = [MEMORY[0x1E695DF70] array];
  m_size = self->_suggestions.m_size;
  if (m_size)
  {
    m_buffer = self->_suggestions.m_buffer;
    v6 = 16 * m_size - 16;
    do
    {
      v7 = *m_buffer;
      if (*m_buffer)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v13, v7);
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v8);
        }
      }

      else
      {
        v13 = &stru_1F1147748;
        v9 = &stru_1F1147748;
      }

      [v3 addObject:{+[WKDataListTextSuggestion textSuggestionWithInputText:](WKDataListTextSuggestion, "textSuggestionWithInputText:", v13)}];
      v10 = v13;
      v13 = 0;
      if (v10)
      {
      }

      if ([v3 count] == 3)
      {
        break;
      }

      m_buffer = (m_buffer + 16);
      v11 = v6;
      v6 -= 16;
    }

    while (v11);
  }

  return v3;
}

- (String)suggestionAtIndex:(int64_t)a3
{
  if (self->_suggestions.m_size <= a3)
  {
    __break(0xC471u);
  }

  else
  {
    v4 = *(self->_suggestions.m_buffer + 2 * a3);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *v3 = v4;
  }

  return self;
}

- (String)suggestionLabelAtIndex:(int64_t)a3
{
  if (self->_suggestions.m_size <= a3)
  {
    __break(0xC471u);
  }

  else
  {
    v4 = *(self->_suggestions.m_buffer + 2 * a3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *v3 = v4;
  }

  return self;
}

- (int64_t)textAlignment
{
  if (*([objc_loadWeak(&self->_view) focusedElementInformation] + 177))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end