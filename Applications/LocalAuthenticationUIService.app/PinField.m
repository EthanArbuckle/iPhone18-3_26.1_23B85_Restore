@interface PinField
- (PinField)initWithPinLength:(id)a3 minLength:(id)a4 maxLength:(id)a5 charset:(id)a6;
- (PinFieldDelegate)delegate;
- (void)_enterPin;
- (void)_handleReturnKeyTapped:(id)a3;
- (void)_setupForFixedLength;
- (void)_setupForVariableLength;
- (void)appendPinCharacter:(id)a3;
- (void)deleteLastPinCharacter;
- (void)layoutSubviews;
- (void)updateLayoutForWidth:(double)a3;
@end

@implementation PinField

- (PinField)initWithPinLength:(id)a3 minLength:(id)a4 maxLength:(id)a5 charset:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = PinField;
  v15 = [(PinField *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_pinFixedLength, a3);
    objc_storeStrong(&v16->_pinMinLength, a4);
    objc_storeStrong(&v16->_pinMaxLength, a5);
    objc_storeStrong(&v16->_pinCharset, a6);
    if (v16->_pinFixedLength && (v17 = [v11 unsignedIntValue], v16->_pinLength = v17, v17 - 4 <= 8))
    {
      [(PinField *)v16 _setupForFixedLength];
      if (!v14)
      {
        goto LABEL_9;
      }
    }

    else
    {
      [(PinField *)v16 _setupForVariableLength];
      if (!v14)
      {
LABEL_9:
        v19 = [&stru_1000ADB50 stringByPaddingToLength:v16->_pinLength withString:@" " startingAtIndex:0];
        v20 = [LACSecureData secureDataWithString:v19];
        pinValue = v16->_pinValue;
        v16->_pinValue = v20;

        [(LACSecureData *)v16->_pinValue resize:0];
        goto LABEL_10;
      }
    }

    if ([v14 unsignedIntValue])
    {
      v18 = +[NSNotificationCenter defaultCenter];
      [v18 addObserver:v16 selector:"_handleReturnKeyTapped:" name:UIKeyboardReturnKeyPressed object:0];
    }

    goto LABEL_9;
  }

LABEL_10:

  return v16;
}

- (void)_setupForFixedLength
{
  v3 = [[NSMutableArray alloc] initWithCapacity:self->_pinLength];
  pinDashViews = self->_pinDashViews;
  self->_pinDashViews = v3;

  v5 = [[NSMutableArray alloc] initWithCapacity:self->_pinLength];
  pinDotViews = self->_pinDotViews;
  self->_pinDotViews = v5;

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v21 = [UIImage imageNamed:@"pinDash" inBundle:v7];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [UIImage imageNamed:@"pinDot" inBundle:v8];

  p_pinDashSize = &self->_pinDashSize;
  [v21 size];
  self->_pinDashSize.width = v11;
  self->_pinDashSize.height = v12;
  p_pinDotSize = &self->_pinDotSize;
  [v9 size];
  self->_pinDotSize.width = v15;
  self->_pinDotSize.height = v14;
  height = self->_pinDashSize.height;
  if (height < v14)
  {
    height = v14;
  }

  self->_slotHeight = height;
  width = p_pinDashSize->width;
  if (p_pinDashSize->width < p_pinDotSize->width)
  {
    width = p_pinDotSize->width;
  }

  self->_slotWidth = width;
  if (self->_pinLength)
  {
    v18 = 0;
    do
    {
      v19 = [[UIImageView alloc] initWithImage:v21];
      [(NSMutableArray *)self->_pinDashViews addObject:v19];
      v20 = [[UIImageView alloc] initWithImage:v9];

      [(NSMutableArray *)self->_pinDotViews addObject:v20];
      ++v18;
    }

    while (v18 < self->_pinLength);
  }
}

