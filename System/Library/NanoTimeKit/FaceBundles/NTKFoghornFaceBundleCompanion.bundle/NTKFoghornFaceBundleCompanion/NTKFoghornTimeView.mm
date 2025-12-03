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
  v81.receiver = self;
  v81.super_class = NTKFoghornTimeView;
  height = [(NTKFoghornTimeView *)&v81 initWithFrame:x, y, width, height];
  if (height)
  {
    v20 = objc_msgSend_clearColor(MEMORY[0x277D75348], v16, v17, v18);
    objc_msgSend_setBackgroundColor_(height, v21, v20, v22);

    objc_storeStrong(&height->_device, device);
    sub_23BE711DC(deviceCopy, __src);
    memcpy(&height->_layoutConstants, __src, sizeof(height->_layoutConstants));
    v23 = height->_layoutConstants.fontSizes[layout];
    v24 = [NTKFoghornFaceFontLoader alloc];
    v28 = objc_msgSend_initWithFontSize_(v24, v25, v26, v27, v23);
    timeDisplayFontLoader = height->_timeDisplayFontLoader;
    height->_timeDisplayFontLoader = v28;

    v33 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v30, v31, v32);
    minutesColor = height->_minutesColor;
    height->_minutesColor = v33;

    v38 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v35, v36, v37, 0.247058824, 0.435294122, 0.580392182, 1.0);
    secondsColor = height->_secondsColor;
    height->_secondsColor = v38;

    v40 = objc_alloc(MEMORY[0x277CBBBA8]);
    v42 = objc_msgSend_initWithForcesLatinNumbers_clockTimer_(v40, v41, 1, timerCopy);
    timeFormatter = height->_timeFormatter;
    height->_timeFormatter = v42;

    objc_msgSend_setShowSeconds_(height->_timeFormatter, v44, 1, v45);
    objc_msgSend_addObserver_(height->_timeFormatter, v46, height, v47);
    v50 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v48, @"1", v49);
    thinCharacterSet = height->_thinCharacterSet;
    height->_thinCharacterSet = v50;

    v52 = [NTKFoghornTimeViewLayer alloc];
    v55 = objc_msgSend_initWithTimeView_(v52, v53, height, v54);
    objc_msgSend_screenScale(deviceCopy, v56, v57, v58);
    objc_msgSend_setContentsScale_(v55, v59, v60, v61);
    v65 = objc_msgSend_layer(height, v62, v63, v64);
    objc_msgSend_addSublayer_(v65, v66, v55, v67);

    minutesSeparatorLayer = height->_minutesSeparatorLayer;
    height->_minutesSeparatorLayer = v55;
    v69 = v55;

    objc_msgSend_setOpacity_(height->_minutesSeparatorLayer, v70, v71, v72, 0.0);
    height->_animationStyle = 0;
    height->_animationSnapStyle = 1;
    objc_msgSend_setClearsContextBeforeDrawing_(height, v73, 0, v74);
    objc_msgSend_setOpaque_(height, v75, 0, v76);
    height->_secondsLayoutVisibility = 1.0;
    height->_layoutStyle = -1;
    objc_msgSend_setLayoutStyle_(height, v77, layout, v78);
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
  v16 = objc_msgSend_sharedInstance(v11, v13, v14, v15);
  v18 = objc_msgSend_initWithFrame_forDevice_clockTimer_layout_(self, v17, deviceCopy, v16, layout, x, y, width, height);

  return v18;
}

- (void)dealloc
{
  objc_msgSend__cleanupElementFrameStates(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = NTKFoghornTimeView;
  [(NTKFoghornTimeView *)&v5 dealloc];
}

+ (id)_hoursMinutesStringFromTimeFormatter:(id)formatter
{
  formatterCopy = formatter;
  v7 = objc_msgSend_timeText(formatterCopy, v4, v5, v6);
  v14 = v7;
  if (objc_msgSend_showSeconds(formatterCopy, v8, v9, v10))
  {
    v15 = objc_msgSend_rangeInTimeSubstringFromSecondsSeparatorText(formatterCopy, v11, v12, v13);
    v14 = objc_msgSend_substringToIndex_(v7, v16, v15 - 1, v17);
  }

  return v14;
}

+ (id)_secondsStringFromTimeFormatter:(id)formatter
{
  formatterCopy = formatter;
  if (objc_msgSend_showSeconds(formatterCopy, v4, v5, v6))
  {
    v10 = objc_msgSend_timeText(formatterCopy, v7, v8, v9);
    v14 = objc_msgSend_rangeInTimeSubstringFromSecondsSeparatorText(formatterCopy, v11, v12, v13);
    v16 = objc_msgSend_substringWithRange_(v10, v15, v14 - 1, (v15 + 1));
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)_stringsFromTimeFormatter:(id)formatter showSeconds:(BOOL)seconds hoursString:(id *)string blinkerString:(id *)blinkerString minutesString:(id *)minutesString secondsString:(id *)secondsString
{
  secondsCopy = seconds;
  formatterCopy = formatter;
  v16 = objc_msgSend_timeText(formatterCopy, v13, v14, v15);
  if (objc_msgSend_showSeconds(formatterCopy, v17, v18, v19))
  {
    v25 = objc_msgSend_rangeInTimeSubstringFromSecondsSeparatorText(formatterCopy, v20, v21, v22) - 1;
    if (secondsCopy)
    {
      v26 = objc_msgSend_substringWithRange_(v16, v23, v25, (v23 + 1));
    }

    else
    {
      v26 = 0;
    }

    v27 = objc_msgSend_substringToIndex_(v16, v23, v25, v24);

    v16 = v27;
  }

  else
  {
    v26 = 0;
  }

  v28 = objc_msgSend_blinkerRangeInTimeText(formatterCopy, v20, v21, v22);
  v30 = v29;
  v32 = objc_msgSend_substringToIndex_(v16, v29, v28, v31);
  v34 = objc_msgSend_substringWithRange_(v16, v33, v28, v30);
  v37 = objc_msgSend_substringFromIndex_(v16, v35, v28 + v30, v36);
  v38 = v32;
  *string = v32;
  v39 = v34;
  *blinkerString = v34;
  v40 = v37;
  *minutesString = v37;
  v41 = v26;
  *secondsString = v26;
}

+ (CGSize)_frameSetterSizeForAttributedString:(id)string
{
  stringCopy = string;
  v4 = CTFramesetterCreateWithAttributedString(stringCopy);
  v8 = objc_msgSend_length(stringCopy, v5, v6, v7);

  v13.width = 1.79769313e308;
  v12.location = 0;
  v12.length = v8;
  v13.height = 1.79769313e308;
  v9 = CTFramesetterSuggestFrameSizeWithConstraints(v4, v12, 0, v13, 0);
  CFRelease(v4);
  width = v9.width;
  height = v9.height;
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
  v93[3] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  blinkerStringCopy = blinkerString;
  minutesStringCopy = minutesString;
  secondsStringCopy = secondsString;
  fontCopy = font;
  if (secondsStringCopy)
  {
    v28 = objc_msgSend_punctuationCharacterSet(MEMORY[0x277CCA900], v24, v25, v26);
    v30 = objc_msgSend_rangeOfCharacterFromSet_options_(secondsStringCopy, v29, v28, 4);
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = &v31[v30];
      v35 = objc_msgSend_length(secondsStringCopy, v31, v32, v33);
      v37 = objc_msgSend_stringByReplacingCharactersInRange_withString_(secondsStringCopy, v36, v34, v35 - v34, @"88");

      secondsStringCopy = v37;
    }
  }

  else
  {
    secondsStringCopy = @":88";
  }

  v38 = objc_alloc_init(MEMORY[0x277D74240]);
  objc_msgSend_setAlignment_(v38, v39, 4, v40);
  v44 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v41, v42, v43);
  v45 = *MEMORY[0x277D740A8];
  v92[0] = *MEMORY[0x277D740C0];
  v92[1] = v45;
  v93[0] = v44;
  v93[1] = fontCopy;
  v89 = fontCopy;
  v92[2] = *MEMORY[0x277D74118];
  v93[2] = v38;
  v47 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, v93, v92, 3);
  v48 = objc_alloc(MEMORY[0x277CCA898]);
  v49 = stringCopy;
  v51 = objc_msgSend_initWithString_attributes_(v48, v50, stringCopy, v47);
  v52 = objc_alloc(MEMORY[0x277CCA898]);
  v54 = objc_msgSend_initWithString_attributes_(v52, v53, blinkerStringCopy, v47);
  v55 = objc_alloc(MEMORY[0x277CCA898]);
  v57 = objc_msgSend_initWithString_attributes_(v55, v56, minutesStringCopy, v47);
  objc_msgSend__frameSetterSizeForAttributedString_(self, v58, v51, v59);
  v61 = v60;
  v63 = v62;
  v95.origin.x = x;
  v95.origin.y = y;
  v95.size.width = width;
  v95.size.height = height;
  v87 = CGRectGetHeight(v95);
  objc_msgSend__frameSetterSizeForAttributedString_(self, v64, v54, v65);
  v67 = v66;
  v69 = v68;
  objc_msgSend__frameSetterSizeForAttributedString_(self, v70, v57, v71);
  v73 = v72;
  v75 = v74;
  if (secondsCopy)
  {
    v76 = objc_alloc(MEMORY[0x277CCA898]);
    v78 = objc_msgSend_initWithString_attributes_(v76, v77, secondsStringCopy, v47);
    objc_msgSend__frameSetterSizeForAttributedString_(self, v79, v78, v80);
    v82 = v81;
    v84 = v83;
  }

  else
  {
    v82 = *MEMORY[0x277CBF3A8];
    v84 = *(MEMORY[0x277CBF3A8] + 8);
  }

  size->width = v61;
  size->height = v63;
  separatorSize->width = v67;
  separatorSize->height = v69;
  minutesSize->width = v73;
  minutesSize->height = v75;
  secondsSize->width = v82;
  secondsSize->height = v84;

  v85 = v61 + 0.0 + v67 + v73 + v82;
  v86 = v87;
  result.height = v86;
  result.width = v85;
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
  *(*&width + 72) = sub_23BE6D2E0(v14, v29, v26);
  *(*&width + 80) = MinY;
  *(*&width + 88) = v28;
  *(*&width + 96) = v21;
  *(*&width + 136) = v32;
  *(*&width + 144) = sub_23BE6D2E0(v14, v29, v28 + v26);
  *(*&width + 152) = MinY;
  *(*&width + 160) = inset;
  *(*&width + 168) = v21;
  *(*&width + 208) = v32;
  *(*&width + 216) = sub_23BE6D2E0(v14, v29, inset + v28 + v26);
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
  v8 = v4;
  if (alpha >= 0.0 && alpha < 1.0)
  {
    v10 = objc_msgSend_colorWithAlphaComponent_(v4, v5, v6, v7, alpha);

    v8 = v10;
  }

  return v8;
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
  objc_msgSend__setNeedsDisplayForElementMask_(self, a2, -1, v2);
  v4.receiver = self;
  v4.super_class = NTKFoghornTimeView;
  [(NTKFoghornTimeView *)&v4 setNeedsDisplay];
}

