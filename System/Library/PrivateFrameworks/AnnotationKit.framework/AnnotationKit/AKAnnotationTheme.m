@interface AKAnnotationTheme
+ (id)blueTheme:(int)a3;
+ (id)colorForAnnotationStyle:(int)a3 propertyName:(id)a4 pageTheme:(int)a5;
+ (id)colorForThemeItem:(id)a3 pageTheme:(int)a4;
+ (id)greenTheme:(int)a3;
+ (id)highlightTextColor:(int)a3;
+ (id)pinkTheme:(int)a3;
+ (id)purpleTheme:(int)a3;
+ (id)theme:(int)a3;
+ (id)themeDescriptions;
+ (id)themeForAnnotationStyle:(int)a3 pageTheme:(int)a4;
+ (id)themeForAnnotationStyle:(int)a3 pageTheme:(int)a4 isUnderline:(BOOL)a5;
+ (id)themeItemForAnnotationStyle:(int)a3 propertyName:(id)a4;
+ (id)underlineTheme:(int)a3;
+ (id)yellowTheme:(int)a3;
- (CGSize)noteShadowOffset;
- (UIColor)noteMarkerStrikethroughColor;
- (UIColor)noteShadowColor;
- (UIColor)notesSidebarTextColor;
- (UIFont)noteTextFont;
- (UIFont)noteTextFontInTable;
- (double)noteShadowOpacity;
- (double)noteShadowRadius;
@end

@implementation AKAnnotationTheme

+ (id)themeDescriptions
{
  if (qword_27E39A520 != -1)
  {
    sub_23F4BCBE8();
  }

  v3 = qword_27E39A528;

  return v3;
}

+ (id)themeItemForAnnotationStyle:(int)a3 propertyName:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (v6 && a3 <= 6)
  {
    v8 = off_278C7B5A0[a3];
    v9 = [a1 themeDescriptions];
    v10 = [v9 objectForKey:@"themes"];

    v11 = [v10 objectForKey:v8];
    v7 = [v11 objectForKey:v6];
  }

  return v7;
}

+ (id)colorForThemeItem:(id)a3 pageTheme:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 > 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectForKey:off_278C7B5D8[a4]];
  }

  if (a4 != 4 && !v7)
  {
    v7 = [v6 objectForKey:@"default"];
  }

  if (v7)
  {
    v8 = [MEMORY[0x277D75348] im_colorWithSRGBDescription:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)colorForAnnotationStyle:(int)a3 propertyName:(id)a4 pageTheme:(int)a5
{
  v5 = *&a5;
  v7 = [a1 themeItemForAnnotationStyle:*&a3 propertyName:a4];
  if (!v7 || ([a1 colorForThemeItem:v7 pageTheme:v5], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [MEMORY[0x277D75348] blackColor];
  }

  return v8;
}

- (UIColor)noteMarkerStrikethroughColor
{
  if (qword_27E39B2B0 != -1)
  {
    sub_23F4BCBFC();
  }

  v3 = qword_27E39B2B8;

  return v3;
}

- (UIColor)notesSidebarTextColor
{
  if (qword_27E39B2C0 != -1)
  {
    sub_23F4BCC10();
  }

  v3 = qword_27E39B2C8;

  return v3;
}

+ (id)greenTheme:(int)a3
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_23;
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_23F4075C8;
      v10[3] = &unk_278C7B560;
      v11 = 1;
      if (qword_27E39B2F0 != -1)
      {
        dispatch_once(&qword_27E39B2F0, v10);
      }

      v4 = &qword_27E39B2F8;
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23F407574;
      v12[3] = &unk_278C7B560;
      v13 = 0;
      if (qword_27E39B2E0 != -1)
      {
        dispatch_once(&qword_27E39B2E0, v12);
      }

      v4 = &qword_27E39B2E8;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F40761C;
        block[3] = &unk_278C7B560;
        v9 = 2;
        if (qword_27E39B300 != -1)
        {
          dispatch_once(&qword_27E39B300, block);
        }

        v4 = &qword_27E39B308;
        break;
      case 3:
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = sub_23F407670;
        v6[3] = &unk_278C7B560;
        v7 = 3;
        if (qword_27E39B310 != -1)
        {
          dispatch_once(&qword_27E39B310, v6);
        }

        v4 = &qword_27E39B318;
        break;
      case 4:
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_23F407520;
        v14[3] = &unk_278C7B560;
        v15 = 4;
        if (qword_27E39B2D0 != -1)
        {
          dispatch_once(&qword_27E39B2D0, v14);
        }

        v4 = &qword_27E39B2D8;
        break;
      default:
        goto LABEL_23;
    }
  }

  v3 = *v4;
