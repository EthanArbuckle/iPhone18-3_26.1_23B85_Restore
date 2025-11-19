@interface NTKFoghornTimeView
+ (BOOL)_stuffForLayoutStyle:(unint64_t)a3 inset:(BOOL)a4 shouldHideSeconds:(BOOL)a5 layoutConstants:(id *)a6 renderRect:(CGRect *)a7 oversizedRect:(CGRect *)a8 showSeconds:(BOOL *)a9;
+ (CGSize)_frameSetterSizeForAttributedString:(id)a3;
+ (CGSize)_getSizesForHoursString:(id)a3 blinkerString:(id)a4 minutesString:(id)a5 secondsString:(id)a6 font:(id)a7 showSeconds:(BOOL)a8 metricsRect:(CGRect)a9 hoursSize:(CGSize *)a10 minutesSeparatorSize:(CGSize *)a11 minutesSize:(CGSize *)a12 secondsSize:(CGSize *)a13;
+ (__CTFrame)_CTFrameForFrame:(CGRect)a3 text:(id)a4 textColor:(id)a5 font:(id)a6 forDevice:(id)a7;
+ (id)_hoursMinutesStringFromTimeFormatter:(id)a3;
+ (id)_minutesSeparatorImageWithSize:(CGSize)a3 scale:(double)a4 frame:(CGRect)a5 text:(id)a6 textColor:(id)a7 font:(id)a8 outlineWidth:(double)a9 forDevice:(id)a10;
+ (id)_secondsStringFromTimeFormatter:(id)a3;
+ (void)_configureWithMetricBounds:(CGRect)a3 hoursSize:(CGSize)a4 minutesSeparatorSize:(CGSize)a5 minutesSize:(CGSize)a6 secondsSize:(CGSize)a7 textInset:(double)a8 outlineWidth:(double)a9 hScale:(double)a10 snappingPolicy:(unint64_t)a11 forDevice:(id)a12 frameStates:(id *)a13;
+ (void)_stringsFromTimeFormatter:(id)a3 showSeconds:(BOOL)a4 hoursString:(id *)a5 blinkerString:(id *)a6 minutesString:(id *)a7 secondsString:(id *)a8;
+ (void)drawSnapshotInContext:(CGContext *)a3 layoutStyle:(unint64_t)a4 inset:(BOOL)a5 minutesColor:(id)a6 secondsColor:(id)a7 forDevice:(id)a8;
- (BOOL)_stuffForLayoutStyle:(unint64_t)a3 inset:(BOOL)a4 tritiumOn:(BOOL)a5 renderRect:(CGRect *)a6 oversizedRect:(CGRect *)a7 showSeconds:(BOOL *)a8;
- (CGRect)contentBounds;
- (CGSize)_getLayoutForHoursString:(id)a3 blinkerString:(id)a4 minutesString:(id)a5 secondsString:(id)a6 showSeconds:(BOOL)a7 numberOfThinCharacters:(unint64_t)a8 layoutStyle:(unint64_t)a9 inset:(BOOL)a10 metricsRect:(CGRect)a11;
- (CGSize)_layoutForHoursString:(id)a3 blinkerString:(id)a4 minutesString:(id)a5 secondsString:(id)a6 showSeconds:(BOOL)a7 transitoryFontSize:(CGSize)a8 transitoryFontWeight:(double)a9 transitoryOutlineWidth:(double)a10 metricsRect:(CGRect)a11 snapToPixel:(BOOL)a12 toLayoutStyle:(unint64_t)a13 font:(id *)a14 frameStates:(id *)a15;
- (CGSize)_scaleSizeForLayoutStyle:(unint64_t)a3 inset:(BOOL)a4 shouldHideSeconds:(BOOL)a5 numberOfThinCharacters:(unint64_t)a6;
- (CGSize)_scaleSizeForTimeFormatter:(id)a3 layoutStyle:(unint64_t)a4 inset:(BOOL)a5 shouldHideSeconds:(BOOL)a6;
- (NTKFoghornTimeView)initWithFrame:(CGRect)a3 forDevice:(id)a4 clockTimer:(id)a5 layout:(unint64_t)a6;
- (NTKFoghornTimeView)initWithFrame:(CGRect)a3 forDevice:(id)a4 layout:(unint64_t)a5;
- (double)_scaleWeightForLayoutStyle:(unint64_t)a3 inset:(BOOL)a4 shouldHideSeconds:(BOOL)a5;
- (id)_getSecondsColorWithAlpha:(double)a3;
- (unint64_t)_numberOfThinCharactersForTimeFormatter:(id)a3;
- (void)_cleanupElementFrameStates;
- (void)_drawInContext:(CGContext *)a3 needsDisplayElementMask:(unint64_t)a4;
- (void)_ensureCTFramesForElementMask:(unint64_t)a3 withFont:(id)a4;
- (void)_layoutAndUpdateForTimeFormatter:(double)a3 transitoryFontSize:(double)a4 transitoryFontWeight:(double)a5 metricsRect:(double)a6 snapToPixel:(double)a7 fromLayoutStyle:(double)a8 toLayoutStyle:(uint64_t)a9 fromInset:(void *)a10 toInset:(unsigned int)a11 fromShowSeconds:(uint64_t)a12 toShowSeconds:(uint64_t)a13 progress:(int)a14 secondsSize:(int)a15 secondsWeight:(double)a16 secondsRenderRect:(unsigned __int8)a17 blinkAlpha:(unsigned __int8)a18 secondsAlpha:(double)a19;
- (void)_layoutAndUpdateForTimeFormatter:(id)a3 showSeconds:(BOOL)a4 layoutStyle:(unint64_t)a5 inset:(BOOL)a6 metricsRect:(CGRect)a7 blinkAlpha:(double)a8 secondsAlpha:(double)a9;
- (void)_setLayoutFromStyle:(unint64_t)a3 toStyle:(unint64_t)a4 fromTritiumOn:(BOOL)a5 toTritiumOn:(BOOL)a6 fromInset:(BOOL)a7 toInset:(BOOL)a8 progress:(double)a9;
- (void)_setNeedsDisplayForElementMask:(unint64_t)a3;
- (void)_setNeedsDisplayInRect:(CGRect)a3;
- (void)_startBlinking;
- (void)_stopBlinking;
- (void)_updateBlinkWithAlpha:(double)a3;
- (void)_updateBlinkerAlphaForSecondFraction:(double)a3;
- (void)_updateBlinking;
- (void)_updateColorsForElementMask:(unint64_t)a3 blinkAlpha:(double)a4 secondsAlpha:(double)a5;
- (void)_updateFrameElement:(unint64_t)a3 frame:(CGRect)a4 text:(id)a5 textColor:(id)a6;
- (void)_updateFrameElementsForHoursString:(id)a3 blinkerString:(id)a4 minutesString:(id)a5 secondsString:(id)a6 blinkAlpha:(double)a7 secondsAlpha:(double)a8;
- (void)_updateHoursMinutesSecondsForTimeFormatter:(id)a3 layoutStyle:(unint64_t)a4 tritiumOn:(BOOL)a5 blinkAlpha:(double)a6;
- (void)_updateMinutesSeparatorLayerForTimeFormatter:(id)a3;
- (void)_updateSecondsForTimeFormatter:(id)a3 showSeconds:(BOOL)a4 secondsAlpha:(double)a5;
- (void)_updateShowSeconds;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setFromInset:(BOOL)a3 toInset:(BOOL)a4 progress:(double)a5;
- (void)setFrozen:(BOOL)a3;
- (void)setInset:(BOOL)a3;
- (void)setLayoutFromStyle:(unint64_t)a3 toStyle:(unint64_t)a4 progress:(double)a5;
- (void)setLayoutStyle:(unint64_t)a3;
- (void)setMinutesColor:(id)a3;
- (void)setNeedsDisplay;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setSecondsColor:(id)a3;
- (void)timeFormatterReportingLiveTimeDidChange:(id)a3;
- (void)timeFormatterTextDidChange:(id)a3;
@end

