@interface WKDataListSuggestionsDropdown
- (WKDataListSuggestionsDropdown)initWithInformation:(void *)a3 inView:(id)a4;
- (id).cxx_construct;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)_displayWithActivationType:(unsigned __int8)a3;
- (void)_removeContextMenuInteraction;
- (void)_showSuggestions;
- (void)_suggestionsMenuDidDismiss;
- (void)_suggestionsMenuDidPresent;
- (void)_updateSuggestionsMenuElements;
- (void)_updateTextSuggestions;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)didSelectOptionAtIndex:(int64_t)a3;
- (void)showSuggestionsDropdown:(void *)a3 activationType:(unsigned __int8)a4;
- (void)updateWithInformation:(void *)a3;
@end

@implementation WKDataListSuggestionsDropdown

- (WKDataListSuggestionsDropdown)initWithInformation:(void *)a3 inView:(id)a4
{
  v5.receiver = self;
  v5.super_class = WKDataListSuggestionsDropdown;
  return [(WKDataListSuggestionsControl *)&v5 initWithInformation:a3 inView:a4];
}

- (void)updateWithInformation:(void *)a3
{
  v4 = *a3;
  v5.receiver = self;
  v5.super_class = WKDataListSuggestionsDropdown;
  [(WKDataListSuggestionsControl *)&v5 updateWithInformation:?];
  [(WKDataListSuggestionsDropdown *)self _displayWithActivationType:v4];
}

- (void)showSuggestionsDropdown:(void *)a3 activationType:(unsigned __int8)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = WKDataListSuggestionsDropdown;
  [(WKDataListSuggestionsControl *)&v6 showSuggestionsDropdown:a3 activationType:?];
  [(WKDataListSuggestionsDropdown *)self _displayWithActivationType:v4];
}

- (void)didSelectOptionAtIndex:(int64_t)a3
{
  [(WKContentView *)[(WKDataListSuggestionsControl *)self view] updateFocusedElementFocusedWithDataListDropdown:0];
  v5.receiver = self;
  v5.super_class = WKDataListSuggestionsDropdown;
  [(WKDataListSuggestionsControl *)&v5 didSelectOptionAtIndex:a3];
}

- (void)_displayWithActivationType:(unsigned __int8)a3
{
  v4 = a3 - 1;
  if (a3 == 1)
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (!a3)
  {
    v5 = 0;
LABEL_5:
    [(WKContentView *)[(WKDataListSuggestionsControl *)self view] updateFocusedElementFocusedWithDataListDropdown:v5];
  }

  [(WKDataListSuggestionsDropdown *)self _updateTextSuggestions];
  if (self->_suggestionsContextMenuPresenter.__ptr_ || ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode] & 1) != 0 || (v4 & 0xFD) == 0)
  {

    [(WKDataListSuggestionsDropdown *)self _showSuggestions];
  }
}

- (void)_showSuggestions
{
  [(WKDataListSuggestionsDropdown *)self _updateSuggestionsMenuElements];
  ptr = self->_suggestionsContextMenuPresenter.__ptr_;
  if (ptr)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__WKDataListSuggestionsDropdown__showSuggestions__block_invoke_419;
    v8[3] = &unk_1E76339D0;
    v8[4] = self;
    [objc_msgSend(*(ptr + 1) "contextMenuInteraction")];
  }

  else
  {
    v4 = [(WKDataListSuggestionsControl *)self view];
    v6 = WebKit::CompactContextMenuPresenter::operator new(0x10, v5);
    WebKit::CompactContextMenuPresenter::CompactContextMenuPresenter(v6, v4, self);
    std::unique_ptr<WebKit::CompactContextMenuPresenter>::reset[abi:sn200100](&self->_suggestionsContextMenuPresenter, v6);
    v7 = [(WKDataListSuggestionsControl *)self view];
    location = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __49__WKDataListSuggestionsDropdown__showSuggestions__block_invoke;
    v10[3] = &__block_descriptor_40_e8_32c62_ZTSKZ49__WKDataListSuggestionsDropdown__showSuggestions_E3__8_e5_v8__0l;
    objc_initWeak(&location, self);
    v11 = 0;
    objc_copyWeak(&v11, &location);
    [(WKContentView *)v7 doAfterEditorStateUpdateAfterFocusingElement:v10];
    objc_destroyWeak(&location);
    objc_destroyWeak(&v11);
  }
}

void __49__WKDataListSuggestionsDropdown__showSuggestions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    v3 = WeakRetained[7];
    if (!v3)
    {
LABEL_13:

      return;
    }

    v4 = [WeakRetained view];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    v7 = *([v5 focusedElementInformation] + 8);
    if (v7 < 1 || SHIDWORD(v7) <= 0)
    {
      [v5 lastInteractionLocation];
      v11.x = v9;
      v11.y = v10;
      WebCore::IntPoint::IntPoint(&v12, &v11);
      if (!v5)
      {
LABEL_12:
        WebCore::IntRect::operator CGRect();
        WebKit::CompactContextMenuPresenter::present(v3, v13);
        goto LABEL_13;
      }
    }

    else if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_12;
  }
}

- (void)_updateTextSuggestions
{
  v3 = [(WKDataListSuggestionsControl *)self textSuggestions];
  v4 = [(WKDataListSuggestionsControl *)self view];

  [(WKContentView *)v4 setDataListTextSuggestions:v3];
}

- (void)_updateSuggestionsMenuElements
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[WKDataListSuggestionsControl suggestionsCount](self, "suggestionsCount")}];
  if ([(WKDataListSuggestionsControl *)self suggestionsCount]>= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = MEMORY[0x1E69DC628];
      if (!self)
      {
        break;
      }

      [(WKDataListSuggestionsControl *)self suggestionAtIndex:v4];
      v6 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }

      atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v27, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }

