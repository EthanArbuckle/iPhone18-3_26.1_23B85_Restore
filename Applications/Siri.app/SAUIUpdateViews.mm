@interface SAUIUpdateViews
- (id)sr_sirilandShim;
@end

@implementation SAUIUpdateViews

- (id)sr_sirilandShim
{
  views = [(SAUIUpdateViews *)self views];
  v4 = sub_1000787C4(views);
  if (views == v4)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(SAUIUpdateViews *)self copy];
    [(SAUIUpdateViews *)selfCopy setViews:v4];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[SAUIUpdateViews(Siriland) sr_sirilandShim]";
      v10 = 2112;
      selfCopy2 = self;
      v12 = 2112;
      v13 = selfCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Successfully shimmed UpdateViews for the Siriland presentation:\n    UpdateViews: %@\n    Shimmed UpdateViews: %@", &v8, 0x20u);
    }
  }

  return selfCopy;
}

@end