@implementation NTKFoghornTimeView

- (NTKFoghornTimeView)initWithFrame:(CGRect)a3 forDevice:(id)a4 clockTimer:(id)a5 layout:(unint64_t)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v15 = a5;
  v71.receiver = self;
  v71.super_class = NTKFoghornTimeView;
  v17 = [(NTKFoghornTimeView *)&v71 initWithFrame:x, y, width, height];
  if (v17)
  {
    v19 = objc_msgSend_clearColor(MEMORY[0x277D75348], v16, v18);
    objc_msgSend_setBackgroundColor_(v17, v20, v21, v19);

    objc_storeStrong(&v17->_device, a4);
    sub_23BEB9E98(v14, __src);
    memcpy(&v17->_layoutConstants, __src, sizeof(v17->_layoutConstants));
    v22 = v17->_layoutConstants.fontSizes[a6];
    v23 = [NTKFoghornFaceFontLoader alloc];
    v25 = objc_msgSend_initWithFontSize_(v23, v24, v22);
    timeDisplayFontLoader = v17->_timeDisplayFontLoader;
    v17->_timeDisplayFontLoader = v25;

    v29 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v27, v28);
    minutesColor = v17->_minutesColor;
    v17->_minutesColor = v29;

    v32 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v31, 0.247058824, 0.435294122, 0.580392182, 1.0);
    secondsColor = v17->_secondsColor;
    v17->_secondsColor = v32;

    v34 = objc_alloc(MEMORY[0x277CBBBA8]);
    v37 = objc_msgSend_initWithForcesLatinNumbers_clockTimer_(v34, v35, v36, 1, v15);
    timeFormatter = v17->_timeFormatter;
    v17->_timeFormatter = v37;

    objc_msgSend_setShowSeconds_(v17->_timeFormatter, v39, v40, 1);
    objc_msgSend_addObserver_(v17->_timeFormatter, v41, v42, v17);
    v45 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v43, v44, @"1");
    thinCharacterSet = v17->_thinCharacterSet;
    v17->_thinCharacterSet = v45;

    v47 = [NTKFoghornTimeViewLayer alloc];
    v50 = objc_msgSend_initWithTimeView_(v47, v48, v49, v17);
    objc_msgSend_screenScale(v14, v51, v52);
    objc_msgSend_setContentsScale_(v50, v53, v54);
    v57 = objc_msgSend_layer(v17, v55, v56);
    objc_msgSend_addSublayer_(v57, v58, v59, v50);

    minutesSeparatorLayer = v17->_minutesSeparatorLayer;
    v17->_minutesSeparatorLayer = v50;
    v61 = v50;

    objc_msgSend_setOpacity_(v17->_minutesSeparatorLayer, v62, 0.0);
    v17->_animationStyle = 0;
    v17->_animationSnapStyle = 1;
    objc_msgSend_setClearsContextBeforeDrawing_(v17, v63, v64, 0);
    objc_msgSend_setOpaque_(v17, v65, v66, 0);
    v17->_secondsLayoutVisibility = 1.0;
    v17->_layoutStyle = -1;
    objc_msgSend_setLayoutStyle_(v17, v67, v68, a6);
  }

  return v17;
}

- (NTKFoghornTimeView)initWithFrame:(CGRect)a3 forDevice:(id)a4 layout:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = MEMORY[0x277CBB700];
  v12 = a4;
  v15 = objc_msgSend_sharedInstance(v11, v13, v14);
  v17 = objc_msgSend_initWithFrame_forDevice_clockTimer_layout_(self, v16, x, v12, v15, a5, y, width, height);

  return v17;
}

- (void)dealloc
{
  objc_msgSend__cleanupElementFrameStates(self, a2, v2);
  v4.receiver = self;
  v4.super_class = NTKFoghornTimeView;
  [(NTKFoghornTimeView *)&v4 dealloc];
}

+ (id)_hoursMinutesStringFromTimeFormatter:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_timeText(v3, v4, v5);
  v11 = v6;
  if (objc_msgSend_showSeconds(v3, v7, v8))
  {
    v12 = objc_msgSend_rangeInTimeSubstringFromSecondsSeparatorText(v3, v9, v10);
    v11 = objc_msgSend_substringToIndex_(v6, v13, v14, v12 - 1);
  }

  return v11;
}

