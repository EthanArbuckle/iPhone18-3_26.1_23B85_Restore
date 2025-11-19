@interface PHBottomBarButtonConfiguration
+ (double)defaultHeight;
+ (double)defaultWidth;
+ (double)smallWidth;
+ (id)bottomBarGlyphWithGameControllerSFSymbol:(id)a3 sizeCategory:(int64_t)a4;
+ (id)bottomBarGlyphWithSymbolType:(int64_t)a3 sizeCategory:(int64_t)a4;
+ (id)bottomBarImageWithName:(id)a3 color:(id)a4 inBundle:(id)a5;
+ (id)imageColorForState:(unint64_t)a3;
+ (id)imageForAction:(int64_t)a3 callState:(int64_t)a4;
+ (id)textStyleForSizeCategory:(int64_t)a3;
+ (int64_t)symbolScaleForSymbolType:(int64_t)a3 sizeCategory:(int64_t)a4;
+ (int64_t)weightForSymbolType:(int64_t)a3;
- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)a3;
- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)a3 diameter:(double)a4 callState:(int64_t)a5 sizeCategory:(int64_t)a6 captureView:(id)a7 gameControllerContext:(id)a8;
- (_UIVisualEffectBackdropView)captureView;
@end

@implementation PHBottomBarButtonConfiguration

+ (double)defaultHeight
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == &dword_0 + 1)
  {

    goto LABEL_4;
  }

  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_4 + 1)
  {
LABEL_4:
    v5 = +[PHUIConfiguration screenSize]- 10;
    if (v5 < 6)
    {
      return dbl_31170[v5];
    }

    if (+[PHUIConfiguration inCallBottomBarSpacing]== &dword_4 + 2)
    {
      return 82.0;
    }

    v14 = +[PHUIConfiguration inCallBottomBarSpacing];
    result = 72.0;
    if (v14 == &dword_0 + 3)
    {
      return 82.0;
    }

    return result;
  }

  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  if (v9 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 * 0.1976;
  return roundf(v13);
}

+ (double)defaultWidth
{
  v2 = objc_opt_class();

  [v2 defaultHeight];
  return result;
}

+ (double)smallWidth
{
  v2 = objc_opt_class();

  [v2 smallHeight];
  return result;
}

+ (id)imageColorForState:(unint64_t)a3
{
  if (a3 == 4)
  {
    v3 = +[UIColor blackColor];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[UIColor whiteColor];
  }

  return v3;
}

+ (id)imageForAction:(int64_t)a3 callState:(int64_t)a4
{
  if (a3 == 15 && a4 == 1)
  {
    v4 = +[UIColor whiteColor];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = @"end_call_voip";
LABEL_7:
    v7 = [PHBottomBarButtonConfiguration bottomBarImageWithName:v6 color:v4 inBundle:v5];
LABEL_8:
    v8 = v7;

    goto LABEL_9;
  }

  if (a3 == 22)
  {
    v4 = [TUCallCenter sharedInstance:22];
    v5 = [v4 routeController];
    v7 = [v5 audioRouteGlyph];
    goto LABEL_8;
  }

  if (a3 == 21)
  {
    v4 = [UIColor whiteColor:21];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = @"icon-mute-small";
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)a3 diameter:(double)a4 callState:(int64_t)a5 sizeCategory:(int64_t)a6 captureView:(id)a7 gameControllerContext:(id)a8
{
  obj = a7;
  v14 = a8;
  v15 = [objc_opt_class() imageColorForState:0];
  v16 = +[UIDevice currentDevice];
  v17 = [v16 userInterfaceIdiom];

  +[PHUIConfiguration ambientInCallControlSize];
  v160 = v15;
  v19 = v18;
  switch(a3)
  {
    case 1:
      v144 = a3;
      v73 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v73 localizedStringForKey:@"ACCEPT" value:&stru_50D80 table:@"BottomBar"];

      v74 = [v14 sfSymbolForButton:1];
      if (v74)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v74 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v158 = a6;
      v159 = v14;
      v157 = a5;
      if (a5 == 1)
      {
        v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:10 sizeCategory:a6];
        v117 = [objc_opt_class() voipTintColor];
      }

      else
      {
        if (a6 == 1 || v17 != &dword_0 + 1 || v19 == a4)
        {
          v122 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:a6, v144];
        }

        else
        {
          v122 = [UIImage tpImageForSymbolType:1 textStyle:UIFontTextStyleTitle1 scale:2 isStaticSize:1];
        }

        v23 = v122;
        v117 = [objc_opt_class() systemTintColor];
      }

      goto LABEL_152;
    case 2:
      v149 = a3;
      v75 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v75 localizedStringForKey:@"ACCEPT" value:&stru_50D80 table:@"BottomBar"];

      v68 = [v14 sfSymbolForButton:1];
      v159 = v14;
      v157 = a5;
      if (v68)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v68 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v118 = 30;
      goto LABEL_134;
    case 3:
      v149 = a3;
      v67 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v67 localizedStringForKey:@"ACCEPT" value:&stru_50D80 table:@"BottomBar"];

      v68 = [v14 sfSymbolForButton:1];
      v159 = v14;
      v157 = a5;
      if (v68)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v68 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v118 = 5;
