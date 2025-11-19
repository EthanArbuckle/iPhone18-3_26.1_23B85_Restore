@interface OBBoldSubtitleController
- (OBBoldSubtitleController)initWithTitle:(id)a3 subtitle:(id)a4 detailText:(id)a5 icon:(id)a6;
- (OBBoldSubtitleController)initWithTitle:(id)a3 subtitle:(id)a4 detailText:(id)a5 symbolName:(id)a6;
- (void)initContentViewWithSubtitle:(id)a3 detailText:(id)a4;
@end

@implementation OBBoldSubtitleController

- (OBBoldSubtitleController)initWithTitle:(id)a3 subtitle:(id)a4 detailText:(id)a5 icon:(id)a6
{
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OBBoldSubtitleController;
  v12 = [(OBBoldSubtitleController *)&v15 initWithTitle:a3 detailText:0 icon:a6];
  v13 = v12;
  if (v12)
  {
    [(OBBoldSubtitleController *)v12 initContentViewWithSubtitle:v10 detailText:v11];
  }

  return v13;
}

- (OBBoldSubtitleController)initWithTitle:(id)a3 subtitle:(id)a4 detailText:(id)a5 symbolName:(id)a6
{
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OBBoldSubtitleController;
  v12 = [(OBBoldSubtitleController *)&v15 initWithTitle:a3 detailText:0 symbolName:a6];
  v13 = v12;
  if (v12)
  {
    [(OBBoldSubtitleController *)v12 initContentViewWithSubtitle:v10 detailText:v11];
  }

  return v13;
}

- (void)initContentViewWithSubtitle:(id)a3 detailText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(OBBoldSubtitleController *)self navigationItem];
  [v8 setHidesBackButton:1];

  [(OBBoldSubtitleController *)self setScrollingDisabled:0];
  v9 = [(OBBoldSubtitleController *)self contentView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_alloc_init(UILabel);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (_UISolariumEnabled())
  {
    v11 = UIFontTextStyleTitle2;
  }

  else
  {
    v11 = UIFontTextStyleBody;
  }

  v12 = [UIFont preferredFontForTextStyle:v11];
  [v10 setFont:v12];

  [v10 setText:v7];
  if (_UISolariumEnabled())
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v13 = ;
  [v10 setTextColor:v13];

  [v10 setNumberOfLines:0];
  if (_UISolariumEnabled())
  {
    v14 = 4;
  }

  else
  {
    v14 = 1;
  }

  [v10 setTextAlignment:v14];
  [v9 addSubview:v10];
  v15 = +[NSMutableArray array];
  v51 = v6;
  v52 = v15;
  if (v6 && [v6 length])
  {
    v16 = objc_alloc_init(UILabel);
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (_UISolariumEnabled())
    {
      v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
      [v16 setFont:v17];
    }

    else
    {
      v17 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
      v21 = [v17 fontDescriptorWithSymbolicTraits:2];
      v22 = [UIFont fontWithDescriptor:v21 size:0.0];
      [v16 setFont:v22];
    }

    [v16 setText:v6];
    [v16 setNumberOfLines:0];
    if (_UISolariumEnabled())
    {
      v23 = 4;
    }

    else
    {
      v23 = 1;
    }

    [v16 setTextAlignment:v23];
    [v9 addSubview:v16];
    v49 = [v16 topAnchor];
    v46 = [v9 topAnchor];
    v45 = [v49 constraintEqualToAnchor:v46];
    v54[0] = v45;
    v44 = [v16 leadingAnchor];
    v43 = [v9 leadingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v54[1] = v42;
    v24 = [v16 trailingAnchor];
    v25 = [v9 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v54[2] = v26;
    v27 = [v10 topAnchor];
    [v16 bottomAnchor];
    v29 = v28 = v9;
    v30 = [v27 constraintEqualToAnchor:v29 constant:16.0];
    v54[3] = v30;
    v31 = [NSArray arrayWithObjects:v54 count:4];
    [v52 addObjectsFromArray:v31];

    v9 = v28;
  }

  else
  {
    v18 = [v10 topAnchor];
    v19 = [v9 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v15 addObject:v20];
  }

  v47 = v9;
  v50 = [v10 leadingAnchor];
  v32 = [v9 leadingAnchor];
  v33 = [v50 constraintEqualToAnchor:v32];
  v53[0] = v33;
  v34 = [v10 trailingAnchor];
  [v9 trailingAnchor];
  v35 = v10;
  v36 = v48 = v10;
  v37 = [v34 constraintEqualToAnchor:v36];
  v53[1] = v37;
  v38 = [v35 bottomAnchor];
  v39 = [v9 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v53[2] = v40;
  v41 = [NSArray arrayWithObjects:v53 count:3];
  [v52 addObjectsFromArray:v41];

  [NSLayoutConstraint activateConstraints:v52];
}

@end