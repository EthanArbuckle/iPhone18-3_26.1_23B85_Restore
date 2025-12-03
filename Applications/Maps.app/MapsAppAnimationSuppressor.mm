@interface MapsAppAnimationSuppressor
+ (id)acquireAnimationSuppressionTokenForReason:(id)reason;
+ (id)sharedInstance;
- (MapsAppAnimationSuppressor)init;
- (void)_refreshAnimationSuppression;
- (void)decrementForToken:(id)token;
- (void)incrementForToken:(id)token;
@end

@implementation MapsAppAnimationSuppressor

- (void)decrementForToken:(id)token
{
  tokenCopy = token;
  v5 = sub_100E12050();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    reason = [tokenCopy reason];
    v7 = 138543362;
    v8 = reason;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Removing token for reason: %{public}@", &v7, 0xCu);
  }

  [(MapsAppAnimationSuppressor *)self _refreshAnimationSuppression];
}

- (void)incrementForToken:(id)token
{
  tokenCopy = token;
  v5 = sub_100E12050();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    reason = [tokenCopy reason];
    v7 = 138543362;
    v8 = reason;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Adding token for reason: %{public}@", &v7, 0xCu);
  }

  [(MapsAppAnimationSuppressor *)self _refreshAnimationSuppression];
}

- (void)_refreshAnimationSuppression
{
  v3 = [(MapsTokenStorage *)self->_tokens count];
  v4 = sub_100E12050();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      allTokenReasons = [(MapsTokenStorage *)self->_tokens allTokenReasons];
      v11 = 134218242;
      v12 = v3;
      v13 = 2112;
      v14 = allTokenReasons;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Suppressing animations for %lu reasons: %@", &v11, 0x16u);
    }

    [UIView setAnimationsEnabled:0];
    if (!self->_suppressionTimer)
    {
      v7 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:1 repeating:&stru_101655918 block:10.0];
      suppressionTimer = self->_suppressionTimer;
      self->_suppressionTimer = v7;
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Unsuppressing animations", &v11, 2u);
    }

    v9 = self->_suppressionTimer;
    if (v9)
    {
      [(GCDTimer *)v9 invalidate];
      v10 = self->_suppressionTimer;
      self->_suppressionTimer = 0;

      [UIView setAnimationsEnabled:1];
    }
  }
}

- (MapsAppAnimationSuppressor)init
{
  v6.receiver = self;
  v6.super_class = MapsAppAnimationSuppressor;
  v2 = [(MapsAppAnimationSuppressor *)&v6 init];
  if (v2)
  {
    v3 = [[MapsTokenStorage alloc] initWithDelegate:v2 tokenGroupName:@"MapsAppAnimationSuppression" callbackQueue:&_dispatch_main_q];
    tokens = v2->_tokens;
    v2->_tokens = v3;
  }

  return v2;
}

+ (id)acquireAnimationSuppressionTokenForReason:(id)reason
{
  reasonCopy = reason;
  sharedInstance = [self sharedInstance];
  v6 = [sharedInstance _acquireAnimationSuppressionTokenForReason:reasonCopy];

  return v6;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E12554;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195F2E8 != -1)
  {
    dispatch_once(&qword_10195F2E8, block);
  }

  v2 = qword_10195F2E0;

  return v2;
}

@end