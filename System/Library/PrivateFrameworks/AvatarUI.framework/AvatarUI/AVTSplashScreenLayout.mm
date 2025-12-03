@interface AVTSplashScreenLayout
+ (BOOL)isSmallScreen;
+ (CGRect)buttonFrameForString:(id)string containerSize:(CGSize)size edgeInsets:(UIEdgeInsets)insets;
+ (CGRect)primaryVideoFrameForContentFrame:(CGRect)frame wantsSecondaryVideo:(BOOL)video;
+ (CGRect)secondaryVideoFrameForContentFrame:(CGRect)frame;
+ (CGRect)subTitleFrameForString:(id)string titleFrame:(CGRect)frame buttonFrame:(CGRect)buttonFrame wantsSecondaryVideo:(BOOL)video containerSize:(CGSize)size labelEdgePadding:(double)padding;
+ (CGRect)titleFrameForString:(id)string yOrigin:(double)origin containerSize:(CGSize)size labelEdgePadding:(double)padding;
+ (CGSize)primaryVideoSize;
+ (CGSize)secondaryVideoSize;
+ (UIButton)blueButton;
+ (UIButton)cancelButton;
+ (double)defaultLabelEdgePaddingForLabelEdgePaddingStyle:(unint64_t)style contentSizeCategory:(id)category numberOfLines:(int64_t)lines;
- (AVTSplashScreenLayout)initWithContainerSize:(CGSize)size edgeInsets:(UIEdgeInsets)insets wantsSecondaryVideo:(BOOL)video labelEdgePaddingStyle:(unint64_t)style;
- (AVTSplashScreenLayout)initWithContainerSize:(CGSize)size edgeInsets:(UIEdgeInsets)insets wantsSecondaryVideo:(BOOL)video labelEdgePaddingStyle:(unint64_t)style currentContentSizeCategory:(id)category;
- (AVTSplashScreenLayoutDelegate)delegate;
- (BOOL)isEqual:(id)equal;
- (CGRect)buttonFrame;
- (CGRect)primaryVideoFrame;
- (CGRect)secondaryVideoFrame;
- (CGRect)subTitleFrame;
- (CGRect)titleFrame;
- (CGSize)containerSize;
- (CGSize)unconstrainedContentSize;
- (UIEdgeInsets)edgeInsets;
- (unint64_t)hash;
- (void)calculateLayoutWithTitleString:(id)string subTitleString:(id)titleString buttonTitle:(id)title;
- (void)dealloc;
- (void)didChangeContentSizeCategory:(id)category;
@end

@implementation AVTSplashScreenLayout

+ (BOOL)isSmallScreen
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  return v4 <= 568.0;
}

+ (CGSize)primaryVideoSize
{
  isSmallScreen = [self isSmallScreen];
  v3 = 480.0;
  if (isSmallScreen)
  {
    v3 = 100.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)secondaryVideoSize
{
  isSmallScreen = [self isSmallScreen];
  v3 = 854.0;
  if (isSmallScreen)
  {
    v3 = 245.0;
  }

  v4 = 238.0;
  if (isSmallScreen)
  {
    v4 = 50.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

+ (UIButton)blueButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v3 = +[AVTUIColorRepository splashScreenButtonNormalTextColor];
  [v2 setTitleColor:v3 forState:0];

  v4 = +[AVTUIColorRepository splashScreenButtonHighlightedTextColor];
  [v2 setTitleColor:v4 forState:1];

  v5 = +[AVTUIFontRepository splashContinueButtonFont];
  titleLabel = [v2 titleLabel];
  [titleLabel setFont:v5];

  v7 = +[AVTUIColorRepository splashScreenButtonBackgroundColor];
  [v2 setBackgroundColor:v7];

  [v2 _setContinuousCornerRadius:8.0];

  return v2;
}

+ (UIButton)cancelButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v3 = +[AVTUIFontRepository splashContinueButtonFont];
  titleLabel = [v2 titleLabel];
  [titleLabel setFont:v3];

  [v2 setRole:2];

  return v2;
}

+ (double)defaultLabelEdgePaddingForLabelEdgePaddingStyle:(unint64_t)style contentSizeCategory:(id)category numberOfLines:(int64_t)lines
{
  result = 24.0;
  if (style == 1)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(category);
    v8 = lines > 3 || IsAccessibilityCategory;
    result = 74.0;
    if (v8)
    {
      return 44.0;
    }
  }

  return result;
}