+ (id)_secondsStringFromTimeFormatter:(id)a3
{
  v3 = a3;
  if (objc_msgSend_showSeconds(v3, v4, v5))
  {
    v8 = objc_msgSend_timeText(v3, v6, v7);
    v11 = objc_msgSend_rangeInTimeSubstringFromSecondsSeparatorText(v3, v9, v10);
    v14 = objc_msgSend_substringWithRange_(v8, v12, v13, v11 - 1, v12 + 1);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)_stringsFromTimeFormatter:(id)a3 showSeconds:(BOOL)a4 hoursString:(id *)a5 blinkerString:(id *)a6 minutesString:(id *)a7 secondsString:(id *)a8
{
  v12 = a4;
  v40 = a3;
  v15 = objc_msgSend_timeText(v40, v13, v14);
  if (objc_msgSend_showSeconds(v40, v16, v17))
  {
    v21 = objc_msgSend_rangeInTimeSubstringFromSecondsSeparatorText(v40, v18, v19) - 1;
    if (v12)
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

  v25 = objc_msgSend_blinkerRangeInTimeText(v40, v18, v19);
  v27 = v26;
  v29 = objc_msgSend_substringToIndex_(v15, v26, v28, v25);
  v32 = objc_msgSend_substringWithRange_(v15, v30, v31, v25, v27);
  v35 = objc_msgSend_substringFromIndex_(v15, v33, v34, &v27[v25]);
  v36 = v29;
  *a5 = v29;
  v37 = v32;
  *a6 = v32;
  v38 = v35;
  *a7 = v35;
  v39 = v23;
  *a8 = v23;
}

+ (CGSize)_frameSetterSizeForAttributedString:(id)a3
{
  v3 = a3;
  v4 = CTFramesetterCreateWithAttributedString(v3);
  v7 = objc_msgSend_length(v3, v5, v6);

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

+ (CGSize)_getSizesForHoursString:(id)a3 blinkerString:(id)a4 minutesString:(id)a5 secondsString:(id)a6 font:(id)a7 showSeconds:(BOOL)a8 metricsRect:(CGRect)a9 hoursSize:(CGSize *)a10 minutesSeparatorSize:(CGSize *)a11 minutesSize:(CGSize *)a12 secondsSize:(CGSize *)a13
{
  v90 = a8;
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v95[3] = *MEMORY[0x277D85DE8];
  v22 = a3;
  v93 = a4;
  v92 = a5;
  v23 = a6;
  v25 = a7;
  if (v23)
  {
    v27 = objc_msgSend_punctuationCharacterSet(MEMORY[0x277CCA900], v24, v26);
    v30 = objc_msgSend_rangeOfCharacterFromSet_options_(v23, v28, v29, v27, 4);
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = &v31[v30];
      v34 = objc_msgSend_length(v23, v31, v32);
      v37 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v23, v35, v36, v33, v34 - v33, @"88");

      v23 = v37;
    }
  }

  else
  {
    v23 = @":88";
  }

  v38 = objc_alloc_init(MEMORY[0x277D74240]);
  objc_msgSend_setAlignment_(v38, v39, v40, 4);
  v43 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v41, v42);
  v44 = *MEMORY[0x277D740A8];
  v94[0] = *MEMORY[0x277D740C0];
  v94[1] = v44;
  v95[0] = v43;
  v95[1] = v25;
  v91 = v25;
  v94[2] = *MEMORY[0x277D74118];
  v95[2] = v38;
  v47 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, v46, v95, v94, 3);
  v48 = objc_alloc(MEMORY[0x277CCA898]);
  v49 = v22;
  v52 = objc_msgSend_initWithString_attributes_(v48, v50, v51, v22, v47);
  v53 = objc_alloc(MEMORY[0x277CCA898]);
  v56 = objc_msgSend_initWithString_attributes_(v53, v54, v55, v93, v47);
  v57 = objc_alloc(MEMORY[0x277CCA898]);
  v60 = objc_msgSend_initWithString_attributes_(v57, v58, v59, v92, v47);
  objc_msgSend__frameSetterSizeForAttributedString_(a1, v61, v62, v52);
  v64 = v63;
  v66 = v65;
  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  v89 = CGRectGetHeight(v97);
  objc_msgSend__frameSetterSizeForAttributedString_(a1, v67, v89, v56);
  v69 = v68;
  v71 = v70;
  objc_msgSend__frameSetterSizeForAttributedString_(a1, v72, v68, v60);
  v74 = v73;
  v76 = v75;
  if (v90)
  {
    v77 = objc_alloc(MEMORY[0x277CCA898]);
    v80 = objc_msgSend_initWithString_attributes_(v77, v78, v79, v23, v47);
    objc_msgSend__frameSetterSizeForAttributedString_(a1, v81, v82, v80);
    v84 = v83;
    v86 = v85;
  }

  else
  {
    v84 = *MEMORY[0x277CBF3A8];
    v86 = *(MEMORY[0x277CBF3A8] + 8);
  }

  a10->width = v64;
  a10->height = v66;
  a11->width = v69;
  a11->height = v71;
  a12->width = v74;
  a12->height = v76;
  a13->width = v84;
  a13->height = v86;

  v87 = v64 + 0.0 + v69 + v74 + v84;
  v88 = v89;
  result.height = v88;
  result.width = v87;
  return result;
}

+ (void)_configureWithMetricBounds:(CGRect)a3 hoursSize:(CGSize)a4 minutesSeparatorSize:(CGSize)a5 minutesSize:(CGSize)a6 secondsSize:(CGSize)a7 textInset:(double)a8 outlineWidth:(double)a9 hScale:(double)a10 snappingPolicy:(unint64_t)a11 forDevice:(id)a12 frameStates:(id *)a13
{
  width = a7.width;
  v14 = *&a6.width;
  v28 = a5.width;
  v15 = a4.width;
  height = a3.size.height;
  v17 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v29 = *&a6.height;
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
  *(*&width + 160) = a8;
  *(*&width + 168) = v21;
  *(*&width + 208) = v32;
  *(*&width + 216) = sub_23BEB5F9C(v14, v29, a8 + v28 + v26);
  *(*&width + 224) = MinY;
  *(*&width + 232) = a10;
  *(*&width + 240) = v21;
  v27 = 0.0;
  if (a10 > 0.0)
  {
    v27 = v32;
  }

  *(*&width + 280) = v27;
}

