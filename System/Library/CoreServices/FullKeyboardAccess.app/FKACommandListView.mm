@interface FKACommandListView
- (FKACommandListView)initWithCommandList:(id)a3 blurEffect:(id)a4;
@end

@implementation FKACommandListView

- (FKACommandListView)initWithCommandList:(id)a3 blurEffect:(id)a4
{
  v6 = a3;
  v7 = a4;
  v133.receiver = self;
  v133.super_class = FKACommandListView;
  v8 = [(FKACommandListView *)&v133 init];
  if (v8)
  {
    v9 = [UIVisualEffectView alloc];
    v10 = [UIVibrancyEffect effectForBlurEffect:v7 style:0];
    v11 = [v9 initWithEffect:v10];

    if (_UISolariumEnabled())
    {
      [v11 setEffect:0];
    }

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [UIVisualEffectView alloc];
    v114 = v7;
    v13 = [UIVibrancyEffect effectForBlurEffect:v7 style:1];
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
    v17 = [v6 title];
    [v16 setText:v17];

    [v16 setTextAlignment:1];
    [v16 setNumberOfLines:0];
    v120 = v11;
    v18 = [v11 contentView];
    v118 = v16;
    [v18 addSubview:v16];

    v117 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleHeadline];
    v19 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleSubheadline];
    v128 = +[NSMutableArray array];
    v127 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v116 = v6;
    obj = [v6 items];
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
          v25 = [v23 name];
          [v24 setText:v25];

          [v24 setTextAlignment:4];
          [v24 setNumberOfLines:0];
          v26 = objc_opt_new();
          v27 = [v23 keyDescription];
          [v26 setText:v27];

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
          v39 = [v38 preferredContentSizeCategory];
          IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v39);

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
    v46 = [v121 contentView];
    [v46 addSubview:v42];

    v47 = +[NSMutableArray array];
    v48 = [v120 contentView];
    v8 = v113;
    v49 = [NSLayoutConstraint ax_constraintsToMakeView:v113 sameDimensionsAsView:v48];
    v126 = v47;
    [v47 addObjectsFromArray:v49];

    v50 = [v121 contentView];
    v51 = [NSLayoutConstraint ax_constraintsToMakeView:v113 sameDimensionsAsView:v50];
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
    v111 = [(FKACommandListView *)v113 topAnchor];
    v109 = [obja constraintEqualToAnchor:v111 constant:v55];
    v135[0] = v109;
    v107 = [v118 leadingAnchor];
    v105 = [(FKACommandListView *)v113 leadingAnchor];
    v103 = [v107 constraintEqualToAnchor:v105];
    v135[1] = v103;
    v101 = [v118 trailingAnchor];
    v100 = [(FKACommandListView *)v113 trailingAnchor];
    v99 = [v101 constraintEqualToAnchor:v100];
    v135[2] = v99;
    v98 = [v42 firstBaselineAnchor];
    v97 = [v118 lastBaselineAnchor];
    v60 = [v98 constraintEqualToAnchor:v97 constant:v59];
    v135[3] = v60;
    v61 = [v42 leadingAnchor];
    v62 = [(FKACommandListView *)v113 leadingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:40.0];
    v135[4] = v63;
    v64 = [v42 trailingAnchor];
    v65 = [(FKACommandListView *)v113 trailingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65 constant:-40.0];
    v135[5] = v66;
    v67 = [NSArray arrayWithObjects:v135 count:6];
    [v126 addObjectsFromArray:v67];

    v6 = v116;
    v68 = [v116 footerText];
    v69 = [v68 length];

    if (v69)
    {
      v70 = objc_opt_new();
      [v70 setTranslatesAutoresizingMaskIntoConstraints:0];
      v71 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
      [v70 setFont:v71];

      [v70 setTextAlignment:1];
      v72 = [v116 footerText];
      [v70 setText:v72];

      [v70 setNumberOfLines:0];
      if (_UISolariumEnabled())
      {
        v73 = +[UIColor secondaryLabelColor];
        [v70 setTextColor:v73];
      }

      v74 = [v121 contentView];
      [v74 addSubview:v70];

      [v115 scaledValueForValue:27.0];
      v76 = v75;
      v77 = [v70 font];
      [v77 capHeight];
      v79 = v76 + v78;

      v80 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleFootnote];
      [v80 scaledValueForValue:27.0];
      v82 = v81;

      v112 = [v70 leadingAnchor];
      v108 = [(FKACommandListView *)v113 leadingAnchor];
      objb = [v112 constraintEqualToAnchor:v108];
      v134[0] = objb;
      v110 = [v70 trailingAnchor];
      v106 = [(FKACommandListView *)v113 trailingAnchor];
      v104 = [v110 constraintEqualToAnchor:v106];
      v134[1] = v104;
      v102 = [v70 firstBaselineAnchor];
      v83 = [v42 lastBaselineAnchor];
      v84 = [v102 constraintEqualToAnchor:v83 constant:v79];
      v134[2] = v84;
      v85 = [(FKACommandListView *)v113 bottomAnchor];
      v86 = [v70 lastBaselineAnchor];
      v87 = [v85 constraintEqualToAnchor:v86 constant:v82];
      v134[3] = v87;
      v88 = [NSArray arrayWithObjects:v134 count:4];
      v89 = v126;
      [v126 addObjectsFromArray:v88];

      v90 = v121;
      v91 = v108;

      v92 = v112;
      v93 = v115;

      v6 = v116;
    }

    else
    {
      v93 = v115;
      [v115 scaledValueForValue:27.0];
      v95 = v94;
      v70 = [v42 lastBaselineAnchor];
      v92 = [(FKACommandListView *)v113 bottomAnchor];
      v91 = [v70 constraintEqualToAnchor:v92 constant:-v95];
      v89 = v126;
      [v126 addObject:v91];
      v90 = v121;
    }

    [NSLayoutConstraint activateConstraints:v89];
    v7 = v114;
  }

  return v8;
}

@end