LABEL_134:
      v158 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v118 sizeCategory:a6, v149];
      v20 = [objc_opt_class() systemTintColor];
      goto LABEL_173;
    case 4:
      v159 = v14;
      v150 = a3;
      if (a5 > 2)
      {
        v109 = @"end_voip_accept";
        if (a5 != 4)
        {
          v109 = 0;
        }

        if (a5 == 3)
        {
          v68 = @"end_accept_voip";
        }

        else
        {
          v68 = v109;
        }
      }

      else if (a5 == 1)
      {
        v68 = @"end_voip_accept_voip";
      }

      else if (a5 == 2)
      {
        v70 = +[PHUIConfiguration inCallBottomBarAssetSize];
        v71 = @"end_accept";
        if (v70 == &dword_0 + 3)
        {
          v71 = @"end_accept_large";
        }

        v68 = v71;
      }

      else
      {
        v68 = 0;
      }

      v113 = [NSBundle bundleForClass:objc_opt_class()];
      v114 = v113;
      v115 = @"END_+_ACCEPT";
      goto LABEL_168;
    case 5:
      v159 = v14;
      v144 = a3;
      if ((a5 - 1) > 3)
      {
        v53 = 0;
      }

      else
      {
        v53 = off_4C800[a5 - 1];
      }

      v108 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v108 localizedStringForKey:@"ENDHOLD_+_ACCEPT" value:&stru_50D80 table:@"BottomBar"];

      v74 = [v14 sfSymbolForButton:1];
      v157 = a5;
      v158 = a6;
      if (v74)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v74 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v116 = [NSBundle bundleForClass:objc_opt_class()];
      v23 = [UIImage imageNamed:v53 inBundle:v116];

      v117 = +[UIColor clearColor];
LABEL_152:
      v20 = v117;
      goto LABEL_153;
    case 6:
      v68 = 0;
      v159 = v14;
      v150 = a3;
      if (a5 > 2)
      {
        if (a5 == 4)
        {
LABEL_114:
          v111 = +[PHUIConfiguration inCallBottomBarAssetSize];
          v112 = @"hold_accept";
          if (v111 == &dword_0 + 3)
          {
            v112 = @"hold_accept_large";
          }

          v68 = v112;
LABEL_117:
          v113 = [NSBundle bundleForClass:objc_opt_class()];
          v114 = v113;
          v115 = @"HOLD_+_ACCEPT";
LABEL_168:
          v24 = [v113 localizedStringForKey:v115 value:&stru_50D80 table:{@"BottomBar", v150}];

          v126 = [v159 sfSymbolForButton:1];
          v157 = a5;
          v158 = a6;
          if (v126)
          {
            v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v126 sizeCategory:a6];
          }

          else
          {
            v21 = 0;
          }

          v139 = [NSBundle bundleForClass:objc_opt_class()];
          v23 = [UIImage imageNamed:v68 inBundle:v139];

          v127 = +[UIColor clearColor];
LABEL_172:
          v20 = v127;

LABEL_173:
LABEL_174:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          goto LABEL_175;
        }

        if (a5 != 3)
        {
          goto LABEL_117;
        }
      }

      else if (a5 != 1)
      {
        if (a5 != 2)
        {
          goto LABEL_117;
        }

        goto LABEL_114;
      }

      v68 = @"hold_accept_voip";
      goto LABEL_117;
    case 7:
      v153 = a3;
      v77 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v77 localizedStringForKey:@"DECLINE" value:&stru_50D80 table:@"BottomBar"];

      v74 = [v14 sfSymbolForButton:2];
      if (v74)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v74 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v157 = a5;
      v158 = a6;
      if ((a5 & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v123 = 11;
      }

      else
      {
        if (a6 != 1 && v17 == &dword_0 + 1 && v19 != a4)
        {
          v124 = [UIImage tpImageForSymbolType:2 textStyle:UIFontTextStyleTitle1 scale:2 isStaticSize:1];
          goto LABEL_156;
        }

        v123 = 2;
      }

      v124 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v123 sizeCategory:a6, v153];
