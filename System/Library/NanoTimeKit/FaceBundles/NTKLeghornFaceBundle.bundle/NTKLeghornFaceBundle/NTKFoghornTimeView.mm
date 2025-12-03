@interface NTKFoghornTimeView
+ (BOOL)_stuffForLayoutStyle:(unint64_t)style inset:(BOOL)inset shouldHideSeconds:(BOOL)seconds layoutConstants:(id *)constants renderRect:(CGRect *)rect oversizedRect:(CGRect *)oversizedRect showSeconds:(BOOL *)showSeconds;
+ (CGSize)_frameSetterSizeForAttributedString:(id)string;
+ (CGSize)_getSizesForHoursString:(id)string blinkerString:(id)blinkerString minutesString:(id)minutesString secondsString:(id)secondsString font:(id)font showSeconds:(BOOL)seconds metricsRect:(CGRect)rect hoursSize:(CGSize *)self0 minutesSeparatorSize:(CGSize *)self1 minutesSize:(CGSize *)self2 secondsSize:(CGSize *)self3;
+ (__CTFrame)_CTFrameForFrame:(CGRect)frame text:(id)text textColor:(id)color font:(id)font forDevice:(id)device;
+ (id)_hoursMinutesStringFromTimeFormatter:(id)formatter;
+ (id)_minutesSeparatorImageWithSize:(CGSize)size scale:(double)scale frame:(CGRect)frame text:(id)text textColor:(id)color font:(id)font outlineWidth:(double)width forDevice:(id)self0;
+ (id)_secondsStringFromTimeFormatter:(id)formatter;
+ (void)_configureWithMetricBounds:(CGRect)bounds hoursSize:(CGSize)size minutesSeparatorSize:(CGSize)separatorSize minutesSize:(CGSize)minutesSize secondsSize:(CGSize)secondsSize textInset:(double)inset outlineWidth:(double)width hScale:(double)self0 snappingPolicy:(unint64_t)self1 forDevice:(id)self2 frameStates:(id *)self3;
+ (void)_stringsFromTimeFormatter:(id)formatter showSeconds:(BOOL)seconds hoursString:(id *)string blinkerString:(id *)blinkerString minutesString:(id *)minutesString secondsString:(id *)secondsString;
+ (void)drawSnapshotInContext:(CGContext *)context layoutStyle:(unint64_t)style inset:(BOOL)inset minutesColor:(id)color secondsColor:(id)secondsColor forDevice:(id)device;
- (BOOL)_stuffForLayoutStyle:(unint64_t)style inset:(BOOL)inset tritiumOn:(BOOL)on renderRect:(CGRect *)rect oversizedRect:(CGRect *)oversizedRect showSeconds:(BOOL *)seconds;
- (CGRect)contentBounds;
- (CGSize)_getLayoutForHoursString:(id)string blinkerString:(id)blinkerString minutesString:(id)minutesString secondsString:(id)secondsString showSeconds:(BOOL)seconds numberOfThinCharacters:(unint64_t)characters layoutStyle:(unint64_t)style inset:(BOOL)self0 metricsRect:(CGRect)self1;
- (CGSize)_layoutForHoursString:(id)string blinkerString:(id)blinkerString minutesString:(id)minutesString secondsString:(id)secondsString showSeconds:(BOOL)seconds transitoryFontSize:(CGSize)size transitoryFontWeight:(double)weight transitoryOutlineWidth:(double)self0 metricsRect:(CGRect)self1 snapToPixel:(BOOL)self2 toLayoutStyle:(unint64_t)self3 font:(id *)self4 frameStates:(id *)self5;
- (CGSize)_scaleSizeForLayoutStyle:(unint64_t)style inset:(BOOL)inset shouldHideSeconds:(BOOL)seconds numberOfThinCharacters:(unint64_t)characters;
- (CGSize)_scaleSizeForTimeFormatter:(id)formatter layoutStyle:(unint64_t)style inset:(BOOL)inset shouldHideSeconds:(BOOL)seconds;
- (NTKFoghornTimeView)initWithFrame:(CGRect)frame forDevice:(id)device clockTimer:(id)timer layout:(unint64_t)layout;
- (NTKFoghornTimeView)initWithFrame:(CGRect)frame forDevice:(id)device layout:(unint64_t)layout;
- (double)_scaleWeightForLayoutStyle:(unint64_t)style inset:(BOOL)inset shouldHideSeconds:(BOOL)seconds;
- (id)_getSecondsColorWithAlpha:(double)alpha;
- (unint64_t)_numberOfThinCharactersForTimeFormatter:(id)formatter;
- (void)_cleanupElementFrameStates;
- (void)_drawInContext:(CGContext *)context needsDisplayElementMask:(unint64_t)mask;
- (void)_ensureCTFramesForElementMask:(unint64_t)mask withFont:(id)font;
- (void)_layoutAndUpdateForTimeFormatter:(double)formatter transitoryFontSize:(double)size transitoryFontWeight:(double)weight metricsRect:(double)rect snapToPixel:(double)pixel fromLayoutStyle:(double)style toLayoutStyle:(uint64_t)layoutStyle fromInset:(void *)self0 toInset:(unsigned int)self1 fromShowSeconds:(uint64_t)self2 toShowSeconds:(uint64_t)self3 progress:(int)self4 secondsSize:(int)self5 secondsWeight:(double)self6 secondsRenderRect:(unsigned __int8)self7 blinkAlpha:(unsigned __int8)self8 secondsAlpha:(double)self9;
- (void)_layoutAndUpdateForTimeFormatter:(id)formatter showSeconds:(BOOL)seconds layoutStyle:(unint64_t)style inset:(BOOL)inset metricsRect:(CGRect)rect blinkAlpha:(double)alpha secondsAlpha:(double)secondsAlpha;
- (void)_setLayoutFromStyle:(unint64_t)style toStyle:(unint64_t)toStyle fromTritiumOn:(BOOL)on toTritiumOn:(BOOL)tritiumOn fromInset:(BOOL)inset toInset:(BOOL)toInset progress:(double)progress;
- (void)_setNeedsDisplayForElementMask:(unint64_t)mask;
- (void)_setNeedsDisplayInRect:(CGRect)rect;
- (void)_startBlinking;
- (void)_stopBlinking;
- (void)_updateBlinkWithAlpha:(double)alpha;
- (void)_updateBlinkerAlphaForSecondFraction:(double)fraction;
- (void)_updateBlinking;
- (void)_updateColorsForElementMask:(unint64_t)mask blinkAlpha:(double)alpha secondsAlpha:(double)secondsAlpha;
- (void)_updateFrameElement:(unint64_t)element frame:(CGRect)frame text:(id)text textColor:(id)color;
- (void)_updateFrameElementsForHoursString:(id)string blinkerString:(id)blinkerString minutesString:(id)minutesString secondsString:(id)secondsString blinkAlpha:(double)alpha secondsAlpha:(double)secondsAlpha;
- (void)_updateHoursMinutesSecondsForTimeFormatter:(id)formatter layoutStyle:(unint64_t)style tritiumOn:(BOOL)on blinkAlpha:(double)alpha;
- (void)_updateMinutesSeparatorLayerForTimeFormatter:(id)formatter;
- (void)_updateSecondsForTimeFormatter:(id)formatter showSeconds:(BOOL)seconds secondsAlpha:(double)alpha;
- (void)_updateShowSeconds;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setFromInset:(BOOL)inset toInset:(BOOL)toInset progress:(double)progress;
- (void)setFrozen:(BOOL)frozen;
- (void)setInset:(BOOL)inset;
- (void)setLayoutFromStyle:(unint64_t)style toStyle:(unint64_t)toStyle progress:(double)progress;
- (void)setLayoutStyle:(unint64_t)style;
- (void)setMinutesColor:(id)color;
- (void)setNeedsDisplay;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setSecondsColor:(id)color;
- (void)timeFormatterReportingLiveTimeDidChange:(id)change;
- (void)timeFormatterTextDidChange:(id)change;
@end

@implementation NTKFoghornTimeView

- (NTKFoghornTimeView)initWithFrame:(CGRect)frame forDevice:(id)device clockTimer:(id)timer layout:(unint64_t)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  timerCopy = timer;
  v71.receiver = self;
  v71.super_class = NTKFoghornTimeView;
  height = [(NTKFoghornTimeView *)&v71 initWithFrame:x, y, width, height];
  if (height)
  {
    v19 = objc_msgSend_clearColor(MEMORY[0x277D75348], v16, v18);
    objc_msgSend_setBackgroundColor_(height, v20, v21, v19);

    objc_storeStrong(&height->_device, device);
    sub_23BEB9E98(deviceCopy, __src);
    memcpy(&height->_layoutConstants, __src, sizeof(height->_layoutConstants));
    v22 = height->_layoutConstants.fontSizes[layout];
    v23 = [NTKFoghornFaceFontLoader alloc];
    v25 = objc_msgSend_initWithFontSize_(v23, v24, v22);
    timeDisplayFontLoader = height->_timeDisplayFontLoader;
    height->_timeDisplayFontLoader = v25;

    v29 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v27, v28);
    minutesColor = height->_minutesColor;
    height->_minutesColor = v29;

    v32 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v31, 0.247058824, 0.435294122, 0.580392182, 1.0);
    secondsColor = height->_secondsColor;
    height->_secondsColor = v32;

    v34 = objc_alloc(MEMORY[0x277CBBBA8]);
    v37 = objc_msgSend_initWithForcesLatinNumbers_clockTimer_(v34, v35, v36, 1, timerCopy);
    timeFormatter = height->_timeFormatter;
    height->_timeFormatter = v37;

    objc_msgSend_setShowSeconds_(height->_timeFormatter, v39, v40, 1);
    objc_msgSend_addObserver_(height->_timeFormatter, v41, v42, height);
    v45 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v43, v44, @"1");
    thinCharacterSet = height->_thinCharacterSet;
    height->_thinCharacterSet = v45;

    v47 = [NTKFoghornTimeViewLayer alloc];
    v50 = objc_msgSend_initWithTimeView_(v47, v48, v49, height);
    objc_msgSend_screenScale(deviceCopy, v51, v52);
    objc_msgSend_setContentsScale_(v50, v53, v54);
    v57 = objc_msgSend_layer(height, v55, v56);
    objc_msgSend_addSublayer_(v57, v58, v59, v50);

    minutesSeparatorLayer = height->_minutesSeparatorLayer;
    height->_minutesSeparatorLayer = v50;
    v61 = v50;

    objc_msgSend_setOpacity_(height->_minutesSeparatorLayer, v62, 0.0);
    height->_animationStyle = 0;
    height->_animationSnapStyle = 1;
    objc_msgSend_setClearsContextBeforeDrawing_(height, v63, v64, 0);
    objc_msgSend_setOpaque_(height, v65, v66, 0);
    height->_secondsLayoutVisibility = 1.0;
    height->_layoutStyle = -1;
    objc_msgSend_setLayoutStyle_(height, v67, v68, layout);
  }

  return height;
}

