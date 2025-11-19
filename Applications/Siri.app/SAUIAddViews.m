@interface SAUIAddViews
- (id)sr_sirilandShim;
@end

@implementation SAUIAddViews

- (id)sr_sirilandShim
{
  v3 = [(SAUIAddViews *)self views];
  v4 = sub_1000787C4(v3);
  if (v3 == v4)
  {
    v5 = self;
  }

  else
  {
    v5 = [(SAUIAddViews *)self copy];
    [(SAUIAddViews *)v5 setViews:v4];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[SAUIAddViews(Siriland) sr_sirilandShim]";
      v10 = 2112;
      v11 = self;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Successfully shimmed AddViews for the Siriland presentation:\n    AddViews: %@\n    Shimmed AddViews: %@", &v8, 0x20u);
    }
  }

  return v5;
}

@end