LABEL_156:
      v23 = v124;
      v133 = +[PHBottomBarButtonConfiguration usesGlass];
      v134 = +[UIColor systemRedColor];
      v20 = v134;
      v159 = v14;
      if (v133)
      {
        v135 = [v134 colorWithAlphaComponent:0.8];

        v20 = v135;
      }

LABEL_153:

      goto LABEL_174;
    case 8:
      v151 = a3;
      v72 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v72 localizedStringForKey:@"DECLINE" value:&stru_50D80 table:@"BottomBar"];

      v68 = [v14 sfSymbolForButton:2];
      v157 = a5;
      if (v68)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v68 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v158 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:8 sizeCategory:a6, v151];
      v119 = +[PHBottomBarButtonConfiguration usesGlass];
      v120 = +[UIColor systemRedColor];
      v20 = v120;
      v159 = v14;
      if (v119)
      {
        v121 = [v120 colorWithAlphaComponent:0.8];

        v20 = v121;
      }

      goto LABEL_173;
    case 9:
      v155 = a3;
      v157 = a5;
      v159 = v14;
      v82 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v82 localizedStringForKey:@"SEND_MESSAGE" value:&stru_50D80 table:@"BottomBar"];

      v80 = 14;
      goto LABEL_60;
    case 10:
      v144 = a3;
      v157 = a5;
      v159 = v14;
      v62 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v62 localizedStringForKey:@"SCREENING_BLOCK" value:&stru_50D80 table:@"BottomBar"];

      v158 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:15 sizeCategory:a6];
      v63 = +[UIColor systemGray3Color];
      goto LABEL_70;
    case 11:
      v155 = a3;
      v157 = a5;
      v159 = v14;
      v79 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v79 localizedStringForKey:@"SCREENING_STOP" value:&stru_50D80 table:@"BottomBar"];

      v80 = 9;
