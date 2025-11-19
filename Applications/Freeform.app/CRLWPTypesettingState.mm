@interface CRLWPTypesettingState
- (void)clear;
@end

@implementation CRLWPTypesettingState

- (void)clear
{
  *(&self->_startPos + 4) = 0.0;
  *&self->_hyphenationChar = 0;
  HIDWORD(self->_endPos) = 0;
  hyphenationAttr = self->_hyphenationAttr;
  self->_hyphenationAttr = 0;

  self->_oikomiSquish = 0;
}

@end