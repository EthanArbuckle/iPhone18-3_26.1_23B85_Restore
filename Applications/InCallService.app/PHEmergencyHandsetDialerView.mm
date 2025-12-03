@interface PHEmergencyHandsetDialerView
- (PHEmergencyHandsetDialerView)initWithFrame:(CGRect)frame;
- (PHTextCycleLabel)emergencyTitleLabel;
- (id)deleteButtonXImageView;
- (id)newCallButton;
- (id)newDeleteButton;
- (id)newLCDView:(int64_t)view enableSmartDialer:(BOOL)dialer enableSmartDialerExpandedSearch:(BOOL)search;
- (id)numberPadButtonsForCharacters:(id)characters;
- (int64_t)numberOfLinesInEmergencyTitleLabel;
@end

@implementation PHEmergencyHandsetDialerView

- (PHEmergencyHandsetDialerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PHEmergencyHandsetDialerView;
  v3 = [(PHEmergencyHandsetDialerView *)&v6 initWithFrame:2 appType:0 enableSmartDialer:0 enableSmartDialerExpandedSearch:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor whiteColor];
    [(PHEmergencyHandsetDialerView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (PHTextCycleLabel)emergencyTitleLabel
{
  lcdView = [(PHEmergencyHandsetDialerView *)self lcdView];
  emergencyTitleLabel = [lcdView emergencyTitleLabel];

  return emergencyTitleLabel;
}

- (id)newLCDView:(int64_t)view enableSmartDialer:(BOOL)dialer enableSmartDialerExpandedSearch:(BOOL)search
{
  v6 = [PHEmergencyHandsetDialerLCDView alloc];
  [(PHEmergencyHandsetDialerView *)self bounds];
  v7 = [(PHEmergencyHandsetDialerLCDView *)v6 initWithFrame:0 forDialerType:2 appType:0.0, 0.0];
  [(PHEmergencyHandsetDialerLCDView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  addContactButton = [(PHEmergencyHandsetDialerLCDView *)v7 addContactButton];
  [(PHEmergencyHandsetDialerView *)self setAddContactButton:addContactButton];

  return v7;
}

- (id)deleteButtonXImageView
{
  v5.receiver = self;
  v5.super_class = PHEmergencyHandsetDialerView;
  deleteButtonXImageView = [(PHEmergencyHandsetDialerView *)&v5 deleteButtonXImageView];
  v3 = +[UIColor blackColor];
  [deleteButtonXImageView setTintColor:v3];

  return deleteButtonXImageView;
}

- (id)newDeleteButton
{
  v5.receiver = self;
  v5.super_class = PHEmergencyHandsetDialerView;
  newDeleteButton = [(PHEmergencyHandsetDialerView *)&v5 newDeleteButton];
  v3 = +[UIColor blackColor];
  [newDeleteButton setTintColor:v3];

  return newDeleteButton;
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

- (id)numberPadButtonsForCharacters:(id)characters
{
  charactersCopy = characters;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063DF8;
  v9[3] = &unk_1003573C8;
  v9[4] = self;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(charactersCopy, "count")}];
  v10 = v5;
  [charactersCopy enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (int64_t)numberOfLinesInEmergencyTitleLabel
{
  lcdView = [(PHEmergencyHandsetDialerView *)self lcdView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return -1;
  }

  lcdView2 = [(PHEmergencyHandsetDialerView *)self lcdView];
  numberOfLinesInEmergencyTitleLabel = [lcdView2 numberOfLinesInEmergencyTitleLabel];

  return numberOfLinesInEmergencyTitleLabel;
}

@end