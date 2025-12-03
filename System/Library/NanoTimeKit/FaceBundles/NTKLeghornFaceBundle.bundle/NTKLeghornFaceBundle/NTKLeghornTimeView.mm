@interface NTKLeghornTimeView
+ (void)drawSnapshotInContext:(CGContext *)context timeStyle:(unint64_t)style colorPalette:(id)palette forDevice:(id)device;
- (CGRect)accessibilityFrame;
- (CGRect)contentBounds;
- (NTKLeghornTimeView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_getAnalogTimeView;
- (id)_getDigitalTimeView;
- (id)_timeViewForStyle:(unint64_t)style force:(BOOL)force;
- (void)_removeAnalogTimeView;
- (void)_removeDigitalTimeView;
- (void)_updateDigitalViewColors;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)setFrozen:(BOOL)frozen;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setPalette:(id)palette;
- (void)setTimeOffset:(double)offset;
- (void)setTimeStyle:(unint64_t)style;
@end

@implementation NTKLeghornTimeView

- (NTKLeghornTimeView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = NTKLeghornTimeView;
  height = [(NTKLeghornTimeView *)&v21 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    objc_msgSend_setUserInteractionEnabled_(v12, v13, v14, 0);
    v17 = objc_msgSend_layer(v12, v15, v16);
    objc_msgSend_setAllowsHitTesting_(v17, v18, v19, 0);
  }

  return v12;
}

- (id)_getAnalogTimeView
{
  analogTimeView = self->_analogTimeView;
  if (!analogTimeView)
  {
    v4 = [NTKLeghornHandsView alloc];
    v7 = objc_msgSend_initForDevice_(v4, v5, v6, self->_device);
    v8 = self->_analogTimeView;
    self->_analogTimeView = v7;

    objc_msgSend__updateAnalogViewColors(self, v9, v10);
    v11 = self->_analogTimeView;
    v12 = NTKIdealizedDate();
    objc_msgSend_setOverrideDate_duration_(v11, v13, 0.0, v12);

    objc_msgSend_addSubview_(self, v14, v15, self->_analogTimeView);
    objc_msgSend_bounds(self, v16, v17);
    objc_msgSend_setFrame_(self->_analogTimeView, v18, v19);
    v22 = objc_msgSend_layer(self->_analogTimeView, v20, v21);
    objc_msgSend_setAllowsHitTesting_(v22, v23, v24, 0);

    analogTimeView = self->_analogTimeView;
  }

  return analogTimeView;
}

- (void)_removeAnalogTimeView
{
  analogTimeView = self->_analogTimeView;
  if (analogTimeView)
  {
    objc_msgSend_removeFromSuperview(analogTimeView, a2, v2);
    v5 = self->_analogTimeView;
    self->_analogTimeView = 0;
  }
}

- (id)_getDigitalTimeView
{
  digitalTimeView = self->_digitalTimeView;
  if (!digitalTimeView)
  {
    v4 = [NTKFoghornTimeView alloc];
    objc_msgSend_bounds(self, v5, v6);
    v9 = objc_msgSend_initWithFrame_forDevice_layout_(v4, v7, v8, self->_device, 6);
    v10 = self->_digitalTimeView;
    self->_digitalTimeView = v9;

    objc_msgSend_setFrozen_(self->_digitalTimeView, v11, v12, 1);
    objc_msgSend__updateDigitalViewColors(self, v13, v14);
    v15 = self->_digitalTimeView;
    v16 = NTKIdealizedDate();
    objc_msgSend_setOverrideDate_duration_(v15, v17, 0.0, v16);

    objc_msgSend_addSubview_(self, v18, v19, self->_digitalTimeView);
    v22 = objc_msgSend_layer(self->_digitalTimeView, v20, v21);
    objc_msgSend_setAllowsHitTesting_(v22, v23, v24, 0);

    digitalTimeView = self->_digitalTimeView;
  }

  return digitalTimeView;
}

- (void)_removeDigitalTimeView
{
  digitalTimeView = self->_digitalTimeView;
  if (digitalTimeView)
  {
    objc_msgSend_removeFromSuperview(digitalTimeView, a2, v2);
    v5 = self->_digitalTimeView;
    self->_digitalTimeView = 0;
  }
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  v9 = style != toStyle && fraction > 0.0;
  v20 = objc_msgSend__timeViewForStyle_force_(self, a2, fraction);
  v12 = objc_msgSend__timeViewForStyle_force_(self, v10, v11, toStyle, v9);
  v14 = v12;
  if (style == toStyle)
  {
    if (fraction == 1.0)
    {
      v16 = &OBJC_IVAR___NTKLeghornTimeView__analogTimeView;
      if (style == 1)
      {
        v16 = &OBJC_IVAR___NTKLeghornTimeView__digitalTimeView;
      }

      v17 = *(&self->super.super.super.isa + *v16);

      objc_msgSend_setAlpha_(v14, v18, 1.0);
      objc_msgSend_setAlpha_(v17, v19, 0.0);
      v20 = v17;
    }
  }

  else
  {
    objc_msgSend_setAlpha_(v12, v13, fraction);
    objc_msgSend_setAlpha_(v20, v15, 1.0 - fraction);
  }
}

- (id)_timeViewForStyle:(unint64_t)style force:(BOOL)force
{
  if (style == 1)
  {
    if (force)
    {
      v5 = objc_msgSend__getAnalogTimeView(self, a2, v4);
      goto LABEL_11;
    }

    v6 = 456;
  }

  else
  {
    if (style)
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (force)
    {
      v5 = objc_msgSend__getDigitalTimeView(self, a2, v4);
      goto LABEL_11;
    }

    v6 = 448;
  }

  v5 = *(&self->super.super.super.isa + v6);
LABEL_11:

  return v5;
}

