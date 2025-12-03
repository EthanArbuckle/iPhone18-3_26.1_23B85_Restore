@interface FKACommandListView
- (FKACommandListView)initWithCommandList:(id)list blurEffect:(id)effect;
@end

@implementation FKACommandListView

- (FKACommandListView)initWithCommandList:(id)list blurEffect:(id)effect
{
  listCopy = list;
  effectCopy = effect;
  v133.receiver = self;
  v133.super_class = FKACommandListView;
  v8 = [(FKACommandListView *)&v133 init];
  if (v8)
  {
    v9 = [UIVisualEffectView alloc];
    v10 = [UIVibrancyEffect effectForBlurEffect:effectCopy style:0];
    v11 = [v9 initWithEffect:v10];

    if (_UISolariumEnabled())
    {
      [v11 setEffect:0];
    }

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [UIVisualEffectView alloc];
    v114 = effectCopy;
    v13 = [UIVibrancyEffect effectForBlurEffect:effectCopy style:1];
    v14 = [v12 initWithEffect:v13];

    if (_UISolariumEnabled())
    {
      [v14 setEffect:0];
    }

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FKACommandListView *)v8 addSubview:v11];
    v113 = v8;
    v121 = v14;
    [(FKACommandListView *)v8 addSubview:v14];
    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    v16 = objc_opt_new();
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v119 = v15;
    [v16 setFont:v15];
    title = [listCopy title];
    [v16 setText:title];

    [v16 setTextAlignment:1];
    [v16 setNumberOfLines:0];
    v120 = v11;
    contentView = [v11 contentView];
    v118 = v16;
    [contentView addSubview:v16];

    v117 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleHeadline];
    v19 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleSubheadline];
    v128 = +[NSMutableArray array];
    v127 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v116 = listCopy;
    obj = [listCopy items];
    v20 = [obj countByEnumeratingWithState:&v129 objects:v137 count:16];
    if (v20)
    {
      v21 = v20;
      v125 = *v130;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v130 != v125)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v129 + 1) + 8 * i);
          v24 = objc_opt_new();
          [v24 setFont:v127];
          name = [v23 name];
          [v24 setText:name];

          [v24 setTextAlignment:4];
          [v24 setNumberOfLines:0];
          v26 = objc_opt_new();
          keyDescription = [v23 keyDescription];
          [v26 setText:keyDescription];

          v28 = [UIFont systemFontOfSize:15.0 weight:UIFontWeightSemibold];
          v29 = v19;
          v30 = [v19 scaledFontForFont:v28];
          [v26 setFont:v30];

          if (_UISolariumEnabled())
          {
            v32 = +[UIColor secondaryLabelColor];
            [v24 setTextColor:v32];

            v33 = +[UIColor secondaryLabelColor];
            [v26 setTextColor:v33];
          }

          LODWORD(v31) = 1148829696;
          [v26 setContentCompressionResistancePriority:0 forAxis:v31];
          LODWORD(v34) = 1148813312;
          [v24 setContentCompressionResistancePriority:0 forAxis:v34];
          v35 = [FKACommandListItemView alloc];
          v136[0] = v24;
          v136[1] = v26;
          v36 = [NSArray arrayWithObjects:v136 count:2];
          v37 = [(FKACommandListItemView *)v35 initWithArrangedSubviews:v36];

          v38 = +[UIApplication sharedApplication];
          preferredContentSizeCategory = [v38 preferredContentSizeCategory];
          IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

          if (IsAccessibilityCategory)
          {
            [(FKACommandListItemView *)v37 setAxis:1];
            [v26 setTextAlignment:4];
          }

          else
          {
            [(FKACommandListItemView *)v37 setAxis:0];
            v41 = +[UIApplication sharedApplication];
            [v26 setTextAlignment:{2 * (objc_msgSend(v41, "userInterfaceLayoutDirection") != 1)}];
          }

          v19 = v29;
          [(FKACommandListItemView *)v37 setDistribution:0];
          [v128 addObject:v37];
        }

        v21 = [obj countByEnumeratingWithState:&v129 objects:v137 count:16];
      }

      while (v21);
    }

    v115 = v19;

    v42 = [[UIStackView alloc] initWithArrangedSubviews:v128];
    [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v42 setAxis:1];
    [v42 setBaselineRelativeArrangement:1];
    [v19 scaledValueForValue:18.0];
    v44 = v43;
    [v127 capHeight];
    [v42 setSpacing:v44 + v45];
    contentView2 = [v121 contentView];
    [contentView2 addSubview:v42];

    v47 = +[NSMutableArray array];
    contentView3 = [v120 contentView];
    v8 = v113;
    v49 = [NSLayoutConstraint ax_constraintsToMakeView:v113 sameDimensionsAsView:contentView3];
    v126 = v47;
    [v47 addObjectsFromArray:v49];

    contentView4 = [v121 contentView];
    v51 = [NSLayoutConstraint ax_constraintsToMakeView:v113 sameDimensionsAsView:contentView4];
    [v47 addObjectsFromArray:v51];

    [v117 scaledValueForValue:27.0];
    v53 = v52;
    [v119 capHeight];
    v55 = v53 + v54;
    [v19 scaledValueForValue:27.0];
    v57 = v56;
    [v127 capHeight];
    v59 = v57 + v58;
    obja = [v118 firstBaselineAnchor];
    topAnchor = [(FKACommandListView *)v113 topAnchor];
    v109 = [obja constraintEqualToAnchor:topAnchor constant:v55];
    v135[0] = v109;
    leadingAnchor = [v118 leadingAnchor];
    leadingAnchor2 = [(FKACommandListView *)v113 leadingAnchor];
    v103 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v135[1] = v103;
    trailingAnchor = [v118 trailingAnchor];
    trailingAnchor2 = [(FKACommandListView *)v113 trailingAnchor];
    v99 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v135[2] = v99;
    firstBaselineAnchor = [v42 firstBaselineAnchor];
    lastBaselineAnchor = [v118 lastBaselineAnchor];
    v60 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:v59];
    v135[3] = v60;
    leadingAnchor3 = [v42 leadingAnchor];
    leadingAnchor4 = [(FKACommandListView *)v113 leadingAnchor];
    v63 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:40.0];
    v135[4] = v63;
    trailingAnchor3 = [v42 trailingAnchor];
    trailingAnchor4 = [(FKACommandListView *)v113 trailingAnchor];
    v66 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-40.0];
    v135[5] = v66;
    v67 = [NSArray arrayWithObjects:v135 count:6];
    [v126 addObjectsFromArray:v67];

    listCopy = v116;
    footerText = [v116 footerText];
    v69 = [footerText length];

    if (v69)
    {
      lastBaselineAnchor4 = objc_opt_new();
      [lastBaselineAnchor4 setTranslatesAutoresizingMaskIntoConstraints:0];
      v71 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
      [lastBaselineAnchor4 setFont:v71];

      [lastBaselineAnchor4 setTextAlignment:1];
      footerText2 = [v116 footerText];
      [lastBaselineAnchor4 setText:footerText2];

      [lastBaselineAnchor4 setNumberOfLines:0];
      if (_UISolariumEnabled())
      {
        v73 = +[UIColor secondaryLabelColor];
        [lastBaselineAnchor4 setTextColor:v73];
      }

      contentView5 = [v121 contentView];
      [contentView5 addSubview:lastBaselineAnchor4];

      [v115 scaledValueForValue:27.0];
      v76 = v75;
      font = [lastBaselineAnchor4 font];
      [font capHeight];
      v79 = v76 + v78;

      v80 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleFootnote];
      [v80 scaledValueForValue:27.0];
      v82 = v81;

      leadingAnchor5 = [lastBaselineAnchor4 leadingAnchor];
      leadingAnchor6 = [(FKACommandListView *)v113 leadingAnchor];
      objb = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v134[0] = objb;
      trailingAnchor5 = [lastBaselineAnchor4 trailingAnchor];
      trailingAnchor6 = [(FKACommandListView *)v113 trailingAnchor];
      v104 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v134[1] = v104;
      firstBaselineAnchor2 = [lastBaselineAnchor4 firstBaselineAnchor];
      lastBaselineAnchor2 = [v42 lastBaselineAnchor];
      v84 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor2 constant:v79];
      v134[2] = v84;
      bottomAnchor = [(FKACommandListView *)v113 bottomAnchor];
      lastBaselineAnchor3 = [lastBaselineAnchor4 lastBaselineAnchor];
      v87 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor3 constant:v82];
      v134[3] = v87;
      v88 = [NSArray arrayWithObjects:v134 count:4];
      v89 = v126;
      [v126 addObjectsFromArray:v88];

      v90 = v121;
      v91 = leadingAnchor6;

      bottomAnchor2 = leadingAnchor5;
      v93 = v115;

      listCopy = v116;
    }

    else
    {
      v93 = v115;
      [v115 scaledValueForValue:27.0];
      v95 = v94;
      lastBaselineAnchor4 = [v42 lastBaselineAnchor];
      bottomAnchor2 = [(FKACommandListView *)v113 bottomAnchor];
      v91 = [lastBaselineAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:-v95];
      v89 = v126;
      [v126 addObject:v91];
      v90 = v121;
    }

    [NSLayoutConstraint activateConstraints:v89];
    effectCopy = v114;
  }

  return v8;
}

@end