- (id)_getSecondsColorWithAlpha:(double)a3
{
  v4 = self->_secondsColor;
  v6 = v4;
  if (a3 >= 0.0 && a3 < 1.0)
  {
    v8 = objc_msgSend_colorWithAlphaComponent_(v4, v5, a3);

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

- (void)_setNeedsDisplayInRect:(CGRect)a3
{
  if (!CGRectIsEmpty(a3))
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

- (void)_setNeedsDisplayForElementMask:(unint64_t)a3
{
  v3 = a3;
  v6 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  if ((a3 & 8) != 0)
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
      if ((v3 & 2) == 0)
      {
LABEL_14:
        if ((v3 & 1) == 0)
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
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v9 = 0;
    if ((a3 & 2) == 0)
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
  if ((v3 & 1) == 0)
  {
LABEL_15:
    if ((v3 & 4) == 0)
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
    if ((v3 & 4) == 0)
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
    if ((v3 & 4) == 0)
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

- (void)_updateFrameElement:(unint64_t)a3 frame:(CGRect)a4 text:(id)a5 textColor:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = a5;
  v14 = a6;
  v15 = &self->_frameStates[a3];
  v15->frame.origin.x = x;
  v15->frame.origin.y = y;
  v15->frame.size.width = width;
  v15->frame.size.height = height;
  objc_storeStrong(&v15->text, a5);
  objc_storeStrong(&v15->textColor, a6);
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

- (void)_updateSecondsForTimeFormatter:(id)a3 showSeconds:(BOOL)a4 secondsAlpha:(double)a5
{
  if (a4)
  {
    v7 = a3;
    v8 = objc_opt_class();
    v15 = objc_msgSend__secondsStringFromTimeFormatter_(v8, v9, v10, v7);
  }

  else
  {
    v15 = &stru_284EA8F68;
  }

  v11 = objc_msgSend__getSecondsColorWithAlpha_(self, a2, a5);
  objc_msgSend__updateFrameElement_frame_text_textColor_(self, v12, self->_frameStates[3].frame.origin.x, 3, v15, v11, self->_frameStates[3].frame.origin.y, self->_frameStates[3].frame.size.width, self->_frameStates[3].frame.size.height);
  objc_msgSend__setNeedsDisplayForElementMask_(self, v13, v14, 8);
}

- (void)_updateColorsForElementMask:(unint64_t)a3 blinkAlpha:(double)a4 secondsAlpha:(double)a5
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a4 >= 1.0 || a4 < 0.0)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = a4;
  }

  do
  {
    if (((1 << v11) & a3) == 0)
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
          v9 = objc_msgSend__getMinutesColor(self, a2, a4);
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
        v9 = objc_msgSend__getSecondsColorWithAlpha_(self, a2, a5);
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
          v9 = objc_msgSend__getMinutesColor(self, a2, a4);
        }

        v17 = v9;
        v9 = objc_msgSend_colorWithAlphaComponent_(v9, a2, v14);
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
  objc_msgSend__setNeedsDisplayForElementMask_(self, a2, a4, a3);
}

- (void)_updateBlinkWithAlpha:(double)a3
{
  v5 = objc_msgSend__getMinutesColor(self, a2, a3);
  v13 = v5;
  v7 = 1.0;
  if (a3 < 1.0 && a3 >= 0.0)
  {
    v7 = a3;
  }

  v9 = objc_msgSend_colorWithAlphaComponent_(v5, v6, v7);
  objc_msgSend__updateFrameElement_frame_text_textColor_(self, v10, self->_frameStates[1].frame.origin.x, 1, self->_frameStates[1].text, v9, self->_frameStates[1].frame.origin.y, self->_frameStates[1].frame.size.width, self->_frameStates[1].frame.size.height);
  objc_msgSend__setNeedsDisplayForElementMask_(self, v11, v12, 2);
}

- (void)_updateFrameElementsForHoursString:(id)a3 blinkerString:(id)a4 minutesString:(id)a5 secondsString:(id)a6 blinkAlpha:(double)a7 secondsAlpha:(double)a8
{
  v42 = a3;
  v40 = a4;
  v14 = a5;
  v15 = a6;
  objc_msgSend__cleanupElementFrameStates(self, v16, v17);
  objc_msgSend__updateColorsWithBlinkAlpha_secondsAlpha_(self, v18, a7, a8);
  v21 = objc_msgSend__getMinutesColor(self, v19, v20);
  v24 = objc_msgSend__getSecondsColorWithAlpha_(self, v22, a8);
  v25 = 1.0;
  if (a7 < 1.0 && a7 >= 0.0)
  {
    v25 = a7;
  }

  v27 = objc_msgSend_colorWithAlphaComponent_(v21, v23, v25, v40);
  v28 = 0;
  v29 = self;
  do
  {
    if (v28 == 3)
    {
      v30 = v15;
    }

    else
    {
      v30 = v14;
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
      v32 = v42;
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
    objc_msgSend__updateFrameElement_frame_text_textColor_(self, v37, v29->_frameStates[0].frame.origin.x, v28, v35, v36, v29->_frameStates[0].frame.origin.y, v29->_frameStates[0].frame.size.width, v29->_frameStates[0].frame.size.height);

    ++v28;
    v29 = (v29 + 72);
  }

  while (v28 != 4);
  objc_msgSend__setNeedsDisplayForElementMask_(self, v38, v39, -1);
}

+ (__CTFrame)_CTFrameForFrame:(CGRect)a3 text:(id)a4 textColor:(id)a5 font:(id)a6 forDevice:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v47[3] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277D74240];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = objc_alloc_init(v14);
  objc_msgSend_setAlignment_(v19, v20, v21, 4);
  v22 = *MEMORY[0x277D740A8];
  v46[0] = *MEMORY[0x277D740C0];
  v46[1] = v22;
  v47[0] = v17;
  v47[1] = v16;
  v46[2] = *MEMORY[0x277D74118];
  v47[2] = v19;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v24, v47, v46, 3);
  v26 = objc_alloc(MEMORY[0x277CCA898]);

  v29 = objc_msgSend_initWithString_attributes_(v26, v27, v28, v18, v25);
  objc_msgSend_leading(v16, v30, v31);
  objc_msgSend_ascender(v16, v32, v33);
  objc_msgSend_descender(v16, v34, v35);

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

- (void)_ensureCTFramesForElementMask:(unint64_t)a3 withFont:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v20 = v6;
    do
    {
      if (((1 << v7) & v4) != 0 && !self->_frameStates[v8].ctFrame)
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

        v6 = v20;
      }

      ++v8;
      ++v7;
    }

    while (v8 != 4);
  }
}