LABEL_23:

  return v3;
}

+ (id)blueTheme:(int)a3
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_23;
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_23F407A34;
      v10[3] = &unk_278C7B560;
      v11 = 1;
      if (qword_27E39B340 != -1)
      {
        dispatch_once(&qword_27E39B340, v10);
      }

      v4 = &qword_27E39B348;
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23F4079E0;
      v12[3] = &unk_278C7B560;
      v13 = 0;
      if (qword_27E39B330 != -1)
      {
        dispatch_once(&qword_27E39B330, v12);
      }

      v4 = &qword_27E39B338;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F407A88;
        block[3] = &unk_278C7B560;
        v9 = 2;
        if (qword_27E39B350 != -1)
        {
          dispatch_once(&qword_27E39B350, block);
        }

        v4 = &qword_27E39B358;
        break;
      case 3:
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = sub_23F407ADC;
        v6[3] = &unk_278C7B560;
        v7 = 3;
        if (qword_27E39B360 != -1)
        {
          dispatch_once(&qword_27E39B360, v6);
        }

        v4 = &qword_27E39B368;
        break;
      case 4:
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_23F40798C;
        v14[3] = &unk_278C7B560;
        v15 = 4;
        if (qword_27E39B320 != -1)
        {
          dispatch_once(&qword_27E39B320, v14);
        }

        v4 = &qword_27E39B328;
        break;
      default:
        goto LABEL_23;
    }
  }

  v3 = *v4;
LABEL_23:

  return v3;
}

+ (id)yellowTheme:(int)a3
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_23;
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_23F407EA0;
      v10[3] = &unk_278C7B560;
      v11 = 1;
      if (qword_27E39B390 != -1)
      {
        dispatch_once(&qword_27E39B390, v10);
      }

      v4 = &qword_27E39B398;
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23F407E4C;
      v12[3] = &unk_278C7B560;
      v13 = 0;
      if (qword_27E39B380 != -1)
      {
        dispatch_once(&qword_27E39B380, v12);
      }

      v4 = &qword_27E39B388;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F407EF4;
        block[3] = &unk_278C7B560;
        v9 = 2;
        if (qword_27E39B3A0 != -1)
        {
          dispatch_once(&qword_27E39B3A0, block);
        }

        v4 = &qword_27E39B3A8;
        break;
      case 3:
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = sub_23F407F48;
        v6[3] = &unk_278C7B560;
        v7 = 3;
        if (qword_27E39B3B0 != -1)
        {
          dispatch_once(&qword_27E39B3B0, v6);
        }

        v4 = &qword_27E39B3B8;
        break;
      case 4:
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_23F407DF8;
        v14[3] = &unk_278C7B560;
        v15 = 4;
        if (qword_27E39B370 != -1)
        {
          dispatch_once(&qword_27E39B370, v14);
        }

        v4 = &qword_27E39B378;
        break;
      default:
        goto LABEL_23;
    }
  }

  v3 = *v4;
LABEL_23:

  return v3;
}

