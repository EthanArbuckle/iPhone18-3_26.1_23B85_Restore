@interface PHBottomBarButtonConfiguration
+ (double)defaultHeight;
+ (double)defaultWidth;
+ (double)smallWidth;
+ (id)bottomBarGlyphWithGameControllerSFSymbol:(id)symbol sizeCategory:(int64_t)category;
+ (id)bottomBarGlyphWithSymbolType:(int64_t)type sizeCategory:(int64_t)category;
+ (id)bottomBarImageWithName:(id)name color:(id)color inBundle:(id)bundle;
+ (id)imageColorForState:(unint64_t)state;
+ (id)imageForAction:(int64_t)action callState:(int64_t)state;
+ (id)textStyleForSizeCategory:(int64_t)category;
+ (int64_t)symbolScaleForSymbolType:(int64_t)type sizeCategory:(int64_t)category;
+ (int64_t)weightForSymbolType:(int64_t)type;
- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)action;
- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)action diameter:(double)diameter callState:(int64_t)state sizeCategory:(int64_t)category captureView:(id)view gameControllerContext:(id)context;
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
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_4 + 1)
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

+ (id)imageColorForState:(unint64_t)state
{
  if (state == 4)
  {
    v3 = +[UIColor blackColor];
  }

  else if (state)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[UIColor whiteColor];
  }

  return v3;
}

+ (id)imageForAction:(int64_t)action callState:(int64_t)state
{
  if (action == 15 && state == 1)
  {
    v4 = +[UIColor whiteColor];
    routeController = [NSBundle bundleForClass:objc_opt_class()];
    v6 = @"end_call_voip";
LABEL_7:
    audioRouteGlyph = [PHBottomBarButtonConfiguration bottomBarImageWithName:v6 color:v4 inBundle:routeController];
LABEL_8:
    v8 = audioRouteGlyph;

    goto LABEL_9;
  }

  if (action == 22)
  {
    v4 = [TUCallCenter sharedInstance:22];
    routeController = [v4 routeController];
    audioRouteGlyph = [routeController audioRouteGlyph];
    goto LABEL_8;
  }

  if (action == 21)
  {
    v4 = [UIColor whiteColor:21];
    routeController = [NSBundle bundleForClass:objc_opt_class()];
    v6 = @"icon-mute-small";
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)action diameter:(double)diameter callState:(int64_t)state sizeCategory:(int64_t)category captureView:(id)view gameControllerContext:(id)context
{
  obj = view;
  contextCopy = context;
  v15 = [objc_opt_class() imageColorForState:0];
  v16 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v16 userInterfaceIdiom];

  +[PHUIConfiguration ambientInCallControlSize];
  v160 = v15;
  v19 = v18;
  switch(action)
  {
    case 1:
      actionCopy32 = action;
      v73 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v73 localizedStringForKey:@"ACCEPT" value:&stru_50D80 table:@"BottomBar"];

      v74 = [contextCopy sfSymbolForButton:1];
      if (v74)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v74 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      categoryCopy32 = category;
      v159 = contextCopy;
      stateCopy35 = state;
      if (state == 1)
      {
        actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:10 sizeCategory:category];
        voipTintColor = [objc_opt_class() voipTintColor];
      }

      else
      {
        if (category == 1 || userInterfaceIdiom != &dword_0 + 1 || v19 == diameter)
        {
          actionCopy32 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:category, actionCopy32];
        }

        else
        {
          actionCopy32 = [UIImage tpImageForSymbolType:1 textStyle:UIFontTextStyleTitle1 scale:2 isStaticSize:1];
        }

        actionCopy3 = actionCopy32;
        voipTintColor = [objc_opt_class() systemTintColor];
      }

      goto LABEL_152;
    case 2:
      actionCopy3 = action;
      v75 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v75 localizedStringForKey:@"ACCEPT" value:&stru_50D80 table:@"BottomBar"];

      v68 = [contextCopy sfSymbolForButton:1];
      v159 = contextCopy;
      stateCopy35 = state;
      if (v68)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v68 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      v118 = 30;
      goto LABEL_134;
    case 3:
      actionCopy3 = action;
      v67 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v67 localizedStringForKey:@"ACCEPT" value:&stru_50D80 table:@"BottomBar"];

      v68 = [contextCopy sfSymbolForButton:1];
      v159 = contextCopy;
      stateCopy35 = state;
      if (v68)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v68 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      v118 = 5;