- (void)_setNeedsDisplayInRect:(CGRect)rect
{
  if (!CGRectIsEmpty(rect))
  {
    objc_msgSend_screenScale(self->_device, v4, v5, v6);
    UIRectIntegralWithScale();
    x = v7;
    y = v9;
    width = v11;
    height = v13;
    p_dirtyRect = &self->_dirtyRect;
    if (!CGRectIsEmpty(self->_dirtyRect))
    {
      v17.origin.x = p_dirtyRect->origin.x;
      v17.origin.y = self->_dirtyRect.origin.y;
      v17.size.width = self->_dirtyRect.size.width;
      v17.size.height = self->_dirtyRect.size.height;
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v18 = CGRectUnion(v17, v20);
      x = v18.origin.x;
      y = v18.origin.y;
      width = v18.size.width;
      height = v18.size.height;
    }

    v21.origin.x = p_dirtyRect->origin.x;
    v21.origin.y = self->_dirtyRect.origin.y;
    v21.size.width = self->_dirtyRect.size.width;
    v21.size.height = self->_dirtyRect.size.height;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    if (!CGRectEqualToRect(v19, v21))
    {
      v16.receiver = self;
      v16.super_class = NTKFoghornTimeView;
      [(NTKFoghornTimeView *)&v16 setNeedsDisplayInRect:x, y, width, height];
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
      v33 = CGRectInset(self->_frameStates[3].frame, -outlineWidth, -outlineWidth);
      x = v33.origin.x;
      y = v33.origin.y;
      width = v33.size.width;
      height = v33.size.height;
    }

    v34.origin.x = v6;
    v34.origin.y = v5;
    v34.size.width = v8;
    v34.size.height = v7;
    if (CGRectIsEmpty(v34))
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
      v35.origin.x = v6;
      v35.origin.y = v5;
      v35.size.width = v8;
      v35.size.height = v7;
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v36 = CGRectUnion(v35, v50);
      v6 = v36.origin.x;
      v5 = v36.origin.y;
      v8 = v36.size.width;
      v7 = v36.size.height;
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
    v37 = CGRectInset(self->_frameStates[1].frame, -v19, -v19);
    v15 = v37.origin.x;
    v16 = v37.origin.y;
    v17 = v37.size.width;
    v18 = v37.size.height;
  }

  v38.origin.x = v6;
  v38.origin.y = v5;
  v38.size.width = v8;
  v38.size.height = v7;
  if (CGRectIsEmpty(v38))
  {
    v7 = v18;
    v8 = v17;
    v5 = v16;
    v6 = v15;
    goto LABEL_14;
  }

  v41.origin.x = v6;
  v41.origin.y = v5;
  v41.size.width = v8;
  v41.size.height = v7;
  v51.origin.x = v15;
  v51.origin.y = v16;
  v51.size.width = v17;
  v51.size.height = v18;
  v42 = CGRectUnion(v41, v51);
  v6 = v42.origin.x;
  v5 = v42.origin.y;
  v8 = v42.size.width;
  v7 = v42.size.height;
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
    v43 = CGRectInset(self->_frameStates[0].frame, -v29, -v29);
    v25 = v43.origin.x;
    v26 = v43.origin.y;
    v27 = v43.size.width;
    v28 = v43.size.height;
  }

  v44.origin.x = v6;
  v44.origin.y = v5;
  v44.size.width = v8;
  v44.size.height = v7;
  if (CGRectIsEmpty(v44))
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
    v47.origin.x = v6;
    v47.origin.y = v5;
    v47.size.width = v8;
    v47.size.height = v7;
    v53.origin.x = v25;
    v53.origin.y = v26;
    v53.size.width = v27;
    v53.size.height = v28;
    v48 = CGRectUnion(v47, v53);
    v6 = v48.origin.x;
    v5 = v48.origin.y;
    v8 = v48.size.width;
    v7 = v48.size.height;
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
    v39 = CGRectInset(self->_frameStates[2].frame, -v24, -v24);
    v20 = v39.origin.x;
    v21 = v39.origin.y;
    v22 = v39.size.width;
    v23 = v39.size.height;
  }

  v40.origin.x = v6;
  v40.origin.y = v5;
  v40.size.width = v8;
  v40.size.height = v7;
  if (CGRectIsEmpty(v40))
  {
    v7 = v23;
    v8 = v22;
    v5 = v21;
    v6 = v20;
  }

  else
  {
    v45.origin.x = v6;
    v45.origin.y = v5;
    v45.size.width = v8;
    v45.size.height = v7;
    v52.origin.x = v20;
    v52.origin.y = v21;
    v52.size.width = v22;
    v52.size.height = v23;
    v46 = CGRectUnion(v45, v52);
    v6 = v46.origin.x;
    v5 = v46.origin.y;
    v8 = v46.size.width;
    v7 = v46.size.height;
  }

