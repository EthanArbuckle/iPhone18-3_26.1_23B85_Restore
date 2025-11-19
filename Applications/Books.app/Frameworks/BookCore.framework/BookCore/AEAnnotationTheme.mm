@interface AEAnnotationTheme
+ (double)highlightOpacityForPageTheme:(int64_t)a3;
+ (id)blueTheme:(int64_t)a3;
+ (id)colorForAnnotationStyle:(int)a3 propertyName:(id)a4 pageTheme:(int64_t)a5;
+ (id)colorForThemeItem:(id)a3 pageTheme:(int64_t)a4;
+ (id)greenTheme:(int64_t)a3;
+ (id)highlightTextColor:(int64_t)a3;
+ (id)objectForAnnotationStyle:(int)a3 propertyName:(id)a4 pageTheme:(int64_t)a5;
+ (id)objectForThemeItem:(id)a3 pageTheme:(int64_t)a4;
+ (id)pinkTheme:(int64_t)a3;
+ (id)purpleTheme:(int64_t)a3;
+ (id)theme:(int64_t)a3;
+ (id)themeDescriptions;
+ (id)themeForAnnotationStyle:(int)a3 pageTheme:(int64_t)a4;
+ (id)themeForAnnotationStyle:(int)a3 pageTheme:(int64_t)a4 isUnderline:(BOOL)a5;
+ (id)themeItemForAnnotationStyle:(int)a3 propertyName:(id)a4;
+ (id)underlineTheme:(int64_t)a3;
+ (id)yellowTheme:(int64_t)a3;
- (CGSize)noteShadowOffset;
- (UIColor)highlightColor;
- (UIColor)noteBorderColor;
- (UIColor)noteFillColor;
- (UIColor)noteMarkerBorderColor;
- (UIColor)noteMarkerFillColor;
- (UIColor)noteMarkerStrikethroughColor;
- (UIColor)noteShadowColor;
- (UIColor)noteTextColor;
- (UIColor)notesSidebarBarColor;
- (UIColor)notesSidebarTextColor;
- (UIFont)noteTextFont;
- (UIFont)noteTextFontInTable;
- (double)noteShadowOpacity;
- (double)noteShadowRadius;
@end

@implementation AEAnnotationTheme

+ (id)themeDescriptions
{
  if (qword_342928 != -1)
  {
    sub_1E9ED8();
  }

  v3 = qword_342930;

  return v3;
}

+ (id)themeItemForAnnotationStyle:(int)a3 propertyName:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (v6 && a3 <= 6)
  {
    v8 = off_2CD440[a3];
    v9 = [a1 themeDescriptions];
    v10 = [v9 objectForKey:@"themes"];

    v11 = [v10 objectForKey:v8];
    v7 = [v11 objectForKey:v6];
  }

  return v7;
}

+ (id)objectForThemeItem:(id)a3 pageTheme:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 > 0x10)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectForKey:off_2CD478[a4]];
  }

  if (a4 != 4 && !v7)
  {
    v7 = [v6 objectForKey:@"default"];
  }

  return v7;
}