LABEL_60:
      v158 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v80 sizeCategory:a6, v155];
      v20 = +[UIColor clearColor];
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        goto LABEL_111;
      }

      v28 = +[UIColorEffect inCallControls];
      v31 = [UIBlurEffect effectWithStyle:11];
      goto LABEL_105;
    case 12:
      v147 = a3;
      v157 = a5;
      v158 = a6;
      v159 = v14;
      v49 = +[UIColor whiteColor];
      v167[0] = v49;
      v50 = +[UIColor clearColor];
      v167[1] = v50;
      v51 = [NSArray arrayWithObjects:v167 count:2];
      v23 = [UIImage tpImageForSymbolType:14 textStyle:UIFontTextStyleTitle2 scale:1 paletteColors:v51 isStaticSize:1];

      v52 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v52 localizedStringForKey:@"SEND_MESSAGE" value:&stru_50D80 table:@"BottomBar"];

      goto LABEL_91;
    case 13:
      v147 = a3;
      v157 = a5;
      v158 = a6;
      v159 = v14;
      v54 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v54 localizedStringForKey:@"CALL_BACK_LATER" value:&stru_50D80 table:@"BottomBar"];

      v55 = +[UIColor whiteColor];
      v163[0] = v55;
      v56 = +[UIColor clearColor];
      v163[1] = v56;
      v57 = [NSArray arrayWithObjects:v163 count:2];
      v23 = [UIImage tpImageForSymbolType:39 textStyle:UIFontTextStyleTitle2 scale:1 paletteColors:v57 isStaticSize:1];

      goto LABEL_91;
    case 14:
    case 16:
    case 17:
    case 23:
    case 32:
    case 33:
      v20 = +[UIColor clearColor];
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      goto LABEL_182;
    case 15:
      v88 = [v14 sfSymbolForButton:2];
      if (v88)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v88 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v158 = a6;
      v159 = v14;
      v157 = a5;
      if (a5 == 1)
      {
        v128 = +[UIColor whiteColor];
        v129 = [NSBundle bundleForClass:objc_opt_class()];
        v23 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"end_call_voip" color:v128 inBundle:v129];
      }

      else
      {
        v130 = +[UIDevice currentDevice];
        v131 = [v130 userInterfaceIdiom];

        if (v131 == &dword_0 + 1)
        {
          [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:2 sizeCategory:a6];
        }

        else
        {
          [UIImage tpHierarchicalImageForSymbolType:2 pointSize:32.0];
        }
        v23 = ;
      }

      v136 = +[PHBottomBarButtonConfiguration usesGlass];
      v137 = +[UIColor systemRedColor];
      v20 = v137;
      v144 = a3;
      if (v136)
      {
        v138 = [v137 colorWithAlphaComponent:0.8];

        v20 = v138;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      goto LABEL_163;
    case 18:
      v154 = a3;
      v157 = a5;
      v159 = v14;
      v78 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v78 localizedStringForKey:@"CALL_BACK" value:&stru_50D80 table:@"BottomBar"];

      v158 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:a6];
      goto LABEL_63;
    case 19:
      v144 = a3;
      v81 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v81 localizedStringForKey:@"CANCEL" value:&stru_50D80 table:@"BottomBar"];

      v68 = [v14 sfSymbolForButton:2];
      v158 = a6;
      v159 = v14;
      v157 = a5;
      if (v68)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v68 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v125 = [NSBundle bundleForClass:objc_opt_class()];
      v23 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"cancel" color:v15 inBundle:v125];

      v126 = +[UIColor whiteColor];
      v127 = [v126 colorWithAlphaComponent:0.400000006];
      goto LABEL_172;
    case 20:
      v144 = a3;
      v157 = a5;
      v158 = a6;
      v159 = v14;
      v47 = [NSBundle bundleForClass:objc_opt_class()];
      v48 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"in-call-camera-flip" color:v15 inBundle:v47];
      goto LABEL_67;
    case 21:
      v144 = a3;
      v158 = a6;
      v159 = v14;
      v157 = a5;
      v89 = [objc_opt_class() imageForAction:21 callState:a5];
      v90 = [objc_opt_class() imageColorForState:0];
      v23 = [v89 _flatImageWithColor:v90];

      v91 = [objc_opt_class() imageColorForState:4];
      v22 = [v89 _flatImageWithColor:v91];

      v92 = +[UIColor whiteColor];
      v20 = [v92 colorWithAlphaComponent:0.400000006];

      v93 = +[UIColor whiteColor];
      v30 = [v93 colorWithAlphaComponent:0.699999988];

      v29 = +[UIColor whiteColor];

      v28 = 0;
      v31 = 0;
      v21 = 0;
      goto LABEL_164;
    case 22:
      v158 = a6;
      v159 = v14;
      v144 = a3;
      v157 = a5;
      if (!a6)
      {
        v86 = [objc_opt_class() imageForAction:22 callState:a5];
        v23 = [v86 _flatImageWithColor:v15];
        v132 = +[UIColor whiteColor];
        v20 = [v132 colorWithAlphaComponent:0.400000006];

LABEL_68:
LABEL_81:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v21 = 0;
LABEL_163:
        v22 = 0;
        goto LABEL_164;
      }

      if (a6 != 1)
      {
LABEL_52:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v20 = 0;
LABEL_65:
        v21 = 0;
        v22 = 0;
        v23 = 0;
LABEL_164:
        v24 = 0;
        goto LABEL_176;
      }

      v69 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v69 localizedStringForKey:@"AUDIO" value:&stru_50D80 table:@"BottomBar"];

      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:12 sizeCategory:1];
LABEL_32:
      v63 = +[UIColor whiteColor];
LABEL_70:
      v20 = v63;
LABEL_111:
      v28 = 0;
