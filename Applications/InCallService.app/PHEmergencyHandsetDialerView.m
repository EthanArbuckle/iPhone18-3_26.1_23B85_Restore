@interface PHEmergencyHandsetDialerView
- (PHEmergencyHandsetDialerView)initWithFrame:(CGRect)a3;
- (PHTextCycleLabel)emergencyTitleLabel;
- (id)deleteButtonXImageView;
- (id)newCallButton;
- (id)newDeleteButton;
- (id)newLCDView:(int64_t)a3 enableSmartDialer:(BOOL)a4 enableSmartDialerExpandedSearch:(BOOL)a5;
- (id)numberPadButtonsForCharacters:(id)a3;
- (int64_t)numberOfLinesInEmergencyTitleLabel;
@end

@implementation PHEmergencyHandsetDialerView

- (PHEmergencyHandsetDialerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PHEmergencyHandsetDialerView;
  v3 = [(PHEmergencyHandsetDialerView *)&v6 initWithFrame:2 appType:0 enableSmartDialer:0 enableSmartDialerExpandedSearch:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor whiteColor];
    [(PHEmergencyHandsetDialerView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (PHTextCycleLabel)emergencyTitleLabel
{
  v2 = [(PHEmergencyHandsetDialerView *)self lcdView];
  v3 = [v2 emergencyTitleLabel];

  return v3;
}

- (id)newLCDView:(int64_t)a3 enableSmartDialer:(BOOL)a4 enableSmartDialerExpandedSearch:(BOOL)a5
{
  v6 = [PHEmergencyHandsetDialerLCDView alloc];
  [(PHEmergencyHandsetDialerView *)self bounds];
  v7 = [(PHEmergencyHandsetDialerLCDView *)v6 initWithFrame:0 forDialerType:2 appType:0.0, 0.0];
  [(PHEmergencyHandsetDialerLCDView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(PHEmergencyHandsetDialerLCDView *)v7 addContactButton];
  [(PHEmergencyHandsetDialerView *)self setAddContactButton:v8];

  return v7;
}

- (id)deleteButtonXImageView
{
  v5.receiver = self;
  v5.super_class = PHEmergencyHandsetDialerView;
  v2 = [(PHEmergencyHandsetDialerView *)&v5 deleteButtonXImageView];
  v3 = +[UIColor blackColor];
  [v2 setTintColor:v3];

  return v2;
}

- (id)newDeleteButton
{
  v5.receiver = self;
  v5.super_class = PHEmergencyHandsetDialerView;
  v2 = [(PHEmergencyHandsetDialerView *)&v5 newDeleteButton];
  v3 = +[UIColor blackColor];
  [v2 setTintColor:v3];

  return v2;
}

- (id)newCallButton
{
  v3 = sub_10001A58C();
  if (v3 && [v3 shouldUseRTT])
  {
    v4 = sub_1000A68B8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using RTT for emergency call button", v10, 2u);
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [PHBottomBarButtonConfiguration alloc];
  [(PHEmergencyHandsetDialerView *)self callButtonDiameter];
  v7 = [v6 initWithAction:v5 diameter:2 callState:?];
  v8 = [[PHBottomBarButton alloc] initWithConfiguration:v7 appType:2];
  [v8 setTitle:0 forState:0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v8;
}

- (id)numberPadButtonsForCharacters:(id)a3
{
  v4 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063DF8;
  v9[3] = &unk_1003573C8;
  v9[4] = self;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (int64_t)numberOfLinesInEmergencyTitleLabel
{
  v3 = [(PHEmergencyHandsetDialerView *)self lcdView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return -1;
  }

  v5 = [(PHEmergencyHandsetDialerView *)self lcdView];
  v6 = [v5 numberOfLinesInEmergencyTitleLabel];

  return v6;
}

@end