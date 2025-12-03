@interface CRLWPRubyField
- (BOOL)canCopy:(_NSRange)copy;
- (CRLWPRubyField)initWithRubyText:(id)text;
- (NSString)baseText;
- (int)baseTextScript;
- (void)setRubyText:(id)text;
@end

@implementation CRLWPRubyField

- (CRLWPRubyField)initWithRubyText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = CRLWPRubyField;
  v5 = [(CRLWPRubyField *)&v9 init];
  if (v5)
  {
    v6 = [textCopy copy];
    rubyText = v5->_rubyText;
    v5->_rubyText = v6;
  }

  return v5;
}

- (void)setRubyText:(id)text
{
  textCopy = text;
  v4 = [textCopy copy];
  rubyText = self->_rubyText;
  self->_rubyText = v4;

  parentStorage = [(CRLWPSmartField *)self parentStorage];
  [parentStorage smartFieldDidChange:self];
}

- (NSString)baseText
{
  parentStorage = [(CRLWPSmartField *)self parentStorage];

  if (parentStorage)
  {
    parentStorage2 = [(CRLWPSmartField *)self parentStorage];
    range = [(CRLWPSmartField *)self range];
    v7 = [parentStorage2 substringWithRange:{range, v6}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)baseTextScript
{
  baseText = [(CRLWPRubyField *)self baseText];
  crlwp_contentsScript = [baseText crlwp_contentsScript];

  return crlwp_contentsScript;
}

- (BOOL)canCopy:(_NSRange)copy
{
  length = copy.length;
  location = copy.location;
  range = [(CRLWPSmartField *)self range];
  return location <= range && location + length >= range + v6;
}

@end