+ (id)pinkTheme:(int)a3
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_23;
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_23F40830C;
      v10[3] = &unk_278C7B560;
      v11 = 1;
      if (qword_27E39B3E0 != -1)
      {
        dispatch_once(&qword_27E39B3E0, v10);
      }

      v4 = &qword_27E39B3E8;
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23F4082B8;
      v12[3] = &unk_278C7B560;
      v13 = 0;
      if (qword_27E39B3D0 != -1)
      {
        dispatch_once(&qword_27E39B3D0, v12);
      }

      v4 = &qword_27E39B3D8;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F408360;
        block[3] = &unk_278C7B560;
        v9 = 2;
        if (qword_27E39B3F0 != -1)
        {
          dispatch_once(&qword_27E39B3F0, block);
        }

        v4 = &qword_27E39B3F8;
        break;
      case 3:
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = sub_23F4083B4;
        v6[3] = &unk_278C7B560;
        v7 = 3;
        if (qword_27E39B400 != -1)
        {
          dispatch_once(&qword_27E39B400, v6);
        }

        v4 = &qword_27E39B408;
        break;
      case 4:
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_23F408264;
        v14[3] = &unk_278C7B560;
        v15 = 4;
        if (qword_27E39B3C0 != -1)
        {
          dispatch_once(&qword_27E39B3C0, v14);
        }

        v4 = &qword_27E39B3C8;
        break;
      default:
        goto LABEL_23;
    }
  }

  v3 = *v4;
LABEL_23:

  return v3;
}

+ (id)purpleTheme:(int)a3
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_23;
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_23F408778;
      v10[3] = &unk_278C7B560;
      v11 = 1;
      if (qword_27E39B430 != -1)
      {
        dispatch_once(&qword_27E39B430, v10);
      }

      v4 = &qword_27E39B438;
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23F408724;
      v12[3] = &unk_278C7B560;
      v13 = 0;
      if (qword_27E39B420 != -1)
      {
        dispatch_once(&qword_27E39B420, v12);
      }

      v4 = &qword_27E39B428;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F4087CC;
        block[3] = &unk_278C7B560;
        v9 = 2;
        if (qword_27E39B440 != -1)
        {
          dispatch_once(&qword_27E39B440, block);
        }

        v4 = &qword_27E39B448;
        break;
      case 3:
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = sub_23F408820;
        v6[3] = &unk_278C7B560;
        v7 = 3;
        if (qword_27E39B450 != -1)
        {
          dispatch_once(&qword_27E39B450, v6);
        }

        v4 = &qword_27E39B458;
        break;
      case 4:
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_23F4086D0;
        v14[3] = &unk_278C7B560;
        v15 = 4;
        if (qword_27E39B410 != -1)
        {
          dispatch_once(&qword_27E39B410, v14);
        }

        v4 = &qword_27E39B418;
        break;
      default:
        goto LABEL_23;
    }
  }

  v3 = *v4;
LABEL_23:

  return v3;
}

+ (id)underlineTheme:(int)a3
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_23;
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_23F408BE4;
      v10[3] = &unk_278C7B560;
      v11 = 1;
      if (qword_27E39B480 != -1)
      {
        dispatch_once(&qword_27E39B480, v10);
      }

      v4 = &qword_27E39B488;
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23F408B90;
      v12[3] = &unk_278C7B560;
      v13 = 0;
      if (qword_27E39B470 != -1)
      {
        dispatch_once(&qword_27E39B470, v12);
      }

      v4 = &qword_27E39B478;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F408C38;
        block[3] = &unk_278C7B560;
        v9 = 2;
        if (qword_27E39B490 != -1)
        {
          dispatch_once(&qword_27E39B490, block);
        }

        v4 = &qword_27E39B498;
        break;
      case 3:
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = sub_23F408C8C;
        v6[3] = &unk_278C7B560;
        v7 = 3;
        if (qword_27E39B4A0 != -1)
        {
          dispatch_once(&qword_27E39B4A0, v6);
        }

        v4 = &qword_27E39B4A8;
        break;
      case 4:
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_23F408B3C;
        v14[3] = &unk_278C7B560;
        v15 = 4;
        if (qword_27E39B460 != -1)
        {
          dispatch_once(&qword_27E39B460, v14);
        }

        v4 = &qword_27E39B468;
        break;
      default:
        goto LABEL_23;
    }
  }

  v3 = *v4;
LABEL_23:

  return v3;
}