LABEL_134:
      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v118 sizeCategory:category, actionCopy3];
      systemTintColor = [objc_opt_class() systemTintColor];
      goto LABEL_173;
    case 4:
      v159 = contextCopy;
      actionCopy6 = action;
      if (state > 2)
      {
        v109 = @"end_voip_accept";
        if (state != 4)
        {
          v109 = 0;
        }

        if (state == 3)
        {
          v68 = @"end_accept_voip";
        }

        else
        {
          v68 = v109;
        }
      }

      else if (state == 1)
      {
        v68 = @"end_voip_accept_voip";
      }

      else if (state == 2)
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
      v159 = contextCopy;
      actionCopy32 = action;
      if ((state - 1) > 3)
      {
        v53 = 0;
      }

      else
      {
        v53 = off_4C800[state - 1];
      }

      v108 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v108 localizedStringForKey:@"ENDHOLD_+_ACCEPT" value:&stru_50D80 table:@"BottomBar"];

      v74 = [contextCopy sfSymbolForButton:1];
      stateCopy35 = state;
      categoryCopy32 = category;
      if (v74)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v74 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      v116 = [NSBundle bundleForClass:objc_opt_class()];
      actionCopy3 = [UIImage imageNamed:v53 inBundle:v116];

      voipTintColor = +[UIColor clearColor];
LABEL_152:
      systemTintColor = voipTintColor;
      goto LABEL_153;
    case 6:
      v68 = 0;
      v159 = contextCopy;
      actionCopy6 = action;
      if (state > 2)
      {
        if (state == 4)
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
          v24 = [v113 localizedStringForKey:v115 value:&stru_50D80 table:{@"BottomBar", actionCopy6}];

          v126 = [v159 sfSymbolForButton:1];
          stateCopy35 = state;
          categoryCopy32 = category;
          if (v126)
          {
            v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v126 sizeCategory:category];
          }

          else
          {
            v21 = 0;
          }

          v139 = [NSBundle bundleForClass:objc_opt_class()];
          actionCopy3 = [UIImage imageNamed:v68 inBundle:v139];

          v127 = +[UIColor clearColor];
LABEL_172:
          systemTintColor = v127;

LABEL_173:
LABEL_174:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          goto LABEL_175;
        }

        if (state != 3)
        {
          goto LABEL_117;
        }
      }

      else if (state != 1)
      {
        if (state != 2)
        {
          goto LABEL_117;
        }

        goto LABEL_114;
      }

      v68 = @"hold_accept_voip";
      goto LABEL_117;
    case 7:
      actionCopy7 = action;
      v77 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v77 localizedStringForKey:@"DECLINE" value:&stru_50D80 table:@"BottomBar"];

      v74 = [contextCopy sfSymbolForButton:2];
      if (v74)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v74 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      stateCopy35 = state;
      categoryCopy32 = category;
      if ((state & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v123 = 11;
      }

      else
      {
        if (category != 1 && userInterfaceIdiom == &dword_0 + 1 && v19 != diameter)
        {
          actionCopy7 = [UIImage tpImageForSymbolType:2 textStyle:UIFontTextStyleTitle1 scale:2 isStaticSize:1];
          goto LABEL_156;
        }

        v123 = 2;
      }

      actionCopy7 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v123 sizeCategory:category, actionCopy7];
LABEL_156:
      actionCopy3 = actionCopy7;
      v133 = +[PHBottomBarButtonConfiguration usesGlass];
      v134 = +[UIColor systemRedColor];
      systemTintColor = v134;
      v159 = contextCopy;
      if (v133)
      {
        v135 = [v134 colorWithAlphaComponent:0.8];

        systemTintColor = v135;
      }

