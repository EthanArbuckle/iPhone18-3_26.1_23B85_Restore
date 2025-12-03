@interface ReservationLabel
- (BOOL)textFits;
- (ReservationLabelLayoutDelegate)delegate;
- (void)layoutSubviews;
@end

@implementation ReservationLabel

- (ReservationLabelLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)textFits
{
  text = [(ReservationLabel *)self text];
  if (![text length])
  {

    return 1;
  }

  numberOfLines = [(ReservationLabel *)self numberOfLines];

  if (!numberOfLines)
  {
    return 1;
  }

  font = [(ReservationLabel *)self font];
  v23 = NSFontAttributeName;
  v24 = font;
  v6 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  [(ReservationLabel *)self bounds];
  Width = CGRectGetWidth(v25);
  text2 = [(ReservationLabel *)self text];
  [text2 boundingRectWithSize:3 options:v6 attributes:0 context:{Width, 1.79769313e308}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v26.origin.x = v10;
  v26.origin.y = v12;
  v26.size.width = v14;
  v26.size.height = v16;
  Height = CGRectGetHeight(v26);
  font2 = [(ReservationLabel *)self font];
  [font2 lineHeight];
  v20 = vcvtmd_s64_f64(Height / v19);

  v21 = [(ReservationLabel *)self numberOfLines]>= v20;
  return v21;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = ReservationLabel;
  [(ReservationLabel *)&v4 layoutSubviews];
  delegate = [(ReservationLabel *)self delegate];
  [delegate reservationLabelDidLayout:self];
}

@end