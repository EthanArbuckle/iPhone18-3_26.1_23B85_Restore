@interface PHUIConfiguration
+ (BOOL)usesMiddleCenteringView;
+ (double)intrinsicWidthForParticipantsView;
+ (double)yOffsetMultiplierForParticipantsView;
+ (id)multipleCallParticipantLabelFont;
+ (id)multipleCallParticipantLabelFontMiniWindow;
+ (id)multipleCallStatusLabelFont;
+ (id)multipleCallStatusLabelFontMiniWindow;
+ (id)singleCallFontWithSize:(unint64_t)a3;
+ (id)singleCallLargeStatusLabelFont;
+ (id)singleCallParticipantLabelAmbientFont;
+ (id)singleCallParticipantLabelBannerFontForText:(id)a3 availableWidth:(double)a4;
+ (id)singleCallParticipantLabelBannerMaximumFont;
+ (id)singleCallParticipantLabelFontForCallDisplayStyle:(int64_t)a3 usesLargeFormatUI:(BOOL *)a4;
+ (id)singleCallParticipantLabelFullscreenFontUsesLargeFormatUI:(BOOL *)a3;
+ (id)singleCallSmallStatusLabelFont;
+ (id)singleCallSmallerStatusLabelFont;
+ (id)singleCallStatusLabelFont;
+ (id)singleCallStatusLabelFontForCallDisplayStyle:(int64_t)a3;
+ (id)statusLabelFontColorForCallDisplayStyle:(int64_t)a3;
+ (int64_t)yOffsetLayoutAttributeForParticipantsView;
+ (unint64_t)inCallParticipantsSpacing;
+ (unint64_t)yTopMarginSpacingForMultiParticipantsView;
@end

@implementation PHUIConfiguration

+ (BOOL)usesMiddleCenteringView
{
  if (qword_1003B0C30 != -1)
  {
    sub_100253FBC();
  }

  return byte_1003B0C28;
}

+ (double)yOffsetMultiplierForParticipantsView
{
  if (qword_1003B0B60 != -1)
  {
    sub_100253ECC();
  }

  return *&qword_1003A7B20;
}

+ (unint64_t)yTopMarginSpacingForMultiParticipantsView
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E0C8;
  block[3] = &unk_1003567B0;
  block[4] = a1;
  if (qword_1003B0B70 != -1)
  {
    dispatch_once(&qword_1003B0B70, block);
  }

  return qword_1003B0B68;
}

+ (int64_t)yOffsetLayoutAttributeForParticipantsView
{
  if (qword_1003B0B80 != -1)
  {
    sub_100253EE0();
  }

  if (byte_1003B0B78)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

+ (double)intrinsicWidthForParticipantsView
{
  if (qword_1003B0B90 != -1)
  {
    sub_100253EF4();
  }

  return *&qword_1003B0B88;
}

+ (unint64_t)inCallParticipantsSpacing
{
  if (qword_1003B0BA0 != -1)
  {
    sub_100253F08();
  }

  if (byte_1003B0B98)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (id)singleCallParticipantLabelFontForCallDisplayStyle:(int64_t)a3 usesLargeFormatUI:(BOOL *)a4
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a1 = [PHUIConfiguration singleCallParticipantLabelMiniWindowFont:1];
      }
    }

    else
    {
      a1 = [PHUIConfiguration singleCallParticipantLabelBannerMaximumFont:0];
    }
  }

  else
  {
    if (a3 == 2)
    {
LABEL_5:
      a1 = [PHUIConfiguration singleCallParticipantLabelFullscreenFontUsesLargeFormatUI:a4];
      goto LABEL_11;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    a1 = [PHUIConfiguration singleCallParticipantLabelAmbientFont:3];
  }

LABEL_11:

  return a1;
}

+ (id)singleCallParticipantLabelFullscreenFontUsesLargeFormatUI:(BOOL *)a3
{
  v4 = +[CNKFeatures sharedInstance];
  v5 = [v4 isHeroImageEnabled];

  if (a3 || v5)
  {
    v6 = [UIFont phPreferredBoldFontForTextStyle:UIFontTextStyleLargeTitle];
  }

  else
  {
    v6 = [UIFont phPreferredFontForTextStyle:UIFontTextStyleLargeTitle];
  }

  return v6;
}

+ (id)singleCallParticipantLabelAmbientFont
{
  v2 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:UIFontTextStyleLargeTitle addingSymbolicTraits:2];
  v3 = [UIFont fontWithDescriptor:v2 size:85.0];

  return v3;
}

