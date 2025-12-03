@interface CRSUIDashboardWidgetWindow
- (void)_maps_safeSetFocusableViews:(id)views;
@end

@implementation CRSUIDashboardWidgetWindow

- (void)_maps_safeSetFocusableViews:(id)views
{
  viewsCopy = views;
  invalidated = [(CRSUIDashboardWidgetWindow *)self invalidated];
  if (qword_10195F108 != -1)
  {
    dispatch_once(&qword_10195F108, &stru_1016532A8);
  }

  v6 = qword_10195F100;
  v7 = v6;
  if (invalidated)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Window is invalidated; ignoring -setFocusableViews:", &v8, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Window is valid; calling -setFocusableViews:", &v8, 0xCu);
    }

    [(CRSUIDashboardWidgetWindow *)self setFocusableViews:viewsCopy];
  }
}

@end