LABEL_28:
  self->_needsDisplayElementMask |= v9;
  v49.origin.x = v6;
  v49.origin.y = v5;
  v49.size.width = v8;
  v49.size.height = v7;
  if (!CGRectIsEmpty(v49))
  {

    MEMORY[0x2821F9670](self, sel__setNeedsDisplayInRect_, v30, v31);
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
    v15 = objc_msgSend__secondsStringFromTimeFormatter_(v8, v9, formatterCopy, v10);
  }

  else
  {
    v15 = &stru_284E9D198;
  }

  v11 = objc_msgSend__getSecondsColorWithAlpha_(self, a2, formatter, seconds, alpha);
  objc_msgSend__updateFrameElement_frame_text_textColor_(self, v12, 3, v15, v11, self->_frameStates[3].frame.origin.x, self->_frameStates[3].frame.origin.y, self->_frameStates[3].frame.size.width, self->_frameStates[3].frame.size.height);
  objc_msgSend__setNeedsDisplayForElementMask_(self, v13, 8, v14);
}

- (void)_updateColorsForElementMask:(unint64_t)mask blinkAlpha:(double)alpha secondsAlpha:(double)secondsAlpha
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
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
    if (((1 << v12) & mask) == 0)
    {
      goto LABEL_19;
    }

    if (v12 > 1)
    {
      if (v12 != 3)
      {
LABEL_15:
        if (!v10)
        {
          v10 = objc_msgSend__getMinutesColor(self, a2, mask, v5);
        }

        v18 = v10;
        goto LABEL_18;
      }

      v18 = v10;
      if (v11)
      {
        v10 = v11;
      }

      else
      {
        v10 = objc_msgSend__getSecondsColorWithAlpha_(self, a2, mask, v5, secondsAlpha);
        v11 = v10;
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_15;
      }

      if (v13)
      {
        v18 = v10;
        v10 = v13;
      }

      else
      {
        if (!v10)
        {
          v10 = objc_msgSend__getMinutesColor(self, a2, mask, v5);
        }

        v18 = v10;
        v10 = objc_msgSend_colorWithAlphaComponent_(v10, a2, mask, v5, alphaCopy);
        v13 = v10;
      }
    }

LABEL_18:
    v16 = v10;
    objc_msgSend__updateFrameElement_frame_text_textColor_(self, v17, v12, self->_frameStates[v9].text, v16, self->_frameStates[v9].frame.origin.x, self->_frameStates[v9].frame.origin.y, self->_frameStates[v9].frame.size.width, self->_frameStates[v9].frame.size.height);

    v10 = v18;
LABEL_19:
    ++v12;
    ++v9;
  }

  while (v12 != 4);
  v19 = v10;
  objc_msgSend__setNeedsDisplayForElementMask_(self, a2, mask, v5);
}

- (void)_updateBlinkWithAlpha:(double)alpha
{
  v7 = objc_msgSend__getMinutesColor(self, a2, v3, v4);
  v17 = v7;
  alphaCopy = 1.0;
  if (alpha < 1.0 && alpha >= 0.0)
  {
    alphaCopy = alpha;
  }

  v13 = objc_msgSend_colorWithAlphaComponent_(v7, v8, v9, v10, alphaCopy);
  objc_msgSend__updateFrameElement_frame_text_textColor_(self, v14, 1, self->_frameStates[1].text, v13, self->_frameStates[1].frame.origin.x, self->_frameStates[1].frame.origin.y, self->_frameStates[1].frame.size.width, self->_frameStates[1].frame.size.height);
  objc_msgSend__setNeedsDisplayForElementMask_(self, v15, 2, v16);
}

- (void)_updateFrameElementsForHoursString:(id)string blinkerString:(id)blinkerString minutesString:(id)minutesString secondsString:(id)secondsString blinkAlpha:(double)alpha secondsAlpha:(double)secondsAlpha
{
  stringCopy = string;
  blinkerStringCopy = blinkerString;
  minutesStringCopy = minutesString;
  secondsStringCopy = secondsString;
  objc_msgSend__cleanupElementFrameStates(self, v16, v17, v18);
  objc_msgSend__updateColorsWithBlinkAlpha_secondsAlpha_(self, v19, v20, v21, alpha, secondsAlpha);
  v25 = objc_msgSend__getMinutesColor(self, v22, v23, v24);
  v32 = objc_msgSend__getSecondsColorWithAlpha_(self, v26, v27, v28, secondsAlpha);
  alphaCopy = 1.0;
  if (alpha < 1.0 && alpha >= 0.0)
  {
    alphaCopy = alpha;
  }

  v35 = objc_msgSend_colorWithAlphaComponent_(v25, v29, v30, v31, alphaCopy, blinkerStringCopy);
  v36 = 0;
  selfCopy = self;
  do
  {
    if (v36 == 3)
    {
      v38 = secondsStringCopy;
    }

    else
    {
      v38 = minutesStringCopy;
    }

    if (v36 == 3)
    {
      v39 = v32;
    }

    else
    {
      v39 = v25;
    }

    v40 = v49;
    if (v36)
    {
      v41 = v35;
    }

    else
    {
      v40 = stringCopy;
      v41 = v25;
    }

    if (v36 > 1)
    {
      v42 = v39;
    }

    else
    {
      v38 = v40;
      v42 = v41;
    }

    v43 = v38;
    v44 = v42;
    objc_msgSend__updateFrameElement_frame_text_textColor_(self, v45, v36, v43, v44, selfCopy->_frameStates[0].frame.origin.x, selfCopy->_frameStates[0].frame.origin.y, selfCopy->_frameStates[0].frame.size.width, selfCopy->_frameStates[0].frame.size.height);

    ++v36;
    selfCopy = (selfCopy + 72);
  }

  while (v36 != 4);
  objc_msgSend__setNeedsDisplayForElementMask_(self, v46, -1, v47);
}