- (NTKFoghornTimeView)initWithFrame:(CGRect)frame forDevice:(id)device layout:(unint64_t)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = MEMORY[0x277CBB700];
  deviceCopy = device;
  v15 = objc_msgSend_sharedInstance(v11, v13, v14);
  v17 = objc_msgSend_initWithFrame_forDevice_clockTimer_layout_(self, v16, x, deviceCopy, v15, layout, y, width, height);

  return v17;
}

- (void)dealloc
{
  objc_msgSend__cleanupElementFrameStates(self, a2, v2);
  v4.receiver = self;
  v4.super_class = NTKFoghornTimeView;
  [(NTKFoghornTimeView *)&v4 dealloc];
}

+ (id)_hoursMinutesStringFromTimeFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6 = objc_msgSend_timeText(formatterCopy, v4, v5);
  v11 = v6;
  if (objc_msgSend_showSeconds(formatterCopy, v7, v8))
  {
    v12 = objc_msgSend_rangeInTimeSubstringFromSecondsSeparatorText(formatterCopy, v9, v10);
    v11 = objc_msgSend_substringToIndex_(v6, v13, v14, v12 - 1);
  }

  return v11;
}

+ (id)_secondsStringFromTimeFormatter:(id)formatter
{
  formatterCopy = formatter;
  if (objc_msgSend_showSeconds(formatterCopy, v4, v5))
  {
    v8 = objc_msgSend_timeText(formatterCopy, v6, v7);
    v11 = objc_msgSend_rangeInTimeSubstringFromSecondsSeparatorText(formatterCopy, v9, v10);
    v14 = objc_msgSend_substringWithRange_(v8, v12, v13, v11 - 1, v12 + 1);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)_stringsFromTimeFormatter:(id)formatter showSeconds:(BOOL)seconds hoursString:(id *)string blinkerString:(id *)blinkerString minutesString:(id *)minutesString secondsString:(id *)secondsString
{
  secondsCopy = seconds;
  formatterCopy = formatter;
  v15 = objc_msgSend_timeText(formatterCopy, v13, v14);
  if (objc_msgSend_showSeconds(formatterCopy, v16, v17))
  {
    v21 = objc_msgSend_rangeInTimeSubstringFromSecondsSeparatorText(formatterCopy, v18, v19) - 1;
    if (secondsCopy)
    {
      v23 = objc_msgSend_substringWithRange_(v15, v20, v22, v21, v20 + 1);
    }

    else
    {
      v23 = 0;
    }

    v24 = objc_msgSend_substringToIndex_(v15, v20, v22, v21);

    v15 = v24;
  }

  else
  {
    v23 = 0;
  }

  v25 = objc_msgSend_blinkerRangeInTimeText(formatterCopy, v18, v19);
  v27 = v26;
  v29 = objc_msgSend_substringToIndex_(v15, v26, v28, v25);
  v32 = objc_msgSend_substringWithRange_(v15, v30, v31, v25, v27);
  v35 = objc_msgSend_substringFromIndex_(v15, v33, v34, &v27[v25]);
  v36 = v29;
  *string = v29;
  v37 = v32;
  *blinkerString = v32;
  v38 = v35;
  *minutesString = v35;
  v39 = v23;
  *secondsString = v23;
}

+ (CGSize)_frameSetterSizeForAttributedString:(id)string
{
  stringCopy = string;
  v4 = CTFramesetterCreateWithAttributedString(stringCopy);
  v7 = objc_msgSend_length(stringCopy, v5, v6);

  v12.width = 1.79769313e308;
  v11.location = 0;
  v11.length = v7;
  v12.height = 1.79769313e308;
  v8 = CTFramesetterSuggestFrameSizeWithConstraints(v4, v11, 0, v12, 0);
  CFRelease(v4);
  width = v8.width;
  height = v8.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (CGSize)_getSizesForHoursString:(id)string blinkerString:(id)blinkerString minutesString:(id)minutesString secondsString:(id)secondsString font:(id)font showSeconds:(BOOL)seconds metricsRect:(CGRect)rect hoursSize:(CGSize *)self0 minutesSeparatorSize:(CGSize *)self1 minutesSize:(CGSize *)self2 secondsSize:(CGSize *)self3
{
  secondsCopy = seconds;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v95[3] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  blinkerStringCopy = blinkerString;
  minutesStringCopy = minutesString;
  secondsStringCopy = secondsString;
  fontCopy = font;
  if (secondsStringCopy)
  {
    v27 = objc_msgSend_punctuationCharacterSet(MEMORY[0x277CCA900], v24, v26);
    v30 = objc_msgSend_rangeOfCharacterFromSet_options_(secondsStringCopy, v28, v29, v27, 4);
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = &v31[v30];
      v34 = objc_msgSend_length(secondsStringCopy, v31, v32);
      v37 = objc_msgSend_stringByReplacingCharactersInRange_withString_(secondsStringCopy, v35, v36, v33, v34 - v33, @"88");

      secondsStringCopy = v37;
    }
  }

  else
  {
    secondsStringCopy = @":88";
  }

  v38 = objc_alloc_init(MEMORY[0x277D74240]);
  objc_msgSend_setAlignment_(v38, v39, v40, 4);
  v43 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v41, v42);
  v44 = *MEMORY[0x277D740A8];
  v94[0] = *MEMORY[0x277D740C0];
  v94[1] = v44;
  v95[0] = v43;
  v95[1] = fontCopy;
  v91 = fontCopy;
  v94[2] = *MEMORY[0x277D74118];
  v95[2] = v38;
  v47 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, v46, v95, v94, 3);
  v48 = objc_alloc(MEMORY[0x277CCA898]);
  v49 = stringCopy;
  v52 = objc_msgSend_initWithString_attributes_(v48, v50, v51, stringCopy, v47);
  v53 = objc_alloc(MEMORY[0x277CCA898]);
  v56 = objc_msgSend_initWithString_attributes_(v53, v54, v55, blinkerStringCopy, v47);
  v57 = objc_alloc(MEMORY[0x277CCA898]);
  v60 = objc_msgSend_initWithString_attributes_(v57, v58, v59, minutesStringCopy, v47);
  objc_msgSend__frameSetterSizeForAttributedString_(self, v61, v62, v52);
  v64 = v63;
  v66 = v65;
  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  v89 = CGRectGetHeight(v97);
  objc_msgSend__frameSetterSizeForAttributedString_(self, v67, v89, v56);
  v69 = v68;
  v71 = v70;
  objc_msgSend__frameSetterSizeForAttributedString_(self, v72, v68, v60);
  v74 = v73;
  v76 = v75;
  if (secondsCopy)
  {
    v77 = objc_alloc(MEMORY[0x277CCA898]);
    v80 = objc_msgSend_initWithString_attributes_(v77, v78, v79, secondsStringCopy, v47);
    objc_msgSend__frameSetterSizeForAttributedString_(self, v81, v82, v80);
    v84 = v83;
    v86 = v85;
  }

  else
  {
    v84 = *MEMORY[0x277CBF3A8];
    v86 = *(MEMORY[0x277CBF3A8] + 8);
  }

  size->width = v64;
  size->height = v66;
  separatorSize->width = v69;
  separatorSize->height = v71;
  minutesSize->width = v74;
  minutesSize->height = v76;
  secondsSize->width = v84;
  secondsSize->height = v86;

  v87 = v64 + 0.0 + v69 + v74 + v84;
  v88 = v89;
  result.height = v88;
  result.width = v87;
  return result;
}

