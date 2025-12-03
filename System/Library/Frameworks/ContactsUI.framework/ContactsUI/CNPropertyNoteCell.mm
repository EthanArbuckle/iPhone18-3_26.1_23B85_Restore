@interface CNPropertyNoteCell
- (CNPropertyNoteCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)labelView;
- (id)valueView;
- (void)dealloc;
- (void)performDefaultAction;
- (void)setAllowsEditing:(BOOL)editing;
- (void)setProperty:(id)property;
- (void)setValueTextAttributes:(id)attributes;
- (void)textViewChanged:(id)changed;
- (void)textViewEditingDidEnd:(id)end;
@end

@implementation CNPropertyNoteCell

- (void)setAllowsEditing:(BOOL)editing
{
  editingCopy = editing;
  if ([(CNPropertyCell *)self allowsEditing]!= editing)
  {
    v6.receiver = self;
    v6.super_class = CNPropertyNoteCell;
    [(CNPropertyCell *)&v6 setAllowsEditing:editingCopy];
    textView = [(CNPropertyNoteCell *)self textView];
    [textView setEditable:editingCopy];
  }
}

- (void)textViewEditingDidEnd:(id)end
{
  object = [end object];
  [object setContentOffset:1 animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  if (([(CNPropertyNoteCell *)self isEditing]& 1) == 0)
  {
    propertyItem = [(CNPropertyCell *)self propertyItem];
    [propertyItem saveChangesImmediately:1];
  }
}

- (void)textViewChanged:(id)changed
{
  object = [changed object];
  delegate = [(CNPropertyCell *)self delegate];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  text = [object text];
  [delegate propertyCell:self didUpdateItem:propertyItem withNewValue:text];

  delegate2 = [(CNPropertyCell *)self delegate];
  [delegate2 propertyCellDidChangeLayout:self];
}

- (void)setValueTextAttributes:(id)attributes
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69DB650];
  v5 = [attributes objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  textView = [(CNPropertyNoteCell *)self textView];
  [textView setTextColor:v5];

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
  textView = [(CNPropertyNoteCell *)self textView];
  [textView becomeFirstResponder];
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

    textContainer = [(UITextView *)self->_textView textContainer];
    [textContainer setLineFragmentPadding:0.0];

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
    standardLabelView = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_labelLabel;
    self->_labelLabel = standardLabelView;

    labelLabel = self->_labelLabel;
  }

  return labelLabel;
}

- (void)setProperty:(id)property
{
  propertyCopy = property;
  labelView = [(CNPropertyNoteCell *)self labelView];
  [labelView setAb_text:@"Notes"];

  valueView = [(CNPropertyNoteCell *)self valueView];
  [valueView setAb_text:propertyCopy];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPropertyNoteCell;
  [(CNContactCell *)&v4 dealloc];
}

- (CNPropertyNoteCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CNPropertyNoteCell;
  v4 = [(CNPropertyCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CNPropertyNoteCell *)v4 setAllowsEditing:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_textViewChanged_ name:*MEMORY[0x1E69DE750] object:v5->_textView];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel_textViewEditingDidEnd_ name:*MEMORY[0x1E69DE758] object:v5->_textView];
  }

  return v5;
}

@end