+ (__CTFrame)_CTFrameForFrame:(CGRect)frame text:(id)text textColor:(id)color font:(id)font forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v49[3] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277D74240];
  deviceCopy = device;
  fontCopy = font;
  colorCopy = color;
  textCopy = text;
  v19 = objc_alloc_init(v14);
  objc_msgSend_setAlignment_(v19, v20, 4, v21);
  v22 = *MEMORY[0x277D740A8];
  v48[0] = *MEMORY[0x277D740C0];
  v48[1] = v22;
  v49[0] = colorCopy;
  v49[1] = fontCopy;
  v48[2] = *MEMORY[0x277D74118];
  v49[2] = v19;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v49, v48, 3);
  v25 = objc_alloc(MEMORY[0x277CCA898]);

  v27 = objc_msgSend_initWithString_attributes_(v25, v26, textCopy, v24);
  objc_msgSend_leading(fontCopy, v28, v29, v30);
  objc_msgSend_ascender(fontCopy, v31, v32, v33);
  objc_msgSend_descender(fontCopy, v34, v35, v36);

  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  CGRectGetHeight(v51);
  CLKRoundForDevice();
  v38 = v37;

  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  MinX = CGRectGetMinX(v52);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  v40 = CGRectGetWidth(v53);
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v55.size.height = CGRectGetHeight(v54);
  v55.origin.x = MinX;
  v55.origin.y = v38;
  v55.size.width = v40;
  v41 = CGPathCreateWithRect(v55, 0);
  v42 = CTFramesetterCreateWithAttributedString(v27);
  v50.length = objc_msgSend_length(v27, v43, v44, v45);
  v50.location = 0;
  Frame = CTFramesetterCreateFrame(v42, v50, v41, 0);
  CFRelease(v42);
  CGPathRelease(v41);

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
          self->_frameStates[v8].ctFrame = objc_msgSend__CTFrameForFrame_text_textColor_font_forDevice_(v17, v18, v11, v10, v20, self->_device, x, y, width, height);
          if (self->_frameStates[v8].outlineWidth <= 0.0)
          {
            v19 = 0;
          }

          else
          {
            v19 = sub_23BE6E43C(v20, v10, v11);
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
  v9 = objc_msgSend__hoursMinutesStringFromTimeFormatter_(v6, v7, formatterCopy, v8);
  v13 = objc_msgSend_length(v9, v10, v11, v12);
  if (v13)
  {
    v16 = v13;
    v17 = 0;
    for (i = 0; i != v16; ++i)
    {
      v19 = objc_msgSend_characterAtIndex_(v9, v14, i, v15);
      v17 += objc_msgSend_characterIsMember_(v5, v20, v19, v21);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
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
  v11 = objc_msgSend__numberOfThinCharactersForTimeFormatter_(self, a2, formatter, style);

  objc_msgSend__scaleSizeForLayoutStyle_inset_shouldHideSeconds_numberOfThinCharacters_(self, v10, style, insetCopy, secondsCopy, v11);
  result.height = v13;
  result.width = v12;
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
  v36 = objc_msgSend_foregroundFontWithTypographicSize_weight_horizontalScale_stylisticSet_(timeDisplayFontLoader, v34, 0, v35, v26, v25, weight, 1.0);
  v56 = 0.0;
  v57 = 0.0;
  v54 = 0.0;
  v55 = 0.0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v37 = objc_opt_class();
  objc_msgSend__getSizesForHoursString_blinkerString_minutesString_secondsString_font_showSeconds_metricsRect_hoursSize_minutesSeparatorSize_minutesSize_secondsSize_(v37, v38, stringCopy, blinkerStringCopy, minutesStringCopy, secondsStringCopy, v36, secondsCopy, x, y, width, height, &v56, &v54, &v52, &v50);
  v40 = v39;
  v42 = v41;

  v43 = 3;
  if (style)
  {
    v43 = 1;
  }

  if (pixelCopy)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v45 = objc_opt_class();
  objc_msgSend__configureWithMetricBounds_hoursSize_minutesSeparatorSize_minutesSize_secondsSize_textInset_outlineWidth_hScale_snappingPolicy_forDevice_frameStates_(v45, v46, v44, self->_device, states, x, y, width, height, v56, v57, v54, v55, v52, v53, v50, v51, 0, *&width, 0x3FF0000000000000);
  v47 = v36;
  *font = v36;

  v48 = v40;
  v49 = v42;
  result.height = v49;
  result.width = v48;
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
  objc_msgSend__scaleSizeForLayoutStyle_inset_shouldHideSeconds_numberOfThinCharacters_(self, v25, style, inset, secondsCopy ^ 1, characters);
  v27 = v26;
  v29 = v28;
  objc_msgSend__scaleWeightForLayoutStyle_inset_shouldHideSeconds_(self, v30, style, inset, secondsCopy ^ 1);
  v34 = objc_msgSend_foregroundFontWithTypographicSize_weight_horizontalScale_stylisticSet_(self->_timeDisplayFontLoader, v31, 0, v32, v27, v29, v33, 1.0);
  v35 = objc_opt_class();
  objc_msgSend__getSizesForHoursString_blinkerString_minutesString_secondsString_font_showSeconds_metricsRect_hoursSize_minutesSeparatorSize_minutesSize_secondsSize_(v35, v36, stringCopy, blinkerStringCopy, minutesStringCopy, secondsStringCopy, v34, secondsCopy, x, y, width, height, v46, v45, v44, v43);
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
  v85 = *MEMORY[0x277D85DE8];
  insetCopy = inset;
  objc_msgSend__setNeedsDisplayForElementMask_(self, v34, -1, v35);
  v36 = objc_opt_class();
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v64 = insetCopy;
  objc_msgSend__stringsFromTimeFormatter_showSeconds_hoursString_blinkerString_minutesString_secondsString_(v36, v37, insetCopy, renderRect | alpha, &v73, &v72, &v71, &v70);
  v38 = v73;
  v39 = v72;
  v40 = v71;
  v41 = v70;
  CLKInterpolateBetweenFloatsClipped();
  v43 = v42;
  v69 = 0;
  objc_msgSend__layoutForHoursString_blinkerString_minutesString_secondsString_showSeconds_transitoryFontSize_transitoryFontWeight_transitoryOutlineWidth_metricsRect_snapToPixel_toLayoutStyle_font_frameStates_(self, v44, v38, v39, v40, v41, renderRect | alpha, toInset, a2, formatter, size, v42, weight, rect, pixel, style, showSeconds, &v69, self + 1624);
  v46 = v45;
  v47 = v69;
  v48 = v69;
  objc_storeStrong((self + 1608), v47);
  objc_storeStrong((self + 1616), v47);
  v86.origin.x = a22;
  v86.origin.y = a23;
  v86.size.width = a24;
  v86.size.height = a25;
  if (CGRectIsEmpty(v86))
  {
    v63 = v48;
  }

  else
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v83 = 0;
    v84 = 0;
    v68 = v48;
    objc_msgSend__layoutForHoursString_blinkerString_minutesString_secondsString_showSeconds_transitoryFontSize_transitoryFontWeight_transitoryOutlineWidth_metricsRect_snapToPixel_toLayoutStyle_font_frameStates_(self, v49, v38, v39, v40, v41, 1, toInset, secondsAlpha, a20, a21, v43, a22, a23, a24, a25, showSeconds, &v68, v74);
    v51 = v68;
    v63 = v68;

    objc_storeStrong((self + 1616), v51);
    *(self + 1840) = v81;
    *(self + 1856) = v82;
    v52 = 288;
    do
    {

      v52 -= 72;
    }

    while (v52);
  }

  v54 = objc_msgSend__numberOfThinCharactersForTimeFormatter_(self, v49, v64, v50);
  if (progress != secondsSize || seconds != showSeconds || renderRect != alpha)
  {
    LOBYTE(v58) = progress;
    objc_msgSend__getLayoutForHoursString_blinkerString_minutesString_secondsString_showSeconds_numberOfThinCharacters_layoutStyle_inset_metricsRect_(self, v53, v38, v39, v40, v41, renderRect, v54, weight, rect, pixel, style, seconds, v58);
    LOBYTE(v59) = secondsSize;
    objc_msgSend__getLayoutForHoursString_blinkerString_minutesString_secondsString_showSeconds_numberOfThinCharacters_layoutStyle_inset_metricsRect_(self, v55, v38, v39, v40, v41, alpha, v54, weight, rect, pixel, style, showSeconds, v59);
    CLKInterpolateBetweenFloatsClipped();
    v46 = v56;
  }

  if (v46 < pixel)
  {
    UICeilToViewScale();
    *(self + 1624) = v57 + *(self + 1624);
    *(self + 1696) = v57 + *(self + 1696);
    *(self + 1768) = v57 + *(self + 1768);
    *(self + 1840) = v57 + *(self + 1840);
  }

  objc_msgSend__updateFrameElementsForHoursString_blinkerString_minutesString_secondsString_blinkAlpha_secondsAlpha_(self, v53, v38, v39, v40, v41, a26, a27);
}

- (void)_layoutAndUpdateForTimeFormatter:(id)formatter showSeconds:(BOOL)seconds layoutStyle:(unint64_t)style inset:(BOOL)inset metricsRect:(CGRect)rect blinkAlpha:(double)alpha secondsAlpha:(double)secondsAlpha
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  insetCopy = inset;
  secondsCopy = seconds;
  v39 = *MEMORY[0x277D85DE8];
  formatterCopy = formatter;
  objc_msgSend__scaleSizeForTimeFormatter_layoutStyle_inset_shouldHideSeconds_(self, v19, formatterCopy, style, insetCopy, !secondsCopy);
  v21 = v20;
  v23 = v22;
  objc_msgSend__scaleWeightForLayoutStyle_inset_shouldHideSeconds_(self, v24, style, insetCopy, !secondsCopy);
  v26 = v25;
  v27 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v32 = "[NTKFoghornTimeView _layoutAndUpdateForTimeFormatter:showSeconds:layoutStyle:inset:metricsRect:blinkAlpha:secondsAlpha:]";
    v33 = 2048;
    v34 = v21;
    v35 = 2048;
    v36 = v23;
    v37 = 2048;
    v38 = v26;
    _os_log_debug_impl(&dword_23BE5B000, v27, OS_LOG_TYPE_DEBUG, "%s: size = { %f, %f }, weight = %f ", buf, 0x2Au);
  }

  HIBYTE(v29) = secondsCopy;
  LOBYTE(v29) = secondsCopy;
  objc_msgSend__layoutAndUpdateForTimeFormatter_transitoryFontSize_transitoryFontWeight_metricsRect_snapToPixel_fromLayoutStyle_toLayoutStyle_fromInset_toInset_fromShowSeconds_toShowSeconds_progress_secondsSize_secondsWeight_secondsRenderRect_blinkAlpha_secondsAlpha_(self, v28, formatterCopy, self->_animationSnapStyle != 0, style, style, insetCopy, insetCopy, v21, v23, v26, x, y, width, height, 1.0, v29, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), 0, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), *&alpha, *&secondsAlpha);
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
  objc_msgSend_setScale_(v26, v27, v28, v29, scale);
  v30 = objc_alloc(MEMORY[0x277D75560]);
  v33 = objc_msgSend_initWithSize_format_(v30, v31, v26, v32, v20, v19);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_23BE6F478;
  v42[3] = &unk_278B9C998;
  v47 = x;
  v48 = y;
  widthCopy = width;
  v50 = height;
  selfCopy = self;
  v43 = textCopy;
  v44 = colorCopy;
  v45 = fontCopy;
  v46 = deviceCopy;
  widthCopy2 = width;
  v34 = deviceCopy;
  v35 = fontCopy;
  v36 = colorCopy;
  v37 = textCopy;
  v40 = objc_msgSend_imageWithActions_(v33, v38, v42, v39);

  return v40;
}

