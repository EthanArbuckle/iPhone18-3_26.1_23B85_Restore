id colorForThreshold(uint64_t a1)
{
  v2 = +[UIColor systemGreenColor];
  if (a1 == 100 || a1 == 80)
  {
    v3 = +[UIColor systemYellowColor];

    v2 = v3;
  }

  if (Dose_HCEDThresholdLevelDimmed == a1)
  {
    v4 = +[UIColor systemDarkGrayColor];

    v2 = v4;
  }

  return v2;
}

id attributedStringWithImage(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v13 = objc_alloc_init(NSMutableAttributedString);
  v14 = [[NSMutableAttributedString alloc] initWithString:v10];

  v15 = objc_alloc_init(NSTextAttachment);
  v16 = [UIImageSymbolConfiguration configurationWithTextStyle:v9 scale:2];
  v17 = [UIImage systemImageNamed:v12 withConfiguration:v16];

  v18 = [v17 imageWithTintColor:v11];

  v19 = [v18 imageWithRenderingMode:1];

  v20 = [UIFont _preferredFontForTextStyle:v9 variant:a5];

  [v20 capHeight];
  v22 = v21;
  [v19 size];
  v24 = v22 - v23;
  v25 = (roundf(v24) * 0.5);
  [v19 size];
  v27 = v26;
  [v19 size];
  [v15 setBounds:{0.0, v25, v27, v28}];
  [v15 setImage:v19];
  v29 = [NSAttributedString attributedStringWithAttachment:v15];
  [v13 appendAttributedString:v29];
  v30 = [[NSMutableAttributedString alloc] initWithString:@" "];
  [v13 appendAttributedString:v30];

  [v13 appendAttributedString:v14];

  return v13;
}

void sub_2F38(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = [*(a1 + 32) parentViewController];
    v2 = [v4 navigationController];
    v3 = [v2 popViewControllerAnimated:1];
  }
}