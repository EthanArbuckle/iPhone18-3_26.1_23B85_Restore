void sub_DCC(id a1)
{
  qword_10B08 = objc_opt_new();

  _objc_release_x1();
}

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

id _SPLGradientColor(void *a1)
{
  v4[0] = a1;
  v4[1] = a1;
  v1 = a1;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

uint64_t PointSizeSymbolConstantsMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

void sub_2C0C(id a1)
{
  qword_10B20 = objc_opt_new();

  _objc_release_x1();
}

id sub_6318(uint64_t a1, uint64_t a2)
{
  v2 = [CLKSimpleTextProvider textProviderWithText:a2];
  v3 = +[UIColor systemGrayColor];
  [v2 setTintColor:v3];

  return v2;
}

id sub_6384(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[UIColor systemGrayColor];
  v3 = [v1 createGaugeProviderWithFillValue:v2 tintColor:0.0];

  return v3;
}

id sub_63E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [UIImage imageNamed:v4 inBundle:v5];

  v7 = *(a1 + 32);
  v8 = [UIColor colorWithRed:1.0 green:0.79 blue:0.0 alpha:1.0];
  v9 = [v7 imageProviderWithImage:v6 tintColor:v8];

  return v9;
}

id sub_64D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [UIImage imageNamed:v4 inBundle:v5];

  v7 = [UIColor colorWithRed:1.0 green:0.79 blue:0.0 alpha:1.0];
  v8 = [v6 imageWithTintColor:v7];

  v9 = [*(a1 + 32) fullColorImageProviderWithImage:v8];

  return v9;
}

void sub_6780(id a1)
{
  *&xmmword_10B30 = 0x4028000000000000;
  *(&xmmword_10B30 + 8) = xmmword_9300;
  qword_10B48 = 0x4031000000000000;
  xmmword_10B50 = xmmword_9300;
  qword_10B60 = 0x402E000000000000;
  *algn_10B68 = xmmword_9300;
  *(&xmmword_10B70 + 1) = 0x402A000000000000;
  xmmword_10B80 = xmmword_9310;
  *&xmmword_10B90 = 0x402E000000000000;
  *(&xmmword_10B90 + 8) = xmmword_9300;
  qword_10BA8 = 0x402E000000000000;
  xmmword_10BB0 = xmmword_9300;
  qword_10BC0 = 0x403F000000000000;
  *algn_10BC8 = xmmword_9300;
  *(&xmmword_10BD0 + 1) = 0x4045733326000000;
  xmmword_10BE0 = xmmword_9300;
}