- (void)_updateMinutesSeparatorLayerForTimeFormatter:(id)formatter
{
  v5 = self->_font;
  formatterCopy = formatter;
  v10 = objc_msgSend__getMinutesColor(self, v7, v8, v9);
  v11 = objc_opt_class();
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  objc_msgSend__stringsFromTimeFormatter_showSeconds_hoursString_blinkerString_minutesString_secondsString_(v11, v12, formatterCopy, 0, &v54, &v53, &v52, &v51);

  v13 = v54;
  v14 = v53;
  v15 = v52;
  v16 = v51;
  x = self->_frameStates[1].frame.origin.x;
  y = self->_frameStates[1].frame.origin.y;
  width = self->_frameStates[1].frame.size.width;
  height = self->_frameStates[1].frame.size.height;
  outlineWidth = self->_frameStates[1].outlineWidth;
  objc_msgSend_screenScale(self->_device, v22, v23, v24);
  v26 = v25;
  v27 = objc_opt_class();
  v29 = objc_msgSend__minutesSeparatorImageWithSize_scale_frame_text_textColor_font_outlineWidth_forDevice_(v27, v28, v14, v10, v5, self->_device, width, height, v26, 0.0, 0.0, width, height, outlineWidth);
  objc_msgSend_activate(MEMORY[0x277CD9FF0], v30, v31, v32);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v33, v34, v35);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v36, 1, v37);
  objc_msgSend_setFrame_(self->_minutesSeparatorLayer, v38, v39, v40, x, y, width, height);
  v41 = v29;
  v45 = objc_msgSend_CGImage(v41, v42, v43, v44);
  objc_msgSend_setContents_(self->_minutesSeparatorLayer, v46, v45, v47);

  objc_msgSend_commit(MEMORY[0x277CD9FF0], v48, v49, v50);
}