+ (void)_configureWithMetricBounds:(CGRect)bounds hoursSize:(CGSize)size minutesSeparatorSize:(CGSize)separatorSize minutesSize:(CGSize)minutesSize secondsSize:(CGSize)secondsSize textInset:(double)inset outlineWidth:(double)width hScale:(double)self0 snappingPolicy:(unint64_t)self1 forDevice:(id)self2 frameStates:(id *)self3
{
  width = secondsSize.width;
  v14 = *&minutesSize.width;
  v28 = separatorSize.width;
  v15 = size.width;
  height = bounds.size.height;
  v17 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v29 = *&minutesSize.height;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = v17;
  v34.size.height = height;
  MinY = CGRectGetMinY(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = v17;
  v35.size.height = height;
  v21 = CGRectGetHeight(v35);
  if (v14)
  {
    CLKCeilForDevice();
    v23 = v22;
    CLKCeilForDevice();
    v21 = v24;
    MinY = v23 - v24;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = v17;
    v36.size.height = height;
    CGRectGetMinX(v36);
    CLKFloorForDevice();
  }

  else
  {
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = v17;
    v37.size.height = height;
    v25 = CGRectGetMinX(v37) + v31 * v33;
  }

  **&width = v25;
  *(*&width + 8) = MinY;
  *(*&width + 16) = v15;
  *(*&width + 24) = v21;
  v26 = v15 + v25;
  *(*&width + 64) = v32;
  *(*&width + 72) = sub_23BEB5F9C(v14, v29, v26);
  *(*&width + 80) = MinY;
  *(*&width + 88) = v28;
  *(*&width + 96) = v21;
  *(*&width + 136) = v32;
  *(*&width + 144) = sub_23BEB5F9C(v14, v29, v28 + v26);
  *(*&width + 152) = MinY;
  *(*&width + 160) = inset;
  *(*&width + 168) = v21;
  *(*&width + 208) = v32;
  *(*&width + 216) = sub_23BEB5F9C(v14, v29, inset + v28 + v26);
  *(*&width + 224) = MinY;
  *(*&width + 232) = scale;
  *(*&width + 240) = v21;
  v27 = 0.0;
  if (scale > 0.0)
  {
    v27 = v32;
  }

  *(*&width + 280) = v27;
}

- (id)_getSecondsColorWithAlpha:(double)alpha
{
  v4 = self->_secondsColor;
  v6 = v4;
  if (alpha >= 0.0 && alpha < 1.0)
  {
    v8 = objc_msgSend_colorWithAlphaComponent_(v4, v5, alpha);

    v6 = v8;
  }

  return v6;
}

- (void)_cleanupElementFrameStates
{
  p_glyphOutlinePaths = &self->_frameStates[0].glyphOutlinePaths;
  v3 = 4;
  do
  {
    v4 = *(p_glyphOutlinePaths - 3);
    if (v4)
    {
      CFRelease(v4);
      *(p_glyphOutlinePaths - 3) = 0;
    }

    if (*p_glyphOutlinePaths)
    {
      CFRelease(*p_glyphOutlinePaths);
      *p_glyphOutlinePaths = 0;
    }

    p_glyphOutlinePaths += 9;
    --v3;
  }

  while (v3);
}

- (void)setNeedsDisplay
{
  objc_msgSend__setNeedsDisplayForElementMask_(self, a2, v2, -1);
  v4.receiver = self;
  v4.super_class = NTKFoghornTimeView;
  [(NTKFoghornTimeView *)&v4 setNeedsDisplay];
}

- (void)_setNeedsDisplayInRect:(CGRect)rect
{
  if (!CGRectIsEmpty(rect))
  {
    objc_msgSend_screenScale(self->_device, v4, v5);
    UIRectIntegralWithScale();
    x = v6;
    y = v8;
    width = v10;
    height = v12;
    p_dirtyRect = &self->_dirtyRect;
    if (!CGRectIsEmpty(self->_dirtyRect))
    {
      v16.origin.x = p_dirtyRect->origin.x;
      v16.origin.y = self->_dirtyRect.origin.y;
      v16.size.width = self->_dirtyRect.size.width;
      v16.size.height = self->_dirtyRect.size.height;
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      v17 = CGRectUnion(v16, v19);
      x = v17.origin.x;
      y = v17.origin.y;
      width = v17.size.width;
      height = v17.size.height;
    }

    v20.origin.x = p_dirtyRect->origin.x;
    v20.origin.y = self->_dirtyRect.origin.y;
    v20.size.width = self->_dirtyRect.size.width;
    v20.size.height = self->_dirtyRect.size.height;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    if (!CGRectEqualToRect(v18, v20))
    {
      v15.receiver = self;
      v15.super_class = NTKFoghornTimeView;
      [(NTKFoghornTimeView *)&v15 setNeedsDisplayInRect:x, y, width, height];
      p_dirtyRect->origin.x = x;
      self->_dirtyRect.origin.y = y;
      self->_dirtyRect.size.width = width;
      self->_dirtyRect.size.height = height;
    }
  }
}

- (void)_setNeedsDisplayForElementMask:(unint64_t)mask
{
  maskCopy = mask;
  v6 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  if ((mask & 8) != 0)
  {
    x = self->_frameStates[3].frame.origin.x;
    y = self->_frameStates[3].frame.origin.y;
    width = self->_frameStates[3].frame.size.width;
    height = self->_frameStates[3].frame.size.height;
    outlineWidth = self->_frameStates[3].outlineWidth;
    if (outlineWidth > 0.0)
    {
      v31 = CGRectInset(self->_frameStates[3].frame, -outlineWidth, -outlineWidth);
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
    }

    v32.origin.x = v6;
    v32.origin.y = v5;
    v32.size.width = v8;
    v32.size.height = v7;
    if (CGRectIsEmpty(v32))
    {
      v9 = 8;
      v7 = height;
      v8 = width;
      v5 = y;
      v6 = x;
      if ((maskCopy & 2) == 0)
      {
LABEL_14:
        if ((maskCopy & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v33.origin.x = v6;
      v33.origin.y = v5;
      v33.size.width = v8;
      v33.size.height = v7;
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v34 = CGRectUnion(v33, v48);
      v6 = v34.origin.x;
      v5 = v34.origin.y;
      v8 = v34.size.width;
      v7 = v34.size.height;
      v9 = 8;
      if ((maskCopy & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v9 = 0;
    if ((mask & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v9 |= 2uLL;
  v15 = self->_frameStates[1].frame.origin.x;
  v16 = self->_frameStates[1].frame.origin.y;
  v17 = self->_frameStates[1].frame.size.width;
  v18 = self->_frameStates[1].frame.size.height;
  v19 = self->_frameStates[1].outlineWidth;
  if (v19 > 0.0)
  {
    v35 = CGRectInset(self->_frameStates[1].frame, -v19, -v19);
    v15 = v35.origin.x;
    v16 = v35.origin.y;
    v17 = v35.size.width;
    v18 = v35.size.height;
  }

  v36.origin.x = v6;
  v36.origin.y = v5;
  v36.size.width = v8;
  v36.size.height = v7;
  if (CGRectIsEmpty(v36))
  {
    v7 = v18;
    v8 = v17;
    v5 = v16;
    v6 = v15;
    goto LABEL_14;
  }

  v39.origin.x = v6;
  v39.origin.y = v5;
  v39.size.width = v8;
  v39.size.height = v7;
  v49.origin.x = v15;
  v49.origin.y = v16;
  v49.size.width = v17;
  v49.size.height = v18;
  v40 = CGRectUnion(v39, v49);
  v6 = v40.origin.x;
  v5 = v40.origin.y;
  v8 = v40.size.width;
  v7 = v40.size.height;
  if ((maskCopy & 1) == 0)
  {
LABEL_15:
    if ((maskCopy & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

LABEL_21:
  v9 |= 1uLL;
  v25 = self->_frameStates[0].frame.origin.x;
  v26 = self->_frameStates[0].frame.origin.y;
  v27 = self->_frameStates[0].frame.size.width;
  v28 = self->_frameStates[0].frame.size.height;
  v29 = self->_frameStates[0].outlineWidth;
  if (v29 > 0.0)
  {
    v41 = CGRectInset(self->_frameStates[0].frame, -v29, -v29);
    v25 = v41.origin.x;
    v26 = v41.origin.y;
    v27 = v41.size.width;
    v28 = v41.size.height;
  }

  v42.origin.x = v6;
  v42.origin.y = v5;
  v42.size.width = v8;
  v42.size.height = v7;
  if (CGRectIsEmpty(v42))
  {
    v7 = v28;
    v8 = v27;
    v5 = v26;
    v6 = v25;
    if ((maskCopy & 4) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v45.origin.x = v6;
    v45.origin.y = v5;
    v45.size.width = v8;
    v45.size.height = v7;
    v51.origin.x = v25;
    v51.origin.y = v26;
    v51.size.width = v27;
    v51.size.height = v28;
    v46 = CGRectUnion(v45, v51);
    v6 = v46.origin.x;
    v5 = v46.origin.y;
    v8 = v46.size.width;
    v7 = v46.size.height;
    if ((maskCopy & 4) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_16:
  v9 |= 4uLL;
  v20 = self->_frameStates[2].frame.origin.x;
  v21 = self->_frameStates[2].frame.origin.y;
  v22 = self->_frameStates[2].frame.size.width;
  v23 = self->_frameStates[2].frame.size.height;
  v24 = self->_frameStates[2].outlineWidth;
  if (v24 > 0.0)
  {
    v37 = CGRectInset(self->_frameStates[2].frame, -v24, -v24);
    v20 = v37.origin.x;
    v21 = v37.origin.y;
    v22 = v37.size.width;
    v23 = v37.size.height;
  }

  v38.origin.x = v6;
  v38.origin.y = v5;
  v38.size.width = v8;
  v38.size.height = v7;
  if (CGRectIsEmpty(v38))
  {
    v7 = v23;
    v8 = v22;
    v5 = v21;
    v6 = v20;
  }

  else
  {
    v43.origin.x = v6;
    v43.origin.y = v5;
    v43.size.width = v8;
    v43.size.height = v7;
    v50.origin.x = v20;
    v50.origin.y = v21;
    v50.size.width = v22;
    v50.size.height = v23;
    v44 = CGRectUnion(v43, v50);
    v6 = v44.origin.x;
    v5 = v44.origin.y;
    v8 = v44.size.width;
    v7 = v44.size.height;
  }

LABEL_28:
  self->_needsDisplayElementMask |= v9;
  v47.origin.x = v6;
  v47.origin.y = v5;
  v47.size.width = v8;
  v47.size.height = v7;
  if (!CGRectIsEmpty(v47))
  {

    MEMORY[0x2821F9670](v6);
  }
}

- (void)_updateFrameElement:(unint64_t)element frame:(CGRect)frame text:(id)text textColor:(id)color
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  textCopy = text;
  colorCopy = color;
  v15 = &self->_frameStates[element];
  v15->frame.origin.x = x;
  v15->frame.origin.y = y;
  v15->frame.size.width = width;
  v15->frame.size.height = height;
  objc_storeStrong(&v15->text, text);
  objc_storeStrong(&v15->textColor, color);
  ctFrame = v15->ctFrame;
  if (ctFrame)
  {
    CFRelease(ctFrame);
    v15->ctFrame = 0;
  }

  glyphOutlinePaths = v15->glyphOutlinePaths;
  if (glyphOutlinePaths)
  {
    CFRelease(glyphOutlinePaths);
    v15->glyphOutlinePaths = 0;
  }
}

- (void)_updateSecondsForTimeFormatter:(id)formatter showSeconds:(BOOL)seconds secondsAlpha:(double)alpha
{
  if (seconds)
  {
    formatterCopy = formatter;
    v8 = objc_opt_class();
    v15 = objc_msgSend__secondsStringFromTimeFormatter_(v8, v9, v10, formatterCopy);
  }

  else
  {
    v15 = &stru_284EA8F68;
  }

  v11 = objc_msgSend__getSecondsColorWithAlpha_(self, a2, alpha);
  objc_msgSend__updateFrameElement_frame_text_textColor_(self, v12, self->_frameStates[3].frame.origin.x, 3, v15, v11, self->_frameStates[3].frame.origin.y, self->_frameStates[3].frame.size.width, self->_frameStates[3].frame.size.height);
  objc_msgSend__setNeedsDisplayForElementMask_(self, v13, v14, 8);
}

- (void)_updateColorsForElementMask:(unint64_t)mask blinkAlpha:(double)alpha secondsAlpha:(double)secondsAlpha
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (alpha >= 1.0 || alpha < 0.0)
  {
    alphaCopy = 1.0;
  }

  else
  {
    alphaCopy = alpha;
  }

  do
  {
    if (((1 << v11) & mask) == 0)
    {
      goto LABEL_19;
    }

    if (v11 > 1)
    {
      if (v11 != 3)
      {
LABEL_15:
        if (!v9)
        {
          v9 = objc_msgSend__getMinutesColor(self, a2, alpha);
        }

        v17 = v9;
        goto LABEL_18;
      }

      v17 = v9;
      if (v10)
      {
        v9 = v10;
      }

      else
      {
        v9 = objc_msgSend__getSecondsColorWithAlpha_(self, a2, secondsAlpha);
        v10 = v9;
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_15;
      }

      if (v12)
      {
        v17 = v9;
        v9 = v12;
      }

      else
      {
        if (!v9)
        {
          v9 = objc_msgSend__getMinutesColor(self, a2, alpha);
        }

        v17 = v9;
        v9 = objc_msgSend_colorWithAlphaComponent_(v9, a2, alphaCopy);
        v12 = v9;
      }
    }

LABEL_18:
    v15 = v9;
    objc_msgSend__updateFrameElement_frame_text_textColor_(self, v16, self->_frameStates[v8].frame.origin.x, v11, self->_frameStates[v8].text, v15, self->_frameStates[v8].frame.origin.y, self->_frameStates[v8].frame.size.width, self->_frameStates[v8].frame.size.height);

    v9 = v17;
LABEL_19:
    ++v11;
    ++v8;
  }

  while (v11 != 4);
  v18 = v9;
  objc_msgSend__setNeedsDisplayForElementMask_(self, a2, alpha, mask);
}

- (void)_updateBlinkWithAlpha:(double)alpha
{
  v5 = objc_msgSend__getMinutesColor(self, a2, alpha);
  v13 = v5;
  alphaCopy = 1.0;
  if (alpha < 1.0 && alpha >= 0.0)
  {
    alphaCopy = alpha;
  }

  v9 = objc_msgSend_colorWithAlphaComponent_(v5, v6, alphaCopy);
  objc_msgSend__updateFrameElement_frame_text_textColor_(self, v10, self->_frameStates[1].frame.origin.x, 1, self->_frameStates[1].text, v9, self->_frameStates[1].frame.origin.y, self->_frameStates[1].frame.size.width, self->_frameStates[1].frame.size.height);
  objc_msgSend__setNeedsDisplayForElementMask_(self, v11, v12, 2);
}

- (void)_updateFrameElementsForHoursString:(id)string blinkerString:(id)blinkerString minutesString:(id)minutesString secondsString:(id)secondsString blinkAlpha:(double)alpha secondsAlpha:(double)secondsAlpha
{
  stringCopy = string;
  blinkerStringCopy = blinkerString;
  minutesStringCopy = minutesString;
  secondsStringCopy = secondsString;
  objc_msgSend__cleanupElementFrameStates(self, v16, v17);
  objc_msgSend__updateColorsWithBlinkAlpha_secondsAlpha_(self, v18, alpha, secondsAlpha);
  v21 = objc_msgSend__getMinutesColor(self, v19, v20);
  v24 = objc_msgSend__getSecondsColorWithAlpha_(self, v22, secondsAlpha);
  alphaCopy = 1.0;
  if (alpha < 1.0 && alpha >= 0.0)
  {
    alphaCopy = alpha;
  }

  v27 = objc_msgSend_colorWithAlphaComponent_(v21, v23, alphaCopy, blinkerStringCopy);
  v28 = 0;
  selfCopy = self;
  do
  {
    if (v28 == 3)
    {
      v30 = secondsStringCopy;
    }

    else
    {
      v30 = minutesStringCopy;
    }

    if (v28 == 3)
    {
      v31 = v24;
    }

    else
    {
      v31 = v21;
    }

    v32 = v41;
    if (v28)
    {
      v33 = v27;
    }

    else
    {
      v32 = stringCopy;
      v33 = v21;
    }

    if (v28 > 1)
    {
      v34 = v31;
    }

    else
    {
      v30 = v32;
      v34 = v33;
    }

    v35 = v30;
    v36 = v34;
    objc_msgSend__updateFrameElement_frame_text_textColor_(self, v37, selfCopy->_frameStates[0].frame.origin.x, v28, v35, v36, selfCopy->_frameStates[0].frame.origin.y, selfCopy->_frameStates[0].frame.size.width, selfCopy->_frameStates[0].frame.size.height);

    ++v28;
    selfCopy = (selfCopy + 72);
  }

  while (v28 != 4);
  objc_msgSend__setNeedsDisplayForElementMask_(self, v38, v39, -1);
}

+ (__CTFrame)_CTFrameForFrame:(CGRect)frame text:(id)text textColor:(id)color font:(id)font forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v47[3] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277D74240];
  deviceCopy = device;
  fontCopy = font;
  colorCopy = color;
  textCopy = text;
  v19 = objc_alloc_init(v14);
  objc_msgSend_setAlignment_(v19, v20, v21, 4);
  v22 = *MEMORY[0x277D740A8];
  v46[0] = *MEMORY[0x277D740C0];
  v46[1] = v22;
  v47[0] = colorCopy;
  v47[1] = fontCopy;
  v46[2] = *MEMORY[0x277D74118];
  v47[2] = v19;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v24, v47, v46, 3);
  v26 = objc_alloc(MEMORY[0x277CCA898]);

  v29 = objc_msgSend_initWithString_attributes_(v26, v27, v28, textCopy, v25);
  objc_msgSend_leading(fontCopy, v30, v31);
  objc_msgSend_ascender(fontCopy, v32, v33);
  objc_msgSend_descender(fontCopy, v34, v35);

  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  CGRectGetHeight(v49);
  CLKRoundForDevice();
  v37 = v36;

  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MinX = CGRectGetMinX(v50);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v39 = CGRectGetWidth(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v53.size.height = CGRectGetHeight(v52);
  v53.origin.x = MinX;
  v53.origin.y = v37;
  v53.size.width = v39;
  v40 = CGPathCreateWithRect(v53, 0);
  v41 = CTFramesetterCreateWithAttributedString(v29);
  v48.length = objc_msgSend_length(v29, v42, v43);
  v48.location = 0;
  Frame = CTFramesetterCreateFrame(v41, v48, v40, 0);
  CFRelease(v41);
  CGPathRelease(v40);

  return Frame;
}

- (void)_ensureCTFramesForElementMask:(unint64_t)mask withFont:(id)font
{
  maskCopy = mask;
  fontCopy = font;
  if (fontCopy)
  {
    v7 = 0;
    v8 = 0;
    v20 = fontCopy;
    do
    {
      if (((1 << v7) & maskCopy) != 0 && !self->_frameStates[v8].ctFrame)
      {
        v9 = &self->_frameStates[v8];
        v10 = v9->textColor;
        v11 = v9->text;
        if (v11)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          width = v9->frame.size.width;
          height = v9->frame.size.height;
          y = v9->frame.origin.y;
          x = self->_frameStates[v8].frame.origin.x;
          v17 = objc_opt_class();
          self->_frameStates[v8].ctFrame = objc_msgSend__CTFrameForFrame_text_textColor_font_forDevice_(v17, v18, x, v11, v10, v20, self->_device, y, width, height);
          if (self->_frameStates[v8].outlineWidth <= 0.0)
          {
            v19 = 0;
          }

          else
          {
            v19 = sub_23BEB70F8(v20, v10, v11);
          }

          self->_frameStates[v8].glyphOutlinePaths = v19;
        }

        fontCopy = v20;
      }

      ++v8;
      ++v7;
    }

    while (v8 != 4);
  }
}

- (unint64_t)_numberOfThinCharactersForTimeFormatter:(id)formatter
{
  formatterCopy = formatter;
  v5 = self->_thinCharacterSet;
  v6 = objc_opt_class();
  v9 = objc_msgSend__hoursMinutesStringFromTimeFormatter_(v6, v7, v8, formatterCopy);
  v12 = objc_msgSend_length(v9, v10, v11);
  if (v12)
  {
    v15 = v12;
    v16 = 0;
    for (i = 0; i != v15; ++i)
    {
      v18 = objc_msgSend_characterAtIndex_(v9, v13, v14, i);
      v16 += objc_msgSend_characterIsMember_(v5, v19, v20, v18);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (CGSize)_scaleSizeForLayoutStyle:(unint64_t)style inset:(BOOL)inset shouldHideSeconds:(BOOL)seconds numberOfThinCharacters:(unint64_t)characters
{
  v6 = characters != 0;
  if (characters > 3)
  {
    v6 = 2;
  }

  styleCopy = style & 0xFFFFFFFFFFFFFFELL;
  if (!seconds)
  {
    styleCopy = style;
  }

  p_width = &self->_layoutConstants.timeFontScaleSize[inset][styleCopy][v6].width;
  v9 = *p_width;
  v10 = p_width[1];
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)_scaleWeightForLayoutStyle:(unint64_t)style inset:(BOOL)inset shouldHideSeconds:(BOOL)seconds
{
  styleCopy = style & 0x1FFFFFFFFFFFFFFELL;
  if (!seconds)
  {
    styleCopy = style;
  }

  return self->_layoutConstants.timeFontScaleWeight[inset][styleCopy];
}

- (CGSize)_scaleSizeForTimeFormatter:(id)formatter layoutStyle:(unint64_t)style inset:(BOOL)inset shouldHideSeconds:(BOOL)seconds
{
  secondsCopy = seconds;
  insetCopy = inset;
  v12 = objc_msgSend__numberOfThinCharactersForTimeFormatter_(self, a2, v6, formatter);

  objc_msgSend__scaleSizeForLayoutStyle_inset_shouldHideSeconds_numberOfThinCharacters_(self, v11, v13, style, insetCopy, secondsCopy, v12);
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)_layoutForHoursString:(id)string blinkerString:(id)blinkerString minutesString:(id)minutesString secondsString:(id)secondsString showSeconds:(BOOL)seconds transitoryFontSize:(CGSize)size transitoryFontWeight:(double)weight transitoryOutlineWidth:(double)self0 metricsRect:(CGRect)self1 snapToPixel:(BOOL)self2 toLayoutStyle:(unint64_t)self3 font:(id *)self4 frameStates:(id *)self5
{
  pixelCopy = pixel;
  secondsCopy = seconds;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v25 = size.height;
  v26 = size.width;
  timeDisplayFontLoader = self->_timeDisplayFontLoader;
  secondsStringCopy = secondsString;
  minutesStringCopy = minutesString;
  blinkerStringCopy = blinkerString;
  stringCopy = string;
  v35 = objc_msgSend_foregroundFontWithTypographicSize_weight_horizontalScale_stylisticSet_(timeDisplayFontLoader, v34, v26, 0, v25, weight, 1.0);
  v55 = 0.0;
  v56 = 0.0;
  v53 = 0.0;
  v54 = 0.0;
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v36 = objc_opt_class();
  objc_msgSend__getSizesForHoursString_blinkerString_minutesString_secondsString_font_showSeconds_metricsRect_hoursSize_minutesSeparatorSize_minutesSize_secondsSize_(v36, v37, x, stringCopy, blinkerStringCopy, minutesStringCopy, secondsStringCopy, v35, secondsCopy, y, width, height, &v55, &v53, &v51, &v49);
  v39 = v38;
  v41 = v40;

  v42 = 3;
  if (style)
  {
    v42 = 1;
  }

  if (pixelCopy)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v44 = objc_opt_class();
  objc_msgSend__configureWithMetricBounds_hoursSize_minutesSeparatorSize_minutesSize_secondsSize_textInset_outlineWidth_hScale_snappingPolicy_forDevice_frameStates_(v44, v45, x, v43, self->_device, states, y, width, height, v55, v56, v53, v54, v51, v52, v49, v50, 0, *&width, 0x3FF0000000000000);
  v46 = v35;
  *font = v35;

  v47 = v39;
  v48 = v41;
  result.height = v48;
  result.width = v47;
  return result;
}

- (CGSize)_getLayoutForHoursString:(id)string blinkerString:(id)blinkerString minutesString:(id)minutesString secondsString:(id)secondsString showSeconds:(BOOL)seconds numberOfThinCharacters:(unint64_t)characters layoutStyle:(unint64_t)style inset:(BOOL)self0 metricsRect:(CGRect)self1
{
  secondsCopy = seconds;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v46[0] = 0;
  v46[1] = 0;
  v45[0] = 0;
  v45[1] = 0;
  v44[0] = 0;
  v44[1] = 0;
  v43[0] = 0;
  v43[1] = 0;
  secondsStringCopy = secondsString;
  minutesStringCopy = minutesString;
  blinkerStringCopy = blinkerString;
  stringCopy = string;
  objc_msgSend__scaleSizeForLayoutStyle_inset_shouldHideSeconds_numberOfThinCharacters_(self, v25, v26, style, inset, secondsCopy ^ 1, characters);
  v28 = v27;
  v30 = v29;
  objc_msgSend__scaleWeightForLayoutStyle_inset_shouldHideSeconds_(self, v31, v27, style, inset, secondsCopy ^ 1);
  v34 = objc_msgSend_foregroundFontWithTypographicSize_weight_horizontalScale_stylisticSet_(self->_timeDisplayFontLoader, v32, v28, 0, v30, v33, 1.0);
  v35 = objc_opt_class();
  objc_msgSend__getSizesForHoursString_blinkerString_minutesString_secondsString_font_showSeconds_metricsRect_hoursSize_minutesSeparatorSize_minutesSize_secondsSize_(v35, v36, x, stringCopy, blinkerStringCopy, minutesStringCopy, secondsStringCopy, v34, secondsCopy, y, width, height, v46, v45, v44, v43);
  v38 = v37;
  v40 = v39;

  v41 = v38;
  v42 = v40;
  result.height = v42;
  result.width = v41;
  return result;
}

- (void)_layoutAndUpdateForTimeFormatter:(double)formatter transitoryFontSize:(double)size transitoryFontWeight:(double)weight metricsRect:(double)rect snapToPixel:(double)pixel fromLayoutStyle:(double)style toLayoutStyle:(uint64_t)layoutStyle fromInset:(void *)self0 toInset:(unsigned int)self1 fromShowSeconds:(uint64_t)self2 toShowSeconds:(uint64_t)self3 progress:(int)self4 secondsSize:(int)self5 secondsWeight:(double)self6 secondsRenderRect:(unsigned __int8)self7 blinkAlpha:(unsigned __int8)self8 secondsAlpha:(double)self9
{
  v86 = *MEMORY[0x277D85DE8];
  insetCopy = inset;
  objc_msgSend__setNeedsDisplayForElementMask_(self, v34, v35, -1);
  v36 = objc_opt_class();
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v65 = insetCopy;
  objc_msgSend__stringsFromTimeFormatter_showSeconds_hoursString_blinkerString_minutesString_secondsString_(v36, v37, v38, insetCopy, renderRect | alpha, &v74, &v73, &v72, &v71);
  v39 = v74;
  v40 = v73;
  v41 = v72;
  v42 = v71;
  CLKInterpolateBetweenFloatsClipped();
  v44 = v43;
  v70 = 0;
  objc_msgSend__layoutForHoursString_blinkerString_minutesString_secondsString_showSeconds_transitoryFontSize_transitoryFontWeight_transitoryOutlineWidth_metricsRect_snapToPixel_toLayoutStyle_font_frameStates_(self, v45, a2, v39, v40, v41, v42, renderRect | alpha, toInset, formatter, size, v43, weight, rect, pixel, style, showSeconds, &v70, self + 1624);
  v47 = v46;
  v48 = v70;
  v49 = v70;
  objc_storeStrong((self + 1608), v48);
  objc_storeStrong((self + 1616), v48);
  v87.origin.x = a22;
  v87.origin.y = a23;
  v87.size.width = a24;
  v87.size.height = a25;
  if (CGRectIsEmpty(v87))
  {
    v64 = v49;
  }

  else
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v84 = 0;
    v85 = 0;
    v69 = v49;
    objc_msgSend__layoutForHoursString_blinkerString_minutesString_secondsString_showSeconds_transitoryFontSize_transitoryFontWeight_transitoryOutlineWidth_metricsRect_snapToPixel_toLayoutStyle_font_frameStates_(self, v50, secondsAlpha, v39, v40, v41, v42, 1, toInset, a20, a21, v44, a22, a23, a24, a25, showSeconds, &v69, v75);
    v52 = v69;
    v64 = v69;

    objc_storeStrong((self + 1616), v52);
    *(self + 1840) = v82;
    *(self + 1856) = v83;
    v53 = 288;
    do
    {

      v53 -= 72;
    }

    while (v53);
  }

  v55 = objc_msgSend__numberOfThinCharactersForTimeFormatter_(self, v50, v51, v65);
  if (progress != secondsSize || seconds != showSeconds || renderRect != alpha)
  {
    LOBYTE(v59) = progress;
    objc_msgSend__getLayoutForHoursString_blinkerString_minutesString_secondsString_showSeconds_numberOfThinCharacters_layoutStyle_inset_metricsRect_(self, v54, weight, v39, v40, v41, v42, renderRect, v55, rect, pixel, style, seconds, v59);
    LOBYTE(v60) = secondsSize;
    objc_msgSend__getLayoutForHoursString_blinkerString_minutesString_secondsString_showSeconds_numberOfThinCharacters_layoutStyle_inset_metricsRect_(self, v56, weight, v39, v40, v41, v42, alpha, v55, rect, pixel, style, showSeconds, v60);
    CLKInterpolateBetweenFloatsClipped();
    v47 = v57;
  }

  if (v47 < pixel)
  {
    UICeilToViewScale();
    *(self + 1624) = v58 + *(self + 1624);
    *(self + 1696) = v58 + *(self + 1696);
    *(self + 1768) = v58 + *(self + 1768);
    *(self + 1840) = v58 + *(self + 1840);
  }

  objc_msgSend__updateFrameElementsForHoursString_blinkerString_minutesString_secondsString_blinkAlpha_secondsAlpha_(self, v54, a26, v39, v40, v41, v42, a27);
}

- (void)_layoutAndUpdateForTimeFormatter:(id)formatter showSeconds:(BOOL)seconds layoutStyle:(unint64_t)style inset:(BOOL)inset metricsRect:(CGRect)rect blinkAlpha:(double)alpha secondsAlpha:(double)secondsAlpha
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  insetCopy = inset;
  secondsCopy = seconds;
  v40 = *MEMORY[0x277D85DE8];
  formatterCopy = formatter;
  objc_msgSend__scaleSizeForTimeFormatter_layoutStyle_inset_shouldHideSeconds_(self, v19, v20, formatterCopy, style, insetCopy, !secondsCopy);
  v22 = v21;
  v24 = v23;
  objc_msgSend__scaleWeightForLayoutStyle_inset_shouldHideSeconds_(self, v25, v21, style, insetCopy, !secondsCopy);
  v27 = v26;
  v28 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v33 = "[NTKFoghornTimeView _layoutAndUpdateForTimeFormatter:showSeconds:layoutStyle:inset:metricsRect:blinkAlpha:secondsAlpha:]";
    v34 = 2048;
    v35 = v22;
    v36 = 2048;
    v37 = v24;
    v38 = 2048;
    v39 = v27;
    _os_log_debug_impl(&dword_23BEB1000, v28, OS_LOG_TYPE_DEBUG, "%s: size = { %f, %f }, weight = %f ", buf, 0x2Au);
  }

  HIBYTE(v30) = secondsCopy;
  LOBYTE(v30) = secondsCopy;
  objc_msgSend__layoutAndUpdateForTimeFormatter_transitoryFontSize_transitoryFontWeight_metricsRect_snapToPixel_fromLayoutStyle_toLayoutStyle_fromInset_toInset_fromShowSeconds_toShowSeconds_progress_secondsSize_secondsWeight_secondsRenderRect_blinkAlpha_secondsAlpha_(self, v29, v22, formatterCopy, self->_animationSnapStyle != 0, style, style, insetCopy, insetCopy, v24, v27, x, y, width, height, 1.0, v30, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), 0, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), *&alpha, *&secondsAlpha);
}

+ (id)_minutesSeparatorImageWithSize:(CGSize)size scale:(double)scale frame:(CGRect)frame text:(id)text textColor:(id)color font:(id)font outlineWidth:(double)width forDevice:(id)self0
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v19 = size.height;
  v20 = size.width;
  textCopy = text;
  colorCopy = color;
  fontCopy = font;
  deviceCopy = device;
  v26 = objc_opt_new();
  objc_msgSend_setScale_(v26, v27, scale);
  v28 = objc_alloc(MEMORY[0x277D75560]);
  v30 = objc_msgSend_initWithSize_format_(v28, v29, v20, v26, v19);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_23BEB8134;
  v39[3] = &unk_278BA0E18;
  v44 = x;
  v45 = y;
  widthCopy = width;
  v47 = height;
  selfCopy = self;
  v40 = textCopy;
  v41 = colorCopy;
  v42 = fontCopy;
  v43 = deviceCopy;
  widthCopy2 = width;
  v31 = deviceCopy;
  v32 = fontCopy;
  v33 = colorCopy;
  v34 = textCopy;
  v37 = objc_msgSend_imageWithActions_(v30, v35, v36, v39);

  return v37;
}

- (void)_updateMinutesSeparatorLayerForTimeFormatter:(id)formatter
{
  v5 = self->_font;
  formatterCopy = formatter;
  v9 = objc_msgSend__getMinutesColor(self, v7, v8);
  v10 = objc_opt_class();
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  objc_msgSend__stringsFromTimeFormatter_showSeconds_hoursString_blinkerString_minutesString_secondsString_(v10, v11, v12, formatterCopy, 0, &v47, &v46, &v45, &v44);

  v13 = v47;
  v14 = v46;
  v15 = v45;
  v16 = v44;
  x = self->_frameStates[1].frame.origin.x;
  y = self->_frameStates[1].frame.origin.y;
  width = self->_frameStates[1].frame.size.width;
  height = self->_frameStates[1].frame.size.height;
  outlineWidth = self->_frameStates[1].outlineWidth;
  objc_msgSend_screenScale(self->_device, v22, v23);
  v25 = v24;
  v26 = objc_opt_class();
  v28 = objc_msgSend__minutesSeparatorImageWithSize_scale_frame_text_textColor_font_outlineWidth_forDevice_(v26, v27, width, v14, v9, v5, self->_device, height, v25, 0.0, 0.0, width, height, outlineWidth);
  objc_msgSend_activate(MEMORY[0x277CD9FF0], v29, v30);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v31, v32);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v33, v34, 1);
  objc_msgSend_setFrame_(self->_minutesSeparatorLayer, v35, x, y, width, height);
  v36 = v28;
  v39 = objc_msgSend_CGImage(v36, v37, v38);
  objc_msgSend_setContents_(self->_minutesSeparatorLayer, v40, v41, v39);

  objc_msgSend_commit(MEMORY[0x277CD9FF0], v42, v43);
}

- (void)_updateHoursMinutesSecondsForTimeFormatter:(id)formatter layoutStyle:(unint64_t)style tritiumOn:(BOOL)on blinkAlpha:(double)alpha
{
  onCopy = on;
  v25 = *MEMORY[0x277D85DE8];
  formatterCopy = formatter;
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  inset = self->_inset;
  if (objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, v12, 0.0, style, inset, onCopy, &v19, v18, &v17))
  {
    objc_msgSend__layoutAndUpdateForTimeFormatter_showSeconds_layoutStyle_inset_metricsRect_blinkAlpha_secondsAlpha_(self, v13, *&v19, formatterCopy, v17, style, inset, *(&v19 + 1), v20, alpha, self->_secondsLayoutVisibility);
    if (self->_blinkTimerToken)
    {
      objc_msgSend__updateMinutesSeparatorLayerForTimeFormatter_(self, v14, v15, formatterCopy);
    }

    objc_msgSend__updateBlinking(self, v14, v15);
  }

  else
  {
    v16 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[NTKFoghornTimeView _updateHoursMinutesSecondsForTimeFormatter:layoutStyle:tritiumOn:blinkAlpha:]";
      v23 = 1024;
      styleCopy = style;
      _os_log_impl(&dword_23BEB1000, v16, OS_LOG_TYPE_DEFAULT, "%s: encountered unexpected layoutStyle: 0x%02X", buf, 0x12u);
    }
  }
}

+ (void)drawSnapshotInContext:(CGContext *)context layoutStyle:(unint64_t)style inset:(BOOL)inset minutesColor:(id)color secondsColor:(id)secondsColor forDevice:(id)device
{
  insetCopy = inset;
  deviceCopy = device;
  secondsColorCopy = secondsColor;
  colorCopy = color;
  v16 = [NTKFoghornTimeView alloc];
  objc_msgSend_screenBounds(deviceCopy, v17, v18);
  v38 = objc_msgSend_initWithFrame_forDevice_(v16, v19, v20, deviceCopy);

  objc_msgSend_setLayoutStyle_(v38, v21, v22, style);
  objc_msgSend_setMinutesColor_(v38, v23, v24, colorCopy);

  objc_msgSend_setSecondsColor_(v38, v25, v26, secondsColorCopy);
  objc_msgSend_setInset_(v38, v27, v28, insetCopy);
  objc_msgSend_setFrozen_(v38, v29, v30, 1);
  v31 = NTKIdealizedDate();
  objc_msgSend_setOverrideDate_duration_(v38, v32, 0.0, v31);

  v35 = objc_msgSend_layer(v38, v33, v34);
  objc_msgSend_renderInContext_(v35, v36, v37, context);
}

- (void)_drawInContext:(CGContext *)context needsDisplayElementMask:(unint64_t)mask
{
  maskCopy = mask;
  v8 = 0.0;
  if (self->_inset)
  {
    MinX = CGRectGetMinX(self->_layoutConstants.timeRect[0]);
    v8 = MinX;
  }

  objc_msgSend_bounds(self, a2, MinX);
  Width = CGRectGetWidth(v26);
  v10 = Width - v8;
  objc_msgSend_bounds(self, v11, Width);
  v28.size.height = CGRectGetHeight(v27);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = v10;
  CGContextClipToRect(context, v28);
  objc_msgSend_activate(MEMORY[0x277CD9FF0], v12, v13);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v14, v15);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v16, v17, 1);
  if ((maskCopy & 8) != 0)
  {
    v19 = self->_frameStates[3].frame.size.width;
    if (v19 > 0.0)
    {
      objc_msgSend__ensureCTFramesForElementMask_withFont_(self, v18, v19, 8, self->_secondsFont);
      CGContextSaveGState(context);
      MaxY = CGRectGetMaxY(self->_frameStates[3].frame);
      CGContextTranslateCTM(context, 0.0, MaxY);
      CGContextScaleCTM(context, 1.0, -1.0);
      _drawCTFrameAndOutlineForFrameState(context, &self->_frameStates[3]);
      CGContextRestoreGState(context);
    }
  }

  v21 = CGRectGetMaxY(self->_frameStates[0].frame);
  CGContextTranslateCTM(context, 0.0, v21);
  CGContextScaleCTM(context, 1.0, -1.0);
  if (self->_animationSnapStyle != 2)
  {
    CGContextSetShouldSubpixelPositionFonts(context, 1);
    CGContextSetShouldSubpixelQuantizeFonts(context, 0);
    CGContextSetShouldAntialias(context, 1);
    CGContextSetShouldSmoothFonts(context, 1);
  }

  if ((maskCopy & 2) != 0)
  {
    objc_msgSend__ensureCTFramesForElementMask_withFont_(self, v22, v23, 2, self->_font);
    _drawCTFrameAndOutlineForFrameState(context, &self->_frameStates[1]);
  }

  if ((maskCopy & 5) != 0)
  {
    objc_msgSend__ensureCTFramesForElementMask_withFont_(self, v22, v23, 5, self->_font);
    _drawCTFrameAndOutlineForFrameState(context, self->_frameStates);
    _drawCTFrameAndOutlineForFrameState(context, &self->_frameStates[2]);
  }

  v24 = MEMORY[0x277CD9FF0];

  objc_msgSend_commit(v24, v22, v23);
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v7 = objc_msgSend_backgroundColor(self, v5, v6);
  v8 = v7;
  v11 = objc_msgSend_CGColor(v8, v9, v10);
  CGContextSetFillColorWithColor(CurrentContext, v11);

  p_dirtyRect = &self->_dirtyRect;
  if (CGRectIsEmpty(self->_dirtyRect))
  {
    objc_msgSend_bounds(self, v13, v14);
    CGContextFillRect(CurrentContext, v20);
    objc_msgSend__drawInContext_needsDisplayElementMask_(self, v15, v16, CurrentContext, -1);
  }

  else
  {
    v21.origin.x = p_dirtyRect->origin.x;
    v21.origin.y = self->_dirtyRect.origin.y;
    v21.size.width = self->_dirtyRect.size.width;
    v21.size.height = self->_dirtyRect.size.height;
    CGContextFillRect(CurrentContext, v21);
    objc_msgSend__drawInContext_needsDisplayElementMask_(self, v17, v18, CurrentContext, self->_needsDisplayElementMask);
  }

  self->_needsDisplayElementMask = 0;
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  p_dirtyRect->origin = *MEMORY[0x277CBF3A0];
  self->_dirtyRect.size = v19;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  objc_msgSend_setOverrideDate_(self->_timeFormatter, a2, duration, date);

  MEMORY[0x2821F9670](v4);
}

- (void)_updateShowSeconds
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_showSeconds(self->_timeFormatter, a2, v2);
  layoutStyle = self->_layoutStyle;
  v8 = layoutStyle | objc_msgSend_reportingLiveTime(self->_timeFormatter, v6, v7) ^ 1;
  if (v4 != (v8 & 1))
  {
    v9 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"notShowing";
      if (v4)
      {
        v11 = @"showing";
      }

      else
      {
        v11 = @"notShowing";
      }

      if (v8)
      {
        v10 = @"showing";
      }

      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_23BEB1000, v9, OS_LOG_TYPE_DEFAULT, "_updateShowSeconds from: %@ to: %@", &v16, 0x16u);
    }

    objc_msgSend_setShowSeconds_(self->_timeFormatter, v12, v13, v8 & 1);
    objc_msgSend_setPaused_forReason_(self->_timeFormatter, v14, v15, 0, @"foghornTimeViewTritiumOrLayoutChange");
  }
}

