@interface _MKTokenAttributedString
- (void)setAttributedString:(id)a3;
- (void)setString:(id)a3;
@end

@implementation _MKTokenAttributedString

- (void)setString:(id)a3
{
  objc_storeStrong(&self->_string, a3);
  v6 = a3;
  attributedString = self->_attributedString;
  self->_attributedString = 0;
}

- (void)setAttributedString:(id)a3
{
  v4 = a3;
  string = self->_string;
  self->_string = 0;

  attributedString = self->_attributedString;
  self->_attributedString = v4;
}

@end