- (void)_updateHoursMinutesSecondsForTimeFormatter:(id)formatter layoutStyle:(unint64_t)style tritiumOn:(BOOL)on blinkAlpha:(double)alpha
{
  onCopy = on;
  v26 = *MEMORY[0x277D85DE8];
  formatterCopy = formatter;
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  inset = self->_inset;
  if (objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, v12, style, inset, onCopy, &v20, v19, &v18))
  {
    objc_msgSend__layoutAndUpdateForTimeFormatter_showSeconds_layoutStyle_inset_metricsRect_blinkAlpha_secondsAlpha_(self, v13, formatterCopy, v18, style, inset, v20, v21, alpha, self->_secondsLayoutVisibility);
    if (self->_blinkTimerToken)
    {
      objc_msgSend__updateMinutesSeparatorLayerForTimeFormatter_(self, v14, formatterCopy, v16);
    }

    objc_msgSend__updateBlinking(self, v14, v15, v16);
  }

  else
  {
    v17 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[NTKFoghornTimeView _updateHoursMinutesSecondsForTimeFormatter:layoutStyle:tritiumOn:blinkAlpha:]";
      v24 = 1024;
      styleCopy = style;
      _os_log_impl(&dword_23BE5B000, v17, OS_LOG_TYPE_DEFAULT, "%s: encountered unexpected layoutStyle: 0x%02X", buf, 0x12u);
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
  objc_msgSend_screenBounds(deviceCopy, v17, v18, v19);
  v41 = objc_msgSend_initWithFrame_forDevice_(v16, v20, deviceCopy, v21);

  objc_msgSend_setLayoutStyle_(v41, v22, style, v23);
  objc_msgSend_setMinutesColor_(v41, v24, colorCopy, v25);

  objc_msgSend_setSecondsColor_(v41, v26, secondsColorCopy, v27);
  objc_msgSend_setInset_(v41, v28, insetCopy, v29);
  objc_msgSend_setFrozen_(v41, v30, 1, v31);
  v32 = NTKIdealizedDate();
  objc_msgSend_setOverrideDate_duration_(v41, v33, v32, v34, 0.0);

  v38 = objc_msgSend_layer(v41, v35, v36, v37);
  objc_msgSend_renderInContext_(v38, v39, context, v40);
}

- (void)_drawInContext:(CGContext *)context needsDisplayElementMask:(unint64_t)mask
{
  maskCopy = mask;
  MinX = 0.0;
  if (self->_inset)
  {
    MinX = CGRectGetMinX(self->_layoutConstants.timeRect[0]);
  }

  objc_msgSend_bounds(self, a2, context, mask);
  v8 = CGRectGetWidth(v28) - MinX;
  objc_msgSend_bounds(self, v9, v10, v11);
  v30.size.height = CGRectGetHeight(v29);
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = v8;
  CGContextClipToRect(context, v30);
  objc_msgSend_activate(MEMORY[0x277CD9FF0], v12, v13, v14);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v15, v16, v17);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v18, 1, v19);
  if ((maskCopy & 8) != 0 && self->_frameStates[3].frame.size.width > 0.0)
  {
    objc_msgSend__ensureCTFramesForElementMask_withFont_(self, v20, 8, self->_secondsFont);
    CGContextSaveGState(context);
    MaxY = CGRectGetMaxY(self->_frameStates[3].frame);
    CGContextTranslateCTM(context, 0.0, MaxY);
    CGContextScaleCTM(context, 1.0, -1.0);
    _drawCTFrameAndOutlineForFrameState(context, &self->_frameStates[3]);
    CGContextRestoreGState(context);
  }

  v22 = CGRectGetMaxY(self->_frameStates[0].frame);
  CGContextTranslateCTM(context, 0.0, v22);
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
    objc_msgSend__ensureCTFramesForElementMask_withFont_(self, v23, 2, self->_font);
    _drawCTFrameAndOutlineForFrameState(context, &self->_frameStates[1]);
  }

  if ((maskCopy & 5) != 0)
  {
    objc_msgSend__ensureCTFramesForElementMask_withFont_(self, v23, 5, self->_font);
    _drawCTFrameAndOutlineForFrameState(context, self->_frameStates);
    _drawCTFrameAndOutlineForFrameState(context, &self->_frameStates[2]);
  }

  v26 = MEMORY[0x277CD9FF0];

  objc_msgSend_commit(v26, v23, v24, v25);
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v8 = objc_msgSend_backgroundColor(self, v5, v6, v7);
  v9 = v8;
  v13 = objc_msgSend_CGColor(v9, v10, v11, v12);
  CGContextSetFillColorWithColor(CurrentContext, v13);

  p_dirtyRect = &self->_dirtyRect;
  if (CGRectIsEmpty(self->_dirtyRect))
  {
    objc_msgSend_bounds(self, v15, v16, v17);
    CGContextFillRect(CurrentContext, v21);
    objc_msgSend__drawInContext_needsDisplayElementMask_(self, v18, CurrentContext, -1);
  }

  else
  {
    v22.origin.x = p_dirtyRect->origin.x;
    v22.origin.y = self->_dirtyRect.origin.y;
    v22.size.width = self->_dirtyRect.size.width;
    v22.size.height = self->_dirtyRect.size.height;
    CGContextFillRect(CurrentContext, v22);
    objc_msgSend__drawInContext_needsDisplayElementMask_(self, v19, CurrentContext, self->_needsDisplayElementMask);
  }

  self->_needsDisplayElementMask = 0;
  v20 = *(MEMORY[0x277CBF3A0] + 16);
  p_dirtyRect->origin = *MEMORY[0x277CBF3A0];
  self->_dirtyRect.size = v20;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  objc_msgSend_setOverrideDate_(self->_timeFormatter, a2, date, v4, duration);

  MEMORY[0x2821F9670](self, sel__updateShowSeconds, v6, v7);
}

- (void)_updateShowSeconds
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_showSeconds(self->_timeFormatter, a2, v2, v3);
  layoutStyle = self->_layoutStyle;
  v10 = layoutStyle | objc_msgSend_reportingLiveTime(self->_timeFormatter, v7, v8, v9) ^ 1;
  if (v5 != (v10 & 1))
  {
    v11 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"notShowing";
      if (v5)
      {
        v13 = @"showing";
      }

      else
      {
        v13 = @"notShowing";
      }

      if (v10)
      {
        v12 = @"showing";
      }

      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_23BE5B000, v11, OS_LOG_TYPE_DEFAULT, "_updateShowSeconds from: %@ to: %@", &v17, 0x16u);
    }

    objc_msgSend_setShowSeconds_(self->_timeFormatter, v14, v10 & 1, v15);
    objc_msgSend_setPaused_forReason_(self->_timeFormatter, v16, 0, @"foghornTimeViewTritiumOrLayoutChange");
  }
}

- (void)setFrozen:(BOOL)frozen
{
  if (self->_frozen != frozen)
  {
    self->_frozen = frozen;
    objc_msgSend__updateBlinking(self, a2, frozen, v3);
  }
}

- (void)timeFormatterTextDidChange:(id)change
{
  changeCopy = change;
  v4 = objc_opt_class();
  v7 = objc_msgSend__hoursMinutesStringFromTimeFormatter_(v4, v5, changeCopy, v6);
  if (objc_msgSend_isEqualToString_(self->_lastHoursMinutesString, v8, v7, v9))
  {
    if (objc_msgSend_showSeconds(changeCopy, v10, v11, v12))
    {
      objc_msgSend__updateSecondsForTimeFormatter_showSeconds_secondsAlpha_(self, v13, changeCopy, 1, self->_secondsLayoutVisibility);
    }
  }

  else
  {
    v15 = objc_msgSend__tritiumOn(self, v10, v11, v12);
    layoutStyle = self->_layoutStyle;
    v17 = 1.0;
    v18 = 0.0;
    if (layoutStyle)
    {
      v18 = 1.0;
    }

    if (((v15 | self->_frozen) & 1) == 0)
    {
      v17 = v18;
    }

    objc_msgSend__updateHoursMinutesSecondsForTimeFormatter_layoutStyle_tritiumOn_blinkAlpha_(self, v14, changeCopy, layoutStyle, v15, v17);
  }

  lastHoursMinutesString = self->_lastHoursMinutesString;
  self->_lastHoursMinutesString = v7;
}

- (void)timeFormatterReportingLiveTimeDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_reportingLiveTime(change, a2, change, v3);
  v6 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v11 = 136315394;
    v12 = "[NTKFoghornTimeView timeFormatterReportingLiveTimeDidChange:]";
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_23BE5B000, v6, OS_LOG_TYPE_DEFAULT, "%s: reportingLiveTime = %@", &v11, 0x16u);
  }

  if (v5)
  {
    objc_msgSend_setNeedsDisplay(self, v8, v9, v10);
  }
}

- (void)_updateBlinkerAlphaForSecondFraction:(double)fraction
{
  CLKCompressFraction();
  CLKInterpolateBetweenFloatsClipped();
  v5 = v4;
  objc_msgSend_activate(MEMORY[0x277CD9FF0], v6, v7, v8);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v9, v10, v11);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v12, 1, v13);
  *&v14 = v5;
  objc_msgSend_setOpacity_(self->_minutesSeparatorLayer, v15, v16, v17, v14);
  v21 = MEMORY[0x277CD9FF0];

  objc_msgSend_commit(v21, v18, v19, v20);
}

- (void)_startBlinking
{
  objc_msgSend__updateMinutesSeparatorLayerForTimeFormatter_(self, a2, self->_timeFormatter, v2);
  CLKClockTimerDateForNow();
  objc_msgSend__updateBlinkerAlphaForSecondFraction_(self, v4, v5, v6, *&location[5]);

  objc_msgSend__updateBlinkWithAlpha_(self, v7, v8, v9, 0.0);
  objc_msgSend__setNeedsDisplayForElementMask_(self, v10, -1, v11);
  if (!self->_blinkTimerToken)
  {
    objc_initWeak(location, self);
    v15 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], v12, v13, v14);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_23BE70294;
    v19[3] = &unk_278B9C9C0;
    objc_copyWeak(&v20, location);
    v17 = objc_msgSend_startUpdatesWithUpdateFrequency_withHandler_identificationLog_(v15, v16, 2, v19, &unk_284E9C4B0);
    blinkTimerToken = self->_blinkTimerToken;
    self->_blinkTimerToken = v17;

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }
}

- (void)_stopBlinking
{
  if (self->_blinkTimerToken)
  {
    v5 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], a2, v2, v3);
    objc_msgSend_stopUpdatesForToken_(v5, v6, self->_blinkTimerToken, v7);

    blinkTimerToken = self->_blinkTimerToken;
    self->_blinkTimerToken = 0;
  }

  objc_msgSend_activate(MEMORY[0x277CD9FF0], a2, v2, v3);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v9, v10, v11);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v12, 1, v13);
  objc_msgSend_setOpacity_(self->_minutesSeparatorLayer, v14, v15, v16, 0.0);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v17, v18, v19);
  objc_msgSend__updateBlinkWithAlpha_(self, v20, v21, v22, 1.0);

  objc_msgSend__setNeedsDisplayForElementMask_(self, v23, -1, v24);
}

- (void)_updateBlinking
{
  v20 = *MEMORY[0x277D85DE8];
  blinkTimerToken = self->_blinkTimerToken;
  if (self->_frozen || (objc_msgSend__tritiumOff(self, a2, v2, v3) & 1) == 0)
  {
    if (!blinkTimerToken)
    {
      return;
    }

    v6 = 0;
  }

  else
  {
    v6 = (self->_layoutStyle & 1) == 0;
    if ((blinkTimerToken != 0) == v6)
    {
      return;
    }
  }

  v7 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"notBlinking";
    if (blinkTimerToken)
    {
      v9 = @"blinking";
    }

    else
    {
      v9 = @"notBlinking";
    }

    if (v6)
    {
      v8 = @"blinking";
    }

    v16 = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_23BE5B000, v7, OS_LOG_TYPE_DEFAULT, "_updateBlinking from: %@ to: %@", &v16, 0x16u);
  }

  objc_msgSend__stopBlinking(self, v10, v11, v12);
  if (v6)
  {
    objc_msgSend__startBlinking(self, v13, v14, v15);
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
  memcpy(v16, __dst, sizeof(v16));
  return objc_msgSend__stuffForLayoutStyle_inset_shouldHideSeconds_layoutConstants_renderRect_oversizedRect_showSeconds_(v13, v14, style, insetCopy, 0, v16, rect, oversizedRect, seconds);
}

- (CGRect)contentBounds
{
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  layoutStyle = self->_layoutStyle;
  inset = self->_inset;
  v7 = objc_msgSend__tritiumOn(self, a2, v2, v3);
  if (objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, v8, layoutStyle, inset, v7, &v18, v17, &v16))
  {
    v13 = *(&v18 + 1);
    v12 = *&v18;
    v15 = *(&v19 + 1);
    v14 = *&v19;
  }

  else
  {
    objc_msgSend_bounds(self, v9, v10, v11);
  }

  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_setLayoutFromStyle:(unint64_t)style toStyle:(unint64_t)toStyle fromTritiumOn:(BOOL)on toTritiumOn:(BOOL)tritiumOn fromInset:(BOOL)inset toInset:(BOOL)toInset progress:(double)progress
{
  insetCopy = inset;
  v84 = 0u;
  memset(&v85, 0, sizeof(v85));
  v83 = 0u;
  v82 = 0;
  memset(&v81, 0, sizeof(v81));
  memset(v80, 0, sizeof(v80));
  v79 = 0;
  v13 = on ^ tritiumOn;
  if (style != toStyle)
  {
    v13 = 1;
  }

  if ((v13 | inset ^ toInset) != 1 || fabs(progress) < 0.00000011920929)
  {
    objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, a2, style, inset);
    progressCopy = 0.0;
    objc_msgSend__layoutAndUpdateForTimeFormatter_showSeconds_layoutStyle_inset_metricsRect_blinkAlpha_secondsAlpha_(self, v21, self->_timeFormatter, 0, style, insetCopy, *&v85.origin, *&v85.size, 1.0, 0.0);
    goto LABEL_24;
  }

  toInsetCopy = toInset;
  tritiumOnCopy = tritiumOn;
  v17 = fabs(progress + -1.0);
  if (progress > 1.0 || v17 < 0.00000011920929)
  {
    objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, a2, toStyle, toInset, tritiumOn, &v81, v80, &v79, v17);
    if (v79)
    {
      progressCopy = 1.0;
    }

    else
    {
      progressCopy = 0.0;
    }

    objc_msgSend__layoutAndUpdateForTimeFormatter_showSeconds_layoutStyle_inset_metricsRect_blinkAlpha_secondsAlpha_(self, v19, self->_timeFormatter, v79, toStyle, toInsetCopy, *&v81.origin, *&v81.size, 1.0, progressCopy);
    goto LABEL_24;
  }

  objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, a2, style, inset, v17);
  objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, v22, toStyle, toInsetCopy, tritiumOnCopy, &v81, v80, &v79);
  CGRectGetMinX(v85);
  CGRectGetMinX(v81);
  CLKInterpolateBetweenFloatsClipped();
  v24 = v23;
  CGRectGetMinY(v85);
  CGRectGetMinY(v81);
  CLKInterpolateBetweenFloatsClipped();
  v26 = v25;
  CGRectGetMaxX(v85);
  CGRectGetMaxX(v81);
  CLKInterpolateBetweenFloatsClipped();
  v28 = v27;
  CGRectGetMaxY(v85);
  CGRectGetMaxY(v81);
  CLKInterpolateBetweenFloatsClipped();
  if (v82)
  {
    v32 = 1.0;
    if ((v79 & 1) == 0)
    {
      progressCopy = 1.0 - progress;
      goto LABEL_20;
    }
  }

  else
  {
    v32 = 0.0;
    progressCopy = progress;
    if (v79)
    {
      goto LABEL_20;
    }
  }

  progressCopy = v32;
