@interface CRLWPRubyField
- (BOOL)canCopy:(_NSRange)a3;
- (CRLWPRubyField)initWithRubyText:(id)a3;
- (NSString)baseText;
- (int)baseTextScript;
- (void)setRubyText:(id)a3;
@end

@implementation CRLWPRubyField

- (CRLWPRubyField)initWithRubyText:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRLWPRubyField;
  v5 = [(CRLWPRubyField *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    rubyText = v5->_rubyText;
    v5->_rubyText = v6;
  }

  return v5;
}

- (void)setRubyText:(id)a3
{
  v7 = a3;
  v4 = [v7 copy];
  rubyText = self->_rubyText;
  self->_rubyText = v4;

  v6 = [(CRLWPSmartField *)self parentStorage];
  [v6 smartFieldDidChange:self];
}

- (NSString)baseText
{
  v3 = [(CRLWPSmartField *)self parentStorage];

  if (v3)
  {
    v4 = [(CRLWPSmartField *)self parentStorage];
    v5 = [(CRLWPSmartField *)self range];
    v7 = [v4 substringWithRange:{v5, v6}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)baseTextScript
{
  v2 = [(CRLWPRubyField *)self baseText];
  v3 = [v2 crlwp_contentsScript];

  return v3;
}

- (BOOL)canCopy:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(CRLWPSmartField *)self range];
  return location <= v5 && location + length >= v5 + v6;
}

@end