- (void)setFrozen:(BOOL)frozen
{
  if (self->_frozen != frozen)
  {
    self->_frozen = frozen;
    objc_msgSend__updateBlinking(self, a2, v3);
  }
}

- (void)timeFormatterTextDidChange:(id)change
{
  changeCopy = change;
  v4 = objc_opt_class();
  v7 = objc_msgSend__hoursMinutesStringFromTimeFormatter_(v4, v5, v6, changeCopy);
  if (objc_msgSend_isEqualToString_(self->_lastHoursMinutesString, v8, v9, v7))
  {
    if (objc_msgSend_showSeconds(changeCopy, v10, v11))
    {
      objc_msgSend__updateSecondsForTimeFormatter_showSeconds_secondsAlpha_(self, v12, self->_secondsLayoutVisibility, changeCopy, 1);
    }
  }

  else
  {
    v14 = objc_msgSend__tritiumOn(self, v10, v11) | self->_frozen;
    v15 = 1.0;
    v16 = 0.0;
    if (self->_layoutStyle)
    {
      v16 = 1.0;
    }

    if ((v14 & 1) == 0)
    {
      v15 = v16;
    }

    objc_msgSend__updateHoursMinutesSecondsForTimeFormatter_layoutStyle_tritiumOn_blinkAlpha_(self, v13, v15, changeCopy);
  }

  lastHoursMinutesString = self->_lastHoursMinutesString;
  self->_lastHoursMinutesString = v7;
}

