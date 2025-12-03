@interface CRLSecondsDurationFormatter
- (CRLSecondsDurationFormatter)init;
- (CRLSecondsDurationFormatter)initWithCoder:(id)coder;
- (void)p_commonInitDurationFormatter;
@end

@implementation CRLSecondsDurationFormatter

- (void)p_commonInitDurationFormatter
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"0.## s" value:0 table:0];
  [(CRLSecondsDurationFormatter *)self crl_setFormat:v4];

  v5 = [CRLAccessibilityValueFormat alloc];
  v9 = +[NSBundle mainBundle];
  v6 = [v9 localizedStringForKey:@"0.##" value:0 table:0];
  v7 = CRLAccessibilityStringsDictKey(@"inspector.field.seconds");
  v8 = [(CRLAccessibilityValueFormat *)v5 initWithNumberFormat:v6 andUnitStringsDictKey:v7];
  [(CRLInspectorTextFieldAbstractNumberFormatter *)self setCrlaxValueFormat:v8];
}

- (CRLSecondsDurationFormatter)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRLSecondsDurationFormatter;
  v3 = [(CRLInspectorTextFieldClampNumberFormatter *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CRLSecondsDurationFormatter *)v3 p_commonInitDurationFormatter];
  }

  return v4;
}

- (CRLSecondsDurationFormatter)init
{
  v5.receiver = self;
  v5.super_class = CRLSecondsDurationFormatter;
  v2 = [(CRLInspectorTextFieldClampNumberFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLSecondsDurationFormatter *)v2 p_commonInitDurationFormatter];
  }

  return v3;
}

@end