- (void)setTimeStyle:(unint64_t)style
{
  p_analogTimeView = &self->_analogTimeView;
  if (!self->_analogTimeView && !self->_digitalTimeView || self->_timeStyle != style)
  {
    self->_timeStyle = style;
    if (style)
    {
      if (style != 1)
      {
        return;
      }

      objc_msgSend__removeDigitalTimeView(self, a2, v3);
      v8 = objc_msgSend__getAnalogTimeView(self, v6, v7);
    }

    else
    {
      objc_msgSend__removeAnalogTimeView(self, a2, v3);
      v12 = objc_msgSend__getDigitalTimeView(self, v10, v11);
      p_analogTimeView = &self->_digitalTimeView;
    }

    v13 = *p_analogTimeView;

    objc_msgSend_setAlpha_(v13, v9, 1.0);
  }
}

- (void)setFrozen:(BOOL)frozen
{
  frozenCopy = frozen;
  objc_msgSend_setFrozen_(self->_digitalTimeView, a2, v3);
  objc_msgSend_setFrozen_(self->_analogTimeView, v6, v7, frozenCopy);
  self->_frozen = frozenCopy;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  analogTimeView = self->_analogTimeView;
  dateCopy = date;
  objc_msgSend_setOverrideDate_duration_(analogTimeView, v7, duration, dateCopy);
  objc_msgSend_setOverrideDate_duration_(self->_digitalTimeView, v8, duration, dateCopy);
}

- (void)setTimeOffset:(double)offset
{
  objc_msgSend_setTimeOffset_(self->_analogTimeView, a2, offset);
  digitalTimeView = self->_digitalTimeView;

  objc_msgSend_setTimeOffset_(digitalTimeView, v5, offset);
}

- (CGRect)contentBounds
{
  timeStyle = self->_timeStyle;
  if (timeStyle == 1)
  {
    goto LABEL_5;
  }

  if (timeStyle)
  {
    goto LABEL_7;
  }

  if (!self->_digitalTimeView)
  {
LABEL_5:
    analogTimeView = self->_analogTimeView;
    if (analogTimeView)
    {
      objc_msgSend_bounds(analogTimeView, a2, v2);
      goto LABEL_8;
    }

LABEL_7:
    v4 = *MEMORY[0x277CBF3A0];
    v5 = *(MEMORY[0x277CBF3A0] + 8);
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
    goto LABEL_8;
  }

  objc_msgSend_contentBounds(self->_digitalTimeView, a2, v2);
LABEL_8:
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  objc_msgSend__updateAnalogViewColors(self, v4, v5);

  objc_msgSend__updateDigitalViewColors(self, v6, v7);
}

- (void)_updateDigitalViewColors
{
  v4 = objc_msgSend_timeMinutesColor(self->_palette, a2, v2);
  objc_msgSend_setMinutesColor_(self->_digitalTimeView, v5, v6, v4);

  v11 = objc_msgSend_timeSecondsColor(self->_palette, v7, v8);
  objc_msgSend_setSecondsColor_(self->_digitalTimeView, v9, v10, v11);
}

+ (void)drawSnapshotInContext:(CGContext *)context timeStyle:(unint64_t)style colorPalette:(id)palette forDevice:(id)device
{
  deviceCopy = device;
  paletteCopy = palette;
  v11 = [NTKLeghornTimeView alloc];
  objc_msgSend_screenBounds(deviceCopy, v12, v13);
  v29 = objc_msgSend_initWithFrame_forDevice_(v11, v14, v15, deviceCopy);

  objc_msgSend_setTimeStyle_(v29, v16, v17, style);
  objc_msgSend_setPalette_(v29, v18, v19, paletteCopy);

  objc_msgSend_setFrozen_(v29, v20, v21, 1);
  v22 = NTKIdealizedDate();
  objc_msgSend_setOverrideDate_duration_(v29, v23, 0.0, v22);

  v26 = objc_msgSend_layer(v29, v24, v25);
  objc_msgSend_renderInContext_(v26, v27, v28, context);
}

- (CGRect)accessibilityFrame
{
  timeStyle = self->_timeStyle;
  if (timeStyle == 1)
  {
    v4 = objc_msgSend_analogTimeView(self, a2, v2);
  }

  else
  {
    if (timeStyle)
    {
      v24.receiver = self;
      v24.super_class = NTKLeghornTimeView;
      [(NTKLeghornTimeView *)&v24 accessibilityFrame];
      v9 = v16;
      v11 = v17;
      v13 = v18;
      v15 = v19;
      goto LABEL_7;
    }

    v4 = objc_msgSend_digitalTimeView(self, a2, v2);
  }

  v7 = v4;
  objc_msgSend_accessibilityFrame(v4, v5, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

LABEL_7:
  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  timeStyle = self->_timeStyle;
  if (timeStyle == 1)
  {
    v11 = objc_msgSend_analogTimeView(self, v7, v9);
  }

  else
  {
    if (timeStyle)
    {
      v14 = 0;
      goto LABEL_9;
    }

    v11 = objc_msgSend_digitalTimeView(self, v7, v9);
  }

  v14 = v11;
  if (v11)
  {
    objc_msgSend_accessibilityFrame(v11, v12, v13);
    v18.x = x;
    v18.y = y;
    if (CGRectContainsPoint(v19, v18))
    {
      selfCopy = self;
      goto LABEL_10;
    }
  }

LABEL_9:
  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

@end