- (void)timeFormatterReportingLiveTimeDidChange:(id)change
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_reportingLiveTime(change, a2, v3);
  v6 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v10 = 136315394;
    v11 = "[NTKFoghornTimeView timeFormatterReportingLiveTimeDidChange:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_23BEB1000, v6, OS_LOG_TYPE_DEFAULT, "%s: reportingLiveTime = %@", &v10, 0x16u);
  }

  if (v5)
  {
    objc_msgSend_setNeedsDisplay(self, v8, v9);
  }
}

- (void)_updateBlinkerAlphaForSecondFraction:(double)fraction
{
  CLKCompressFraction();
  CLKInterpolateBetweenFloatsClipped();
  v5 = v4;
  objc_msgSend_activate(MEMORY[0x277CD9FF0], v6, v4);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v7, v8);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v9, v10, 1);
  *&v11 = v5;
  objc_msgSend_setOpacity_(self->_minutesSeparatorLayer, v12, v11);
  v15 = MEMORY[0x277CD9FF0];

  objc_msgSend_commit(v15, v13, v14);
}

- (void)_startBlinking
{
  objc_msgSend__updateMinutesSeparatorLayerForTimeFormatter_(self, a2, v2, self->_timeFormatter);
  CLKClockTimerDateForNow();
  objc_msgSend__updateBlinkerAlphaForSecondFraction_(self, v4, *&location[5]);

  objc_msgSend__updateBlinkWithAlpha_(self, v5, 0.0);
  objc_msgSend__setNeedsDisplayForElementMask_(self, v6, v7, -1);
  if (!self->_blinkTimerToken)
  {
    objc_initWeak(location, self);
    v10 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], v8, v9);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23BEB8F50;
    v15[3] = &unk_278BA0E40;
    objc_copyWeak(&v16, location);
    v13 = objc_msgSend_startUpdatesWithUpdateFrequency_withHandler_identificationLog_(v10, v11, v12, 2, v15, &unk_284EA8A28);
    blinkTimerToken = self->_blinkTimerToken;
    self->_blinkTimerToken = v13;

    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }
}