LABEL_112:
      v29 = 0;
      v30 = 0;
      v31 = 0;
LABEL_113:
      v21 = 0;
LABEL_175:
      v22 = 0;
LABEL_176:
      v162.receiver = self;
      v162.super_class = PHBottomBarButtonConfiguration;
      v140 = [(PHBottomBarButtonConfiguration *)&v162 init];
      p_isa = &v140->super.isa;
      if (v140)
      {
        v140->_diameter = a4;
        v140->_action = v156;
        v140->_callState = v157;
        if (v158 == 1)
        {
          v142 = 0;
        }

        else
        {
          v142 = v24;
        }

        objc_storeStrong(&v140->_title, v142);
        objc_storeStrong(p_isa + 7, v23);
        objc_storeStrong(p_isa + 8, v22);
        objc_storeStrong(p_isa + 9, v21);
        objc_storeStrong(p_isa + 10, v20);
        objc_storeStrong(p_isa + 11, v31);
        objc_storeStrong(p_isa + 12, v30);
        objc_storeStrong(p_isa + 13, v29);
        objc_storeStrong(p_isa + 14, v24);
        objc_storeStrong(p_isa + 15, v28);
        objc_storeWeak(p_isa + 5, obj);
      }

      self = p_isa;

      v25 = self;
      v14 = v159;
LABEL_182:

      return v25;
    case 24:
      v144 = a3;
      v157 = a5;
      v158 = a6;
      v159 = v14;
      v64 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v64 localizedStringForKey:@"SEND_TO_VOICEMAL" value:&stru_50D80 table:@"BottomBar"];

      v65 = +[UIColor systemRedColor];
      v66 = [NSBundle bundleForClass:objc_opt_class()];
      v23 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"send_to_voicemail" color:v65 inBundle:v66];

      goto LABEL_32;
    case 25:
      v157 = a5;
      v158 = a6;
      v159 = v14;
      v102 = &UIFontTextStyleTitle1;
      if (v18 != a4)
      {
        v102 = &UIFontTextStyleTitle2;
      }

      v103 = *v102;
      if (v18 == a4)
      {
        v104 = 2;
      }

      else
      {
        v104 = 1;
      }

      v105 = +[UIColor whiteColor];
      v166[0] = v105;
      v106 = +[UIColor clearColor];
      v166[1] = v106;
      v107 = [NSArray arrayWithObjects:v166 count:2];
      v23 = [UIImage tpImageForSymbolType:31 textStyle:v103 scale:v104 paletteColors:v107 isStaticSize:1];

      v43 = [NSBundle bundleForClass:objc_opt_class()];
      v44 = v43;
      v45 = @"SEND_TO_CALL_SCREENING";
      goto LABEL_90;
    case 26:
      v157 = a5;
      v158 = a6;
      v159 = v14;
      v37 = &UIFontTextStyleTitle1;
      if (v18 != a4)
      {
        v37 = &UIFontTextStyleTitle2;
      }

      v38 = *v37;
      if (v18 == a4)
      {
        v39 = 2;
      }

      else
      {
        v39 = 1;
      }

      v40 = +[UIColor whiteColor];
      v165[0] = v40;
      v41 = +[UIColor clearColor];
      v165[1] = v41;
      v42 = [NSArray arrayWithObjects:v165 count:2];
      v23 = [UIImage tpImageForSymbolType:96 textStyle:v38 scale:v39 paletteColors:v42 isStaticSize:1];

      v43 = [NSBundle bundleForClass:objc_opt_class()];
      v44 = v43;
      v45 = @"SEND_TO_LIVE_REPLY";
      goto LABEL_90;
    case 27:
      v157 = a5;
      v158 = a6;
      v159 = v14;
      v94 = &UIFontTextStyleTitle1;
      if (v18 != a4)
      {
        v94 = &UIFontTextStyleTitle2;
      }

      v95 = *v94;
      if (v18 == a4)
      {
        v96 = 2;
      }

      else
      {
        v96 = 1;
      }

      v97 = +[UIColor whiteColor];
      v164[0] = v97;
      v98 = +[UIColor clearColor];
      v164[1] = v98;
      v99 = [NSArray arrayWithObjects:v164 count:2];
      v23 = [UIImage tpImageForSymbolType:94 textStyle:v95 scale:v96 paletteColors:v99 isStaticSize:1];

      v43 = [NSBundle bundleForClass:objc_opt_class()];
      v44 = v43;
      v45 = @"SCREENING_MORE";
