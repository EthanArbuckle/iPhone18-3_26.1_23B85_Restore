@interface WKDataListSuggestionsPicker
- (WKDataListSuggestionsPicker)initWithInformation:(void *)information inView:(id)view;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (void)invalidate;
- (void)showSuggestionsDropdown:(void *)dropdown activationType:(unsigned __int8)type;
- (void)updateWithInformation:(void *)information;
@end

@implementation WKDataListSuggestionsPicker

- (WKDataListSuggestionsPicker)initWithInformation:(void *)information inView:(id)view
{
  v16.receiver = self;
  v16.super_class = WKDataListSuggestionsPicker;
  v5 = [(WKDataListSuggestionsControl *)&v16 initWithInformation:information inView:?];
  if (v5)
  {
    v6 = [WKDataListSuggestionsPickerView alloc];
    v7 = [(WKDataListSuggestionsPickerView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    m_ptr = v5->_pickerView.m_ptr;
    v5->_pickerView.m_ptr = v7;
    if (m_ptr)
    {

      v7 = v5->_pickerView.m_ptr;
    }

    [(WKDataListSuggestionsPickerView *)v7 setAutoresizingMask:18];
    [(WKDataListSuggestionsPickerView *)v5->_pickerView.m_ptr setDataSource:v5];
    [(WKDataListSuggestionsPickerView *)v5->_pickerView.m_ptr setDelegate:v5];
    [(WKDataListSuggestionsPickerView *)v5->_pickerView.m_ptr setControl:v5];
    [(WKDataListSuggestionsPickerView *)v5->_pickerView.m_ptr frame];
    v10 = v9;
    v12 = v11;
    [view sizeForLegacyFormControlPickerViews];
    [(WKDataListSuggestionsPickerView *)v5->_pickerView.m_ptr setFrame:v10, v12, v13, v14];
  }

  return v5;
}

- (void)updateWithInformation:(void *)information
{
  v5.receiver = self;
  v5.super_class = WKDataListSuggestionsPicker;
  [(WKDataListSuggestionsControl *)&v5 updateWithInformation:?];
  if (*information == 1)
  {
    [(WKContentView *)[(WKDataListSuggestionsControl *)self view] setDataListTextSuggestionsInputView:self->_pickerView.m_ptr];
    [(WKDataListSuggestionsPickerView *)self->_pickerView.m_ptr reloadAllComponents];
    [(WKDataListSuggestionsPickerView *)self->_pickerView.m_ptr selectRow:0 inComponent:0 animated:0];
  }

  else
  {
    [(WKContentView *)[(WKDataListSuggestionsControl *)self view] setDataListTextSuggestionsInputView:0];
    [(WKContentView *)[(WKDataListSuggestionsControl *)self view] setDataListTextSuggestions:[(WKDataListSuggestionsControl *)self textSuggestions]];
  }
}

- (void)showSuggestionsDropdown:(void *)dropdown activationType:(unsigned __int8)type
{
  typeCopy = type;
  v6.receiver = self;
  v6.super_class = WKDataListSuggestionsPicker;
  [(WKDataListSuggestionsControl *)&v6 showSuggestionsDropdown:dropdown activationType:?];
  if (typeCopy == 1)
  {
    [(WKContentView *)[(WKDataListSuggestionsControl *)self view] setDataListTextSuggestionsInputView:self->_pickerView.m_ptr];
    [(WKDataListSuggestionsPickerView *)self->_pickerView.m_ptr selectRow:0 inComponent:0 animated:0];
  }

  else
  {
    [(WKContentView *)[(WKDataListSuggestionsControl *)self view] setDataListTextSuggestions:[(WKDataListSuggestionsControl *)self textSuggestions]];
  }
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  if (!self)
  {
    v11 = 0;
    goto LABEL_6;
  }

  [(WKDataListSuggestionsControl *)self suggestionAtIndex:row];
  if (!v11)
  {
LABEL_6:
    v12 = &stru_1F1147748;
    v6 = &stru_1F1147748;
    goto LABEL_7;
  }

  atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v12);
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v5);
  }

LABEL_7:
  v7 = v12;
  v12 = 0;
  if (v7)
  {
    v8 = v7;
    v9 = v12;
    v12 = 0;
    if (v9)
    {
    }
  }

  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v5);
  }

  return v7;
}

- (void)invalidate
{
  dataListTextSuggestionsInputView = [(WKContentView *)[(WKDataListSuggestionsControl *)self view] dataListTextSuggestionsInputView];
  m_ptr = self->_pickerView.m_ptr;
  if (dataListTextSuggestionsInputView == m_ptr)
  {
    [(WKContentView *)[(WKDataListSuggestionsControl *)self view] setDataListTextSuggestionsInputView:0];
    m_ptr = self->_pickerView.m_ptr;
  }

  [(WKDataListSuggestionsPickerView *)m_ptr setDelegate:0];
  [(WKDataListSuggestionsPickerView *)self->_pickerView.m_ptr setDataSource:0];
  v5 = self->_pickerView.m_ptr;

  [(WKDataListSuggestionsPickerView *)v5 setControl:0];
}

@end