LABEL_153:

      goto LABEL_174;
    case 8:
      actionCopy8 = action;
      v72 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v72 localizedStringForKey:@"DECLINE" value:&stru_50D80 table:@"BottomBar"];

      v68 = [contextCopy sfSymbolForButton:2];
      stateCopy35 = state;
      if (v68)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v68 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:8 sizeCategory:category, actionCopy8];
      v119 = +[PHBottomBarButtonConfiguration usesGlass];
      v120 = +[UIColor systemRedColor];
      systemTintColor = v120;
      v159 = contextCopy;
      if (v119)
      {
        v121 = [v120 colorWithAlphaComponent:0.8];

        systemTintColor = v121;
      }

      goto LABEL_173;
    case 9:
      actionCopy11 = action;
      stateCopy35 = state;
      v159 = contextCopy;
      v82 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v82 localizedStringForKey:@"SEND_MESSAGE" value:&stru_50D80 table:@"BottomBar"];

      v80 = 14;
      goto LABEL_60;
    case 10:
      actionCopy32 = action;
      stateCopy35 = state;
      v159 = contextCopy;
      v62 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v62 localizedStringForKey:@"SCREENING_BLOCK" value:&stru_50D80 table:@"BottomBar"];

      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:15 sizeCategory:category];
      systemTintColor2 = +[UIColor systemGray3Color];
      goto LABEL_70;
    case 11:
      actionCopy11 = action;
      stateCopy35 = state;
      v159 = contextCopy;
      v79 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v79 localizedStringForKey:@"SCREENING_STOP" value:&stru_50D80 table:@"BottomBar"];

      v80 = 9;
LABEL_60:
      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v80 sizeCategory:category, actionCopy11];
      systemTintColor = +[UIColor clearColor];
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        goto LABEL_111;
      }

      v28 = +[UIColorEffect inCallControls];
      v31 = [UIBlurEffect effectWithStyle:11];
      goto LABEL_105;
    case 12:
      actionCopy13 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      v49 = +[UIColor whiteColor];
      v167[0] = v49;
      v50 = +[UIColor clearColor];
      v167[1] = v50;
      v51 = [NSArray arrayWithObjects:v167 count:2];
      actionCopy3 = [UIImage tpImageForSymbolType:14 textStyle:UIFontTextStyleTitle2 scale:1 paletteColors:v51 isStaticSize:1];

      v52 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v52 localizedStringForKey:@"SEND_MESSAGE" value:&stru_50D80 table:@"BottomBar"];

      goto LABEL_91;
    case 13:
      actionCopy13 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      v54 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v54 localizedStringForKey:@"CALL_BACK_LATER" value:&stru_50D80 table:@"BottomBar"];

      v55 = +[UIColor whiteColor];
      v163[0] = v55;
      v56 = +[UIColor clearColor];
      v163[1] = v56;
      v57 = [NSArray arrayWithObjects:v163 count:2];
      actionCopy3 = [UIImage tpImageForSymbolType:39 textStyle:UIFontTextStyleTitle2 scale:1 paletteColors:v57 isStaticSize:1];

      goto LABEL_91;
    case 14:
    case 16:
    case 17:
    case 23:
    case 32:
    case 33:
      systemTintColor = +[UIColor clearColor];
      v21 = 0;
      v22 = 0;
      actionCopy3 = 0;
      v24 = 0;
      selfCopy = 0;
      goto LABEL_182;
    case 15:
      v88 = [contextCopy sfSymbolForButton:2];
      if (v88)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v88 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      categoryCopy32 = category;
      v159 = contextCopy;
      stateCopy35 = state;
      if (state == 1)
      {
        v128 = +[UIColor whiteColor];
        v129 = [NSBundle bundleForClass:objc_opt_class()];
        actionCopy3 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"end_call_voip" color:v128 inBundle:v129];
      }

      else
      {
        v130 = +[UIDevice currentDevice];
        userInterfaceIdiom2 = [v130 userInterfaceIdiom];

        if (userInterfaceIdiom2 == &dword_0 + 1)
        {
          [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:2 sizeCategory:category];
        }

        else
        {
          [UIImage tpHierarchicalImageForSymbolType:2 pointSize:32.0];
        }
        actionCopy3 = ;
      }

      v136 = +[PHBottomBarButtonConfiguration usesGlass];
      v137 = +[UIColor systemRedColor];
      systemTintColor = v137;
      actionCopy32 = action;
      if (v136)
      {
        v138 = [v137 colorWithAlphaComponent:0.8];

        systemTintColor = v138;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      goto LABEL_163;
    case 18:
      actionCopy22 = action;
      stateCopy35 = state;
      v159 = contextCopy;
      v78 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v78 localizedStringForKey:@"CALL_BACK" value:&stru_50D80 table:@"BottomBar"];

      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:category];
      goto LABEL_63;
    case 19:
      actionCopy32 = action;
      v81 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v81 localizedStringForKey:@"CANCEL" value:&stru_50D80 table:@"BottomBar"];

      v68 = [contextCopy sfSymbolForButton:2];
      categoryCopy32 = category;
      v159 = contextCopy;
      stateCopy35 = state;
      if (v68)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v68 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      v125 = [NSBundle bundleForClass:objc_opt_class()];
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"cancel" color:v15 inBundle:v125];

      v126 = +[UIColor whiteColor];
      v127 = [v126 colorWithAlphaComponent:0.400000006];
      goto LABEL_172;
    case 20:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      v47 = [NSBundle bundleForClass:objc_opt_class()];
      v48 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"in-call-camera-flip" color:v15 inBundle:v47];
      goto LABEL_67;
    case 21:
      actionCopy32 = action;
      categoryCopy32 = category;
      v159 = contextCopy;
      stateCopy35 = state;
      v89 = [objc_opt_class() imageForAction:21 callState:state];
      v90 = [objc_opt_class() imageColorForState:0];
      actionCopy3 = [v89 _flatImageWithColor:v90];

      v91 = [objc_opt_class() imageColorForState:4];
      v22 = [v89 _flatImageWithColor:v91];

      v92 = +[UIColor whiteColor];
      systemTintColor = [v92 colorWithAlphaComponent:0.400000006];

      v93 = +[UIColor whiteColor];
      v30 = [v93 colorWithAlphaComponent:0.699999988];

      v29 = +[UIColor whiteColor];

      v28 = 0;
      v31 = 0;
      v21 = 0;
      goto LABEL_164;
    case 22:
      categoryCopy32 = category;
      v159 = contextCopy;
      actionCopy32 = action;
      stateCopy35 = state;
      if (!category)
      {
        v86 = [objc_opt_class() imageForAction:22 callState:state];
        actionCopy3 = [v86 _flatImageWithColor:v15];
        v132 = +[UIColor whiteColor];
        systemTintColor = [v132 colorWithAlphaComponent:0.400000006];

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

      if (category != 1)
      {
LABEL_52:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        systemTintColor = 0;
LABEL_65:
        v21 = 0;
        v22 = 0;
        actionCopy3 = 0;
LABEL_164:
        v24 = 0;
        goto LABEL_176;
      }

      v69 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v69 localizedStringForKey:@"AUDIO" value:&stru_50D80 table:@"BottomBar"];

      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:12 sizeCategory:1];