- (void)_stopBlinking
{
  if (self->_blinkTimerToken)
  {
    v4 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], a2, v2);
    objc_msgSend_stopUpdatesForToken_(v4, v5, v6, self->_blinkTimerToken);

    blinkTimerToken = self->_blinkTimerToken;
    self->_blinkTimerToken = 0;
  }

  objc_msgSend_activate(MEMORY[0x277CD9FF0], a2, v2);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v8, v9);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v10, v11, 1);
  objc_msgSend_setOpacity_(self->_minutesSeparatorLayer, v12, 0.0);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v13, v14);
  objc_msgSend__updateBlinkWithAlpha_(self, v15, 1.0);

  objc_msgSend__setNeedsDisplayForElementMask_(self, v16, v17, -1);
}

- (void)_updateBlinking
{
  v17 = *MEMORY[0x277D85DE8];
  blinkTimerToken = self->_blinkTimerToken;
  if (self->_frozen || (objc_msgSend__tritiumOff(self, a2, v2) & 1) == 0)
  {
    if (!blinkTimerToken)
    {
      return;
    }

    v5 = 0;
  }

  else
  {
    v5 = (self->_layoutStyle & 1) == 0;
    if ((blinkTimerToken != 0) == v5)
    {
      return;
    }
  }

  v6 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"notBlinking";
    if (blinkTimerToken)
    {
      v8 = @"blinking";
    }

    else
    {
      v8 = @"notBlinking";
    }

    if (v5)
    {
      v7 = @"blinking";
    }

    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_23BEB1000, v6, OS_LOG_TYPE_DEFAULT, "_updateBlinking from: %@ to: %@", &v13, 0x16u);
  }

  objc_msgSend__stopBlinking(self, v9, v10);
  if (v5)
  {
    objc_msgSend__startBlinking(self, v11, v12);
  }
}