- (unint64_t)_numberOfThinCharactersForTimeFormatter:(id)a3
{
  v4 = a3;
  v5 = self->_thinCharacterSet;
  v6 = objc_opt_class();
  v9 = objc_msgSend__hoursMinutesStringFromTimeFormatter_(v6, v7, v8, v4);
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

- (CGSize)_scaleSizeForLayoutStyle:(unint64_t)a3 inset:(BOOL)a4 shouldHideSeconds:(BOOL)a5 numberOfThinCharacters:(unint64_t)a6
{
  v6 = a6 != 0;
  if (a6 > 3)
  {
    v6 = 2;
  }

  v7 = a3 & 0xFFFFFFFFFFFFFFELL;
  if (!a5)
  {
    v7 = a3;
  }

  p_width = &self->_layoutConstants.timeFontScaleSize[a4][v7][v6].width;
  v9 = *p_width;
  v10 = p_width[1];
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)_scaleWeightForLayoutStyle:(unint64_t)a3 inset:(BOOL)a4 shouldHideSeconds:(BOOL)a5
{
  v5 = a3 & 0x1FFFFFFFFFFFFFFELL;
  if (!a5)
  {
    v5 = a3;
  }

  return self->_layoutConstants.timeFontScaleWeight[a4][v5];
}

- (CGSize)_scaleSizeForTimeFormatter:(id)a3 layoutStyle:(unint64_t)a4 inset:(BOOL)a5 shouldHideSeconds:(BOOL)a6
{
  v7 = a6;
  v8 = a5;
  v12 = objc_msgSend__numberOfThinCharactersForTimeFormatter_(self, a2, v6, a3);

  objc_msgSend__scaleSizeForLayoutStyle_inset_shouldHideSeconds_numberOfThinCharacters_(self, v11, v13, a4, v8, v7, v12);
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)_layoutForHoursString:(id)a3 blinkerString:(id)a4 minutesString:(id)a5 secondsString:(id)a6 showSeconds:(BOOL)a7 transitoryFontSize:(CGSize)a8 transitoryFontWeight:(double)a9 transitoryOutlineWidth:(double)a10 metricsRect:(CGRect)a11 snapToPixel:(BOOL)a12 toLayoutStyle:(unint64_t)a13 font:(id *)a14 frameStates:(id *)a15
{
  v15 = a12;
  v16 = a7;
  height = a11.size.height;
  width = a11.size.width;
  y = a11.origin.y;
  x = a11.origin.x;
  v25 = a8.height;
  v26 = a8.width;
  timeDisplayFontLoader = self->_timeDisplayFontLoader;
  v30 = a6;
  v31 = a5;
  v32 = a4;
  v33 = a3;
  v35 = objc_msgSend_foregroundFontWithTypographicSize_weight_horizontalScale_stylisticSet_(timeDisplayFontLoader, v34, v26, 0, v25, a9, 1.0);
  v55 = 0.0;
  v56 = 0.0;
  v53 = 0.0;
  v54 = 0.0;
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v36 = objc_opt_class();
  objc_msgSend__getSizesForHoursString_blinkerString_minutesString_secondsString_font_showSeconds_metricsRect_hoursSize_minutesSeparatorSize_minutesSize_secondsSize_(v36, v37, x, v33, v32, v31, v30, v35, v16, y, width, height, &v55, &v53, &v51, &v49);
  v39 = v38;
  v41 = v40;

  v42 = 3;
  if (a13)
  {
    v42 = 1;
  }

  if (v15)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v44 = objc_opt_class();
  objc_msgSend__configureWithMetricBounds_hoursSize_minutesSeparatorSize_minutesSize_secondsSize_textInset_outlineWidth_hScale_snappingPolicy_forDevice_frameStates_(v44, v45, x, v43, self->_device, a15, y, width, height, v55, v56, v53, v54, v51, v52, v49, v50, 0, *&a10, 0x3FF0000000000000);
  v46 = v35;
  *a14 = v35;

  v47 = v39;
  v48 = v41;
  result.height = v48;
  result.width = v47;
  return result;
}

- (CGSize)_getLayoutForHoursString:(id)a3 blinkerString:(id)a4 minutesString:(id)a5 secondsString:(id)a6 showSeconds:(BOOL)a7 numberOfThinCharacters:(unint64_t)a8 layoutStyle:(unint64_t)a9 inset:(BOOL)a10 metricsRect:(CGRect)a11
{
  v12 = a7;
  height = a11.size.height;
  width = a11.size.width;
  y = a11.origin.y;
  x = a11.origin.x;
  v46[0] = 0;
  v46[1] = 0;
  v45[0] = 0;
  v45[1] = 0;
  v44[0] = 0;
  v44[1] = 0;
  v43[0] = 0;
  v43[1] = 0;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  objc_msgSend__scaleSizeForLayoutStyle_inset_shouldHideSeconds_numberOfThinCharacters_(self, v25, v26, a9, a10, v12 ^ 1, a8);
  v28 = v27;
  v30 = v29;
  objc_msgSend__scaleWeightForLayoutStyle_inset_shouldHideSeconds_(self, v31, v27, a9, a10, v12 ^ 1);
  v34 = objc_msgSend_foregroundFontWithTypographicSize_weight_horizontalScale_stylisticSet_(self->_timeDisplayFontLoader, v32, v28, 0, v30, v33, 1.0);
  v35 = objc_opt_class();
  objc_msgSend__getSizesForHoursString_blinkerString_minutesString_secondsString_font_showSeconds_metricsRect_hoursSize_minutesSeparatorSize_minutesSize_secondsSize_(v35, v36, x, v24, v23, v22, v21, v34, v12, y, width, height, v46, v45, v44, v43);
  v38 = v37;
  v40 = v39;

  v41 = v38;
  v42 = v40;
  result.height = v42;
  result.width = v41;
  return result;
}

- (void)_layoutAndUpdateForTimeFormatter:(double)a3 transitoryFontSize:(double)a4 transitoryFontWeight:(double)a5 metricsRect:(double)a6 snapToPixel:(double)a7 fromLayoutStyle:(double)a8 toLayoutStyle:(uint64_t)a9 fromInset:(void *)a10 toInset:(unsigned int)a11 fromShowSeconds:(uint64_t)a12 toShowSeconds:(uint64_t)a13 progress:(int)a14 secondsSize:(int)a15 secondsWeight:(double)a16 secondsRenderRect:(unsigned __int8)a17 blinkAlpha:(unsigned __int8)a18 secondsAlpha:(double)a19
{
  v86 = *MEMORY[0x277D85DE8];
  v33 = a10;
  objc_msgSend__setNeedsDisplayForElementMask_(a1, v34, v35, -1);
  v36 = objc_opt_class();
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v65 = v33;
  objc_msgSend__stringsFromTimeFormatter_showSeconds_hoursString_blinkerString_minutesString_secondsString_(v36, v37, v38, v33, a17 | a18, &v74, &v73, &v72, &v71);
  v39 = v74;
  v40 = v73;
  v41 = v72;
  v42 = v71;
  CLKInterpolateBetweenFloatsClipped();
  v44 = v43;
  v70 = 0;
  objc_msgSend__layoutForHoursString_blinkerString_minutesString_secondsString_showSeconds_transitoryFontSize_transitoryFontWeight_transitoryOutlineWidth_metricsRect_snapToPixel_toLayoutStyle_font_frameStates_(a1, v45, a2, v39, v40, v41, v42, a17 | a18, a11, a3, a4, v43, a5, a6, a7, a8, a13, &v70, a1 + 1624);
  v47 = v46;
  v48 = v70;
  v49 = v70;
  objc_storeStrong((a1 + 1608), v48);
  objc_storeStrong((a1 + 1616), v48);
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
    objc_msgSend__layoutForHoursString_blinkerString_minutesString_secondsString_showSeconds_transitoryFontSize_transitoryFontWeight_transitoryOutlineWidth_metricsRect_snapToPixel_toLayoutStyle_font_frameStates_(a1, v50, a19, v39, v40, v41, v42, 1, a11, a20, a21, v44, a22, a23, a24, a25, a13, &v69, v75);
    v52 = v69;
    v64 = v69;

    objc_storeStrong((a1 + 1616), v52);
    *(a1 + 1840) = v82;
    *(a1 + 1856) = v83;
    v53 = 288;
    do
    {

      v53 -= 72;
    }

    while (v53);
  }

  v55 = objc_msgSend__numberOfThinCharactersForTimeFormatter_(a1, v50, v51, v65);
  if (a14 != a15 || a12 != a13 || a17 != a18)
  {
    LOBYTE(v59) = a14;
    objc_msgSend__getLayoutForHoursString_blinkerString_minutesString_secondsString_showSeconds_numberOfThinCharacters_layoutStyle_inset_metricsRect_(a1, v54, a5, v39, v40, v41, v42, a17, v55, a6, a7, a8, a12, v59);
    LOBYTE(v60) = a15;
    objc_msgSend__getLayoutForHoursString_blinkerString_minutesString_secondsString_showSeconds_numberOfThinCharacters_layoutStyle_inset_metricsRect_(a1, v56, a5, v39, v40, v41, v42, a18, v55, a6, a7, a8, a13, v60);
    CLKInterpolateBetweenFloatsClipped();
    v47 = v57;
  }

  if (v47 < a7)
  {
    UICeilToViewScale();
    *(a1 + 1624) = v58 + *(a1 + 1624);
    *(a1 + 1696) = v58 + *(a1 + 1696);
    *(a1 + 1768) = v58 + *(a1 + 1768);
    *(a1 + 1840) = v58 + *(a1 + 1840);
  }

  objc_msgSend__updateFrameElementsForHoursString_blinkerString_minutesString_secondsString_blinkAlpha_secondsAlpha_(a1, v54, a26, v39, v40, v41, v42, a27);
}