LABEL_32:
      systemTintColor2 = +[UIColor whiteColor];
LABEL_70:
      systemTintColor = systemTintColor2;
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
        v140->_diameter = diameter;
        v140->_action = v156;
        v140->_callState = stateCopy35;
        if (categoryCopy32 == 1)
        {
          v142 = 0;
        }

        else
        {
          v142 = v24;
        }

        objc_storeStrong(&v140->_title, v142);
        objc_storeStrong(p_isa + 7, actionCopy3);
        objc_storeStrong(p_isa + 8, v22);
        objc_storeStrong(p_isa + 9, v21);
        objc_storeStrong(p_isa + 10, systemTintColor);
        objc_storeStrong(p_isa + 11, v31);
        objc_storeStrong(p_isa + 12, v30);
        objc_storeStrong(p_isa + 13, v29);
        objc_storeStrong(p_isa + 14, v24);
        objc_storeStrong(p_isa + 15, v28);
        objc_storeWeak(p_isa + 5, obj);
      }

      self = p_isa;

      selfCopy = self;
      contextCopy = v159;
LABEL_182:

      return selfCopy;
    case 24:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      v64 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v64 localizedStringForKey:@"SEND_TO_VOICEMAL" value:&stru_50D80 table:@"BottomBar"];

      v65 = +[UIColor systemRedColor];
      v66 = [NSBundle bundleForClass:objc_opt_class()];
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"send_to_voicemail" color:v65 inBundle:v66];

      goto LABEL_32;
    case 25:
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      v102 = &UIFontTextStyleTitle1;
      if (v18 != diameter)
      {
        v102 = &UIFontTextStyleTitle2;
      }

      v103 = *v102;
      if (v18 == diameter)
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
      actionCopy3 = [UIImage tpImageForSymbolType:31 textStyle:v103 scale:v104 paletteColors:v107 isStaticSize:1];

      v43 = [NSBundle bundleForClass:objc_opt_class()];
      v44 = v43;
      v45 = @"SEND_TO_CALL_SCREENING";
      goto LABEL_90;
    case 26:
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      v37 = &UIFontTextStyleTitle1;
      if (v18 != diameter)
      {
        v37 = &UIFontTextStyleTitle2;
      }

      v38 = *v37;
      if (v18 == diameter)
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
      actionCopy3 = [UIImage tpImageForSymbolType:96 textStyle:v38 scale:v39 paletteColors:v42 isStaticSize:1];

      v43 = [NSBundle bundleForClass:objc_opt_class()];
      v44 = v43;
      v45 = @"SEND_TO_LIVE_REPLY";
      goto LABEL_90;
    case 27:
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      v94 = &UIFontTextStyleTitle1;
      if (v18 != diameter)
      {
        v94 = &UIFontTextStyleTitle2;
      }

      v95 = *v94;
      if (v18 == diameter)
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
      actionCopy3 = [UIImage tpImageForSymbolType:94 textStyle:v95 scale:v96 paletteColors:v99 isStaticSize:1];

      v43 = [NSBundle bundleForClass:objc_opt_class()];
      v44 = v43;
      v45 = @"SCREENING_MORE";