- (void)_setupForVariableLength
{
  obj = objc_alloc_init(UITextField);
  [obj setSecureTextEntry:1];
  [obj setBorderStyle:3];
  [obj setUserInteractionEnabled:0];
  objc_storeStrong(&self->_pinTextField, obj);
  v3 = [(PinField *)self pinTextField];
  [(PinField *)self addSubview:v3];

  v4 = [(PinField *)self pinCharset];
  v5 = [v4 unsignedIntValue];

  if (!v5)
  {
    v6 = [UIButton buttonWithType:1];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"PASSWORD_ALERT_DONE" value:&stru_1000ADB50 table:@"MobileUI"];
    [(UIButton *)v6 setTitle:v8 forState:0];

    v9 = +[UIColor labelColor];
    [(UIButton *)v6 setTitleColor:v9 forState:0];

    v10 = +[UIColor redColor];
    [(UIButton *)v6 setTitleColor:v10 forState:2];

    [(UIButton *)v6 addTarget:self action:"_okButtonClicked:" forControlEvents:1];
    [(UIButton *)v6 sizeToFit];
    okButton = self->_okButton;
    self->_okButton = v6;

    v12 = [(PinField *)self okButton];
    [(PinField *)self addSubview:v12];
  }

  self->_variableLength = 1;
}

- (void)updateLayoutForWidth:(double)a3
{
  v5 = [(PinField *)self variableLength];
  y = CGRectZero.origin.y;
  if (v5)
  {
    [(PinField *)self setFrame:CGRectZero.origin.x, CGRectZero.origin.y, a3, 30.0];
    v7 = [(PinField *)self pinMaxLength];
    [v7 intValue];

    UIRectCenteredXInRect();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(PinField *)self pinTextField];
    [v16 setFrame:{v9, v11, v13, v15}];

    v35 = [(PinField *)self okButton];
    [v35 setFrame:{v9 + v13, 0.0, 50.0, 30.0}];
  }

  else
  {
    slotWidth = self->_slotWidth;
    v18 = 25.0;
    pinLength = self->_pinLength;
    v20 = pinLength;
    v21 = (slotWidth + 25.0) * pinLength + -25.0;
    if (v21 > a3 + -25.0)
    {
      v18 = (a3 + -25.0 - slotWidth * v20) / (pinLength - 1);
      v21 = -(v18 - (slotWidth + v18) * v20);
    }

    slotHeight = self->_slotHeight;
    [(PinField *)self setFrame:CGRectZero.origin.x, CGRectZero.origin.y, v21, ceilf(slotHeight)];
    if (self->_pinLength)
    {
      v23 = 0;
      p_pinDashSize = &self->_pinDashSize;
      do
      {
        v37.size.width = p_pinDashSize->width;
        v37.size.height = self->_pinDashSize.height;
        v37.origin.x = (self->_slotWidth - p_pinDashSize->width) * 0.5 + (v18 + self->_slotWidth) * v23;
        v37.origin.y = (self->_slotHeight - v37.size.height) * 0.5;
        v38 = CGRectIntegral(v37);
        x = v38.origin.x;
        v26 = v38.origin.y;
        width = v38.size.width;
        height = v38.size.height;
        v29 = [(NSMutableArray *)self->_pinDashViews objectAtIndex:v23];
        [v29 setFrame:{x, v26, width, height}];
        v39.size.width = self->_pinDotSize.width;
        v39.size.height = self->_pinDotSize.height;
        v39.origin.x = (self->_slotWidth - v39.size.width) * 0.5 + (v18 + self->_slotWidth) * v23;
        v39.origin.y = (self->_slotHeight - v39.size.height) * 0.5;
        v40 = CGRectIntegral(v39);
        v30 = v40.origin.x;
        v31 = v40.origin.y;
        v32 = v40.size.width;
        v33 = v40.size.height;
        v34 = [(NSMutableArray *)self->_pinDotViews objectAtIndex:v23];

        [v34 setFrame:{v30, v31, v32, v33}];
        ++v23;
      }

      while (v23 < self->_pinLength);
    }
  }
}