LABEL_9:
      v9 = v27;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3321888768;
      v24[2] = __63__WKDataListSuggestionsDropdown__updateSuggestionsMenuElements__block_invoke;
      v24[3] = &__block_descriptor_48_e8_32c76_ZTSKZ63__WKDataListSuggestionsDropdown__updateSuggestionsMenuElements_E3__9_e18_v16__0__UIAction_8l;
      v22 = 0;
      objc_initWeak(&v22, self);
      v23 = v4;
      v25[0] = 0;
      objc_copyWeak(v25, &v22);
      v25[1] = v23;
      v10 = [v5 actionWithTitle:v9 image:0 identifier:0 handler:v24];
      objc_destroyWeak(&v22);
      v12 = v27;
      v27 = 0;
      if (v12)
      {
      }

      v13 = v26;
      v26 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
        if (!self)
        {
LABEL_18:
          v27 = 0;
          goto LABEL_19;
        }
      }

      else if (!self)
      {
        goto LABEL_18;
      }

      [(WKDataListSuggestionsControl *)self suggestionLabelAtIndex:v4];
      v14 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v22, v14);
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v15);
        }

        goto LABEL_20;
      }

LABEL_19:
      v22 = &stru_1F1147748;
      v16 = &stru_1F1147748;
LABEL_20:
      [v10 setSubtitle:v22];
      v18 = v22;
      v22 = 0;
      if (v18)
      {
      }

      v19 = v27;
      v27 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v17);
      }

      [v3 addObject:{v10, v22}];
      objc_destroyWeak(v25);
      if (++v4 >= [(WKDataListSuggestionsControl *)self suggestionsCount])
      {
        goto LABEL_26;
      }
    }

    v26 = 0;
LABEL_8:
    v27 = &stru_1F1147748;
    v8 = &stru_1F1147748;
    goto LABEL_9;
  }

LABEL_26:
  v20 = [v3 copy];
  m_ptr = self->_suggestionsMenuElements.m_ptr;
  self->_suggestionsMenuElements.m_ptr = v20;
  if (m_ptr)
  {
  }
}

void __63__WKDataListSuggestionsDropdown__updateSuggestionsMenuElements__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didSelectOptionAtIndex:*(a1 + 40)];
  }
}

- (void)_removeContextMenuInteraction
{
  ptr = self->_suggestionsContextMenuPresenter.__ptr_;
  if (ptr)
  {
    [objc_msgSend(*(ptr + 1) "contextMenuInteraction")];
    std::unique_ptr<WebKit::CompactContextMenuPresenter>::reset[abi:sn200100](&self->_suggestionsContextMenuPresenter, 0);
    [(WKContentView *)[(WKDataListSuggestionsControl *)self view] _removeContextMenuHintContainerIfPossible];
    v4 = [(WKContentView *)[(WKDataListSuggestionsControl *)self view] webView];

    [v4 _didDismissContextMenu];
  }
}

- (void)_suggestionsMenuDidPresent
{
  [(WKDataListSuggestionsControl *)self setIsShowingSuggestions:1];
  v3 = [(WKContentView *)[(WKDataListSuggestionsControl *)self view] webView];

  [v3 _didShowContextMenu];
}

- (void)_suggestionsMenuDidDismiss
{
  [(WKDataListSuggestionsControl *)self setIsShowingSuggestions:0];
  [(WKContentView *)[(WKDataListSuggestionsControl *)self view] updateFocusedElementFocusedWithDataListDropdown:0];
  [(WKDataListSuggestionsDropdown *)self _updateTextSuggestions];

  [(WKDataListSuggestionsDropdown *)self _removeContextMenuInteraction];
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v5 = [(WKDataListSuggestionsControl *)self view:a3];

  return [(WKContentView *)v5 _createTargetedContextMenuHintPreviewForFocusedElement:1];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v6 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = __87__WKDataListSuggestionsDropdown_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v7[3] = &__block_descriptor_40_e8_32c101_ZTSKZ87__WKDataListSuggestionsDropdown_contextMenuInteraction_configurationForMenuAtLocation__E4__10_e25___UIMenu_16__0__NSArray_8l;
  objc_initWeak(&v6, self);
  v8 = 0;
  objc_copyWeak(&v8, &v6);
  objc_destroyWeak(&v6);
  v4 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v7];
  objc_destroyWeak(&v8);
  return v4;
}

uint64_t __87__WKDataListSuggestionsDropdown_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    return 0;
  }

  v2 = WeakRetained;
  v3 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1147748 children:*(WeakRetained + 6)];

  return v3;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v6 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = __97__WKDataListSuggestionsDropdown_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke;
  v7[3] = &__block_descriptor_40_e8_32c111_ZTSKZ97__WKDataListSuggestionsDropdown_contextMenuInteraction_willDisplayMenuForConfiguration_animator__E4__11_e5_v8__0l;
  objc_initWeak(&v6, self);
  v8 = 0;
  objc_copyWeak(&v8, &v6);
  [a5 addCompletion:v7];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
}

void __97__WKDataListSuggestionsDropdown_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _suggestionsMenuDidPresent];
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v6 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = __89__WKDataListSuggestionsDropdown_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v7[3] = &__block_descriptor_40_e8_32c103_ZTSKZ89__WKDataListSuggestionsDropdown_contextMenuInteraction_willEndForConfiguration_animator__E4__12_e5_v8__0l;
  objc_initWeak(&v6, self);
  v8 = 0;
  objc_copyWeak(&v8, &v6);
  [a5 addCompletion:v7];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
}

void __89__WKDataListSuggestionsDropdown_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _suggestionsMenuDidDismiss];
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end