LABEL_90:
      v24 = [v43 localizedStringForKey:v45 value:&stru_50D80 table:@"BottomBar"];

LABEL_91:
      systemTintColor = +[UIColor clearColor];
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        goto LABEL_111;
      }

      v28 = +[UIColorEffect inCallControls];
      goto LABEL_112;
    case 28:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:category];
      systemTintColor = +[UIColor systemGreenColor];
      goto LABEL_81;
    case 29:
      actionCopy22 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      v83 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v83 localizedStringForKey:@"LEAVE_A_MESSAGE" value:&stru_50D80 table:@"BottomBar"];

      v84 = +[UIColor whiteColor];
      v85 = [NSBundle bundleForClass:objc_opt_class()];
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"leave-a-message" color:v84 inBundle:v85];

LABEL_63:
      systemTintColor2 = +[UIColor systemGreenColor];
      goto LABEL_70;
    case 30:
      actionCopy23 = action;
      stateCopy35 = state;
      v159 = contextCopy;
      v76 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v76 localizedStringForKey:@"SEND_MESSAGE" value:&stru_50D80 table:@"BottomBar"];

      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:14 sizeCategory:category];
      categoryCopy32 = category;
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        v31 = 0;
      }

      else
      {
        v31 = [UIBlurEffect effectWithStyle:11];
      }

      systemTintColor = +[UIColor clearColor];
      v28 = 0;
      goto LABEL_105;
    case 31:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      systemTintColor = +[UIColor whiteColor];
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      goto LABEL_65;
    case 34:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      v47 = [NSBundle bundleForClass:objc_opt_class()];
      v48 = [UIImage imageNamed:@"in-call-button-effects" inBundle:v47];
LABEL_67:
      actionCopy3 = v48;

      v86 = +[UIColor whiteColor];
      systemTintColor = [v86 colorWithAlphaComponent:0.400000006];
      goto LABEL_68;
    case 35:
      actionCopy27 = action;
      stateCopy35 = state;
      v159 = contextCopy;
      v46 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v46 localizedStringForKey:@"BLOCK_CALLER" value:&stru_50D80 table:@"BottomBar"];

      v33 = 15;
      goto LABEL_14;
    case 36:
      actionCopy27 = action;
      stateCopy35 = state;
      v159 = contextCopy;
      v32 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v32 localizedStringForKey:@"CREATE_CONTACT" value:&stru_50D80 table:@"BottomBar"];

      v33 = 89;