- (void)_layoutAndUpdateForTimeFormatter:(id)a3 showSeconds:(BOOL)a4 layoutStyle:(unint64_t)a5 inset:(BOOL)a6 metricsRect:(CGRect)a7 blinkAlpha:(double)a8 secondsAlpha:(double)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v14 = a6;
  v16 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v18 = a3;
  objc_msgSend__scaleSizeForTimeFormatter_layoutStyle_inset_shouldHideSeconds_(self, v19, v20, v18, a5, v14, !v16);
  v22 = v21;
  v24 = v23;
  objc_msgSend__scaleWeightForLayoutStyle_inset_shouldHideSeconds_(self, v25, v21, a5, v14, !v16);
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

  HIBYTE(v30) = v16;
  LOBYTE(v30) = v16;
  objc_msgSend__layoutAndUpdateForTimeFormatter_transitoryFontSize_transitoryFontWeight_metricsRect_snapToPixel_fromLayoutStyle_toLayoutStyle_fromInset_toInset_fromShowSeconds_toShowSeconds_progress_secondsSize_secondsWeight_secondsRenderRect_blinkAlpha_secondsAlpha_(self, v29, v22, v18, self->_animationSnapStyle != 0, a5, a5, v14, v14, v24, v27, x, y, width, height, 1.0, v30, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), 0, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), *&a8, *&a9);
}

+ (id)_minutesSeparatorImageWithSize:(CGSize)a3 scale:(double)a4 frame:(CGRect)a5 text:(id)a6 textColor:(id)a7 font:(id)a8 outlineWidth:(double)a9 forDevice:(id)a10
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v19 = a3.height;
  v20 = a3.width;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a10;
  v26 = objc_opt_new();
  objc_msgSend_setScale_(v26, v27, a4);
  v28 = objc_alloc(MEMORY[0x277D75560]);
  v30 = objc_msgSend_initWithSize_format_(v28, v29, v20, v26, v19);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_23BEB8134;
  v39[3] = &unk_278BA0E18;
  v44 = x;
  v45 = y;
  v46 = width;
  v47 = height;
  v48 = a1;
  v40 = v22;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v49 = a9;
  v31 = v25;
  v32 = v24;
  v33 = v23;
  v34 = v22;
  v37 = objc_msgSend_imageWithActions_(v30, v35, v36, v39);

  return v37;
}

- (void)_updateMinutesSeparatorLayerForTimeFormatter:(id)a3
{
  v5 = self->_font;
  v6 = a3;
  v9 = objc_msgSend__getMinutesColor(self, v7, v8);
  v10 = objc_opt_class();
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  objc_msgSend__stringsFromTimeFormatter_showSeconds_hoursString_blinkerString_minutesString_secondsString_(v10, v11, v12, v6, 0, &v47, &v46, &v45, &v44);

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

- (void)_updateHoursMinutesSecondsForTimeFormatter:(id)a3 layoutStyle:(unint64_t)a4 tritiumOn:(BOOL)a5 blinkAlpha:(double)a6
{
  v7 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  inset = self->_inset;
  if (objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, v12, 0.0, a4, inset, v7, &v19, v18, &v17))
  {
    objc_msgSend__layoutAndUpdateForTimeFormatter_showSeconds_layoutStyle_inset_metricsRect_blinkAlpha_secondsAlpha_(self, v13, *&v19, v10, v17, a4, inset, *(&v19 + 1), v20, a6, self->_secondsLayoutVisibility);
    if (self->_blinkTimerToken)
    {
      objc_msgSend__updateMinutesSeparatorLayerForTimeFormatter_(self, v14, v15, v10);
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
      v24 = a4;
      _os_log_impl(&dword_23BEB1000, v16, OS_LOG_TYPE_DEFAULT, "%s: encountered unexpected layoutStyle: 0x%02X", buf, 0x12u);
    }
  }
}

+ (void)drawSnapshotInContext:(CGContext *)a3 layoutStyle:(unint64_t)a4 inset:(BOOL)a5 minutesColor:(id)a6 secondsColor:(id)a7 forDevice:(id)a8
{
  v10 = a5;
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = [NTKFoghornTimeView alloc];
  objc_msgSend_screenBounds(v13, v17, v18);
  v38 = objc_msgSend_initWithFrame_forDevice_(v16, v19, v20, v13);

  objc_msgSend_setLayoutStyle_(v38, v21, v22, a4);
  objc_msgSend_setMinutesColor_(v38, v23, v24, v15);

  objc_msgSend_setSecondsColor_(v38, v25, v26, v14);
  objc_msgSend_setInset_(v38, v27, v28, v10);
  objc_msgSend_setFrozen_(v38, v29, v30, 1);
  v31 = NTKIdealizedDate();
  objc_msgSend_setOverrideDate_duration_(v38, v32, 0.0, v31);

  v35 = objc_msgSend_layer(v38, v33, v34);
  objc_msgSend_renderInContext_(v35, v36, v37, a3);
}