+ (id)theme:(int)a3
{
  v3 = *&a3;
  v4 = objc_alloc_init(a1);
  [v4 setPageTheme:v3];

  return v4;
}

+ (id)themeForAnnotationStyle:(int)a3 pageTheme:(int)a4
{
  v4 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v4 = [AKAnnotationTheme greenTheme:*&a4];
    }

    else if (a3 == 2)
    {
      v4 = [AKAnnotationTheme blueTheme:*&a4];
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        v4 = [AKAnnotationTheme yellowTheme:*&a4];
        break;
      case 4:
        v4 = [AKAnnotationTheme pinkTheme:*&a4];
        break;
      case 5:
        v4 = [AKAnnotationTheme purpleTheme:*&a4];
        break;
    }
  }

  return v4;
}

+ (id)themeForAnnotationStyle:(int)a3 pageTheme:(int)a4 isUnderline:(BOOL)a5
{
  v6 = *&a4;
  v7 = [a1 themeForAnnotationStyle:*&a3 pageTheme:?];
  v8 = v7;
  if (v7 || !a5)
  {
    v9 = v7;
  }

  else
  {
    v9 = [AKAnnotationTheme underlineTheme:v6];
  }

  v10 = v9;

  return v10;
}

+ (id)highlightTextColor:(int)a3
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_23;
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_23F4092C4;
      v10[3] = &unk_278C7B580;
      v10[4] = a1;
      v11 = 1;
      if (qword_27E39B4D0 != -1)
      {
        dispatch_once(&qword_27E39B4D0, v10);
      }

      v4 = &qword_27E39B4D8;
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23F40920C;
      v12[3] = &unk_278C7B580;
      v12[4] = a1;
      v13 = 0;
      if (qword_27E39B4C0 != -1)
      {
        dispatch_once(&qword_27E39B4C0, v12);
      }

      v4 = &qword_27E39B4C8;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F40937C;
        block[3] = &unk_278C7B580;
        block[4] = a1;
        v9 = 2;
        if (qword_27E39B4E0 != -1)
        {
          dispatch_once(&qword_27E39B4E0, block);
        }

        v4 = &qword_27E39B4E8;
        break;
      case 3:
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = sub_23F409434;
        v6[3] = &unk_278C7B580;
        v6[4] = a1;
        v7 = 3;
        if (qword_27E39B4F0 != -1)
        {
          dispatch_once(&qword_27E39B4F0, v6);
        }

        v4 = &qword_27E39B4F8;
        break;
      case 4:
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_23F409154;
        v14[3] = &unk_278C7B580;
        v14[4] = a1;
        v15 = 4;
        if (qword_27E39B4B0 != -1)
        {
          dispatch_once(&qword_27E39B4B0, v14);
        }

        v4 = &qword_27E39B4B8;
        break;
      default:
        goto LABEL_23;
    }
  }

  v3 = *v4;
LABEL_23:

  return v3;
}

- (double)noteShadowRadius
{
  if (qword_27E39B500 != -1)
  {
    sub_23F4BCC24();
  }

  return *&qword_27E39B508;
}

- (double)noteShadowOpacity
{
  if (qword_27E39B510 != -1)
  {
    sub_23F4BCC38();
  }

  return *&qword_27E39B518;
}

- (UIColor)noteShadowColor
{
  if (qword_27E39B520 != -1)
  {
    sub_23F4BCC4C();
  }

  v3 = qword_27E39B528;

  return v3;
}

- (CGSize)noteShadowOffset
{
  if (qword_27E39B530 != -1)
  {
    sub_23F4BCC60();
  }

  v2 = *&qword_27E39B538;
  v3 = *&qword_27E39B540;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIFont)noteTextFont
{
  if (qword_27E39B548 != -1)
  {
    sub_23F4BCC74();
  }

  v3 = qword_27E39B550;

  return v3;
}

- (UIFont)noteTextFontInTable
{
  if (qword_27E39B558 != -1)
  {
    sub_23F4BCC88();
  }

  v3 = qword_27E39B560;

  return v3;
}

@end