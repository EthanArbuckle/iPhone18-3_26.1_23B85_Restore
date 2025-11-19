@interface APSUserCourierInterfaceState
- (APSUserCourierInterfaceState)init;
- (id)aps_prettyDescription;
- (id)description;
- (void)setUserState:(unint64_t)a3;
@end

@implementation APSUserCourierInterfaceState

- (id)aps_prettyDescription
{
  userState = self->_userState;
  v3 = @"<unknown>";
  v4 = @"<unknown>";
  if (userState <= 4)
  {
    v4 = off_100186510[userState];
  }

  trackingState = self->_trackingState;
  filterMode = self->_filterMode;
  if (trackingState == 1)
  {
    v7 = @"Sent";
  }

  else
  {
    v7 = @"<unknown>";
  }

  if (!trackingState)
  {
    v7 = @"NotSent";
  }

  if (filterMode <= 2)
  {
    v3 = off_100186538[filterMode];
  }

  return [NSString stringWithFormat:@"<userState: %@; trackingState: %@; filterMode: %@>", v4, v7, v3];
}

- (APSUserCourierInterfaceState)init
{
  v3.receiver = self;
  v3.super_class = APSUserCourierInterfaceState;
  result = [(APSUserCourierInterfaceState *)&v3 init];
  if (result)
  {
    result->_trackingState = 0;
    result->_filterMode = 0;
    result->_userState = 3;
  }

  return result;
}

- (void)setUserState:(unint64_t)a3
{
  if (self->_userState != a3)
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      userState = self->_userState;
      v8 = 138413058;
      v9 = v6;
      v10 = 2048;
      v11 = self;
      v12 = 2048;
      v13 = userState;
      v14 = 2048;
      v15 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> Setting user state from: %llu to: %llu", &v8, 0x2Au);
    }

    self->_userState = a3;
  }
}

- (id)description
{
  v3 = objc_opt_class();
  userState = self->_userState;
  v5 = @"<unknown>";
  v6 = @"<unknown>";
  if (userState <= 4)
  {
    v6 = off_100186510[userState];
  }

  v7 = @"Sent";
  trackingState = self->_trackingState;
  filterMode = self->_filterMode;
  if (trackingState != 1)
  {
    v7 = @"<unknown>";
  }

  if (!trackingState)
  {
    v7 = @"NotSent";
  }

  if (filterMode <= 2)
  {
    v5 = off_100186538[filterMode];
  }

  return [NSString stringWithFormat:@"<%@: %p; userState: %@; trackingState: %@; filterMode: %@>", v3, self, v6, v7, v5];
}

@end