LABEL_14:
      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v33 sizeCategory:category, actionCopy27];
      systemTintColor = +[UIColor clearColor];
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
      actionCopy28 = action;
      stateCopy35 = state;
      v159 = contextCopy;
      v34 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v34 localizedStringForKey:@"Close" value:&stru_50D80 table:@"BottomBar"];

      v35 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:8 sizeCategory:category];
      v36 = +[UIColor systemBlackColor];
      actionCopy3 = [v35 tpFlattenedWithColor:v36];

      categoryCopy32 = category;
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

      systemTintColor = +[UIColor systemWhiteColor];
      goto LABEL_105;
    case 38:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      v26 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v26 localizedStringForKey:@"ALERT_ACTION_TEXT_BUTTON_LABEL" value:&stru_50D80 table:@"Localizable-Stewie"];

      v27 = [NSBundle bundleForClass:objc_opt_class()];
      actionCopy3 = [UIImage imageNamed:@"text_sos_icon" inBundle:v27];

      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      systemTintColor = 0;
      goto LABEL_113;
    case 39:
      categoryCopy32 = category;
      v159 = contextCopy;
      stateCopy35 = state;
      if (state == 1)
      {
        v100 = +[UIColor whiteColor];
        v101 = [NSBundle bundleForClass:objc_opt_class()];
        actionCopy3 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"end_call_voip" color:v100 inBundle:v101];
      }

      else
      {
        actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:2 sizeCategory:category];
      }

      systemTintColor = +[UIColor systemRedColor];
      v110 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v110 localizedStringForKey:@"ALERT_ACTION_END_BUTTON_LABEL" value:&stru_50D80 table:@"Localizable-Stewie"];

      goto LABEL_111;
    case 40:
      actionCopy32 = action;
      stateCopy35 = state;
      v159 = contextCopy;
      v87 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v87 localizedStringForKey:@"PICK_UP" value:&stru_50D80 table:@"BottomBar"];

      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:category];
      systemTintColor2 = [objc_opt_class() systemTintColor];
      goto LABEL_70;
    case 41:
      actionCopy31 = action;
      stateCopy35 = state;
      v58 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v58 localizedStringForKey:@"GAME_CONTROLLER_FOCUS" value:&stru_50D80 table:@"BottomBar"];

      v159 = contextCopy;
      v59 = [contextCopy sfSymbolForButton:0];
      categoryCopy32 = category;
      v60 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v59 sizeCategory:category];
      v61 = +[UIColor systemBlackColor];
      actionCopy3 = [v60 tpFlattenedWithColor:v61];

      v28 = 0;
      v31 = 0;
      if (!+[PHBottomBarButtonConfiguration usesGlass])
      {
        v31 = [UIBlurEffect effectWithStyle:11];
        v28 = +[UIColorEffect inCallControls];
      }

      systemTintColor = +[UIColor systemWhiteColor];

      goto LABEL_105;
    default:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v159 = contextCopy;
      goto LABEL_52;
  }
}

- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)action
{
  [objc_opt_class() defaultWidth];

  return [(PHBottomBarButtonConfiguration *)self initWithAction:action diameter:2 callState:?];
}

+ (id)bottomBarGlyphWithSymbolType:(int64_t)type sizeCategory:(int64_t)category
{
  v7 = [self textStyleForSizeCategory:category];
  v8 = +[UIImage tpImageForSymbolType:textStyle:scale:symbolWeight:](UIImage, "tpImageForSymbolType:textStyle:scale:symbolWeight:", type, v7, [self symbolScaleForSymbolType:type sizeCategory:category], objc_msgSend(self, "weightForSymbolType:", type));

  return v8;
}

+ (id)bottomBarGlyphWithGameControllerSFSymbol:(id)symbol sizeCategory:(int64_t)category
{
  symbolCopy = symbol;
  v7 = [self textStyleForSizeCategory:category];
  v8 = [UIImage tpImageForGameControllerSFSymbol:symbolCopy textStyle:v7 scale:-1 symbolWeight:7];

  return v8;
}

+ (int64_t)weightForSymbolType:(int64_t)type
{
  if ((type & 0xFFFFFFFFFFFFFFFCLL) == 8)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

+ (id)textStyleForSizeCategory:(int64_t)category
{
  if (category == 1)
  {
    v4 = &UIFontTextStyleBody;
  }

  else
  {
    if (category)
    {
      goto LABEL_6;
    }

    v4 = &UIFontTextStyleLargeTitle;
  }

  self = *v4;
LABEL_6:

  return self;
}

+ (int64_t)symbolScaleForSymbolType:(int64_t)type sizeCategory:(int64_t)category
{
  if (category != 1 || type > 0x24)
  {
    return -1;
  }

  if (((1 << type) & 0x1000001120) != 0)
  {
    return 2;
  }

  if (((1 << type) & 6) != 0)
  {
    return 3;
  }

  if (type == 9)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

+ (id)bottomBarImageWithName:(id)name color:(id)color inBundle:(id)bundle
{
  colorCopy = color;
  v8 = [UIImage imageNamed:name inBundle:bundle];
  v9 = [v8 tpFlattenedWithColor:colorCopy];

  return v9;
}

- (_UIVisualEffectBackdropView)captureView
{
  WeakRetained = objc_loadWeakRetained(&self->_captureView);

  return WeakRetained;
}

@end