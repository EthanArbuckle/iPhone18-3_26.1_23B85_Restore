@interface SVSTextAnimator
- (void)_update;
- (void)setDisplayEndIndex:(unint64_t)index;
- (void)setText:(id)text;
@end

@implementation SVSTextAnimator

- (void)_update
{
  if (!self->_busy)
  {
    firstObject = [(NSMutableArray *)self->_changes firstObject];
    v4 = firstObject;
    if (firstObject)
    {
      unsignedIntegerValue = [firstObject unsignedIntegerValue];
      [(NSMutableArray *)self->_changes removeObjectAtIndex:0];
      v6 = self->_activeLabel;
      label1 = self->_label1;
      if (v6 == label1)
      {
        label1 = self->_label2;
      }

      v8 = label1;
      v9 = [(NSMutableAttributedString *)self->_attributedText length];
      [(NSMutableAttributedString *)self->_attributedText removeAttribute:NSForegroundColorAttributeName range:0, v9];
      if (v9 < unsignedIntegerValue)
      {
        unsignedIntegerValue = v9;
      }

      attributedText = self->_attributedText;
      v11 = +[UIColor systemBlueColor];
      [(NSMutableAttributedString *)attributedText addAttribute:NSForegroundColorAttributeName value:v11 range:0, unsignedIntegerValue];

      v12 = self->_attributedText;
      v13 = +[UIColor clearColor];
      [(NSMutableAttributedString *)v12 addAttribute:NSForegroundColorAttributeName value:v13 range:unsignedIntegerValue, v9 - unsignedIntegerValue];

      [(UILabel *)v8 setAttributedText:self->_attributedText];
      self->_busy = 1;
      [(UILabel *)v8 setAlpha:0.0];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1001263B8;
      v22[3] = &unk_100195AC0;
      v23 = v8;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1001263C4;
      v18[3] = &unk_1001957A8;
      v14 = v23;
      v19 = v14;
      v20 = v6;
      selfCopy = self;
      v15 = v6;
      [UIView animateWithDuration:2 delay:v22 options:v18 animations:0.08 completion:0.0];
      activeLabel = self->_activeLabel;
      self->_activeLabel = v14;
      v17 = v14;
    }
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  objc_storeStrong(&self->_text, text);
  v15 = textCopy;
  if (v15)
  {
    v6 = [[NSMutableAttributedString alloc] initWithString:v15];
    attributedText = self->_attributedText;
    self->_attributedText = v6;

    v8 = [v15 length];
    font = [(UILabel *)self->_label1 font];
    v10 = font;
    if (font)
    {
      v11 = font;
    }

    else
    {
      v11 = [UIFont systemFontOfSize:15.0];
    }

    v12 = v11;

    [(NSMutableAttributedString *)self->_attributedText addAttribute:NSFontAttributeName value:v12 range:0, v8];
    v13 = self->_attributedText;
    v14 = +[UIColor clearColor];
    [(NSMutableAttributedString *)v13 addAttribute:NSForegroundColorAttributeName value:v14 range:0, v8];

    [(UILabel *)self->_label1 setAlpha:0.0];
    [(UILabel *)self->_label1 setAttributedText:self->_attributedText];
    [(UILabel *)self->_label1 setHidden:0];
    [(UILabel *)self->_label2 setAlpha:0.0];
    [(UILabel *)self->_label2 setAttributedText:self->_attributedText];
    [(UILabel *)self->_label2 setHidden:0];
    objc_storeStrong(&self->_activeLabel, self->_label1);
  }

  else
  {
    [(UILabel *)self->_label1 setText:&stru_100195CA8];
    [(UILabel *)self->_label2 setText:&stru_100195CA8];
  }
}

- (void)setDisplayEndIndex:(unint64_t)index
{
  self->_displayEndIndex = index;
  changes = self->_changes;
  if (!changes)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_changes;
    self->_changes = v6;

    changes = self->_changes;
  }

  v8 = [NSNumber numberWithUnsignedInteger:index];
  [(NSMutableArray *)changes addObject:v8];

  [(SVSTextAnimator *)self _update];
}

@end