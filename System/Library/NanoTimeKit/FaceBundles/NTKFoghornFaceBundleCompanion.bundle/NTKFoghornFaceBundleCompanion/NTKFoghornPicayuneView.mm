@interface NTKFoghornPicayuneView
- (NTKFoghornPicayuneView)initWithDevice:(id)device clockTimer:(id)timer;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
- (void)setOverrideDate:(id)date;
- (void)setState:(unint64_t)state;
@end

@implementation NTKFoghornPicayuneView

- (NTKFoghornPicayuneView)initWithDevice:(id)device clockTimer:(id)timer
{
  deviceCopy = device;
  timerCopy = timer;
  v21.receiver = self;
  v21.super_class = NTKFoghornPicayuneView;
  v8 = [(CLKUITimeView *)&v21 initWithDevice:deviceCopy clockTimer:timerCopy];
  if (v8)
  {
    v9 = [NTKFoghornTimeView alloc];
    objc_msgSend_screenBounds(deviceCopy, v10, v11, v12);
    v14 = objc_msgSend_initWithFrame_forDevice_clockTimer_(v9, v13, deviceCopy, timerCopy);
    timeView = v8->_timeView;
    v8->_timeView = v14;

    objc_msgSend_setInset_(v8->_timeView, v16, 0, v17);
    objc_msgSend_addSubview_(v8, v18, v8->_timeView, v19);
  }

  return v8;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = NTKFoghornPicayuneView;
  [(NTKFoghornPicayuneView *)&v10 layoutSubviews];
  v6 = objc_msgSend_bounds(self, v3, v4, v5);
  MEMORY[0x23EEBFB60](v6);
  objc_msgSend_setCenter_(self->_timeView, v7, v8, v9);
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v31.receiver = self;
  v31.super_class = NTKFoghornPicayuneView;
  [(CLKUITimeView *)&v31 setConfiguration:configurationCopy];
  v8 = objc_msgSend_layoutStyle(configurationCopy, v5, v6, v7);
  objc_msgSend_setLayoutStyle_(self->_timeView, v9, v8, v10);
  v14 = objc_msgSend_minutesColor(configurationCopy, v11, v12, v13);
  objc_msgSend_setMinutesColor_(self->_timeView, v15, v14, v16);

  v20 = objc_msgSend_secondsColor(configurationCopy, v17, v18, v19);
  objc_msgSend_setSecondsColor_(self->_timeView, v21, v20, v22);

  if (configurationCopy)
  {
    objc_msgSend_transform(configurationCopy, v23, v24, v25);
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
  }

  timeView = self->_timeView;
  v27[0] = v28;
  v27[1] = v29;
  v27[2] = v30;
  objc_msgSend_setTransform_(timeView, v23, v27, v25);
}

- (void)setState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = NTKFoghornPicayuneView;
  [(CLKUITimeView *)&v7 setState:?];
  if (state)
  {
    if (state == 1)
    {
      objc_msgSend_setFrozen_(self->_timeView, v5, 1, v6);
    }
  }

  else
  {
    objc_msgSend_setFrozen_(self->_timeView, v5, 0, v6);
  }
}

- (void)setOverrideDate:(id)date
{
  v7.receiver = self;
  v7.super_class = NTKFoghornPicayuneView;
  dateCopy = date;
  [(CLKUITimeView *)&v7 setOverrideDate:dateCopy];
  objc_msgSend_setOverrideDate_duration_(self->_timeView, v5, dateCopy, v6, 0.0, v7.receiver, v7.super_class);
}

@end