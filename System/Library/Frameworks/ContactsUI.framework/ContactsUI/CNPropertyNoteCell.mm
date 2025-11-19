@interface CNPropertyNoteCell
- (CNPropertyNoteCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)labelView;
- (id)valueView;
- (void)dealloc;
- (void)performDefaultAction;
- (void)setAllowsEditing:(BOOL)a3;
- (void)setProperty:(id)a3;
- (void)setValueTextAttributes:(id)a3;
- (void)textViewChanged:(id)a3;
- (void)textViewEditingDidEnd:(id)a3;
@end

@implementation CNPropertyNoteCell

- (void)setAllowsEditing:(BOOL)a3
{
  v3 = a3;
  if ([(CNPropertyCell *)self allowsEditing]!= a3)
  {
    v6.receiver = self;
    v6.super_class = CNPropertyNoteCell;
    [(CNPropertyCell *)&v6 setAllowsEditing:v3];
    v5 = [(CNPropertyNoteCell *)self textView];
    [v5 setEditable:v3];
  }
}

- (void)textViewEditingDidEnd:(id)a3
{
  v5 = [a3 object];
  [v5 setContentOffset:1 animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  if (([(CNPropertyNoteCell *)self isEditing]& 1) == 0)
  {
    v4 = [(CNPropertyCell *)self propertyItem];
    [v4 saveChangesImmediately:1];
  }
}

- (void)textViewChanged:(id)a3
{
  v8 = [a3 object];
  v4 = [(CNPropertyCell *)self delegate];
  v5 = [(CNPropertyCell *)self propertyItem];
  v6 = [v8 text];
  [v4 propertyCell:self didUpdateItem:v5 withNewValue:v6];

  v7 = [(CNPropertyCell *)self delegate];
  [v7 propertyCellDidChangeLayout:self];
}

- (void)setValueTextAttributes:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69DB650];
  v5 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  v6 = [(CNPropertyNoteCell *)self textView];
  [v6 setTextColor:v5];

  v10[0] = *MEMORY[0x1E69DB648];
  v7 = [MEMORY[0x1E69DB878] ab_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v10[1] = v4;
  v11[0] = v7;
  v11[1] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v9.receiver = self;
  v9.super_class = CNPropertyNoteCell;
  [(CNLabeledCell *)&v9 setValueTextAttributes:v8];
}

- (void)performDefaultAction
{
  v2 = [(CNPropertyNoteCell *)self textView];
  [v2 becomeFirstResponder];
}

- (id)valueView
{
  textView = self->_textView;
  if (!textView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD168]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_textView;
    self->_textView = v5;

    [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x1E69DB878] ab_preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UITextView *)self->_textView setFont:v7];

    v8 = [(UITextView *)self->_textView textContainer];
    [v8 setLineFragmentPadding:0.0];

    [(UITextView *)self->_textView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)self->_textView setScrollEnabled:0];
    [(UITextView *)self->_textView _cnui_applyContactStyle];
    textView = self->_textView;
  }

  return textView;
}

- (id)labelView
{
  labelLabel = self->_labelLabel;
  if (!labelLabel)
  {
    v4 = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_labelLabel;
    self->_labelLabel = v4;

    labelLabel = self->_labelLabel;
  }

  return labelLabel;
}

- (void)setProperty:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyNoteCell *)self labelView];
  [v5 setAb_text:@"Notes"];

  v6 = [(CNPropertyNoteCell *)self valueView];
  [v6 setAb_text:v4];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPropertyNoteCell;
  [(CNContactCell *)&v4 dealloc];
}

- (CNPropertyNoteCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = CNPropertyNoteCell;
  v4 = [(CNPropertyCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CNPropertyNoteCell *)v4 setAllowsEditing:1];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v5 selector:sel_textViewChanged_ name:*MEMORY[0x1E69DE750] object:v5->_textView];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v5 selector:sel_textViewEditingDidEnd_ name:*MEMORY[0x1E69DE758] object:v5->_textView];
  }

  return v5;
}

@end