+ (BOOL)_stuffForLayoutStyle:(unint64_t)style inset:(BOOL)inset shouldHideSeconds:(BOOL)seconds layoutConstants:(id *)constants renderRect:(CGRect *)rect oversizedRect:(CGRect *)oversizedRect showSeconds:(BOOL *)showSeconds
{
  if (style > 6)
  {
    v13 = 0;
    result = 0;
    v23 = *MEMORY[0x277CBF3A0];
    v24 = *(MEMORY[0x277CBF3A0] + 16);
    rect->origin = *MEMORY[0x277CBF3A0];
    rect->size = v24;
    oversizedRect->origin = v23;
    oversizedRect->size = v24;
  }

  else
  {
    v11 = 1 << style;
    styleCopy = style & 0xFFFFFFFFFFFFFFFELL;
    if (!seconds)
    {
      styleCopy = style;
    }

    v13 = (v11 & 0x55) == 0 && !seconds;
    if ((v11 & 0x55) != 0)
    {
      styleCopy2 = style;
    }

    else
    {
      styleCopy2 = styleCopy;
    }

    v15 = constants + 32 * styleCopy2;
    x = *(v15 + 98);
    y = *(v15 + 99);
    width = *(v15 + 100);
    height = *(v15 + 101);
    v20 = constants->var3[styleCopy2];
    if (!inset)
    {
      v21 = -CGRectGetMinX(*(v15 + 784));
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v26 = CGRectInset(v25, v21, 0.0);
      x = v26.origin.x;
      y = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;
    }

    rect->origin.x = x;
    rect->origin.y = y;
    rect->size.width = width;
    rect->size.height = height;
    oversizedRect->origin.x = x;
    oversizedRect->origin.y = y;
    oversizedRect->size.width = v20 * width;
    oversizedRect->size.height = height;
    result = 1;
  }

  *showSeconds = v13;
  return result;
}

- (BOOL)_stuffForLayoutStyle:(unint64_t)style inset:(BOOL)inset tritiumOn:(BOOL)on renderRect:(CGRect *)rect oversizedRect:(CGRect *)oversizedRect showSeconds:(BOOL *)seconds
{
  insetCopy = inset;
  memcpy(__dst, &self->_layoutConstants, sizeof(__dst));
  v13 = objc_opt_class();
  memcpy(v17, __dst, sizeof(v17));
  return objc_msgSend__stuffForLayoutStyle_inset_shouldHideSeconds_layoutConstants_renderRect_oversizedRect_showSeconds_(v13, v14, v15, style, insetCopy, 0, v17, rect, oversizedRect, seconds);
}