+ (id)singleCallParticipantLabelBannerFontForText:(id)a3 availableWidth:(double)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5 || ((v7 = [v5 length], a4 != 0.0) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v9 = +[PHUIConfiguration singleCallParticipantLabelBannerMaximumFont];
  }

  else
  {
    v10 = +[PHUIConfiguration singleCallParticipantLabelBannerMaximumFont];
    [v10 pointSize];
    v12 = v11;

    v13 = +[PHUIConfiguration singleCallParticipantLabelBannerMinimumFont];
    [v13 pointSize];
    v15 = v14;

    v16 = 0;
    if (v12 <= v15)
    {
LABEL_11:
      v21 = +[PHUIConfiguration singleCallParticipantLabelBannerMinimumFont];
    }

    else
    {
      while (1)
      {
        v17 = v16;
        v16 = [PHUIConfiguration singleCallParticipantLabelFontForBannerWithPointSize:v12];

        v23 = NSFontAttributeName;
        v24 = v16;
        v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v6 sizeWithAttributes:v18];
        v20 = v19;

        if (v20 <= a4)
        {
          break;
        }

        v12 = v12 + -0.5;
        if (v12 <= v15)
        {
          goto LABEL_11;
        }
      }

      v21 = v16;
      v16 = v21;
    }

    v9 = v21;
  }

  return v9;
}

+ (id)singleCallParticipantLabelBannerMaximumFont
{
  v2 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:UIFontTextStyleTitle2];
  [v2 pointSize];
  v3 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];

  return v3;
}

+ (id)statusLabelFontColorForCallDisplayStyle:(int64_t)a3
{
  if (a3 <= 4)
  {
    a1 = +[UIColor secondaryLabelColor];
  }

  return a1;
}

+ (id)multipleCallParticipantLabelFont
{
  if (qword_1003B0BB0 != -1)
  {
    sub_100253F1C();
  }

  v3 = qword_1003B0BA8;

  return v3;
}

+ (id)multipleCallParticipantLabelFontMiniWindow
{
  if (qword_1003B0BC0 != -1)
  {
    sub_100253F30();
  }

  v3 = qword_1003B0BB8;

  return v3;
}

+ (id)singleCallSmallerStatusLabelFont
{
  if (qword_1003B0BD0 != -1)
  {
    sub_100253F44();
  }

  v3 = qword_1003B0BC8;

  return v3;
}

+ (id)singleCallSmallStatusLabelFont
{
  if (qword_1003B0BE0 != -1)
  {
    sub_100253F58();
  }

  v3 = qword_1003B0BD8;

  return v3;
}

+ (id)singleCallLargeStatusLabelFont
{
  if (qword_1003B0BF0 != -1)
  {
    sub_100253F6C();
  }

  v3 = qword_1003B0BE8;

  return v3;
}

+ (id)singleCallStatusLabelFontForCallDisplayStyle:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        v4 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:UIFontTextStyleTitle2];
        [v4 pointSize];
        goto LABEL_10;
      }

      if (a3 != 4)
      {
        goto LABEL_13;
      }
    }

    v4 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:UIFontTextStyleTitle2];
    v5 = +[PHInCallUtilities sharedInstance];
    [v5 isIPadIdiom];

    [v4 pointSize];
LABEL_10:
    v7 = [UIFont monospacedDigitSystemFontOfSize:"monospacedDigitSystemFontOfSize:weight:" weight:?];
    v3 = [v7 withCaseSensitiveAttribute];

    goto LABEL_13;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_13;
    }

    v6 = &UIFontTextStyleBody;
  }

  else
  {
    v6 = &UIFontTextStyleSubheadline;
  }

  v3 = [UIFont phPreferredFontForTextStyle:*v6];
LABEL_13:

  return v3;
}

+ (id)singleCallStatusLabelFont
{
  if (qword_1003B0C00 != -1)
  {
    sub_100253F80();
  }

  v3 = qword_1003B0BF8;

  return v3;
}

+ (id)singleCallFontWithSize:(unint64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v3 = +[PHUIConfiguration singleCallLargeStatusLabelFont];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v3 = +[PHUIConfiguration singleCallSmallStatusLabelFont];
      goto LABEL_9;
    }

LABEL_7:
    v3 = +[PHUIConfiguration singleCallStatusLabelFont];
    goto LABEL_9;
  }

  v3 = +[PHUIConfiguration singleCallSmallerStatusLabelFont];
LABEL_9:

  return v3;
}

+ (id)multipleCallStatusLabelFont
{
  if (qword_1003B0C10 != -1)
  {
    sub_100253F94();
  }

  v3 = qword_1003B0C08;

  return v3;
}

+ (id)multipleCallStatusLabelFontMiniWindow
{
  if (qword_1003B0C20 != -1)
  {
    sub_100253FA8();
  }

  v3 = qword_1003B0C18;

  return v3;
}

@end