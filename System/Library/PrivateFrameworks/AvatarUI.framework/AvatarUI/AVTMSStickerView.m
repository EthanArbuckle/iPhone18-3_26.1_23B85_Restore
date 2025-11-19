@interface AVTMSStickerView
- (AVTMSStickerView)initWithFrame:(CGRect)a3;
- (AVTMSStickerViewDelegate)delegate;
- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate;
- (void)_prepareForReuse;
- (void)handleLongPress:(id)a3;
- (void)handleTap:(id)a3;
@end

@implementation AVTMSStickerView

- (AVTMSStickerView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = AVTMSStickerView;
  result = [(MSStickerView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_allowsPeel = 1;
  }

  return result;
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = [(AVTMSStickerView *)self disclosureValidationDelegate];
  if (!v5 || (v6 = v5, -[AVTMSStickerView disclosureValidationDelegate](self, "disclosureValidationDelegate"), v7 = objc_claimAutoreleasedReturnValue(), -[MSStickerView sticker](self, "sticker"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 shouldAllowUserActionOnSticker:v8], v8, v7, v6, v9))
  {
    if ([v4 state] == 3)
    {
      v12.receiver = self;
      v12.super_class = AVTMSStickerView;
      [(MSStickerView *)&v12 handleTap:v4];
      v10 = [(AVTMSStickerView *)self delegate];

      if (v10)
      {
        v11 = [(AVTMSStickerView *)self delegate];
        [v11 stickerViewWasTapped:self];
      }
    }
  }
}

- (void)handleLongPress:(id)a3
{
  v4 = a3;
  if ([(AVTMSStickerView *)self allowsPeel])
  {
    v5 = [(AVTMSStickerView *)self disclosureValidationDelegate];
    if (!v5 || (v6 = v5, -[AVTMSStickerView disclosureValidationDelegate](self, "disclosureValidationDelegate"), v7 = objc_claimAutoreleasedReturnValue(), -[MSStickerView sticker](self, "sticker"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 shouldAllowUserActionOnSticker:v8], v8, v7, v6, v9))
    {
      v14.receiver = self;
      v14.super_class = AVTMSStickerView;
      [(MSStickerView *)&v14 handleLongPress:v4];
      v10 = [(AVTMSStickerView *)self delegate];
      if (v10)
      {
        v11 = v10;
        v12 = [v4 state];

        if (v12 == 1)
        {
          v13 = [(AVTMSStickerView *)self delegate];
          [v13 stickerViewDidBeginPeel:self];
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