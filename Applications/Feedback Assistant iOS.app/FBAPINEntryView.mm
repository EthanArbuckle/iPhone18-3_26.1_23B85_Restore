@interface FBAPINEntryView
- (NSString)text;
- (UILabel)pinLabel1;
- (UILabel)pinLabel2;
- (UILabel)pinLabel3;
- (UILabel)pinLabel4;
- (UILabel)pinLabel5;
- (UILabel)pinLabel6;
- (int64_t)keyboardType;
- (void)_updateLabels;
- (void)awakeFromNib;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setText:(id)a3;
@end

@implementation FBAPINEntryView

- (void)awakeFromNib
{
  v24.receiver = self;
  v24.super_class = FBAPINEntryView;
  [(FBAPINEntryView *)&v24 awakeFromNib];
  WeakRetained = objc_loadWeakRetained(&self->_pinLabel1);
  v26[0] = WeakRetained;
  v4 = objc_loadWeakRetained(&self->_pinLabel2);
  v26[1] = v4;
  v5 = objc_loadWeakRetained(&self->_pinLabel3);
  v26[2] = v5;
  v6 = objc_loadWeakRetained(&self->_pinLabel4);
  v26[3] = v6;
  v7 = objc_loadWeakRetained(&self->_pinLabel5);
  v26[4] = v7;
  v8 = objc_loadWeakRetained(&self->_pinLabel6);
  v26[5] = v8;
  v9 = [NSArray arrayWithObjects:v26 count:6];
  [(FBAPINEntryView *)self setDigits:v9];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(FBAPINEntryView *)self digits];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        v16 = +[UIColor labelColor];
        [v15 setTextColor:v16];

        v17 = [v15 superview];
        v18 = +[UIColor secondarySystemBackgroundColor];
        [v17 setBackgroundColor:v18];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v12);
  }

  v19 = +[UIColor clearColor];
  [(FBAPINEntryView *)self setBackgroundColor:v19];
}

- (void)setDisabled:(BOOL)a3
{
  self->_disabled = a3;
  if (a3)
  {
    [(FBAPINEntryView *)self resignFirstResponder];
  }

  else
  {
    [(FBAPINEntryView *)self becomeFirstResponder];
  }
}

- (NSString)text
{
  text = self->_text;
  if (text)
  {
    v4 = [(NSMutableString *)text copy];
  }

  else
  {
    v4 = &stru_1000E2210;
  }

  return v4;
}

- (void)setText:(id)a3
{
  v4 = [a3 uppercaseString];
  v5 = [v4 mutableCopy];
  text = self->_text;
  self->_text = v5;

  [(FBAPINEntryView *)self _updateLabels];
}

- (void)_updateLabels
{
  v3 = [(NSMutableString *)self->_text length];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_digits;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v7 >= v3)
        {
          [*(*(&v14 + 1) + 8 * i) setText:{&stru_1000E2210, v14}];
        }

        else
        {
          v11 = [(NSMutableString *)self->_text substringWithRange:v7, 1];
          [v10 setText:v11];
        }

        ++v7;
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  textChangedHandler = self->_textChangedHandler;
  if (textChangedHandler)
  {
    if (self->_text)
    {
      text = self->_text;
    }

    else
    {
      text = &stru_1000E2210;
    }

    textChangedHandler[2](textChangedHandler, text);
  }
}

- (void)deleteBackward
{
  if ([(NSMutableString *)self->_text length])
  {
    text = self->_text;
    v4 = [(NSMutableString *)text rangeOfComposedCharacterSequenceAtIndex:[(NSMutableString *)text length]- 1];
    [(NSMutableString *)text deleteCharactersInRange:v4, v5];

    [(FBAPINEntryView *)self _updateLabels];
  }
}

- (void)insertText:(id)a3
{
  v9 = a3;
  if (!self->_text)
  {
    v4 = objc_alloc_init(NSMutableString);
    text = self->_text;
    self->_text = v4;
  }

  v6 = [(NSArray *)self->_digits count];
  if (v6 != [(NSMutableString *)self->_text length])
  {
    v7 = self->_text;
    v8 = [v9 uppercaseString];
    [(NSMutableString *)v7 appendString:v8];

    [(FBAPINEntryView *)self _updateLabels];
  }
}

- (int64_t)keyboardType
{
  if (self->_alphaNumeric)
  {
    return 6;
  }

  else
  {
    return 11;
  }
}

- (UILabel)pinLabel1
{
  WeakRetained = objc_loadWeakRetained(&self->_pinLabel1);

  return WeakRetained;
}

- (UILabel)pinLabel2
{
  WeakRetained = objc_loadWeakRetained(&self->_pinLabel2);

  return WeakRetained;
}

- (UILabel)pinLabel3
{
  WeakRetained = objc_loadWeakRetained(&self->_pinLabel3);

  return WeakRetained;
}

- (UILabel)pinLabel4
{
  WeakRetained = objc_loadWeakRetained(&self->_pinLabel4);

  return WeakRetained;
}

- (UILabel)pinLabel5
{
  WeakRetained = objc_loadWeakRetained(&self->_pinLabel5);

  return WeakRetained;
}

- (UILabel)pinLabel6
{
  WeakRetained = objc_loadWeakRetained(&self->_pinLabel6);

  return WeakRetained;
}

@end