- (void)_drawInContext:(CGContext *)a3 needsDisplayElementMask:(unint64_t)a4
{
  v5 = a4;
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
  CGContextClipToRect(a3, v28);
  objc_msgSend_activate(MEMORY[0x277CD9FF0], v12, v13);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v14, v15);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v16, v17, 1);
  if ((v5 & 8) != 0)
  {
    v19 = self->_frameStates[3].frame.size.width;
    if (v19 > 0.0)
    {
      objc_msgSend__ensureCTFramesForElementMask_withFont_(self, v18, v19, 8, self->_secondsFont);
      CGContextSaveGState(a3);
      MaxY = CGRectGetMaxY(self->_frameStates[3].frame);
      CGContextTranslateCTM(a3, 0.0, MaxY);
      CGContextScaleCTM(a3, 1.0, -1.0);
      _drawCTFrameAndOutlineForFrameState(a3, &self->_frameStates[3]);
      CGContextRestoreGState(a3);
    }
  }

  v21 = CGRectGetMaxY(self->_frameStates[0].frame);
  CGContextTranslateCTM(a3, 0.0, v21);
  CGContextScaleCTM(a3, 1.0, -1.0);
  if (self->_animationSnapStyle != 2)
  {
    CGContextSetShouldSubpixelPositionFonts(a3, 1);
    CGContextSetShouldSubpixelQuantizeFonts(a3, 0);
    CGContextSetShouldAntialias(a3, 1);
    CGContextSetShouldSmoothFonts(a3, 1);
  }

  if ((v5 & 2) != 0)
  {
    objc_msgSend__ensureCTFramesForElementMask_withFont_(self, v22, v23, 2, self->_font);
    _drawCTFrameAndOutlineForFrameState(a3, &self->_frameStates[1]);
  }

  if ((v5 & 5) != 0)
  {
    objc_msgSend__ensureCTFramesForElementMask_withFont_(self, v22, v23, 5, self->_font);
    _drawCTFrameAndOutlineForFrameState(a3, self->_frameStates);
    _drawCTFrameAndOutlineForFrameState(a3, &self->_frameStates[2]);
  }

  v24 = MEMORY[0x277CD9FF0];

  objc_msgSend_commit(v24, v22, v23);
}

- (void)drawRect:(CGRect)a3
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

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  objc_msgSend_setOverrideDate_(self->_timeFormatter, a2, a4, a3);

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

- (void)setFrozen:(BOOL)a3
{
  if (self->_frozen != a3)
  {
    self->_frozen = a3;
    objc_msgSend__updateBlinking(self, a2, v3);
  }
}

- (void)timeFormatterTextDidChange:(id)a3
{
  v18 = a3;
  v4 = objc_opt_class();
  v7 = objc_msgSend__hoursMinutesStringFromTimeFormatter_(v4, v5, v6, v18);
  if (objc_msgSend_isEqualToString_(self->_lastHoursMinutesString, v8, v9, v7))
  {
    if (objc_msgSend_showSeconds(v18, v10, v11))
    {
      objc_msgSend__updateSecondsForTimeFormatter_showSeconds_secondsAlpha_(self, v12, self->_secondsLayoutVisibility, v18, 1);
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

    objc_msgSend__updateHoursMinutesSecondsForTimeFormatter_layoutStyle_tritiumOn_blinkAlpha_(self, v13, v15, v18);
  }

  lastHoursMinutesString = self->_lastHoursMinutesString;
  self->_lastHoursMinutesString = v7;
}

- (void)timeFormatterReportingLiveTimeDidChange:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_reportingLiveTime(a3, a2, v3);
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

- (void)_updateBlinkerAlphaForSecondFraction:(double)a3
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

+ (BOOL)_stuffForLayoutStyle:(unint64_t)a3 inset:(BOOL)a4 shouldHideSeconds:(BOOL)a5 layoutConstants:(id *)a6 renderRect:(CGRect *)a7 oversizedRect:(CGRect *)a8 showSeconds:(BOOL *)a9
{
  if (a3 > 6)
  {
    v13 = 0;
    result = 0;
    v23 = *MEMORY[0x277CBF3A0];
    v24 = *(MEMORY[0x277CBF3A0] + 16);
    a7->origin = *MEMORY[0x277CBF3A0];
    a7->size = v24;
    a8->origin = v23;
    a8->size = v24;
  }

  else
  {
    v11 = 1 << a3;
    v12 = a3 & 0xFFFFFFFFFFFFFFFELL;
    if (!a5)
    {
      v12 = a3;
    }

    v13 = (v11 & 0x55) == 0 && !a5;
    if ((v11 & 0x55) != 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = v12;
    }

    v15 = a6 + 32 * v14;
    x = *(v15 + 98);
    y = *(v15 + 99);
    width = *(v15 + 100);
    height = *(v15 + 101);
    v20 = a6->var3[v14];
    if (!a4)
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

    a7->origin.x = x;
    a7->origin.y = y;
    a7->size.width = width;
    a7->size.height = height;
    a8->origin.x = x;
    a8->origin.y = y;
    a8->size.width = v20 * width;
    a8->size.height = height;
    result = 1;
  }

  *a9 = v13;
  return result;
}

- (BOOL)_stuffForLayoutStyle:(unint64_t)a3 inset:(BOOL)a4 tritiumOn:(BOOL)a5 renderRect:(CGRect *)a6 oversizedRect:(CGRect *)a7 showSeconds:(BOOL *)a8
{
  v11 = a4;
  memcpy(__dst, &self->_layoutConstants, sizeof(__dst));
  v13 = objc_opt_class();
  memcpy(v17, __dst, sizeof(v17));
  return objc_msgSend__stuffForLayoutStyle_inset_shouldHideSeconds_layoutConstants_renderRect_oversizedRect_showSeconds_(v13, v14, v15, a3, v11, 0, v17, a6, a7, a8);
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

- (void)_setLayoutFromStyle:(unint64_t)a3 toStyle:(unint64_t)a4 fromTritiumOn:(BOOL)a5 toTritiumOn:(BOOL)a6 fromInset:(BOOL)a7 toInset:(BOOL)a8 progress:(double)a9
{
  v9 = a7;
  v13 = 0.0;
  v86 = 0u;
  memset(&v87, 0, sizeof(v87));
  v85 = 0u;
  v84 = 0;
  memset(&v83, 0, sizeof(v83));
  memset(v82, 0, sizeof(v82));
  v81 = 0;
  v14 = a5 ^ a6;
  if (a3 != a4)
  {
    v14 = 1;
  }

  if ((v14 | a7 ^ a8) != 1 || (v13 = fabs(a9), v13 < 0.00000011920929))
  {
    objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, a2, v13, a3, a7);
    v21 = 0.0;
    objc_msgSend__layoutAndUpdateForTimeFormatter_showSeconds_layoutStyle_inset_metricsRect_blinkAlpha_secondsAlpha_(self, v22, v87.origin.x, self->_timeFormatter, v87.origin.y, *&v87.size, 1.0, 0.0);
    goto LABEL_24;
  }

  v15 = a8;
  v16 = a6;
  v18 = fabs(a9 + -1.0);
  if (a9 > 1.0 || v18 < 0.00000011920929)
  {
    objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, a2, v18, a4, a8, a6, &v83, v82, &v81);
    if (v81)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = 0.0;
    }

    objc_msgSend__layoutAndUpdateForTimeFormatter_showSeconds_layoutStyle_inset_metricsRect_blinkAlpha_secondsAlpha_(self, v20, v83.origin.x, self->_timeFormatter, v83.origin.y, *&v83.size, 1.0, v21);
    goto LABEL_24;
  }

  objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, a2, v18, a3, a7);
  objc_msgSend__stuffForLayoutStyle_inset_tritiumOn_renderRect_oversizedRect_showSeconds_(self, v23, v24, a4, v15, v16, &v83, v82, &v81);
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
      v21 = 1.0 - a9;
      goto LABEL_20;
    }
  }

  else
  {
    v33 = 0.0;
    v21 = a9;
    if (v81)
    {
      goto LABEL_20;
    }
  }

  v21 = v33;