+ (id)colorForThemeItem:(id)a3 pageTheme:(int64_t)a4
{
  v4 = [a1 objectForThemeItem:a3 pageTheme:a4];
  if (v4)
  {
    v5 = [UIColor bc_colorWithSRGBDescription:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)objectForAnnotationStyle:(int)a3 propertyName:(id)a4 pageTheme:(int64_t)a5
{
  v7 = [a1 themeItemForAnnotationStyle:*&a3 propertyName:a4];
  if (v7)
  {
    v8 = [a1 objectForThemeItem:v7 pageTheme:a5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)colorForAnnotationStyle:(int)a3 propertyName:(id)a4 pageTheme:(int64_t)a5
{
  v5 = [a1 objectForAnnotationStyle:*&a3 propertyName:a4 pageTheme:a5];
  if (v5)
  {
    v6 = [UIColor bc_colorWithSRGBDescription:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIColor)noteFillColor
{
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationTheme.m", 532, "[AEAnnotationTheme noteFillColor]", "NO", @"Abstract method noteFillColor: was called!", v2, v3, v4, vars0);

  return +[UIColor blackColor];
}

- (UIColor)noteBorderColor
{
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationTheme.m", 533, "[AEAnnotationTheme noteBorderColor]", "NO", @"Abstract method noteBorderColor: was called!", v2, v3, v4, vars0);

  return +[UIColor blackColor];
}

- (UIColor)noteTextColor
{
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationTheme.m", 534, "[AEAnnotationTheme noteTextColor]", "NO", @"Abstract method noteTextColor: was called!", v2, v3, v4, vars0);

  return +[UIColor blackColor];
}

- (UIColor)highlightColor
{
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationTheme.m", 535, "[AEAnnotationTheme highlightColor]", "NO", @"Abstract method highlightColor: was called!", v2, v3, v4, vars0);

  return +[UIColor blackColor];
}

- (UIColor)noteMarkerFillColor
{
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationTheme.m", 536, "[AEAnnotationTheme noteMarkerFillColor]", "NO", @"Abstract method noteMarkerFillColor: was called!", v2, v3, v4, vars0);

  return +[UIColor blackColor];
}

- (UIColor)noteMarkerBorderColor
{
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationTheme.m", 537, "[AEAnnotationTheme noteMarkerBorderColor]", "NO", @"Abstract method noteMarkerBorderColor: was called!", v2, v3, v4, vars0);

  return +[UIColor blackColor];
}

- (UIColor)notesSidebarBarColor
{
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationTheme.m", 538, "[AEAnnotationTheme notesSidebarBarColor]", "NO", @"Abstract method notesSidebarBarColor: was called!", v2, v3, v4, vars0);

  return +[UIColor blackColor];
}

- (UIColor)noteMarkerStrikethroughColor
{
  if (qword_345638 != -1)
  {
    sub_1E9EEC();
  }

  v3 = qword_345640;

  return v3;
}

- (UIColor)notesSidebarTextColor
{
  if (qword_345648 != -1)
  {
    sub_1E9F00();
  }

  v3 = qword_345650;

  return v3;
}

+ (id)greenTheme:(int64_t)a3
{
  v25 = v3;
  v26 = v4;
  switch(a3)
  {
    case 0:
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_110204;
      v24[3] = &unk_2C7CA8;
      v24[4] = 0;
      if (qword_345658 != -1)
      {
        dispatch_once(&qword_345658, v24);
      }

      v5 = &qword_345660;
      goto LABEL_56;
    case 1:
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_110258;
      v23[3] = &unk_2C7CA8;
      v23[4] = 1;
      if (qword_345668 != -1)
      {
        dispatch_once(&qword_345668, v23);
      }

      v5 = &qword_345670;
      goto LABEL_56;
    case 2:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1102AC;
      v22[3] = &unk_2C7CA8;
      v22[4] = 2;
      if (qword_345678 != -1)
      {
        dispatch_once(&qword_345678, v22);
      }

      v5 = &qword_345680;
      goto LABEL_56;
    case 3:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_110300;
      v21[3] = &unk_2C7CA8;
      v21[4] = 3;
      if (qword_345688 != -1)
      {
        dispatch_once(&qword_345688, v21);
      }

      v5 = &qword_345690;
      goto LABEL_56;
    case 4:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_110354;
      v20[3] = &unk_2C7CA8;
      v20[4] = 4;
      if (qword_345698 != -1)
      {
        dispatch_once(&qword_345698, v20);
      }

      v5 = &qword_3456A0;
      goto LABEL_56;
    case 5:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1103A8;
      v19[3] = &unk_2C7CA8;
      v19[4] = 5;
      if (qword_3456A8 != -1)
      {
        dispatch_once(&qword_3456A8, v19);
      }

      v5 = &qword_3456B0;
      goto LABEL_56;
    case 6:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1103FC;
      v18[3] = &unk_2C7CA8;
      v18[4] = 6;
      if (qword_3456B8 != -1)
      {
        dispatch_once(&qword_3456B8, v18);
      }

      v5 = &qword_3456C0;
      goto LABEL_56;
    case 7:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_110450;
      v17[3] = &unk_2C7CA8;
      v17[4] = 7;
      if (qword_3456C8 != -1)
      {
        dispatch_once(&qword_3456C8, v17);
      }

      v5 = &qword_3456D0;
      goto LABEL_56;
    case 8:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1104A4;
      v16[3] = &unk_2C7CA8;
      v16[4] = 8;
      if (qword_3456D8 != -1)
      {
        dispatch_once(&qword_3456D8, v16);
      }

      v5 = &qword_3456E0;
      goto LABEL_56;
    case 9:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1104F8;
      v15[3] = &unk_2C7CA8;
      v15[4] = 9;
      if (qword_3456E8 != -1)
      {
        dispatch_once(&qword_3456E8, v15);
      }

      v5 = &qword_3456F0;
      goto LABEL_56;
    case 10:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_11054C;
      v14[3] = &unk_2C7CA8;
      v14[4] = 10;
      if (qword_3456F8 != -1)
      {
        dispatch_once(&qword_3456F8, v14);
      }

      v5 = &qword_345700;
      goto LABEL_56;
    case 11:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1105A0;
      v13[3] = &unk_2C7CA8;
      v13[4] = 11;
      if (qword_345708 != -1)
      {
        dispatch_once(&qword_345708, v13);
      }

      v5 = &qword_345710;
      goto LABEL_56;
    case 12:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1105F4;
      v12[3] = &unk_2C7CA8;
      v12[4] = 12;
      if (qword_345718 != -1)
      {
        dispatch_once(&qword_345718, v12);
      }

      v5 = &qword_345720;
      goto LABEL_56;
    case 13:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_110648;
      v11[3] = &unk_2C7CA8;
      v11[4] = 13;
      if (qword_345728 != -1)
      {
        dispatch_once(&qword_345728, v11);
      }

      v5 = &qword_345730;
      goto LABEL_56;
    case 14:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_11069C;
      v10[3] = &unk_2C7CA8;
      v10[4] = 14;
      if (qword_345738 != -1)
      {
        dispatch_once(&qword_345738, v10);
      }

      v5 = &qword_345740;
      goto LABEL_56;
    case 15:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1106F0;
      v9[3] = &unk_2C7CA8;
      v9[4] = 15;
      if (qword_345748 != -1)
      {
        dispatch_once(&qword_345748, v9);
      }

      v5 = &qword_345750;
      goto LABEL_56;
    case 16:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_110744;
      block[3] = &unk_2C7CA8;
      block[4] = 16;
      if (qword_345758 != -1)
      {
        dispatch_once(&qword_345758, block);
      }

      v5 = &qword_345760;
LABEL_56:
      v6 = *v5;

      break;
    default:
      v6 = 0;

      break;
  }

  return v6;
}

+ (id)blueTheme:(int64_t)a3
{
  v25 = v3;
  v26 = v4;
  switch(a3)
  {
    case 0:
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_11108C;
      v24[3] = &unk_2C7CA8;
      v24[4] = 0;
      if (qword_345768 != -1)
      {
        dispatch_once(&qword_345768, v24);
      }

      v5 = &qword_345770;
      goto LABEL_56;
    case 1:
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1110E0;
      v23[3] = &unk_2C7CA8;
      v23[4] = 1;
      if (qword_345778 != -1)
      {
        dispatch_once(&qword_345778, v23);
      }

      v5 = &qword_345780;
      goto LABEL_56;
    case 2:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_111134;
      v22[3] = &unk_2C7CA8;
      v22[4] = 2;
      if (qword_345788 != -1)
      {
        dispatch_once(&qword_345788, v22);
      }

      v5 = &qword_345790;
      goto LABEL_56;
    case 3:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_111188;
      v21[3] = &unk_2C7CA8;
      v21[4] = 3;
      if (qword_345798 != -1)
      {
        dispatch_once(&qword_345798, v21);
      }

      v5 = &qword_3457A0;
      goto LABEL_56;
    case 4:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1111DC;
      v20[3] = &unk_2C7CA8;
      v20[4] = 4;
      if (qword_3457A8 != -1)
      {
        dispatch_once(&qword_3457A8, v20);
      }

      v5 = &qword_3457B0;
      goto LABEL_56;
    case 5:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_111230;
      v19[3] = &unk_2C7CA8;
      v19[4] = 5;
      if (qword_3457B8 != -1)
      {
        dispatch_once(&qword_3457B8, v19);
      }

      v5 = &qword_3457C0;
      goto LABEL_56;
    case 6:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_111284;
      v18[3] = &unk_2C7CA8;
      v18[4] = 6;
      if (qword_3457C8 != -1)
      {
        dispatch_once(&qword_3457C8, v18);
      }

      v5 = &qword_3457D0;
      goto LABEL_56;
    case 7:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1112D8;
      v17[3] = &unk_2C7CA8;
      v17[4] = 7;
      if (qword_3457D8 != -1)
      {
        dispatch_once(&qword_3457D8, v17);
      }

      v5 = &qword_3457E0;
      goto LABEL_56;
    case 8:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_11132C;
      v16[3] = &unk_2C7CA8;
      v16[4] = 8;
      if (qword_3457E8 != -1)
      {
        dispatch_once(&qword_3457E8, v16);
      }

      v5 = &qword_3457F0;
      goto LABEL_56;
    case 9:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_111380;
      v15[3] = &unk_2C7CA8;
      v15[4] = 9;
      if (qword_3457F8 != -1)
      {
        dispatch_once(&qword_3457F8, v15);
      }

      v5 = &qword_345800;
      goto LABEL_56;
    case 10:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1113D4;
      v14[3] = &unk_2C7CA8;
      v14[4] = 10;
      if (qword_345808 != -1)
      {
        dispatch_once(&qword_345808, v14);
      }

      v5 = &qword_345810;
      goto LABEL_56;
    case 11:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_111428;
      v13[3] = &unk_2C7CA8;
      v13[4] = 11;
      if (qword_345818 != -1)
      {
        dispatch_once(&qword_345818, v13);
      }

      v5 = &qword_345820;
      goto LABEL_56;
    case 12:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_11147C;
      v12[3] = &unk_2C7CA8;
      v12[4] = 12;
      if (qword_345828 != -1)
      {
        dispatch_once(&qword_345828, v12);
      }

      v5 = &qword_345830;
      goto LABEL_56;
    case 13:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1114D0;
      v11[3] = &unk_2C7CA8;
      v11[4] = 13;
      if (qword_345838 != -1)
      {
        dispatch_once(&qword_345838, v11);
      }

      v5 = &qword_345840;
      goto LABEL_56;
    case 14:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_111524;
      v10[3] = &unk_2C7CA8;
      v10[4] = 14;
      if (qword_345848 != -1)
      {
        dispatch_once(&qword_345848, v10);
      }

      v5 = &qword_345850;
      goto LABEL_56;
    case 15:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_111578;
      v9[3] = &unk_2C7CA8;
      v9[4] = 15;
      if (qword_345858 != -1)
      {
        dispatch_once(&qword_345858, v9);
      }

      v5 = &qword_345860;
      goto LABEL_56;
    case 16:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1115CC;
      block[3] = &unk_2C7CA8;
      block[4] = 16;
      if (qword_345868 != -1)
      {
        dispatch_once(&qword_345868, block);
      }

      v5 = &qword_345870;
LABEL_56:
      v6 = *v5;

      break;
    default:
      v6 = 0;

      break;
  }

  return v6;
}

+ (id)yellowTheme:(int64_t)a3
{
  v25 = v3;
  v26 = v4;
  switch(a3)
  {
    case 0:
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_111F14;
      v24[3] = &unk_2C7CA8;
      v24[4] = 0;
      if (qword_345878 != -1)
      {
        dispatch_once(&qword_345878, v24);
      }

      v5 = &qword_345880;
      goto LABEL_56;
    case 1:
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_111F68;
      v23[3] = &unk_2C7CA8;
      v23[4] = 1;
      if (qword_345888 != -1)
      {
        dispatch_once(&qword_345888, v23);
      }

      v5 = &qword_345890;
      goto LABEL_56;
    case 2:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_111FBC;
      v22[3] = &unk_2C7CA8;
      v22[4] = 2;
      if (qword_345898 != -1)
      {
        dispatch_once(&qword_345898, v22);
      }

      v5 = &qword_3458A0;
      goto LABEL_56;
    case 3:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_112010;
      v21[3] = &unk_2C7CA8;
      v21[4] = 3;
      if (qword_3458A8 != -1)
      {
        dispatch_once(&qword_3458A8, v21);
      }

      v5 = &qword_3458B0;
      goto LABEL_56;
    case 4:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_112064;
      v20[3] = &unk_2C7CA8;
      v20[4] = 4;
      if (qword_3458B8 != -1)
      {
        dispatch_once(&qword_3458B8, v20);
      }

      v5 = &qword_3458C0;
      goto LABEL_56;
    case 5:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1120B8;
      v19[3] = &unk_2C7CA8;
      v19[4] = 5;
      if (qword_3458C8 != -1)
      {
        dispatch_once(&qword_3458C8, v19);
      }

      v5 = &qword_3458D0;
      goto LABEL_56;
    case 6:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_11210C;
      v18[3] = &unk_2C7CA8;
      v18[4] = 6;
      if (qword_3458D8 != -1)
      {
        dispatch_once(&qword_3458D8, v18);
      }

      v5 = &qword_3458E0;
      goto LABEL_56;
    case 7:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_112160;
      v17[3] = &unk_2C7CA8;
      v17[4] = 7;
      if (qword_3458E8 != -1)
      {
        dispatch_once(&qword_3458E8, v17);
      }

      v5 = &qword_3458F0;
      goto LABEL_56;
    case 8:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1121B4;
      v16[3] = &unk_2C7CA8;
      v16[4] = 8;
      if (qword_3458F8 != -1)
      {
        dispatch_once(&qword_3458F8, v16);
      }

      v5 = &qword_345900;
      goto LABEL_56;
    case 9:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_112208;
      v15[3] = &unk_2C7CA8;
      v15[4] = 9;
      if (qword_345908 != -1)
      {
        dispatch_once(&qword_345908, v15);
      }

      v5 = &qword_345910;
      goto LABEL_56;
    case 10:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_11225C;
      v14[3] = &unk_2C7CA8;
      v14[4] = 10;
      if (qword_345918 != -1)
      {
        dispatch_once(&qword_345918, v14);
      }

      v5 = &qword_345920;
      goto LABEL_56;
    case 11:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1122B0;
      v13[3] = &unk_2C7CA8;
      v13[4] = 11;
      if (qword_345928 != -1)
      {
        dispatch_once(&qword_345928, v13);
      }

      v5 = &qword_345930;
      goto LABEL_56;
    case 12:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_112304;
      v12[3] = &unk_2C7CA8;
      v12[4] = 12;
      if (qword_345938 != -1)
      {
        dispatch_once(&qword_345938, v12);
      }

      v5 = &qword_345940;
      goto LABEL_56;
    case 13:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_112358;
      v11[3] = &unk_2C7CA8;
      v11[4] = 13;
      if (qword_345948 != -1)
      {
        dispatch_once(&qword_345948, v11);
      }

      v5 = &qword_345950;
      goto LABEL_56;
    case 14:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1123AC;
      v10[3] = &unk_2C7CA8;
      v10[4] = 14;
      if (qword_345958 != -1)
      {
        dispatch_once(&qword_345958, v10);
      }

      v5 = &qword_345960;
      goto LABEL_56;
    case 15:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_112400;
      v9[3] = &unk_2C7CA8;
      v9[4] = 15;
      if (qword_345968 != -1)
      {
        dispatch_once(&qword_345968, v9);
      }

      v5 = &qword_345970;
      goto LABEL_56;
    case 16:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_112454;
      block[3] = &unk_2C7CA8;
      block[4] = 16;
      if (qword_345978 != -1)
      {
        dispatch_once(&qword_345978, block);
      }

      v5 = &qword_345980;
LABEL_56:
      v6 = *v5;

      break;
    default:
      v6 = 0;

      break;
  }

  return v6;
}

+ (id)pinkTheme:(int64_t)a3
{
  v25 = v3;
  v26 = v4;
  switch(a3)
  {
    case 0:
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_112D9C;
      v24[3] = &unk_2C7CA8;
      v24[4] = 0;
      if (qword_345988 != -1)
      {
        dispatch_once(&qword_345988, v24);
      }

      v5 = &qword_345990;
      goto LABEL_56;
    case 1:
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_112DF0;
      v23[3] = &unk_2C7CA8;
      v23[4] = 1;
      if (qword_345998 != -1)
      {
        dispatch_once(&qword_345998, v23);
      }

      v5 = &qword_3459A0;
      goto LABEL_56;
    case 2:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_112E44;
      v22[3] = &unk_2C7CA8;
      v22[4] = 2;
      if (qword_3459A8 != -1)
      {
        dispatch_once(&qword_3459A8, v22);
      }

      v5 = &qword_3459B0;
      goto LABEL_56;
    case 3:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_112E98;
      v21[3] = &unk_2C7CA8;
      v21[4] = 3;
      if (qword_3459B8 != -1)
      {
        dispatch_once(&qword_3459B8, v21);
      }

      v5 = &qword_3459C0;
      goto LABEL_56;
    case 4:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_112EEC;
      v20[3] = &unk_2C7CA8;
      v20[4] = 4;
      if (qword_3459C8 != -1)
      {
        dispatch_once(&qword_3459C8, v20);
      }

      v5 = &qword_3459D0;
      goto LABEL_56;
    case 5:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_112F40;
      v19[3] = &unk_2C7CA8;
      v19[4] = 5;
      if (qword_3459D8 != -1)
      {
        dispatch_once(&qword_3459D8, v19);
      }

      v5 = &qword_3459E0;
      goto LABEL_56;
    case 6:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_112F94;
      v18[3] = &unk_2C7CA8;
      v18[4] = 6;
      if (qword_3459E8 != -1)
      {
        dispatch_once(&qword_3459E8, v18);
      }

      v5 = &qword_3459F0;
      goto LABEL_56;
    case 7:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_112FE8;
      v17[3] = &unk_2C7CA8;
      v17[4] = 7;
      if (qword_3459F8 != -1)
      {
        dispatch_once(&qword_3459F8, v17);
      }

      v5 = &qword_345A00;
      goto LABEL_56;
    case 8:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_11303C;
      v16[3] = &unk_2C7CA8;
      v16[4] = 8;
      if (qword_345A08 != -1)
      {
        dispatch_once(&qword_345A08, v16);
      }

      v5 = &qword_345A10;
      goto LABEL_56;
    case 9:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_113090;
      v15[3] = &unk_2C7CA8;
      v15[4] = 9;
      if (qword_345A18 != -1)
      {
        dispatch_once(&qword_345A18, v15);
      }

      v5 = &qword_345A20;
      goto LABEL_56;
    case 10:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1130E4;
      v14[3] = &unk_2C7CA8;
      v14[4] = 10;
      if (qword_345A28 != -1)
      {
        dispatch_once(&qword_345A28, v14);
      }

      v5 = &qword_345A30;
      goto LABEL_56;
    case 11:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_113138;
      v13[3] = &unk_2C7CA8;
      v13[4] = 11;
      if (qword_345A38 != -1)
      {
        dispatch_once(&qword_345A38, v13);
      }

      v5 = &qword_345A40;
      goto LABEL_56;
    case 12:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_11318C;
      v12[3] = &unk_2C7CA8;
      v12[4] = 12;
      if (qword_345A48 != -1)
      {
        dispatch_once(&qword_345A48, v12);
      }

      v5 = &qword_345A50;
      goto LABEL_56;
    case 13:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1131E0;
      v11[3] = &unk_2C7CA8;
      v11[4] = 13;
      if (qword_345A58 != -1)
      {
        dispatch_once(&qword_345A58, v11);
      }

      v5 = &qword_345A60;
      goto LABEL_56;
    case 14:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_113234;
      v10[3] = &unk_2C7CA8;
      v10[4] = 14;
      if (qword_345A68 != -1)
      {
        dispatch_once(&qword_345A68, v10);
      }

      v5 = &qword_345A70;
      goto LABEL_56;
    case 15:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_113288;
      v9[3] = &unk_2C7CA8;
      v9[4] = 15;
      if (qword_345A78 != -1)
      {
        dispatch_once(&qword_345A78, v9);
      }

      v5 = &qword_345A80;
      goto LABEL_56;
    case 16:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1132DC;
      block[3] = &unk_2C7CA8;
      block[4] = 16;
      if (qword_345A88 != -1)
      {
        dispatch_once(&qword_345A88, block);
      }

      v5 = &qword_345A90;
LABEL_56:
      v6 = *v5;

      break;
    default:
      v6 = 0;

      break;
  }

  return v6;
}

+ (id)purpleTheme:(int64_t)a3
{
  v25 = v3;
  v26 = v4;
  switch(a3)
  {
    case 0:
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_113C24;
      v24[3] = &unk_2C7CA8;
      v24[4] = 0;
      if (qword_345A98 != -1)
      {
        dispatch_once(&qword_345A98, v24);
      }

      v5 = &qword_345AA0;
      goto LABEL_56;
    case 1:
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_113C78;
      v23[3] = &unk_2C7CA8;
      v23[4] = 1;
      if (qword_345AA8 != -1)
      {
        dispatch_once(&qword_345AA8, v23);
      }

      v5 = &qword_345AB0;
      goto LABEL_56;
    case 2:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_113CCC;
      v22[3] = &unk_2C7CA8;
      v22[4] = 2;
      if (qword_345AB8 != -1)
      {
        dispatch_once(&qword_345AB8, v22);
      }

      v5 = &qword_345AC0;
      goto LABEL_56;
    case 3:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_113D20;
      v21[3] = &unk_2C7CA8;
      v21[4] = 3;
      if (qword_345AC8 != -1)
      {
        dispatch_once(&qword_345AC8, v21);
      }

      v5 = &qword_345AD0;
      goto LABEL_56;
    case 4:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_113D74;
      v20[3] = &unk_2C7CA8;
      v20[4] = 4;
      if (qword_345AD8 != -1)
      {
        dispatch_once(&qword_345AD8, v20);
      }

      v5 = &qword_345AE0;
      goto LABEL_56;
    case 5:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_113DC8;
      v19[3] = &unk_2C7CA8;
      v19[4] = 5;
      if (qword_345AE8 != -1)
      {
        dispatch_once(&qword_345AE8, v19);
      }

      v5 = &qword_345AF0;
      goto LABEL_56;
    case 6:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_113E1C;
      v18[3] = &unk_2C7CA8;
      v18[4] = 6;
      if (qword_345AF8 != -1)
      {
        dispatch_once(&qword_345AF8, v18);
      }

      v5 = &qword_345B00;
      goto LABEL_56;
    case 7:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_113E70;
      v17[3] = &unk_2C7CA8;
      v17[4] = 7;
      if (qword_345B08 != -1)
      {
        dispatch_once(&qword_345B08, v17);
      }

      v5 = &qword_345B10;
      goto LABEL_56;
    case 8:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_113EC4;
      v16[3] = &unk_2C7CA8;
      v16[4] = 8;
      if (qword_345B18 != -1)
      {
        dispatch_once(&qword_345B18, v16);
      }

      v5 = &qword_345B20;
      goto LABEL_56;
    case 9:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_113F18;
      v15[3] = &unk_2C7CA8;
      v15[4] = 9;
      if (qword_345B28 != -1)
      {
        dispatch_once(&qword_345B28, v15);
      }

      v5 = &qword_345B30;
      goto LABEL_56;
    case 10:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_113F6C;
      v14[3] = &unk_2C7CA8;
      v14[4] = 10;
      if (qword_345B38 != -1)
      {
        dispatch_once(&qword_345B38, v14);
      }

      v5 = &qword_345B40;
      goto LABEL_56;
    case 11:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_113FC0;
      v13[3] = &unk_2C7CA8;
      v13[4] = 11;
      if (qword_345B48 != -1)
      {
        dispatch_once(&qword_345B48, v13);
      }

      v5 = &qword_345B50;
      goto LABEL_56;
    case 12:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_114014;
      v12[3] = &unk_2C7CA8;
      v12[4] = 12;
      if (qword_345B58 != -1)
      {
        dispatch_once(&qword_345B58, v12);
      }

      v5 = &qword_345B60;
      goto LABEL_56;
    case 13:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_114068;
      v11[3] = &unk_2C7CA8;
      v11[4] = 13;
      if (qword_345B68 != -1)
      {
        dispatch_once(&qword_345B68, v11);
      }

      v5 = &qword_345B70;
      goto LABEL_56;
    case 14:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1140BC;
      v10[3] = &unk_2C7CA8;
      v10[4] = 14;
      if (qword_345B78 != -1)
      {
        dispatch_once(&qword_345B78, v10);
      }

      v5 = &qword_345B80;
      goto LABEL_56;
    case 15:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_114110;
      v9[3] = &unk_2C7CA8;
      v9[4] = 15;
      if (qword_345B88 != -1)
      {
        dispatch_once(&qword_345B88, v9);
      }

      v5 = &qword_345B90;
      goto LABEL_56;
    case 16:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_114164;
      block[3] = &unk_2C7CA8;
      block[4] = 16;
      if (qword_345B98 != -1)
      {
        dispatch_once(&qword_345B98, block);
      }

      v5 = &qword_345BA0;
LABEL_56:
      v6 = *v5;

      break;
    default:
      v6 = 0;

      break;
  }

  return v6;
}

+ (id)underlineTheme:(int64_t)a3
{
  v25 = v3;
  v26 = v4;
  switch(a3)
  {
    case 0:
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_114AAC;
      v24[3] = &unk_2C7CA8;
      v24[4] = 0;
      if (qword_345BA8 != -1)
      {
        dispatch_once(&qword_345BA8, v24);
      }

      v5 = &qword_345BB0;
      goto LABEL_56;
    case 1:
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_114B00;
      v23[3] = &unk_2C7CA8;
      v23[4] = 1;
      if (qword_345BB8 != -1)
      {
        dispatch_once(&qword_345BB8, v23);
      }

      v5 = &qword_345BC0;
      goto LABEL_56;
    case 2:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_114B54;
      v22[3] = &unk_2C7CA8;
      v22[4] = 2;
      if (qword_345BC8 != -1)
      {
        dispatch_once(&qword_345BC8, v22);
      }

      v5 = &qword_345BD0;
      goto LABEL_56;
    case 3:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_114BA8;
      v21[3] = &unk_2C7CA8;
      v21[4] = 3;
      if (qword_345BD8 != -1)
      {
        dispatch_once(&qword_345BD8, v21);
      }

      v5 = &qword_345BE0;
      goto LABEL_56;
    case 4:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_114BFC;
      v20[3] = &unk_2C7CA8;
      v20[4] = 4;
      if (qword_345BE8 != -1)
      {
        dispatch_once(&qword_345BE8, v20);
      }

      v5 = &qword_345BF0;
      goto LABEL_56;
    case 5:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_114C50;
      v19[3] = &unk_2C7CA8;
      v19[4] = 5;
      if (qword_345BF8 != -1)
      {
        dispatch_once(&qword_345BF8, v19);
      }

      v5 = &qword_345C00;
      goto LABEL_56;
    case 6:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_114CA4;
      v18[3] = &unk_2C7CA8;
      v18[4] = 6;
      if (qword_345C08 != -1)
      {
        dispatch_once(&qword_345C08, v18);
      }

      v5 = &qword_345C10;
      goto LABEL_56;
    case 7:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_114CF8;
      v17[3] = &unk_2C7CA8;
      v17[4] = 7;
      if (qword_345C18 != -1)
      {
        dispatch_once(&qword_345C18, v17);
      }

      v5 = &qword_345C20;
      goto LABEL_56;
    case 8:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_114D4C;
      v16[3] = &unk_2C7CA8;
      v16[4] = 8;
      if (qword_345C28 != -1)
      {
        dispatch_once(&qword_345C28, v16);
      }

      v5 = &qword_345C30;
      goto LABEL_56;
    case 9:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_114DA0;
      v15[3] = &unk_2C7CA8;
      v15[4] = 9;
      if (qword_345C38 != -1)
      {
        dispatch_once(&qword_345C38, v15);
      }

      v5 = &qword_345C40;
      goto LABEL_56;
    case 10:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_114DF4;
      v14[3] = &unk_2C7CA8;
      v14[4] = 10;
      if (qword_345C48 != -1)
      {
        dispatch_once(&qword_345C48, v14);
      }

      v5 = &qword_345C50;
      goto LABEL_56;
    case 11:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_114E48;
      v13[3] = &unk_2C7CA8;
      v13[4] = 11;
      if (qword_345C58 != -1)
      {
        dispatch_once(&qword_345C58, v13);
      }

      v5 = &qword_345C60;
      goto LABEL_56;
    case 12:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_114E9C;
      v12[3] = &unk_2C7CA8;
      v12[4] = 12;
      if (qword_345C68 != -1)
      {
        dispatch_once(&qword_345C68, v12);
      }

      v5 = &qword_345C70;
      goto LABEL_56;
    case 13:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_114EF0;
      v11[3] = &unk_2C7CA8;
      v11[4] = 13;
      if (qword_345C78 != -1)
      {
        dispatch_once(&qword_345C78, v11);
      }

      v5 = &qword_345C80;
      goto LABEL_56;
    case 14:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_114F44;
      v10[3] = &unk_2C7CA8;
      v10[4] = 14;
      if (qword_345C88 != -1)
      {
        dispatch_once(&qword_345C88, v10);
      }

      v5 = &qword_345C90;
      goto LABEL_56;
    case 15:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_114F98;
      v9[3] = &unk_2C7CA8;
      v9[4] = 15;
      if (qword_345C98 != -1)
      {
        dispatch_once(&qword_345C98, v9);
      }

      v5 = &qword_345CA0;
      goto LABEL_56;
    case 16:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_114FEC;
      block[3] = &unk_2C7CA8;
      block[4] = 16;
      if (qword_345CA8 != -1)
      {
        dispatch_once(&qword_345CA8, block);
      }

      v5 = &qword_345CB0;
LABEL_56:
      v6 = *v5;

      break;
    default:
      v6 = 0;

      break;
  }

  return v6;
}

+ (id)theme:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setPageTheme:a3];

  return v4;
}

+ (id)themeForAnnotationStyle:(int)a3 pageTheme:(int64_t)a4
{
  v4 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v4 = [AEAnnotationTheme greenTheme:a4];
    }

    else if (a3 == 2)
    {
      v4 = [AEAnnotationTheme blueTheme:a4];
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        v4 = [AEAnnotationTheme yellowTheme:a4];
        break;
      case 4:
        v4 = [AEAnnotationTheme pinkTheme:a4];
        break;
      case 5:
        v4 = [AEAnnotationTheme purpleTheme:a4];
        break;
    }
  }

  return v4;
}

+ (id)themeForAnnotationStyle:(int)a3 pageTheme:(int64_t)a4 isUnderline:(BOOL)a5
{
  v7 = [a1 themeForAnnotationStyle:*&a3 pageTheme:?];
  v8 = v7;
  if (v7 || !a5)
  {
    v9 = v7;
  }

  else
  {
    v9 = [AEAnnotationTheme underlineTheme:a4];
  }

  v10 = v9;

  return v10;
}

+ (double)highlightOpacityForPageTheme:(int64_t)a3
{
  result = 1.0;
  if (a3 <= 0x10)
  {
    return dbl_2A3FA0[a3];
  }

  return result;
}

+ (id)highlightTextColor:(int64_t)a3
{
  v25 = v3;
  v26 = v4;
  switch(a3)
  {
    case 0:
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_115B98;
      v23[3] = &unk_2CD360;
      v23[4] = a1;
      v23[5] = 0;
      if (qword_345CC8 != -1)
      {
        dispatch_once(&qword_345CC8, v23);
      }

      v5 = &qword_345CD0;
      goto LABEL_56;
    case 1:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_115C4C;
      v22[3] = &unk_2CD360;
      v22[4] = a1;
      v22[5] = 1;
      if (qword_345CD8 != -1)
      {
        dispatch_once(&qword_345CD8, v22);
      }

      v5 = &qword_345CE0;
      goto LABEL_56;
    case 2:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_115D00;
      v21[3] = &unk_2CD360;
      v21[4] = a1;
      v21[5] = 2;
      if (qword_345CE8 != -1)
      {
        dispatch_once(&qword_345CE8, v21);
      }

      v5 = &qword_345CF0;
      goto LABEL_56;
    case 3:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_115DB4;
      v20[3] = &unk_2CD360;
      v20[4] = a1;
      v20[5] = 3;
      if (qword_345CF8 != -1)
      {
        dispatch_once(&qword_345CF8, v20);
      }

      v5 = &qword_345D00;
      goto LABEL_56;
    case 4:
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_115AE4;
      v24[3] = &unk_2CD360;
      v24[4] = a1;
      v24[5] = 4;
      if (qword_345CB8 != -1)
      {
        dispatch_once(&qword_345CB8, v24);
      }

      v5 = &qword_345CC0;
      goto LABEL_56;
    case 5:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_115E68;
      v19[3] = &unk_2CD360;
      v19[4] = a1;
      v19[5] = 5;
      if (qword_345D08 != -1)
      {
        dispatch_once(&qword_345D08, v19);
      }

      v5 = &qword_345D10;
      goto LABEL_56;
    case 6:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_115F1C;
      v18[3] = &unk_2CD360;
      v18[4] = a1;
      v18[5] = 6;
      if (qword_345D18 != -1)
      {
        dispatch_once(&qword_345D18, v18);
      }

      v5 = &qword_345D20;
      goto LABEL_56;
    case 7:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_115FD0;
      v17[3] = &unk_2CD360;
      v17[4] = a1;
      v17[5] = 7;
      if (qword_345D28 != -1)
      {
        dispatch_once(&qword_345D28, v17);
      }

      v5 = &qword_345D30;
      goto LABEL_56;
    case 8:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_116084;
      v16[3] = &unk_2CD360;
      v16[4] = a1;
      v16[5] = 8;
      if (qword_345D38 != -1)
      {
        dispatch_once(&qword_345D38, v16);
      }

      v5 = &qword_345D40;
      goto LABEL_56;
    case 9:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_116138;
      v15[3] = &unk_2CD360;
      v15[4] = a1;
      v15[5] = 9;
      if (qword_345D48 != -1)
      {
        dispatch_once(&qword_345D48, v15);
      }

      v5 = &qword_345D50;
      goto LABEL_56;
    case 10:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1161EC;
      v14[3] = &unk_2CD360;
      v14[4] = a1;
      v14[5] = 10;
      if (qword_345D58 != -1)
      {
        dispatch_once(&qword_345D58, v14);
      }

      v5 = &qword_345D60;
      goto LABEL_56;
    case 11:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1162A0;
      v13[3] = &unk_2CD360;
      v13[4] = a1;
      v13[5] = 11;
      if (qword_345D68 != -1)
      {
        dispatch_once(&qword_345D68, v13);
      }

      v5 = &qword_345D70;
      goto LABEL_56;
    case 12:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_116354;
      v12[3] = &unk_2CD360;
      v12[4] = a1;
      v12[5] = 12;
      if (qword_345D78 != -1)
      {
        dispatch_once(&qword_345D78, v12);
      }

      v5 = &qword_345D80;
      goto LABEL_56;
    case 13:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_116408;
      v11[3] = &unk_2CD360;
      v11[4] = a1;
      v11[5] = 13;
      if (qword_345D88 != -1)
      {
        dispatch_once(&qword_345D88, v11);
      }

      v5 = &qword_345D90;
      goto LABEL_56;
    case 14:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1164BC;
      block[3] = &unk_2CD360;
      block[4] = a1;
      block[5] = 14;
      if (qword_345D98 != -1)
      {
        dispatch_once(&qword_345D98, block);
      }

      v5 = &qword_345DA0;
      goto LABEL_56;
    case 15:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_116570;
      v9[3] = &unk_2CD360;
      v9[4] = a1;
      v9[5] = 15;
      if (qword_345DA8 != -1)
      {
        dispatch_once(&qword_345DA8, v9);
      }

      v5 = &qword_345DB0;
      goto LABEL_56;
    case 16:
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_116624;
      v8[3] = &unk_2CD360;
      v8[4] = a1;
      v8[5] = 16;
      if (qword_345DB8 != -1)
      {
        dispatch_once(&qword_345DB8, v8);
      }

      v5 = &qword_345DC0;
LABEL_56:
      v6 = *v5;

      break;
    default:
      v6 = 0;

      break;
  }

  return v6;
}

- (double)noteShadowRadius
{
  if (qword_345DC8 != -1)
  {
    sub_1E9F14();
  }

  return *&qword_345DD0;
}

- (double)noteShadowOpacity
{
  if (qword_345DD8 != -1)
  {
    sub_1E9F28();
  }

  return *&qword_345DE0;
}

- (UIColor)noteShadowColor
{
  if (qword_345DE8 != -1)
  {
    sub_1E9F3C();
  }

  v3 = qword_345DF0;

  return v3;
}

- (CGSize)noteShadowOffset
{
  if (qword_345DF8 != -1)
  {
    sub_1E9F50();
  }

  v2 = *&qword_345E00;
  v3 = *&qword_345E08;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIFont)noteTextFont
{
  if (qword_345E10 != -1)
  {
    sub_1E9F64();
  }

  v3 = qword_345E18;

  return v3;
}

- (UIFont)noteTextFontInTable
{
  if (qword_345E20 != -1)
  {
    sub_1E9F78();
  }

  v3 = qword_345E28;

  return v3;
}

@end