LABEL_90:
      v24 = [v43 localizedStringForKey:v45 value:&stru_50D80 table:@"BottomBar"];

LABEL_91:
      v20 = +[UIColor clearColor];
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        goto LABEL_111;
      }

      v28 = +[UIColorEffect inCallControls];
      goto LABEL_112;
    case 28:
      v144 = a3;
      v157 = a5;
      v158 = a6;
      v159 = v14;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:a6];
      v20 = +[UIColor systemGreenColor];
      goto LABEL_81;
    case 29:
      v154 = a3;
      v157 = a5;
      v158 = a6;
      v159 = v14;
      v83 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v83 localizedStringForKey:@"LEAVE_A_MESSAGE" value:&stru_50D80 table:@"BottomBar"];

      v84 = +[UIColor whiteColor];
      v85 = [NSBundle bundleForClass:objc_opt_class()];
      v23 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"leave-a-message" color:v84 inBundle:v85];

LABEL_63:
      v63 = +[UIColor systemGreenColor];
      goto LABEL_70;
    case 30:
      v152 = a3;
      v157 = a5;
      v159 = v14;
      v76 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v76 localizedStringForKey:@"SEND_MESSAGE" value:&stru_50D80 table:@"BottomBar"];

      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:14 sizeCategory:a6];
      v158 = a6;
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        v31 = 0;
      }

      else
      {
        v31 = [UIBlurEffect effectWithStyle:11];
      }

      v20 = +[UIColor clearColor];
      v28 = 0;
      goto LABEL_105;
    case 31:
      v144 = a3;
      v157 = a5;
      v158 = a6;
      v159 = v14;
      v20 = +[UIColor whiteColor];
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      goto LABEL_65;
    case 34:
      v144 = a3;
      v157 = a5;
      v158 = a6;
      v159 = v14;
      v47 = [NSBundle bundleForClass:objc_opt_class()];
      v48 = [UIImage imageNamed:@"in-call-button-effects" inBundle:v47];
LABEL_67:
      v23 = v48;

      v86 = +[UIColor whiteColor];
      v20 = [v86 colorWithAlphaComponent:0.400000006];
      goto LABEL_68;
    case 35:
      v145 = a3;
      v157 = a5;
      v159 = v14;
      v46 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v46 localizedStringForKey:@"BLOCK_CALLER" value:&stru_50D80 table:@"BottomBar"];

      v33 = 15;
      goto LABEL_14;
    case 36:
      v145 = a3;
      v157 = a5;
      v159 = v14;
      v32 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v32 localizedStringForKey:@"CREATE_CONTACT" value:&stru_50D80 table:@"BottomBar"];

      v33 = 89;
LABEL_14:
      v158 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v33 sizeCategory:a6, v145];
      v20 = +[UIColor clearColor];
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        goto LABEL_111;
      }

      v31 = [UIBlurEffect effectWithStyle:11];
      v28 = +[UIColorEffect inCallControls];