+ (CGRect)buttonFrameForString:(id)string containerSize:(CGSize)size edgeInsets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  height = size.height;
  width = size.width;
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = size.width + -48.0;
  if (v9 <= 325.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 325.0;
  }

  v20 = *MEMORY[0x1E69DB648];
  stringCopy = string;
  buttonFont = [self buttonFont];
  v21[0] = buttonFont;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [stringCopy boundingRectWithSize:0 options:v13 attributes:0 context:{v10 + -32.0, 1.79769313e308}];
  v15 = v14;

  v16 = fmax(v15 + 28.0, 50.0);
  v17 = (width - v10) * 0.5;
  v18 = height - fmax(bottom + 44.0, 44.0) - v16;
  v19 = v10;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

+ (CGRect)titleFrameForString:(id)string yOrigin:(double)origin containerSize:(CGSize)size labelEdgePadding:(double)padding
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = size.width - padding * 2.0;
  stringCopy = string;
  titleFont = [self titleFont];
  [titleFont lineHeight];
  v13 = ceil(v12);
  titleFont2 = [self titleFont];
  [titleFont2 leading];
  v16 = v15 + v13 * 2.0;
  v25 = *MEMORY[0x1E69DB648];
  titleFont3 = [self titleFont];
  v26[0] = titleFont3;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  [stringCopy boundingRectWithSize:1 options:v18 attributes:0 context:{v9, v16}];
  v20 = v19;

  v21 = ceil(v20);
  paddingCopy = padding;
  originCopy = origin;
  v24 = v9;
  result.size.height = v21;
  result.size.width = v24;
  result.origin.y = originCopy;
  result.origin.x = paddingCopy;
  return result;
}