- (CGRect)contentBounds
{
  v16 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  layoutStyle = self->_layoutStyle;
  inset = self->_inset;
  v5 = objc_msgSend__tritiumOn(self, a2, 0.0);
  if (objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, v6, v7, layoutStyle, inset, v5, &v16, v15, &v14))
  {
    v11 = *(&v16 + 1);
    v10 = *&v16;
    v13 = *(&v17 + 1);
    v12 = *&v17;
  }

  else
  {
    objc_msgSend_bounds(self, v8, v9);
  }

  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)_setLayoutFromStyle:(unint64_t)style toStyle:(unint64_t)toStyle fromTritiumOn:(BOOL)on toTritiumOn:(BOOL)tritiumOn fromInset:(BOOL)inset toInset:(BOOL)toInset progress:(double)progress
{
  insetCopy = inset;
  v13 = 0.0;
  v86 = 0u;
  memset(&v87, 0, sizeof(v87));
  v85 = 0u;
  v84 = 0;
  memset(&v83, 0, sizeof(v83));
  memset(v82, 0, sizeof(v82));
  v81 = 0;
  v14 = on ^ tritiumOn;
  if (style != toStyle)
  {
    v14 = 1;
  }

  if ((v14 | inset ^ toInset) != 1 || (v13 = fabs(progress), v13 < 0.00000011920929))
  {
    objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, a2, v13, style, inset);
    progressCopy = 0.0;
    objc_msgSend__layoutAndUpdateForTimeFormatter_showSeconds_layoutStyle_inset_metricsRect_blinkAlpha_secondsAlpha_(self, v22, v87.origin.x, self->_timeFormatter, v87.origin.y, *&v87.size, 1.0, 0.0);
    goto LABEL_24;
  }

  toInsetCopy = toInset;
  tritiumOnCopy = tritiumOn;
  v18 = fabs(progress + -1.0);
  if (progress > 1.0 || v18 < 0.00000011920929)
  {
    objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, a2, v18, toStyle, toInset, tritiumOn, &v83, v82, &v81);
    if (v81)
    {
      progressCopy = 1.0;
    }

    else
    {
      progressCopy = 0.0;
    }

    objc_msgSend__layoutAndUpdateForTimeFormatter_showSeconds_layoutStyle_inset_metricsRect_blinkAlpha_secondsAlpha_(self, v20, v83.origin.x, self->_timeFormatter, v83.origin.y, *&v83.size, 1.0, progressCopy);
    goto LABEL_24;
  }

  objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, a2, v18, style, inset);
  objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, v23, v24, toStyle, toInsetCopy, tritiumOnCopy, &v83, v82, &v81);
  CGRectGetMinX(v87);
  CGRectGetMinX(v83);
  CLKInterpolateBetweenFloatsClipped();
  v26 = v25;
  CGRectGetMinY(v87);
  CGRectGetMinY(v83);
  CLKInterpolateBetweenFloatsClipped();
  v28 = v27;
  CGRectGetMaxX(v87);
  CGRectGetMaxX(v83);
  CLKInterpolateBetweenFloatsClipped();
  v30 = v29;
  CGRectGetMaxY(v87);
  CGRectGetMaxY(v83);
  CLKInterpolateBetweenFloatsClipped();
  if (v84)
  {
    v33 = 1.0;
    if ((v81 & 1) == 0)
    {
      progressCopy = 1.0 - progress;
      goto LABEL_20;
    }
  }

  else
  {
    v33 = 0.0;
    progressCopy = progress;
    if (v81)
    {
      goto LABEL_20;
    }
  }

  progressCopy = v33;
LABEL_20:
  v79 = v28;
  v80 = v26;
  v77 = v30 - v26;
  v78 = v32 - v28;
  v34 = objc_msgSend__numberOfThinCharactersForTimeFormatter_(self, v31, v32 - v28, self->_timeFormatter);
  objc_msgSend__scaleSizeForLayoutStyle_inset_shouldHideSeconds_numberOfThinCharacters_(self, v35, v36, style, insetCopy, (v84 & 1) == 0, v34);
  v38 = v37;
  v40 = v39;
  objc_msgSend__scaleSizeForLayoutStyle_inset_shouldHideSeconds_numberOfThinCharacters_(self, v41, v37, toStyle, toInsetCopy, (v81 & 1) == 0, v34);
  v43 = v42;
  v45 = v44;
  CLKInterpolateBetweenFloatsClipped();
  v76 = v46;
  CLKInterpolateBetweenFloatsClipped();
  v75 = v47;
  objc_msgSend__scaleWeightForLayoutStyle_inset_shouldHideSeconds_(self, v48, v47, style, insetCopy, (v84 & 1) == 0);
  v50 = v49;
  objc_msgSend__scaleWeightForLayoutStyle_inset_shouldHideSeconds_(self, v51, v49, toStyle, toInsetCopy, (v81 & 1) == 0);
  v53 = v52;
  CLKInterpolateBetweenFloatsClipped();
  v56 = v55;
  animationSnapStyle = self->_animationSnapStyle;
  if (v84 == v81 || self->_animationStyle)
  {
    v58 = animationSnapStyle == 2;
    timeFormatter = self->_timeFormatter;
    v60 = *MEMORY[0x277CBF3A8];
    v61 = *(MEMORY[0x277CBF3A8] + 8);
    v74 = progressCopy;
    v73 = *(MEMORY[0x277CBF3A0] + 24);
    v72 = *(MEMORY[0x277CBF3A0] + 8);
    x = *MEMORY[0x277CBF3A0];
    v70 = 0.0;
  }

  else
  {
    v58 = animationSnapStyle == 2;
    if (v84)
    {
      v60 = v38;
    }

    else
    {
      v60 = v43;
    }

    if (v84)
    {
      v61 = v40;
    }

    else
    {
      v61 = v45;
    }

    if (v84)
    {
      v62 = v50;
    }

    else
    {
      v62 = v53;
    }

    v63 = &v87;
    p_y = &v87.origin.y;
    if (!v84)
    {
      p_y = &v83.origin.y;
    }

    v65 = *p_y;
    p_size = &v87.size;
    if (!v84)
    {
      p_size = &v83.size;
    }

    width = p_size->width;
    p_height = &v87.size.height;
    if (!v84)
    {
      p_height = &v83.size.height;
      v63 = &v83;
    }

    timeFormatter = self->_timeFormatter;
    v74 = progressCopy;
    *(&v72 + 1) = width;
    v73 = *p_height;
    x = v63->origin.x;
    *&v72 = v65;
    v70 = v62;
  }

  HIBYTE(v69) = v81;
  LOBYTE(v69) = v84;
  objc_msgSend__layoutAndUpdateForTimeFormatter_transitoryFontSize_transitoryFontWeight_metricsRect_snapToPixel_fromLayoutStyle_toLayoutStyle_fromInset_toInset_fromShowSeconds_toShowSeconds_progress_secondsSize_secondsWeight_secondsRenderRect_blinkAlpha_secondsAlpha_(self, v54, v76, timeFormatter, v58, style, toStyle, insetCopy, toInsetCopy, v75, v56, v80, v79, v77, v78, progress, v69, *&v60, *&v61, *&v70, *&x, v72, v73, 0x3FF0000000000000, *&v74);
LABEL_24:
  self->_secondsLayoutVisibility = progressCopy;
}

- (void)setLayoutFromStyle:(unint64_t)style toStyle:(unint64_t)toStyle progress:(double)progress
{
  v9 = objc_msgSend__tritiumOn(self, a2, progress);
  objc_msgSend__setLayoutFromStyle_toStyle_fromTritiumOn_toTritiumOn_fromInset_toInset_progress_(self, v10, progress, style, toStyle, v9, v9, self->_inset, self->_inset);
  v12 = fabs(progress + -1.0);
  if (progress > 1.0 || v12 < 0.00000011920929)
  {
    self->_layoutStyle = toStyle;
    objc_msgSend__stopBlinking(self, v11, v12);
    objc_msgSend__updateBlinking(self, v14, v15);

    MEMORY[0x2821F9670](v16);
  }
}

- (void)setFromInset:(BOOL)inset toInset:(BOOL)toInset progress:(double)progress
{
  toInsetCopy = toInset;
  insetCopy = inset;
  v9 = objc_msgSend__tritiumOn(self, a2, progress);
  objc_msgSend__setLayoutFromStyle_toStyle_fromTritiumOn_toTritiumOn_fromInset_toInset_progress_(self, v10, progress, self->_layoutStyle, self->_layoutStyle, v9, v9, insetCopy, toInsetCopy);
  v12 = fabs(progress + -1.0);
  if (progress > 1.0 || v12 < 0.00000011920929)
  {
    self->_inset = toInsetCopy;
    objc_msgSend__stopBlinking(self, v11, v12);

    objc_msgSend__updateBlinking(self, v14, v15);
  }
}

- (void)setLayoutStyle:(unint64_t)style
{
  if (self->_layoutStyle != style)
  {
    MEMORY[0x2821F9670](1.0);
  }
}

- (void)setInset:(BOOL)inset
{
  if (self->_inset != inset)
  {
    MEMORY[0x2821F9670](1.0);
  }
}

- (void)setMinutesColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_minutesColor) & 1) == 0)
  {
    objc_storeStrong(&self->_minutesColor, color);
    if (self->_frozen || !objc_msgSend__tritiumOff(self, v7, v8))
    {
      objc_msgSend__updateColorsForElementMask_blinkAlpha_secondsAlpha_(self, v7, 1.0, 7, self->_secondsLayoutVisibility);
    }

    else
    {
      layoutStyle = self->_layoutStyle;
      v10 = 1.0;
      if ((layoutStyle & 1) == 0)
      {
        v10 = 0.0;
      }

      objc_msgSend__updateColorsForElementMask_blinkAlpha_secondsAlpha_(self, v7, v10, 7, self->_secondsLayoutVisibility);
      if ((layoutStyle & 1) == 0)
      {
        objc_msgSend__updateMinutesSeparatorLayerForTimeFormatter_(self, v11, v12, self->_timeFormatter);
      }
    }
  }
}

- (void)setSecondsColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_secondsColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsColor, color);
    objc_msgSend__updateColorsForElementMask_blinkAlpha_secondsAlpha_(self, v7, 1.0, 8, self->_secondsLayoutVisibility);
  }
}

@end