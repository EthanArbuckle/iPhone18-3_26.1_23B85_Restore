@interface AVTMSStickerView
- (AVTMSStickerView)initWithFrame:(CGRect)frame;
- (AVTMSStickerViewDelegate)delegate;
- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate;
- (void)_prepareForReuse;
- (void)handleLongPress:(id)press;
- (void)handleTap:(id)tap;
@end

@implementation AVTMSStickerView

- (AVTMSStickerView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = AVTMSStickerView;
  result = [(MSStickerView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_allowsPeel = 1;
  }

  return result;
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  disclosureValidationDelegate = [(AVTMSStickerView *)self disclosureValidationDelegate];
  if (!disclosureValidationDelegate || (v6 = disclosureValidationDelegate, -[AVTMSStickerView disclosureValidationDelegate](self, "disclosureValidationDelegate"), v7 = objc_claimAutoreleasedReturnValue(), -[MSStickerView sticker](self, "sticker"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 shouldAllowUserActionOnSticker:v8], v8, v7, v6, v9))
  {
    if ([tapCopy state] == 3)
    {
      v12.receiver = self;
      v12.super_class = AVTMSStickerView;
      [(MSStickerView *)&v12 handleTap:tapCopy];
      delegate = [(AVTMSStickerView *)self delegate];

      if (delegate)
      {
        delegate2 = [(AVTMSStickerView *)self delegate];
        [delegate2 stickerViewWasTapped:self];
      }
    }
  }
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  if ([(AVTMSStickerView *)self allowsPeel])
  {
    disclosureValidationDelegate = [(AVTMSStickerView *)self disclosureValidationDelegate];
    if (!disclosureValidationDelegate || (v6 = disclosureValidationDelegate, -[AVTMSStickerView disclosureValidationDelegate](self, "disclosureValidationDelegate"), v7 = objc_claimAutoreleasedReturnValue(), -[MSStickerView sticker](self, "sticker"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 shouldAllowUserActionOnSticker:v8], v8, v7, v6, v9))
    {
      v14.receiver = self;
      v14.super_class = AVTMSStickerView;
      [(MSStickerView *)&v14 handleLongPress:pressCopy];
      delegate = [(AVTMSStickerView *)self delegate];
      if (delegate)
      {
        v11 = delegate;
        state = [pressCopy state];

        if (state == 1)
        {
          delegate2 = [(AVTMSStickerView *)self delegate];
          [delegate2 stickerViewDidBeginPeel:self];
        }
      }
    }
  }
}

- (void)_prepareForReuse
{
  v3.receiver = self;
  v3.super_class = AVTMSStickerView;
  [(MSStickerView *)&v3 _prepareForReuse];
  [(MSStickerView *)self setImageData:0];
}

- (AVTMSStickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_disclosureValidationDelegate);

  return WeakRetained;
}

@end