@interface SiriAlternativeParaphraseSuggestionResultView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriAlternativeParaphraseSuggestionResultView)initWithAlternativeSuggestionResult:(id)result;
- (UIEdgeInsets)edgeInsets;
- (void)updateConstraints;
@end

@implementation SiriAlternativeParaphraseSuggestionResultView

- (SiriAlternativeParaphraseSuggestionResultView)initWithAlternativeSuggestionResult:(id)result
{
  resultCopy = result;
  v25.receiver = self;
  v25.super_class = SiriAlternativeParaphraseSuggestionResultView;
  v5 = [(SiriAlternativeParaphraseSuggestionResultView *)&v25 init];
  if (v5)
  {
    command = [resultCopy command];

    if (command)
    {
      command2 = [resultCopy command];
      v26 = command2;
      v8 = [NSArray arrayWithObjects:&v26 count:1];
      [(SiriAlternativeParaphraseSuggestionResultView *)v5 setCommands:v8];
    }

    else
    {
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_C344(resultCopy, v9);
      }

      [(SiriAlternativeParaphraseSuggestionResultView *)v5 setCommands:&__NSArray0__struct];
    }

    displayText = [resultCopy displayText];
    v11 = +[NSCharacterSet punctuationCharacterSet];
    v12 = [displayText stringByTrimmingCharactersInSet:v11];
    [(SiriAlternativeParaphraseSuggestionResultView *)v5 setResponseText:v12];

    v13 = objc_alloc_init(UIView);
    containerView = v5->_containerView;
    v5->_containerView = v13;

    [(SiriAlternativeParaphraseSuggestionResultView *)v5 addSubview:v5->_containerView];
    [(UIView *)v5->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    displayText2 = [resultCopy displayText];

    if (displayText2)
    {
      v16 = +[SiriSharedUIContentLabel label];
      displayTextLabel = v5->_displayTextLabel;
      v5->_displayTextLabel = v16;

      [(UILabel *)v5->_displayTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v18 = v5->_displayTextLabel;
      v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [(UILabel *)v18 setFont:v19];

      v20 = v5->_displayTextLabel;
      displayText3 = [resultCopy displayText];
      [(UILabel *)v20 setText:displayText3];

      v22 = v5->_displayTextLabel;
      v23 = +[UIColor siriui_textColor];
      [(UILabel *)v22 setTextColor:v23];

      [(UIView *)v5->_containerView addSubview:v5->_displayTextLabel];
    }

    [(SiriAlternativeParaphraseSuggestionResultView *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (UIEdgeInsets)edgeInsets
{
  v2 = SiriUIPlatterStyle[32];
  v3 = SiriUIPlatterStyle[34];
  v4 = 0.0;
  v5 = 0.0;
  result.right = v3;
  result.bottom = v5;
  result.left = v2;
  result.top = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UILabel *)self->_displayTextLabel sizeThatFits:fits.width, 1.79769313e308];
  v5 = v4 + 24.0;
  v6 = SiriUIPlatterStyle[26];
  if (v5 >= v6)
  {
    v6 = v5;
  }

  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)updateConstraints
{
  v13.receiver = self;
  v13.super_class = SiriAlternativeParaphraseSuggestionResultView;
  [(SiriAlternativeParaphraseSuggestionResultView *)&v13 updateConstraints];
  if (!self->_hasSetUpConstraints)
  {
    v3 = _NSDictionaryOfVariableBindings(@"_containerView", self->_containerView, 0);
    v4 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_containerView]|" options:0 metrics:0 views:v3];
    [(SiriAlternativeParaphraseSuggestionResultView *)self addConstraints:v4];

    v5 = _NSDictionaryOfVariableBindings(@"_containerView", self->_containerView, 0);
    v6 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_containerView]|" options:0 metrics:0 views:v5];
    [(SiriAlternativeParaphraseSuggestionResultView *)self addConstraints:v6];

    displayTextLabel = self->_displayTextLabel;
    if (displayTextLabel)
    {
      containerView = self->_containerView;
      v9 = _NSDictionaryOfVariableBindings(@"_displayTextLabel", displayTextLabel, 0);
      v10 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_displayTextLabel]|" options:0 metrics:0 views:v9];
      [(UIView *)containerView addConstraints:v10];

      v11 = self->_displayTextLabel;
      if (v11)
      {
        v12 = [NSLayoutConstraint constraintWithItem:v11 attribute:10 relatedBy:0 toItem:self->_containerView attribute:10 multiplier:1.0 constant:0.0];
        [(SiriAlternativeParaphraseSuggestionResultView *)self addConstraint:v12];
      }
    }

    self->_hasSetUpConstraints = 1;
  }
}

@end