LABEL_20:
  v77 = v26;
  v78 = v24;
  v75 = v28 - v24;
  v76 = v31 - v26;
  v33 = objc_msgSend__numberOfThinCharactersForTimeFormatter_(self, v29, self->_timeFormatter, v30);
  objc_msgSend__scaleSizeForLayoutStyle_inset_shouldHideSeconds_numberOfThinCharacters_(self, v34, style, insetCopy, (v82 & 1) == 0, v33);
  v36 = v35;
  v38 = v37;
  objc_msgSend__scaleSizeForLayoutStyle_inset_shouldHideSeconds_numberOfThinCharacters_(self, v39, toStyle, toInsetCopy, (v79 & 1) == 0, v33);
  v41 = v40;
  v43 = v42;
  CLKInterpolateBetweenFloatsClipped();
  v74 = v44;
  CLKInterpolateBetweenFloatsClipped();
  v73 = v45;
  objc_msgSend__scaleWeightForLayoutStyle_inset_shouldHideSeconds_(self, v46, style, insetCopy, (v82 & 1) == 0);
  v48 = v47;
  objc_msgSend__scaleWeightForLayoutStyle_inset_shouldHideSeconds_(self, v49, toStyle, toInsetCopy, (v79 & 1) == 0);
  v51 = v50;
  CLKInterpolateBetweenFloatsClipped();
  v54 = v53;
  animationSnapStyle = self->_animationSnapStyle;
  if (v82 == v79 || self->_animationStyle)
  {
    v56 = animationSnapStyle == 2;
    timeFormatter = self->_timeFormatter;
    v58 = *MEMORY[0x277CBF3A8];
    v59 = *(MEMORY[0x277CBF3A8] + 8);
    v72 = progressCopy;
    v71 = *(MEMORY[0x277CBF3A0] + 24);
    v70 = *(MEMORY[0x277CBF3A0] + 8);
    x = *MEMORY[0x277CBF3A0];
    v68 = 0;
  }

  else
  {
    v56 = animationSnapStyle == 2;
    if (v82)
    {
      v58 = v36;
    }

    else
    {
      v58 = v41;
    }

    if (v82)
    {
      v59 = v38;
    }

    else
    {
      v59 = v43;
    }

    if (v82)
    {
      v60 = v48;
    }

    else
    {
      v60 = v51;
    }

    v61 = &v85;
    p_y = &v85.origin.y;
    if (!v82)
    {
      p_y = &v81.origin.y;
    }

    v63 = *p_y;
    p_size = &v85.size;
    if (!v82)
    {
      p_size = &v81.size;
    }

    width = p_size->width;
    p_height = &v85.size.height;
    if (!v82)
    {
      p_height = &v81.size.height;
      v61 = &v81;
    }

    timeFormatter = self->_timeFormatter;
    v72 = progressCopy;
    *(&v70 + 1) = width;
    v71 = *p_height;
    x = v61->origin.x;
    *&v70 = v63;
    v68 = v60;
  }

  HIBYTE(v67) = v79;
  LOBYTE(v67) = v82;
  objc_msgSend__layoutAndUpdateForTimeFormatter_transitoryFontSize_transitoryFontWeight_metricsRect_snapToPixel_fromLayoutStyle_toLayoutStyle_fromInset_toInset_fromShowSeconds_toShowSeconds_progress_secondsSize_secondsWeight_secondsRenderRect_blinkAlpha_secondsAlpha_(self, v52, timeFormatter, v56, style, toStyle, insetCopy, toInsetCopy, v74, v73, v54, v78, v77, v75, v76, progress, v67, *&v58, *&v59, v68, *&x, v70, v71, 0x3FF0000000000000, *&v72);
LABEL_24:
  self->_secondsLayoutVisibility = progressCopy;
}

- (void)setLayoutFromStyle:(unint64_t)style toStyle:(unint64_t)toStyle progress:(double)progress
{
  v9 = objc_msgSend__tritiumOn(self, a2, style, toStyle);
  objc_msgSend__setLayoutFromStyle_toStyle_fromTritiumOn_toTritiumOn_fromInset_toInset_progress_(self, v10, style, toStyle, v9, v9, self->_inset, self->_inset, progress);
  v14 = fabs(progress + -1.0);
  if (progress > 1.0 || v14 < 0.00000011920929)
  {
    self->_layoutStyle = toStyle;
    objc_msgSend__stopBlinking(self, v11, v12, v13, v14);
    objc_msgSend__updateBlinking(self, v16, v17, v18);

    MEMORY[0x2821F9670](self, sel__updateShowSeconds, v19, v20);
  }
}

- (void)setFromInset:(BOOL)inset toInset:(BOOL)toInset progress:(double)progress
{
  toInsetCopy = toInset;
  insetCopy = inset;
  v9 = objc_msgSend__tritiumOn(self, a2, inset, toInset);
  objc_msgSend__setLayoutFromStyle_toStyle_fromTritiumOn_toTritiumOn_fromInset_toInset_progress_(self, v10, self->_layoutStyle, self->_layoutStyle, v9, v9, insetCopy, toInsetCopy, progress);
  v14 = fabs(progress + -1.0);
  if (progress > 1.0 || v14 < 0.00000011920929)
  {
    self->_inset = toInsetCopy;
    objc_msgSend__stopBlinking(self, v11, v12, v13, v14);

    objc_msgSend__updateBlinking(self, v16, v17, v18);
  }
}

- (void)setLayoutStyle:(unint64_t)style
{
  if (self->_layoutStyle != style)
  {
    objc_msgSend_setLayoutFromStyle_toStyle_progress_(self, a2, style, style, 1.0);
  }
}

- (void)setInset:(BOOL)inset
{
  if (self->_inset != inset)
  {
    objc_msgSend_setFromInset_toInset_progress_(self, a2, inset, inset, 1.0);
  }
}

- (void)setMinutesColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_minutesColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_minutesColor, color);
    if (self->_frozen || !objc_msgSend__tritiumOff(self, v7, v8, v9))
    {
      objc_msgSend__updateColorsForElementMask_blinkAlpha_secondsAlpha_(self, v7, 7, v9, 1.0, self->_secondsLayoutVisibility);
    }

    else
    {
      layoutStyle = self->_layoutStyle;
      v11 = 1.0;
      if ((layoutStyle & 1) == 0)
      {
        v11 = 0.0;
      }

      objc_msgSend__updateColorsForElementMask_blinkAlpha_secondsAlpha_(self, v7, 7, v9, v11, self->_secondsLayoutVisibility);
      if ((layoutStyle & 1) == 0)
      {
        objc_msgSend__updateMinutesSeparatorLayerForTimeFormatter_(self, v12, self->_timeFormatter, v13);
      }
    }
  }
}

- (void)setSecondsColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_secondsColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsColor, color);
    objc_msgSend__updateColorsForElementMask_blinkAlpha_secondsAlpha_(self, v7, 8, v8, 1.0, self->_secondsLayoutVisibility);
  }
}

@end