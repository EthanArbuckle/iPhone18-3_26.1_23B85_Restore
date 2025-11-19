@interface LPCaptionPresentationProperties
- (LPCaptionPresentationProperties)init;
- (void)setAttributedText:(id)a3;
- (void)setText:(id)a3;
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

- (void)setText:(id)a3
{
  v9 = a3;
  v4 = [(NSAttributedString *)v9 copy];
  text = self->_text;
  self->_text = v4;

  v6 = v9;
  if (v9)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9];
  }

  attributedText = self->_attributedText;
  self->_attributedText = v6;

  v8 = [(NSAttributedString *)v9 _lp_stringType];
  if (v8)
  {
    [(NSString *)self->_text _lp_setStringType:v8];
    [(NSAttributedString *)self->_attributedText _lp_setStringType:v8];
  }
}

- (void)setAttributedText:(id)a3
{
  v9 = a3;
  v4 = [v9 copy];
  attributedText = self->_attributedText;
  self->_attributedText = v4;

  v6 = [v9 string];
  text = self->_text;
  self->_text = v6;

  v8 = [v9 _lp_stringType];
  if (v8)
  {
    [(NSString *)self->_text _lp_setStringType:v8];
    [(NSAttributedString *)self->_attributedText _lp_setStringType:v8];
  }
}

@end