@interface NTKFoghornPicayuneView
- (NTKFoghornPicayuneView)initWithDevice:(id)a3 clockTimer:(id)a4;
- (void)layoutSubviews;
- (void)setConfiguration:(id)a3;
- (void)setOverrideDate:(id)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation NTKFoghornPicayuneView

- (NTKFoghornPicayuneView)initWithDevice:(id)a3 clockTimer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = NTKFoghornPicayuneView;
  v8 = [(CLKUITimeView *)&v21 initWithDevice:v6 clockTimer:v7];
  if (v8)
  {
    v9 = [NTKFoghornTimeView alloc];
    objc_msgSend_screenBounds(v6, v10, v11);
    v14 = objc_msgSend_initWithFrame_forDevice_clockTimer_(v9, v12, v13, v6, v7);
    timeView = v8->_timeView;
    v8->_timeView = v14;

    objc_msgSend_setInset_(v8->_timeView, v16, v17, 0);
    objc_msgSend_addSubview_(v8, v18, v19, v8->_timeView);
  }

  return v8;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKFoghornPicayuneView;
  [(NTKFoghornPicayuneView *)&v8 layoutSubviews];
  v5 = objc_msgSend_bounds(self, v3, v4);
  MEMORY[0x23EEC0EA0](v5);
  objc_msgSend_setCenter_(self->_timeView, v6, v7);
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = NTKFoghornPicayuneView;
  [(CLKUITimeView *)&v27 setConfiguration:v4];
  v7 = objc_msgSend_layoutStyle(v4, v5, v6);
  objc_msgSend_setLayoutStyle_(self->_timeView, v8, v9, v7);
  v12 = objc_msgSend_minutesColor(v4, v10, v11);
  objc_msgSend_setMinutesColor_(self->_timeView, v13, v14, v12);

  v17 = objc_msgSend_secondsColor(v4, v15, v16);
  objc_msgSend_setSecondsColor_(self->_timeView, v18, v19, v17);

  if (v4)
  {
    objc_msgSend_transform(v4, v20, v21);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
  }

  timeView = self->_timeView;
  v23[0] = v24;
  v23[1] = v25;
  v23[2] = v26;
  objc_msgSend_setTransform_(timeView, v20, *&v26, v23);
}

- (void)setState:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = NTKFoghornPicayuneView;
  [(CLKUITimeView *)&v7 setState:?];
  if (a3)
  {
    if (a3 == 1)
    {
      objc_msgSend_setFrozen_(self->_timeView, v5, v6, 1);
    }
  }

  else
  {
    objc_msgSend_setFrozen_(self->_timeView, v5, v6, 0);
  }
}

- (void)setOverrideDate:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKFoghornPicayuneView;
  v4 = a3;
  [(CLKUITimeView *)&v6 setOverrideDate:v4];
  objc_msgSend_setOverrideDate_duration_(self->_timeView, v5, 0.0, v4, v6.receiver, v6.super_class);
}

@end