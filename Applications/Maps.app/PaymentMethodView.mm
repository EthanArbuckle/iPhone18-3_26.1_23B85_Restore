@interface PaymentMethodView
- (PaymentMethodView)init;
@end

@implementation PaymentMethodView

- (PaymentMethodView)init
{
  v58.receiver = self;
  v58.super_class = PaymentMethodView;
  v53 = [(PaymentMethodView *)&v58 init];
  if (v53)
  {
    v2 = v53;
    layoutMarginsGuide = [(PaymentMethodView *)v53 layoutMarginsGuide];
    v4 = +[NSMutableArray array];
    v5 = objc_alloc_init(UIImageView);
    paymentMethodImageView = v53->_paymentMethodImageView;
    v53->_paymentMethodImageView = v5;

    [(UIImageView *)v53->_paymentMethodImageView setContentMode:1];
    [(UIImageView *)v53->_paymentMethodImageView setClipsToBounds:1];
    [(UIImageView *)v53->_paymentMethodImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PaymentMethodView *)v2 addSubview:v2->_paymentMethodImageView];
    widthAnchor = [(UIImageView *)v53->_paymentMethodImageView widthAnchor];
    v8 = [widthAnchor constraintEqualToConstant:40.0];
    [v4 addObject:v8];

    leadingAnchor = [(UIImageView *)v53->_paymentMethodImageView leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v4 addObject:v11];

    centerYAnchor = [(UIImageView *)v53->_paymentMethodImageView centerYAnchor];
    centerYAnchor2 = [(PaymentMethodView *)v53 centerYAnchor];
    v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v4 addObject:v14];

    LODWORD(v15) = 1148846080;
    [(UIImageView *)v53->_paymentMethodImageView setContentCompressionResistancePriority:0 forAxis:v15];
    v16 = objc_alloc_init(UIStackView);
    paymentLabelView = v53->_paymentLabelView;
    v53->_paymentLabelView = v16;

    [(UIStackView *)v53->_paymentLabelView setAxis:1];
    [(UIStackView *)v53->_paymentLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PaymentMethodView *)v2 addSubview:v2->_paymentLabelView];
    LODWORD(v18) = 1148846080;
    [(UIStackView *)v53->_paymentLabelView setContentHuggingPriority:1 forAxis:v18];
    LODWORD(v19) = 1148846080;
    [(UIStackView *)v53->_paymentLabelView setContentHuggingPriority:0 forAxis:v19];
    leadingAnchor3 = [(UIStackView *)v53->_paymentLabelView leadingAnchor];
    trailingAnchor = [(UIImageView *)v53->_paymentMethodImageView trailingAnchor];
    v22 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:7.0];
    [v4 addObject:v22];

    trailingAnchor2 = [(UIStackView *)v53->_paymentLabelView trailingAnchor];
    v50 = layoutMarginsGuide;
    trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
    v25 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [v4 addObject:v25];

    centerYAnchor3 = [(UIStackView *)v53->_paymentLabelView centerYAnchor];
    centerYAnchor4 = [(PaymentMethodView *)v53 centerYAnchor];
    v28 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v4 addObject:v28];

    v29 = objc_alloc_init(UILabel);
    paymentTitleLabel = v53->_paymentTitleLabel;
    v53->_paymentTitleLabel = v29;

    [(UILabel *)v53->_paymentTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = +[UIColor labelColor];
    [(UILabel *)v53->_paymentTitleLabel setTextColor:v31];

    [DynamicTypeWizard autorefreshLabel:v53->_paymentTitleLabel withFontProvider:&stru_10165D8C8];
    [(UIStackView *)v2->_paymentLabelView addArrangedSubview:v2->_paymentTitleLabel];
    v32 = objc_alloc_init(UILabel);
    paymentSubtitleLabel = v53->_paymentSubtitleLabel;
    v53->_paymentSubtitleLabel = v32;

    [(UILabel *)v53->_paymentSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [DynamicTypeWizard autorefreshLabel:v53->_paymentSubtitleLabel withFontProvider:&stru_10165D988];
    v34 = +[UIColor secondaryLabelColor];
    [(UILabel *)v53->_paymentSubtitleLabel setTextColor:v34];

    [(UIStackView *)v2->_paymentLabelView addArrangedSubview:v2->_paymentSubtitleLabel];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v59[0] = v53->_paymentTitleLabel;
    v59[1] = v53->_paymentSubtitleLabel;
    obj = [NSArray arrayWithObjects:v59 count:2];
    v35 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v35)
    {
      v37 = v35;
      v52 = *v55;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v55 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v54 + 1) + 8 * i);
          LODWORD(v36) = 1148846080;
          [v39 setContentCompressionResistancePriority:1 forAxis:v36];
          LODWORD(v40) = 1148846080;
          [v39 setContentHuggingPriority:1 forAxis:v40];
          trailingAnchor4 = [v39 trailingAnchor];
          layoutMarginsGuide2 = [(UIStackView *)v53->_paymentLabelView layoutMarginsGuide];
          trailingAnchor5 = [layoutMarginsGuide2 trailingAnchor];
          v44 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
          [v4 addObject:v44];

          leadingAnchor4 = [v39 leadingAnchor];
          layoutMarginsGuide3 = [(UIStackView *)v53->_paymentLabelView layoutMarginsGuide];
          leadingAnchor5 = [layoutMarginsGuide3 leadingAnchor];
          v48 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
          [v4 addObject:v48];
        }

        v37 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v37);
    }

    [NSLayoutConstraint activateConstraints:v4];
  }

  return v53;
}

@end