LABEL_105:
      v29 = 0;
      v30 = 0;
      goto LABEL_113;
    case 37:
      v146 = a3;
      v157 = a5;
      v159 = v14;
      v34 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v34 localizedStringForKey:@"Close" value:&stru_50D80 table:@"BottomBar"];

      v35 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:8 sizeCategory:a6];
      v36 = +[UIColor systemBlackColor];
      v23 = [v35 tpFlattenedWithColor:v36];

      v158 = a6;
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        v28 = 0;
        v31 = 0;
      }

      else
      {
        v31 = [UIBlurEffect effectWithStyle:11];
        v28 = +[UIColorEffect inCallControls];
      }

      v20 = +[UIColor systemWhiteColor];
      goto LABEL_105;
    case 38:
      v144 = a3;
      v157 = a5;
      v158 = a6;
      v159 = v14;
      v26 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v26 localizedStringForKey:@"ALERT_ACTION_TEXT_BUTTON_LABEL" value:&stru_50D80 table:@"Localizable-Stewie"];

      v27 = [NSBundle bundleForClass:objc_opt_class()];
      v23 = [UIImage imageNamed:@"text_sos_icon" inBundle:v27];

      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v20 = 0;
      goto LABEL_113;
    case 39:
      v158 = a6;
      v159 = v14;
      v157 = a5;
      if (a5 == 1)
      {
        v100 = +[UIColor whiteColor];
        v101 = [NSBundle bundleForClass:objc_opt_class()];
        v23 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"end_call_voip" color:v100 inBundle:v101];
      }

      else
      {
        v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:2 sizeCategory:a6];
      }

      v20 = +[UIColor systemRedColor];
      v110 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v110 localizedStringForKey:@"ALERT_ACTION_END_BUTTON_LABEL" value:&stru_50D80 table:@"Localizable-Stewie"];

      goto LABEL_111;
    case 40:
      v144 = a3;
      v157 = a5;
      v159 = v14;
      v87 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v87 localizedStringForKey:@"PICK_UP" value:&stru_50D80 table:@"BottomBar"];

      v158 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:a6];
      v63 = [objc_opt_class() systemTintColor];
      goto LABEL_70;
    case 41:
      v148 = a3;
      v157 = a5;
      v58 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v58 localizedStringForKey:@"GAME_CONTROLLER_FOCUS" value:&stru_50D80 table:@"BottomBar"];

      v159 = v14;
      v59 = [v14 sfSymbolForButton:0];
      v158 = a6;
      v60 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v59 sizeCategory:a6];
      v61 = +[UIColor systemBlackColor];
      v23 = [v60 tpFlattenedWithColor:v61];

      v28 = 0;
      v31 = 0;
      if (!+[PHBottomBarButtonConfiguration usesGlass])
      {
        v31 = [UIBlurEffect effectWithStyle:11];
        v28 = +[UIColorEffect inCallControls];
      }

      v20 = +[UIColor systemWhiteColor];

      goto LABEL_105;
    default:
      v144 = a3;
      v157 = a5;
      v158 = a6;
      v159 = v14;
      goto LABEL_52;
  }
}

- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)a3
{
  [objc_opt_class() defaultWidth];

  return [(PHBottomBarButtonConfiguration *)self initWithAction:a3 diameter:2 callState:?];
}

+ (id)bottomBarGlyphWithSymbolType:(int64_t)a3 sizeCategory:(int64_t)a4
{
  v7 = [a1 textStyleForSizeCategory:a4];
  v8 = +[UIImage tpImageForSymbolType:textStyle:scale:symbolWeight:](UIImage, "tpImageForSymbolType:textStyle:scale:symbolWeight:", a3, v7, [a1 symbolScaleForSymbolType:a3 sizeCategory:a4], objc_msgSend(a1, "weightForSymbolType:", a3));

  return v8;
}

+ (id)bottomBarGlyphWithGameControllerSFSymbol:(id)a3 sizeCategory:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 textStyleForSizeCategory:a4];
  v8 = [UIImage tpImageForGameControllerSFSymbol:v6 textStyle:v7 scale:-1 symbolWeight:7];

  return v8;
}

+ (int64_t)weightForSymbolType:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFCLL) == 8)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

+ (id)textStyleForSizeCategory:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = &UIFontTextStyleBody;
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v4 = &UIFontTextStyleLargeTitle;
  }

  a1 = *v4;
LABEL_6:

  return a1;
}

+ (int64_t)symbolScaleForSymbolType:(int64_t)a3 sizeCategory:(int64_t)a4
{
  if (a4 != 1 || a3 > 0x24)
  {
    return -1;
  }

  if (((1 << a3) & 0x1000001120) != 0)
  {
    return 2;
  }

  if (((1 << a3) & 6) != 0)
  {
    return 3;
  }

  if (a3 == 9)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

+ (id)bottomBarImageWithName:(id)a3 color:(id)a4 inBundle:(id)a5
{
  v7 = a4;
  v8 = [UIImage imageNamed:a3 inBundle:a5];
  v9 = [v8 tpFlattenedWithColor:v7];

  return v9;
}

- (_UIVisualEffectBackdropView)captureView
{
  WeakRetained = objc_loadWeakRetained(&self->_captureView);

  return WeakRetained;
}

@end