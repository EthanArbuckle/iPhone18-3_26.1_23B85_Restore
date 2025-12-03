@interface ASCredentialRequestSubPane
- (ASCredentialRequestSubPane)initWithView:(id)view;
- (void)addToStackView:(id)view withCustomSpacingAfter:(double)after context:(id)context;
- (void)setCustomSpacingAfter:(double)after;
@end

@implementation ASCredentialRequestSubPane

- (ASCredentialRequestSubPane)initWithView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = ASCredentialRequestSubPane;
  v6 = [(ASCredentialRequestSubPane *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, view);
    v8 = v7;
  }

  return v7;
}

- (void)addToStackView:(id)view withCustomSpacingAfter:(double)after context:(id)context
{
  [view addArrangedSubview:{self->_view, context}];

  [(ASCredentialRequestSubPane *)self setCustomSpacingAfter:after];
}

- (void)setCustomSpacingAfter:(double)after
{
  if (self->_customSpacingAfter != after)
  {
    self->_customSpacingAfter = after;
    superview = [(UIView *)self->_view superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [superview setCustomSpacing:self->_view afterView:after];
    }
  }
}

@end