+ (CGRect)subTitleFrameForString:(id)string titleFrame:(CGRect)frame buttonFrame:(CGRect)buttonFrame wantsSecondaryVideo:(BOOL)video containerSize:(CGSize)size labelEdgePadding:(double)padding
{
  videoCopy = video;
  y = buttonFrame.origin.y;
  height = frame.size.height;
  width = frame.size.width;
  v11 = frame.origin.y;
  x = frame.origin.x;
  v40[1] = *MEMORY[0x1E69E9840];
  v39 = *MEMORY[0x1E69DB648];
  stringCopy = string;
  subTitleFont = [self subTitleFont];
  v40[0] = subTitleFont;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  [stringCopy boundingRectWithSize:1 options:v16 attributes:0 context:{padding + v41 * -2.0, 1.79769313e308}];
  v18 = v17;

  subTitleFont2 = [self subTitleFont];
  [subTitleFont2 _scaledValueForValue:32.0];
  v21 = v20;

  v42.origin.x = x;
  v42.origin.y = v11;
  v42.size.width = width;
  v42.size.height = height;
  MaxY = CGRectGetMaxY(v42);
  titleFont = [self titleFont];
  [titleFont descender];
  v25 = MaxY + v24;
  subTitleFont3 = [self subTitleFont];
  [subTitleFont3 ascender];
  v28 = v25 + v21 - v27;

  [objc_opt_class() primaryVideoSize];
  v30 = y + -40.0 + v29 * -0.3 + -40.0 - v28;
  if (videoCopy)
  {
    [objc_opt_class() secondaryVideoSize];
    v30 = v30 + v31 * -0.3;
  }

  v32 = ceil(v18);
  if (v30 >= 0.0)
  {
    v33 = v30;
  }

  else
  {
    v33 = v18;
  }

  if (v32 >= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v32;
  }

  v35 = v41;
  v36 = v28;
  v37 = padding + v41 * -2.0;
  result.size.height = v34;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

+ (CGRect)primaryVideoFrameForContentFrame:(CGRect)frame wantsSecondaryVideo:(BOOL)video
{
  videoCopy = video;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = CGRectGetHeight(frame);
  if (videoCopy)
  {
    v10 = v9 * 0.7;
  }

  else
  {
    v10 = v9;
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v11 = CGRectGetWidth(v17);
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v13 = x + (CGRectGetWidth(v18) - v12) * 0.5;
  v14 = y + (v10 - v12) * 0.5;
  v15 = v12;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (CGRect)secondaryVideoFrameForContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = CGRectGetHeight(frame);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = v7 + CGRectGetHeight(v14) * -0.7;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = CGRectGetMaxY(v15) - v8;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectGetWidth(v16);
  v11 = x;
  v12 = v9;
  v13 = v8;
  result.size.height = v13;
  result.size.width = v10;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (AVTSplashScreenLayout)initWithContainerSize:(CGSize)size edgeInsets:(UIEdgeInsets)insets wantsSecondaryVideo:(BOOL)video labelEdgePaddingStyle:(unint64_t)style
{
  videoCopy = video;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  right = [(AVTSplashScreenLayout *)self initWithContainerSize:videoCopy edgeInsets:style wantsSecondaryVideo:preferredContentSizeCategory labelEdgePaddingStyle:width currentContentSizeCategory:height, top, left, bottom, right];

  return right;
}

- (AVTSplashScreenLayout)initWithContainerSize:(CGSize)size edgeInsets:(UIEdgeInsets)insets wantsSecondaryVideo:(BOOL)video labelEdgePaddingStyle:(unint64_t)style currentContentSizeCategory:(id)category
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  categoryCopy = category;
  v23.receiver = self;
  v23.super_class = AVTSplashScreenLayout;
  v17 = [(AVTSplashScreenLayout *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_containerSize.width = width;
    v17->_containerSize.height = height;
    v17->_labelEdgePaddingStyle = style;
    v17->_edgeInsets.top = top;
    v17->_edgeInsets.left = left;
    v17->_edgeInsets.bottom = bottom;
    v17->_edgeInsets.right = right;
    v17->_wantsSecondaryVideo = video;
    v19 = [categoryCopy copy];
    currentContentSizeCategory = v18->_currentContentSizeCategory;
    v18->_currentContentSizeCategory = v19;

    v18->_needsLayout = 1;
    v18->_constrainToContainer = [objc_opt_class() isSmallScreen] ^ 1;
    v18->_unconstrainedContentSize = *MEMORY[0x1E695F060];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v18 selector:sel_didChangeContentSizeCategory_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v18;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AVTSplashScreenLayout;
  [(AVTSplashScreenLayout *)&v4 dealloc];
}

- (void)calculateLayoutWithTitleString:(id)string subTitleString:(id)titleString buttonTitle:(id)title
{
  v201[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  titleStringCopy = titleString;
  titleCopy = title;
  if ([(AVTSplashScreenLayout *)self labelEdgePaddingStyle]== 1)
  {
    [(AVTSplashScreenLayout *)self containerSize];
    v12 = v11 + -148.0;
    v200 = *MEMORY[0x1E69DB648];
    subTitleFont = [objc_opt_class() subTitleFont];
    v201[0] = subTitleFont;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v201 forKeys:&v200 count:1];
    [titleStringCopy boundingRectWithSize:1 options:v14 attributes:0 context:{v12, 1.79769313e308}];
    v16 = v15;

    subTitleFont2 = [objc_opt_class() subTitleFont];
    [subTitleFont2 lineHeight];
    v19 = vcvtmd_s64_f64(ceil(v16) / v18);
  }

  else
  {
    v19 = 0;
  }

  if ([(AVTSplashScreenLayout *)self needsLayout])
  {
    v20 = objc_opt_class();
    [(AVTSplashScreenLayout *)self containerSize];
    v22 = v21;
    v24 = v23;
    [(AVTSplashScreenLayout *)self edgeInsets];
    [v20 buttonFrameForString:titleCopy containerSize:v22 edgeInsets:{v24, v25, v26, v27, v28}];
    v30 = v29;
    v190 = v31;
    v188 = v32;
    v34 = v33;
    [(AVTSplashScreenLayout *)self containerSize];
    v36 = v35;
    [(AVTSplashScreenLayout *)self edgeInsets];
    v38 = v37;
    [(AVTSplashScreenLayout *)self edgeInsets];
    v40 = v36 - (v38 + v39);
    [objc_opt_class() primaryVideoSize];
    if (v40 >= v41 + 80.0)
    {
      v42 = v41 + 80.0;
    }

    else
    {
      v42 = v40;
    }

    if (self->_wantsSecondaryVideo)
    {
      [objc_opt_class() secondaryVideoSize];
      v44 = v43;
      v46 = v45;
      [(AVTSplashScreenLayout *)self containerSize];
      v48 = v47;
      [(AVTSplashScreenLayout *)self edgeInsets];
      v50 = v49;
      [(AVTSplashScreenLayout *)self edgeInsets];
      v52 = v48 - (v50 + v51 + 80.0);
      if (v44 < v52)
      {
        v52 = v44;
      }

      v42 = v42 + v46 * v52 / v44;
    }

    v180 = v42;
    v53 = objc_opt_class();
    labelEdgePaddingStyle = [(AVTSplashScreenLayout *)self labelEdgePaddingStyle];
    currentContentSizeCategory = [(AVTSplashScreenLayout *)self currentContentSizeCategory];
    [v53 defaultLabelEdgePaddingForLabelEdgePaddingStyle:labelEdgePaddingStyle contentSizeCategory:currentContentSizeCategory numberOfLines:v19];
    v57 = v56;

    [(AVTSplashScreenLayout *)self edgeInsets];
    v59 = v58 + 96.0;
    titleFont = [objc_opt_class() titleFont];
    [titleFont ascender];
    v62 = v59 - v61;

    v63 = objc_opt_class();
    [(AVTSplashScreenLayout *)self containerSize];
    [v63 titleFrameForString:stringCopy yOrigin:v62 containerSize:v64 labelEdgePadding:{v65, v57}];
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = objc_opt_class();
    wantsSecondaryVideo = [(AVTSplashScreenLayout *)self wantsSecondaryVideo];
    [(AVTSplashScreenLayout *)self containerSize];
    v183 = v71;
    v186 = v67;
    v189 = v69;
    v178 = v73;
    [v74 subTitleFrameForString:titleStringCopy titleFrame:wantsSecondaryVideo buttonFrame:v67 wantsSecondaryVideo:v69 containerSize:v71 labelEdgePadding:{v73, v30, v190, v188, v34, v76, v77, *&v57}];
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v202.origin.x = v30;
    v202.origin.y = v190;
    v202.size.width = v188;
    v202.size.height = v34;
    v184 = v34;
    v185 = v30;
    MinY = CGRectGetMinY(v202);
    v203.origin.x = v79;
    v87 = v81;
    v203.origin.y = v81;
    v203.size.width = v83;
    v88 = v85;
    v203.size.height = v85;
    v89 = MinY - CGRectGetMaxY(v203);
    v90 = v180;
    if (v89 >= v180)
    {
      rect = v83;
    }

    else
    {
      titleFont2 = [objc_opt_class() titleFont];
      [titleFont2 _scaledValueForValue:v89 - v180 + 96.0];
      v93 = v92;

      v94 = self->_edgeInsets.top + fmax(v93, 58.0);
      titleFont3 = [objc_opt_class() titleFont];
      [titleFont3 ascender];
      v97 = v94 - v96;

      v98 = objc_opt_class();
      [(AVTSplashScreenLayout *)self containerSize];
      [v98 titleFrameForString:stringCopy yOrigin:v97 containerSize:v99 labelEdgePadding:{v100, v57}];
      v102 = v101;
      v104 = v103;
      v106 = v105;
      v108 = v107;
      v109 = objc_opt_class();
      wantsSecondaryVideo2 = [(AVTSplashScreenLayout *)self wantsSecondaryVideo];
      [(AVTSplashScreenLayout *)self containerSize];
      v186 = v102;
      v189 = v104;
      v183 = v106;
      v178 = v108;
      [v109 subTitleFrameForString:titleStringCopy titleFrame:wantsSecondaryVideo2 buttonFrame:v102 wantsSecondaryVideo:v104 containerSize:v106 labelEdgePadding:{v108, v185, v190, v188, v184, v111, v112, *&v57}];
      v79 = v113;
      v115 = v114;
      v117 = v116;
      v204.origin.x = v185;
      v204.origin.y = v190;
      v87 = v115;
      v204.size.width = v188;
      v88 = v118;
      v204.size.height = v184;
      v119 = CGRectGetMinY(v204);
      v205.origin.x = v79;
      v205.origin.y = v87;
      rect = v117;
      v205.size.width = v117;
      v205.size.height = v88;
      v89 = v119 - CGRectGetMaxY(v205);
      v90 = v180;
    }

    if (v89 >= v90)
    {
      v121 = 0;
    }

    else
    {
      constrainToContainer = [(AVTSplashScreenLayout *)self constrainToContainer];
      v121 = !constrainToContainer;
      if (!constrainToContainer)
      {
        v89 = v90;
      }
    }

    v122 = v186;
    [(AVTSplashScreenLayout *)self edgeInsets];
    v124 = v123 + 40.0;
    v174 = v87;
    v175 = v79;
    v206.origin.x = v79;
    v206.origin.y = v87;
    v206.size.width = rect;
    v177 = v88;
    v206.size.height = v88;
    v125 = CGRectGetMaxY(v206) + 40.0;
    [(AVTSplashScreenLayout *)self containerSize];
    v127 = v126;
    [(AVTSplashScreenLayout *)self edgeInsets];
    v129 = v128;
    [(AVTSplashScreenLayout *)self edgeInsets];
    v131 = v127 - (v129 + v130 + 80.0);
    v132 = v89 + -80.0;
    [objc_opt_class() primaryVideoFrameForContentFrame:-[AVTSplashScreenLayout wantsSecondaryVideo](self wantsSecondaryVideo:{"wantsSecondaryVideo"), v124, v125, v131, v89 + -80.0}];
    v179 = v133;
    v181 = v134;
    v187 = v135;
    v137 = v136;
    v138 = v190;
    if ([(AVTSplashScreenLayout *)self wantsSecondaryVideo])
    {
      [objc_opt_class() secondaryVideoFrameForContentFrame:{v124, v125, v131, v132}];
      v141 = v140;
      v143 = v142;
      v145 = v144;
    }

    else
    {
      v141 = *MEMORY[0x1E695F058];
      v143 = *(MEMORY[0x1E695F058] + 8);
      v145 = *(MEMORY[0x1E695F058] + 16);
      v139 = *(MEMORY[0x1E695F058] + 24);
    }

    v176 = v139;
    v146 = v181;
    v147 = v187;
    if (v121)
    {
      wantsSecondaryVideo3 = [(AVTSplashScreenLayout *)self wantsSecondaryVideo];
      if (wantsSecondaryVideo3)
      {
        v149 = v176;
      }

      else
      {
        v149 = v137;
      }

      if (wantsSecondaryVideo3)
      {
        v150 = v145;
      }

      else
      {
        v150 = v187;
      }

      if (wantsSecondaryVideo3)
      {
        v151 = v143;
      }

      else
      {
        v151 = v181;
      }

      v152 = v179;
      if (wantsSecondaryVideo3)
      {
        v152 = v141;
      }

      v138 = CGRectGetMaxY(*(&v149 - 3)) + 40.0;
    }

    v173 = v145;
    v153 = v143;
    if (![(AVTSplashScreenLayout *)self constrainToContainer])
    {
      [(AVTSplashScreenLayout *)self containerSize];
      v155 = v154;
      v207.size.height = v184;
      v207.origin.x = v185;
      v207.origin.y = v138;
      v207.size.width = v188;
      MaxY = CGRectGetMaxY(v207);
      self->_unconstrainedContentSize.width = v155;
      self->_unconstrainedContentSize.height = MaxY + 44.0;
      v147 = v187;
    }

    v191 = v138;
    v157 = v137;
    v172 = v137;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v208.origin.x = v122;
      v208.origin.y = v189;
      v208.size.width = v183;
      v158 = v174;
      v208.size.height = v178;
      v159 = NSStringFromCGRect(v208);
      v209.origin.x = v175;
      v209.origin.y = v174;
      v160 = v122;
      v161 = rect;
      v209.size.width = rect;
      v209.size.height = v177;
      v162 = NSStringFromCGRect(v209);
      v210.origin.x = v179;
      v210.origin.y = v181;
      v210.size.width = v187;
      v210.size.height = v157;
      v163 = NSStringFromCGRect(v210);
      v164 = v141;
      v211.origin.x = v141;
      v211.origin.y = v153;
      v165 = v173;
      v211.size.width = v173;
      v166 = v176;
      v211.size.height = v176;
      v167 = NSStringFromCGRect(v211);
      *buf = 138413058;
      v193 = v159;
      v194 = 2112;
      v195 = v162;
      v196 = 2112;
      v197 = v163;
      v198 = 2112;
      v199 = v167;
      _os_log_impl(&dword_1BB341000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[SplashScreenLayout] title frame: %@; subtitle frame: %@; primary video frame: %@; secondary video frame: %@", buf, 0x2Au);

      v168 = v160;
      v169 = v189;
      v170 = v178;
      v146 = v181;
      v171 = v183;
      v147 = v187;
    }

    else
    {
      v170 = v178;
      v168 = v122;
      v161 = rect;
      v171 = v183;
      v165 = v173;
      v158 = v174;
      v164 = v141;
      v166 = v176;
      v169 = v189;
    }

    [(AVTSplashScreenLayout *)self setTitleFrame:v168, v169, v171, v170];
    [(AVTSplashScreenLayout *)self setSubTitleFrame:v175, v158, v161, v177];
    [(AVTSplashScreenLayout *)self setPrimaryVideoFrame:v179, v146, v147, v172];
    [(AVTSplashScreenLayout *)self setSecondaryVideoFrame:v164, v153, v165, v166];
    [(AVTSplashScreenLayout *)self setButtonFrame:v185, v191, v188, v184];
    [(AVTSplashScreenLayout *)self setNeedsLayout:0];
  }
}

- (void)didChangeContentSizeCategory:(id)category
{
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  [(AVTSplashScreenLayout *)self setTitleFrame:category, *MEMORY[0x1E695F058], v5, v6, v7];
  [(AVTSplashScreenLayout *)self setSubTitleFrame:v4, v5, v6, v7];
  [(AVTSplashScreenLayout *)self setPrimaryVideoFrame:v4, v5, v6, v7];
  [(AVTSplashScreenLayout *)self setSecondaryVideoFrame:v4, v5, v6, v7];
  [(AVTSplashScreenLayout *)self setButtonFrame:v4, v5, v6, v7];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v10 = [preferredContentSizeCategory copy];
  [(AVTSplashScreenLayout *)self setCurrentContentSizeCategory:v10];

  [(AVTSplashScreenLayout *)self setNeedsLayout:1];
  delegate = [(AVTSplashScreenLayout *)self delegate];
  [delegate splashScreenLayoutDidChange:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v5 = equalCopy;
  [(AVTSplashScreenLayout *)self containerSize];
  v7 = v6;
  v9 = v8;
  [v5 containerSize];
  if (v7 != v11 || v9 != v10)
  {
    goto LABEL_6;
  }

  [(AVTSplashScreenLayout *)self edgeInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v5 edgeInsets];
  v13 = 0;
  if (v18 != v26 || v16 != v23 || v22 != v25 || v20 != v24)
  {
    goto LABEL_7;
  }

  wantsSecondaryVideo = [(AVTSplashScreenLayout *)self wantsSecondaryVideo];
  if (wantsSecondaryVideo == [v5 wantsSecondaryVideo])
  {
    currentContentSizeCategory = [(AVTSplashScreenLayout *)self currentContentSizeCategory];
    currentContentSizeCategory2 = [v5 currentContentSizeCategory];
    v13 = [currentContentSizeCategory isEqualToString:currentContentSizeCategory2];
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

LABEL_7:

LABEL_9:
  return v13;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696B098];
  [(AVTSplashScreenLayout *)self containerSize];
  v4 = [v3 valueWithCGSize:?];
  v5 = [v4 hash];
  v6 = MEMORY[0x1E696B098];
  [(AVTSplashScreenLayout *)self containerSize];
  v7 = [v6 valueWithCGSize:?];
  *(&v9 + 1) = v5;
  *&v9 = [v7 hash];
  v8 = v9 >> 48;
  v10 = MEMORY[0x1E696B098];
  [(AVTSplashScreenLayout *)self edgeInsets];
  v11 = [v10 valueWithUIEdgeInsets:?];
  v12 = [v11 hash];
  v13 = MEMORY[0x1E696B098];
  [(AVTSplashScreenLayout *)self edgeInsets];
  v14 = [v13 valueWithUIEdgeInsets:?];
  *(&v9 + 1) = v12;
  *&v9 = [v14 hash];
  v15 = (v9 >> 43) ^ v8;
  if ([(AVTSplashScreenLayout *)self wantsSecondaryVideo])
  {
    v16 = 0x100000000;
  }

  else
  {
    v16 = 0;
  }

  [(AVTSplashScreenLayout *)self wantsSecondaryVideo];
  currentContentSizeCategory = [(AVTSplashScreenLayout *)self currentContentSizeCategory];
  v18 = v16 ^ [currentContentSizeCategory hash];

  return v15 ^ v18;
}

- (AVTSplashScreenLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)titleFrame
{
  x = self->_titleFrame.origin.x;
  y = self->_titleFrame.origin.y;
  width = self->_titleFrame.size.width;
  height = self->_titleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)subTitleFrame
{
  x = self->_subTitleFrame.origin.x;
  y = self->_subTitleFrame.origin.y;
  width = self->_subTitleFrame.size.width;
  height = self->_subTitleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)primaryVideoFrame
{
  x = self->_primaryVideoFrame.origin.x;
  y = self->_primaryVideoFrame.origin.y;
  width = self->_primaryVideoFrame.size.width;
  height = self->_primaryVideoFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)secondaryVideoFrame
{
  x = self->_secondaryVideoFrame.origin.x;
  y = self->_secondaryVideoFrame.origin.y;
  width = self->_secondaryVideoFrame.size.width;
  height = self->_secondaryVideoFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)buttonFrame
{
  x = self->_buttonFrame.origin.x;
  y = self->_buttonFrame.origin.y;
  width = self->_buttonFrame.size.width;
  height = self->_buttonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)unconstrainedContentSize
{
  width = self->_unconstrainedContentSize.width;
  height = self->_unconstrainedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end