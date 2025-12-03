@interface LiveListenLevels
- (LiveListenLevels)initWithFrame:(CGRect)frame inCompact:(BOOL)compact;
- (void)layoutSubviews;
- (void)updateLevel:(double)level;
@end

@implementation LiveListenLevels

- (LiveListenLevels)initWithFrame:(CGRect)frame inCompact:(BOOL)compact
{
  if (compact)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  v5 = 8.0;
  v6 = 4.0;
  if (compact)
  {
    v5 = 4.0;
    v6 = 2.0;
  }

  self->_meterDots = v4;
  self->_dotSize = v5;
  self->_dotSpacing = v6;
  v19.receiver = self;
  v19.super_class = LiveListenLevels;
  v7 = [(LiveListenLevels *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v7)
  {
    v8 = +[NSMutableArray array];
    if (v7->_meterDots >= 1)
    {
      v9 = 0;
      do
      {
        v10 = objc_alloc_init(CAShapeLayer);
        v11 = +[UIColor systemOrangeColor];
        v12 = [v11 colorWithAlphaComponent:0.25];
        [v10 setFillColor:{objc_msgSend(v12, "CGColor")}];

        layer = [(LiveListenLevels *)v7 layer];
        [layer addSublayer:v10];

        [v8 addObject:v10];
        ++v9;
      }

      while (v9 < v7->_meterDots);
    }

    [(LiveListenLevels *)v7 setLevels:v8];
  }

  objc_initWeak(&location, v7);
  if (_os_feature_enabled_impl())
  {
    v14 = +[AXHAServer sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100001BD0;
    v16[3] = &unk_100010650;
    objc_copyWeak(&v17, &location);
    [v14 registerListener:v7 forLiveListenHandler:v16];

    objc_destroyWeak(&v17);
  }

  objc_destroyWeak(&location);
  return v7;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = LiveListenLevels;
  [(LiveListenLevels *)&v13 layoutSubviews];
  [(LiveListenLevels *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  levels = [(LiveListenLevels *)self levels];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001DB8;
  v12[3] = &unk_100010678;
  v12[4] = self;
  v12[5] = v4;
  v12[6] = v6;
  v12[7] = v8;
  v12[8] = v10;
  [levels enumerateObjectsUsingBlock:v12];
}

- (void)updateLevel:(double)level
{
  levels = [(LiveListenLevels *)self levels];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001FA8;
  v6[3] = &unk_1000106A0;
  *&v6[5] = level;
  v6[4] = self;
  [levels enumerateObjectsUsingBlock:v6];
}

@end