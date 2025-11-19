@interface SiriAlternativeParaphraseSuggestionResultView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriAlternativeParaphraseSuggestionResultView)initWithAlternativeSuggestionResult:(id)a3;
- (UIEdgeInsets)edgeInsets;
- (void)updateConstraints;
@end

@implementation SiriAlternativeParaphraseSuggestionResultView

- (SiriAlternativeParaphraseSuggestionResultView)initWithAlternativeSuggestionResult:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SiriAlternativeParaphraseSuggestionResultView;
  v5 = [(SiriAlternativeParaphraseSuggestionResultView *)&v25 init];
  if (v5)
  {
    v6 = [v4 command];

    if (v6)
    {
      v7 = [v4 command];
      v26 = v7;
      v8 = [NSArray arrayWithObjects:&v26 count:1];
      [(SiriAlternativeParaphraseSuggestionResultView *)v5 setCommands:v8];
    }

    else
    {
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_C344(v4, v9);
      }

      [(SiriAlternativeParaphraseSuggestionResultView *)v5 setCommands:&__NSArray0__struct];
    }

    v10 = [v4 displayText];
    v11 = +[NSCharacterSet punctuationCharacterSet];
    v12 = [v10 stringByTrimmingCharactersInSet:v11];
    [(SiriAlternativeParaphraseSuggestionResultView *)v5 setResponseText:v12];

    v13 = objc_alloc_init(UIView);
    containerView = v5->_containerView;
    v5->_containerView = v13;

    [(SiriAlternativeParaphraseSuggestionResultView *)v5 addSubview:v5->_containerView];
    [(UIView *)v5->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v4 displayText];

    if (v15)
    {
      v16 = +[SiriSharedUIContentLabel label];
      displayTextLabel = v5->_displayTextLabel;
      v5->_displayTextLabel = v16;

      [(UILabel *)v5->_displayTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v18 = v5->_displayTextLabel;
      v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [(UILabel *)v18 setFont:v19];

      v20 = v5->_displayTextLabel;
      v21 = [v4 displayText];
      [(UILabel *)v20 setText:v21];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UILabel *)self->_displayTextLabel sizeThatFits:a3.width, 1.79769313e308];
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