LABEL_20:
  v79 = v28;
  v80 = v26;
  v77 = v30 - v26;
  v78 = v32 - v28;
  v34 = objc_msgSend__numberOfThinCharactersForTimeFormatter_(self, v31, v32 - v28, self->_timeFormatter);
  objc_msgSend__scaleSizeForLayoutStyle_inset_shouldHideSeconds_numberOfThinCharacters_(self, v35, v36, a3, v9, (v84 & 1) == 0, v34);
  v38 = v37;
  v40 = v39;
  objc_msgSend__scaleSizeForLayoutStyle_inset_shouldHideSeconds_numberOfThinCharacters_(self, v41, v37, a4, v15, (v81 & 1) == 0, v34);
  v43 = v42;
  v45 = v44;
  CLKInterpolateBetweenFloatsClipped();
  v76 = v46;
  CLKInterpolateBetweenFloatsClipped();
  v75 = v47;
  objc_msgSend__scaleWeightForLayoutStyle_inset_shouldHideSeconds_(self, v48, v47, a3, v9, (v84 & 1) == 0);
  v50 = v49;
  objc_msgSend__scaleWeightForLayoutStyle_inset_shouldHideSeconds_(self, v51, v49, a4, v15, (v81 & 1) == 0);
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
    v74 = v21;
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
    v74 = v21;
    *(&v72 + 1) = width;
    v73 = *p_height;
    x = v63->origin.x;
    *&v72 = v65;
    v70 = v62;
  }

  HIBYTE(v69) = v81;
  LOBYTE(v69) = v84;
  objc_msgSend__layoutAndUpdateForTimeFormatter_transitoryFontSize_transitoryFontWeight_metricsRect_snapToPixel_fromLayoutStyle_toLayoutStyle_fromInset_toInset_fromShowSeconds_toShowSeconds_progress_secondsSize_secondsWeight_secondsRenderRect_blinkAlpha_secondsAlpha_(self, v54, v76, timeFormatter, v58, a3, a4, v9, v15, v75, v56, v80, v79, v77, v78, a9, v69, *&v60, *&v61, *&v70, *&x, v72, v73, 0x3FF0000000000000, *&v74);
LABEL_24:
  self->_secondsLayoutVisibility = v21;
}

- (void)setLayoutFromStyle:(unint64_t)a3 toStyle:(unint64_t)a4 progress:(double)a5
{
  v9 = objc_msgSend__tritiumOn(self, a2, a5);
  objc_msgSend__setLayoutFromStyle_toStyle_fromTritiumOn_toTritiumOn_fromInset_toInset_progress_(self, v10, a5, a3, a4, v9, v9, self->_inset, self->_inset);
  v12 = fabs(a5 + -1.0);
  if (a5 > 1.0 || v12 < 0.00000011920929)
  {
    self->_layoutStyle = a4;
    objc_msgSend__stopBlinking(self, v11, v12);
    objc_msgSend__updateBlinking(self, v14, v15);

    MEMORY[0x2821F9670](v16);
  }
}

- (void)setFromInset:(BOOL)a3 toInset:(BOOL)a4 progress:(double)a5
{
  v6 = a4;
  v7 = a3;
  v9 = objc_msgSend__tritiumOn(self, a2, a5);
  objc_msgSend__setLayoutFromStyle_toStyle_fromTritiumOn_toTritiumOn_fromInset_toInset_progress_(self, v10, a5, self->_layoutStyle, self->_layoutStyle, v9, v9, v7, v6);
  v12 = fabs(a5 + -1.0);
  if (a5 > 1.0 || v12 < 0.00000011920929)
  {
    self->_inset = v6;
    objc_msgSend__stopBlinking(self, v11, v12);

    objc_msgSend__updateBlinking(self, v14, v15);
  }
}

- (void)setLayoutStyle:(unint64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    MEMORY[0x2821F9670](1.0);
  }
}

- (void)setInset:(BOOL)a3
{
  if (self->_inset != a3)
  {
    MEMORY[0x2821F9670](1.0);
  }
}

- (void)setMinutesColor:(id)a3
{
  v13 = a3;
  if ((objc_msgSend_isEqual_(v13, v5, v6, self->_minutesColor) & 1) == 0)
  {
    objc_storeStrong(&self->_minutesColor, a3);
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

- (void)setSecondsColor:(id)a3
{
  v8 = a3;
  if ((objc_msgSend_isEqual_(v8, v5, v6, self->_secondsColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsColor, a3);
    objc_msgSend__updateColorsForElementMask_blinkAlpha_secondsAlpha_(self, v7, 1.0, 8, self->_secondsLayoutVisibility);
  }
}

@end