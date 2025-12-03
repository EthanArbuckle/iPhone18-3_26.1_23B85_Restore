@interface _MKTokenAttributedString
- (void)setAttributedString:(id)string;
- (void)setString:(id)string;
@end

@implementation _MKTokenAttributedString

- (void)setString:(id)string
{
  objc_storeStrong(&self->_string, string);
  stringCopy = string;
  attributedString = self->_attributedString;
  self->_attributedString = 0;
}

- (void)setAttributedString:(id)string
{
  stringCopy = string;
  string = self->_string;
  self->_string = 0;

  attributedString = self->_attributedString;
  self->_attributedString = stringCopy;
}

@end