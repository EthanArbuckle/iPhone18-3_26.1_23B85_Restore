@interface PINEntryView
- (NSString)text;
- (int64_t)keyboardType;
- (void)_updateLabels;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setText:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation PINEntryView

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

    [(PINEntryView *)self _updateLabels];
  }
}

- (void)deleteBackward
{
  if ([(NSMutableString *)self->_text length])
  {
    text = self->_text;
    v4 = [(NSMutableString *)text rangeOfComposedCharacterSequenceAtIndex:[(NSMutableString *)text length]- 1];
    [(NSMutableString *)text deleteCharactersInRange:v4, v5];

    [(PINEntryView *)self _updateLabels];
  }
}

- (void)_updateLabels
{
  v3 = [(NSArray *)self->_wells count];
  v4 = @"-";
  if (v3)
  {
    v4 = &stru_100195CA8;
  }

  v5 = v4;
  v6 = [(NSMutableString *)self->_text length];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = self->_digits;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v40;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        if (v10 >= v6)
        {
          [*(*(&v39 + 1) + 8 * i) setText:v5];
        }

        else
        {
          v14 = [(NSMutableString *)self->_text substringWithRange:v10, 1];
          [v13 setText:v14];
        }

        ++v10;
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v9);
  }

  wellFocusColor = self->_wellFocusColor;
  v16 = &swift_allocBox_ptr;
  v32 = v5;
  if (wellFocusColor)
  {
    v17 = wellFocusColor;
  }

  else
  {
    v17 = +[UIColor grayColor];
  }

  v18 = v17;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = self;
  v19 = self->_wells;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v36;
    do
    {
      v24 = 0;
      v34 = v22;
      v25 = (v6 - v22);
      do
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v35 + 1) + 8 * v24);
        if (v25 == v24)
        {
          [*(*(&v35 + 1) + 8 * v24) setBorderColor:v18];
          v27 = 2.0;
        }

        else
        {
          [v16[307] colorWithWhite:0.800000012 alpha:1.0];
          v29 = v28 = v16;
          [v26 setBorderColor:v29];

          v16 = v28;
          v27 = 1.5;
        }

        [v26 setBorderWidth:{v27, v32}];
        ++v24;
      }

      while (v21 != v24);
      v22 = &v21[v34];
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v21);
  }

  textChangedHandler = v33->_textChangedHandler;
  if (textChangedHandler)
  {
    if (v33->_text)
    {
      text = v33->_text;
    }

    else
    {
      text = &stru_100195CA8;
    }

    textChangedHandler[2](textChangedHandler, text);
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = PINEntryView;
  [(PINEntryView *)&v5 touchesBegan:a3 withEvent:a4];
  if (!self->_disabled)
  {
    [(PINEntryView *)self becomeFirstResponder];
  }
}

- (void)setText:(id)a3
{
  v4 = [a3 uppercaseString];
  v5 = [v4 mutableCopy];
  text = self->_text;
  self->_text = v5;

  [(PINEntryView *)self _updateLabels];
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
    v4 = &stru_100195CA8;
  }

  return v4;
}

- (void)setDisabled:(BOOL)a3
{
  self->_disabled = a3;
  if (a3)
  {
    [(PINEntryView *)self resignFirstResponder];
  }

  else
  {
    [(PINEntryView *)self becomeFirstResponder];
  }
}

@end