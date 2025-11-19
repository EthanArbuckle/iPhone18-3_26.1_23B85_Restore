@interface AXHearingLiveListenMeterCell
- (AXHearingLiveListenMeterCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setMeterLevel:(int)a3;
@end

@implementation AXHearingLiveListenMeterCell

- (AXHearingLiveListenMeterCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v23.receiver = self;
  v23.super_class = AXHearingLiveListenMeterCell;
  v7 = [(AXHearingLiveListenMeterCell *)&v23 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = +[NSMutableArray array];
    v9 = 5;
    do
    {
      v10 = [UIImageView alloc];
      v11 = accessibilityHearingAidImageNamed();
      v12 = accessibilityHearingAidImageNamed();
      v13 = [v10 initWithImage:v11 highlightedImage:v12];

      [v8 addObject:v13];
      v14 = [(AXHearingLiveListenMeterCell *)v7 contentView];
      [v14 addSubview:v13];

      --v9;
    }

    while (v9);
    [(AXHearingLiveListenMeterCell *)v7 setDotImageViews:v8];
    objc_initWeak(&location, v7);
    if (_os_feature_enabled_impl())
    {
      v15 = +[AXHAServer sharedInstance];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_29374;
      v20[3] = &unk_49018;
      v16 = &v21;
      objc_copyWeak(&v21, &location);
      [v15 registerListener:v7 forLiveListenHandler:v20];
    }

    else
    {
      v15 = +[AXHAServer sharedInstance];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_293C4;
      v18[3] = &unk_48C50;
      v16 = &v19;
      objc_copyWeak(&v19, &location);
      [v15 registerListener:v7 forLiveListenLevelsHandler:v18];
    }

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  [(NSArray *)self->_dotImageViews makeObjectsPerformSelector:"removeFromSuperview"];
  [(AXHearingLiveListenMeterCell *)self setDotImageViews:0];
  v3.receiver = self;
  v3.super_class = AXHearingLiveListenMeterCell;
  [(AXHearingLiveListenMeterCell *)&v3 dealloc];
}

- (void)setMeterLevel:(int)a3
{
  if (a3 <= 5)
  {
    v9 = v3;
    v10 = v4;
    v6 = [(AXHearingLiveListenMeterCell *)self dotImageViews];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_2959C;
    v7[3] = &unk_49388;
    v8 = a3;
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = AXHearingLiveListenMeterCell;
  [(AXHearingLiveListenMeterCell *)&v13 layoutSubviews];
  v3 = [(AXHearingLiveListenMeterCell *)self dotImageViews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AXHearingLiveListenMeterCell *)self dotImageViews];
    v6 = [v5 lastObject];
    [v6 frame];
    Width = CGRectGetWidth(v14);

    v8 = [(AXHearingLiveListenMeterCell *)self contentView];
    [v8 frame];
    v9 = CGRectGetWidth(v15);

    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3010000000;
    v12[3] = "";
    *&v12[4] = v9 * 0.5 + Width * -2.5 + -22.0;
    v12[5] = 0x4034000000000000;
    v10 = [(AXHearingLiveListenMeterCell *)self dotImageViews];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_297B4;
    v11[3] = &unk_493B0;
    v11[4] = v12;
    [v10 enumerateObjectsUsingBlock:v11];

    _Block_object_dispose(v12, 8);
  }
}

@end