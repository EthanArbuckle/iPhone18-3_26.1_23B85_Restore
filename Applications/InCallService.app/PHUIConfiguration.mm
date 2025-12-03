@interface PHUIConfiguration
+ (BOOL)usesMiddleCenteringView;
+ (double)intrinsicWidthForParticipantsView;
+ (double)yOffsetMultiplierForParticipantsView;
+ (id)multipleCallParticipantLabelFont;
+ (id)multipleCallParticipantLabelFontMiniWindow;
+ (id)multipleCallStatusLabelFont;
+ (id)multipleCallStatusLabelFontMiniWindow;
+ (id)singleCallFontWithSize:(unint64_t)size;
+ (id)singleCallLargeStatusLabelFont;
+ (id)singleCallParticipantLabelAmbientFont;
+ (id)singleCallParticipantLabelBannerFontForText:(id)text availableWidth:(double)width;
+ (id)singleCallParticipantLabelBannerMaximumFont;
+ (id)singleCallParticipantLabelFontForCallDisplayStyle:(int64_t)style usesLargeFormatUI:(BOOL *)i;
+ (id)singleCallParticipantLabelFullscreenFontUsesLargeFormatUI:(BOOL *)i;
+ (id)singleCallSmallStatusLabelFont;
+ (id)singleCallSmallerStatusLabelFont;
+ (id)singleCallStatusLabelFont;
+ (id)singleCallStatusLabelFontForCallDisplayStyle:(int64_t)style;
+ (id)statusLabelFontColorForCallDisplayStyle:(int64_t)style;
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
  block[4] = self;
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

+ (id)singleCallParticipantLabelFontForCallDisplayStyle:(int64_t)style usesLargeFormatUI:(BOOL *)i
{
  if (style <= 1)
  {
    if (style)
    {
      if (style == 1)
      {
        self = [PHUIConfiguration singleCallParticipantLabelMiniWindowFont:1];
      }
    }

    else
    {
      self = [PHUIConfiguration singleCallParticipantLabelBannerMaximumFont:0];
    }
  }

  else
  {
    if (style == 2)
    {
LABEL_5:
      self = [PHUIConfiguration singleCallParticipantLabelFullscreenFontUsesLargeFormatUI:i];
      goto LABEL_11;
    }

    if (style != 3)
    {
      if (style != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    self = [PHUIConfiguration singleCallParticipantLabelAmbientFont:3];
  }

LABEL_11:

  return self;
}

+ (id)singleCallParticipantLabelFullscreenFontUsesLargeFormatUI:(BOOL *)i
{
  v4 = +[CNKFeatures sharedInstance];
  isHeroImageEnabled = [v4 isHeroImageEnabled];

  if (i || isHeroImageEnabled)
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

+ (id)singleCallParticipantLabelBannerFontForText:(id)text availableWidth:(double)width
{
  textCopy = text;
  v6 = textCopy;
  if (!textCopy || ((v7 = [textCopy length], width != 0.0) ? (v8 = v7 == 0) : (v8 = 1), v8))
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

        if (v20 <= width)
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

+ (id)statusLabelFontColorForCallDisplayStyle:(int64_t)style
{
  if (style <= 4)
  {
    self = +[UIColor secondaryLabelColor];
  }

  return self;
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

+ (id)singleCallStatusLabelFontForCallDisplayStyle:(int64_t)style
{
  if (style > 1)
  {
    if (style != 2)
    {
      if (style == 3)
      {
        v4 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:UIFontTextStyleTitle2];
        [v4 pointSize];
        goto LABEL_10;
      }

      if (style != 4)
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
    withCaseSensitiveAttribute = [v7 withCaseSensitiveAttribute];

    goto LABEL_13;
  }

  if (style)
  {
    if (style != 1)
    {
      goto LABEL_13;
    }

    v6 = &UIFontTextStyleBody;
  }

  else
  {
    v6 = &UIFontTextStyleSubheadline;
  }

  withCaseSensitiveAttribute = [UIFont phPreferredFontForTextStyle:*v6];
LABEL_13:

  return withCaseSensitiveAttribute;
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

+ (id)singleCallFontWithSize:(unint64_t)size
{
  if (size > 1)
  {
    if (size == 3)
    {
      v3 = +[PHUIConfiguration singleCallLargeStatusLabelFont];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (size)
  {
    if (size == 1)
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