- (void)layoutSubviews
{
  if ([(PinField *)self variableLength])
  {
    v3 = [(LACSecureData *)self->_pinValue length];
    v4 = [(PinField *)self pinMinLength];
    v5 = v3 < [v4 unsignedIntValue];

    v13 = [(PinField *)self okButton];
    [v13 setHidden:v5];
  }

  else if (self->_pinLength)
  {
    v6 = 0;
    do
    {
      v7 = [(LACSecureData *)self->_pinValue length];
      if (v6 >= v7)
      {
        v8 = &OBJC_IVAR___PinField__pinDotViews;
      }

      else
      {
        v8 = &OBJC_IVAR___PinField__pinDashViews;
      }

      if (v6 >= v7)
      {
        v9 = &OBJC_IVAR___PinField__pinDashViews;
      }

      else
      {
        v9 = &OBJC_IVAR___PinField__pinDotViews;
      }

      v10 = [*(&self->super.super.super.isa + *v8) objectAtIndexedSubscript:v6];
      [v10 removeFromSuperview];

      v11 = [*(&self->super.super.super.isa + *v9) objectAtIndexedSubscript:v6];
      v12 = [v11 superview];

      if (!v12)
      {
        [(PinField *)self addSubview:v11];
      }

      ++v6;
    }

    while (v6 < self->_pinLength);
  }
}

- (void)appendPinCharacter:(id)a3
{
  v15 = a3;
  if ([(PinField *)self variableLength])
  {
    v4 = [(PinField *)self pinMaxLength];
    if (v4)
    {
      v5 = [(PinField *)self pinMaxLength];
      v6 = [v5 unsignedIntValue];
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = [(PinField *)self pinLength];
  }

  if (-[LACSecureData length](self->_pinValue, "length") < v6 && ([v15 isEqualToString:@"\n"] & 1) == 0)
  {
    v7 = [(PinField *)self pinCharset];
    v8 = [v7 unsignedIntValue];

    if (v8 == 2)
    {
      v9 = [v15 uppercaseString];

      v10 = v9;
    }

    else
    {
      v10 = v15;
    }

    v15 = v10;
    [(LACSecureData *)self->_pinValue appendString:?];
    if ([(PinField *)self variableLength])
    {
      v11 = [(PinField *)self pinTextField];
      v12 = [v11 text];
      v13 = [v12 stringByAppendingString:v15];
      v14 = [(PinField *)self pinTextField];
      [v14 setText:v13];
    }

    [(PinField *)self setNeedsLayout];
    if ([(LACSecureData *)self->_pinValue length]== v6)
    {
      [(PinField *)self _enterPin];
    }
  }
}

- (void)deleteLastPinCharacter
{
  if ([(LACSecureData *)self->_pinValue length])
  {
    [(LACSecureData *)self->_pinValue removeLastCharacter];
    if ([(PinField *)self variableLength])
    {
      v3 = [(PinField *)self pinTextField];
      v4 = [v3 text];
      v5 = [(PinField *)self pinTextField];
      v6 = [v5 text];
      v7 = [v4 substringToIndex:{objc_msgSend(v6, "length") - 1}];
      v8 = [(PinField *)self pinTextField];
      [v8 setText:v7];
    }

    [(PinField *)self setNeedsLayout];
  }
}

- (void)_handleReturnKeyTapped:(id)a3
{
  if (![(PinField *)self variableLength]|| (v4 = [(LACSecureData *)self->_pinValue length], v4 >= [(NSNumber *)self->_pinMinLength unsignedIntValue]))
  {

    [(PinField *)self _enterPin];
  }
}

- (void)_enterPin
{
  v3 = dispatch_time(0, 76000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __21__PinField__enterPin__block_invoke;
  block[3] = &unk_1000AA3C0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

void __21__PinField__enterPin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained pinEntered:*(*(a1 + 32) + 88)];
}

- (PinFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end