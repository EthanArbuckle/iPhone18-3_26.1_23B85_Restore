@interface LPCaptionPresentationProperties
- (LPCaptionPresentationProperties)init;
- (void)setAttributedText:(id)text;
- (void)setText:(id)text;
@end

@implementation LPCaptionPresentationProperties

- (LPCaptionPresentationProperties)init
{
  v6.receiver = self;
  v6.super_class = LPCaptionPresentationProperties;
  v2 = [(LPCaptionPresentationProperties *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_textScale = 1.0;
    v4 = v2;
  }

  return v3;
}

- (void)setText:(id)text
{
  textCopy = text;
  v4 = [(NSAttributedString *)textCopy copy];
  text = self->_text;
  self->_text = v4;

  v6 = textCopy;
  if (textCopy)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:textCopy];
  }

  attributedText = self->_attributedText;
  self->_attributedText = v6;

  _lp_stringType = [(NSAttributedString *)textCopy _lp_stringType];
  if (_lp_stringType)
  {
    [(NSString *)self->_text _lp_setStringType:_lp_stringType];
    [(NSAttributedString *)self->_attributedText _lp_setStringType:_lp_stringType];
  }
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  v4 = [textCopy copy];
  attributedText = self->_attributedText;
  self->_attributedText = v4;

  string = [textCopy string];
  text = self->_text;
  self->_text = string;

  _lp_stringType = [textCopy _lp_stringType];
  if (_lp_stringType)
  {
    [(NSString *)self->_text _lp_setStringType:_lp_stringType];
    [(NSAttributedString *)self->_attributedText _lp_setStringType:_lp_stringType];
  }
}

@end