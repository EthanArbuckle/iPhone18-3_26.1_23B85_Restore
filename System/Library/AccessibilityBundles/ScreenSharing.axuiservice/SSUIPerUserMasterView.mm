@interface SSUIPerUserMasterView
- (CGPoint)hotspotAdjustmentForCursorFrame:(CGRect)frame;
- (CGRect)savedCursorFrame;
- (SSUIPerUserMasterView)initWithFrame:(CGRect)frame;
- (void)animateAlphaToValue:(id)value;
- (void)clearUserData;
- (void)hideAllPointers;
- (void)setCursorFrame:(CGRect)frame animated:(BOOL)animated;
- (void)setUserData:(id)data;
- (void)showAllPointers;
@end

@implementation SSUIPerUserMasterView

- (SSUIPerUserMasterView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SSUIPerUserMasterView;
  v3 = [(SSUIPerUserMasterView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(SSUIPerUserMasterView *)v3 setAssistModeViews:v4];
  }

  return v3;
}

- (CGPoint)hotspotAdjustmentForCursorFrame:(CGRect)frame
{
  v3 = -48.0;
  v4 = -32.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setCursorFrame:(CGRect)frame animated:(BOOL)animated
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v9 = NSStringFromCGRect(v12);
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "setCursorFrame: %@", &v10, 0xCu);
  }

  [(SSUIPerUserMasterView *)self setSavedCursorFrame:x, y, width, height];
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"uniqueID"];
  v6 = [dataCopy objectForKeyedSubscript:@"displayName"];
  v7 = [dataCopy objectForKeyedSubscript:@"enabled"];

  bOOLValue = [v7 BOOLValue];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = v5;
    v18 = 1024;
    v19 = bOOLValue;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "setUserData: userID: %@, enabled: %d, displayName: %@", &v16, 0x1Cu);
  }

  if (v5)
  {
    assistModeViews = [(SSUIPerUserMasterView *)self assistModeViews];
    v10 = [assistModeViews objectForKey:v5];

    if (v10 || (v11 = [SSUIPerUserView alloc], -[SSUIPerUserMasterView savedCursorFrame](self, "savedCursorFrame"), v13 = v12, -[SSUIPerUserMasterView savedCursorFrame](self, "savedCursorFrame"), v10 = -[SSUIPerUserView initWithFrame:](v11, "initWithFrame:", 0.0, 0.0, v13), -[SSUIPerUserMasterView assistModeViews](self, "assistModeViews"), v14 = objc_claimAutoreleasedReturnValue(), [v14 setObject:v10 forKey:v5], v14, v10))
    {
      superview = [(SSUIPerUserView *)v10 superview];

      if (bOOLValue)
      {
        if (!superview)
        {
          [(SSUIPerUserMasterView *)self addSubview:v10];
        }
      }

      else if (superview)
      {
        [(SSUIPerUserView *)v10 removeFromSuperview];
      }

      [(SSUIPerUserView *)v10 setDisplayName:v6];
      [(SSUIPerUserMasterView *)self savedCursorFrame];
      [(SSUIPerUserView *)v10 setFrame:?];
      [(SSUIPerUserView *)v10 frame];
      [(SSUIPerUserMasterView *)self setNeedsDisplayInRect:?];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_73AC();
    }
  }
}

- (void)clearUserData
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "clearUserData", buf, 2u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  assistModeViews = [(SSUIPerUserMasterView *)self assistModeViews];
  allValues = [assistModeViews allValues];

  v5 = [allValues countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        superview = [v9 superview];

        if (superview)
        {
          [v9 removeFromSuperview];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  assistModeViews2 = [(SSUIPerUserMasterView *)self assistModeViews];
  [assistModeViews2 removeAllObjects];
}

- (void)hideAllPointers
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1510;
  v3[3] = &unk_103D8;
  v3[4] = self;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_151C;
  v2[3] = &unk_10400;
  v2[4] = self;
  [UIView animateWithDuration:131074 delay:v3 usingSpringWithDamping:v2 initialSpringVelocity:1.0 options:0.0 animations:0.5 completion:0.0];
}

- (void)showAllPointers
{
  [(SSUIPerUserMasterView *)self setAlpha:0.0];
  [(SSUIPerUserMasterView *)self setHidden:0];
  v3 = [&off_10A50 mutableCopy];
  [(SSUIPerUserMasterView *)self animateAlphaToValue:v3];
}

- (void)animateAlphaToValue:(id)value
{
  valueCopy = value;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  lastObject = [valueCopy lastObject];
  [lastObject floatValue];
  v7 = v6;

  *&v13[3] = v7;
  [valueCopy removeLastObject];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1700;
  v12[3] = &unk_10428;
  v12[4] = self;
  v12[5] = v13;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1714;
  v9[3] = &unk_10450;
  v8 = valueCopy;
  v10 = v8;
  selfCopy = self;
  [UIView animateWithDuration:131074 delay:v12 usingSpringWithDamping:v9 initialSpringVelocity:0.3 options:0.0 animations:0.1 completion:0.0];

  _Block_object_dispose(v13, 8);
}

- (CGRect)savedCursorFrame
{
  objc_copyStruct(v6, &self->_savedCursorFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end