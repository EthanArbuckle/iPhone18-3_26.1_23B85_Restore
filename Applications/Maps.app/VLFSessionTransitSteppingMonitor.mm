@interface VLFSessionTransitSteppingMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (BOOL)isInTransitNav;
- (NSString)debugDescription;
- (VLFSessionTransitSteppingMonitor)initWithObserver:(id)observer navigationService:(id)service;
- (void)dealloc;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
@end

@implementation VLFSessionTransitSteppingMonitor

- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  v8 = sub_100ECB9C4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    isInTransitNav = [(VLFSessionTransitSteppingMonitor *)self isInTransitNav];
    v10 = @"NO";
    if (isInTransitNav)
    {
      v10 = @"YES";
    }

    v11 = v10;
    *buf = 134218498;
    indexCopy2 = index;
    v46 = 2048;
    segmentIndexCopy = segmentIndex;
    v48 = 2112;
    v49[0] = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Updated step index: %lu segment index: %lu, isInTransitNav: %@", buf, 0x20u);
  }

  if (![(VLFSessionTransitSteppingMonitor *)self isInTransitNav])
  {
    v23 = sub_100ECB9C4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Not in transit nav; ignoring", buf, 2u);
    }

    return;
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = sub_10006D178();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      indexCopy2 = "[VLFSessionTransitSteppingMonitor navigationService:didUpdateStepIndex:segmentIndex:]";
      v46 = 2080;
      segmentIndexCopy = "VLFSessionTransitSteppingMonitor.m";
      v48 = 1024;
      LODWORD(v49[0]) = 115;
      WORD2(v49[0]) = 2080;
      *(v49 + 6) = "stepIndex != NSNotFound";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v33 = sub_10006D178();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = +[NSThread callStackSymbols];
        *buf = 138412290;
        indexCopy2 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v35 = sub_10006D178();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      indexCopy2 = "[VLFSessionTransitSteppingMonitor navigationService:didUpdateStepIndex:segmentIndex:]";
      v46 = 2080;
      segmentIndexCopy = "VLFSessionTransitSteppingMonitor.m";
      v48 = 1024;
      LODWORD(v49[0]) = 117;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v36 = sub_10006D178();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = +[NSThread callStackSymbols];
        *buf = 138412290;
        indexCopy2 = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v38 = sub_100ECB9C4();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Invalid step index; resetting state", buf, 2u);
    }

    goto LABEL_38;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  navigationService = [(VLFSessionTransitSteppingMonitor *)self navigationService];
  route = [navigationService route];
  steppingSigns = [route steppingSigns];

  v15 = [steppingSigns countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = v15;
  v17 = *v40;
  while (2)
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v40 != v17)
      {
        objc_enumerationMutation(steppingSigns);
      }

      v19 = *(*(&v39 + 1) + 8 * i);
      stepIndexRange = [v19 stepIndexRange];
      if (index >= stepIndexRange && index - stepIndexRange < v21)
      {
        v24 = v19;

        if (!v24)
        {
          goto LABEL_29;
        }

        v25 = sub_100ECB9C4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          indexCopy2 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Detected current transit stepping mode sign: %@", buf, 0xCu);
        }

        if ([v24 isWalking])
        {
          [(VLFSessionMonitor *)self setState:2];
          v26 = sub_100ECB9C4();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v27 = "Detected the current sign is walking; updating state";
LABEL_41:
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v27, buf, 2u);
          }
        }

        else
        {
          [(VLFSessionMonitor *)self setState:0];
          v26 = sub_100ECB9C4();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v27 = "Detected the current sign is not walking; updating state";
            goto LABEL_41;
          }
        }

        return;
      }
    }

    v16 = [steppingSigns countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_19:

LABEL_29:
  v28 = sub_10006D178();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    indexCopy2 = "[VLFSessionTransitSteppingMonitor navigationService:didUpdateStepIndex:segmentIndex:]";
    v46 = 2080;
    segmentIndexCopy = "VLFSessionTransitSteppingMonitor.m";
    v48 = 1024;
    LODWORD(v49[0]) = 132;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v29 = sub_10006D178();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = +[NSThread callStackSymbols];
      *buf = 138412290;
      indexCopy2 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v31 = sub_100ECB9C4();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    indexCopy2 = index;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Could not find current stepping sign for the current step index %lu", buf, 0xCu);
  }

LABEL_38:
  [(VLFSessionMonitor *)self setState:2];
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v6 = sub_100ECB9C4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = MNNavigationServiceStateAsString();
    isInTransitNav = [(VLFSessionTransitSteppingMonitor *)self isInTransitNav];
    v9 = @"NO";
    if (isInTransitNav)
    {
      v9 = @"YES";
    }

    v10 = v9;
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Updated nav state: %@, isInTransitNav: %@", &v12, 0x16u);
  }

  if ((MNNavigationServiceStateIsNavigating() & 1) == 0)
  {
    v11 = sub_100ECB9C4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Not in transit nav; updating state", &v12, 2u);
    }

    [(VLFSessionMonitor *)self setState:2];
  }
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  if ([objc_opt_class() isEnabled])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = v4;
  if ([objc_opt_class() affectsPuckVisibility])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v6;
  if ([objc_opt_class() affectsBannerVisibility])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  state = [(VLFSessionMonitor *)self state];
  v11 = @"Hide";
  if (state == 1)
  {
    v11 = @"EnablePuck";
  }

  if (state == 2)
  {
    v11 = @"EnablePuckAndBanner";
  }

  v12 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentState: %@>", v3, v5, v7, v9, v11];

  return v12;
}

- (BOOL)isInTransitNav
{
  navigationService = [(VLFSessionTransitSteppingMonitor *)self navigationService];
  v3 = [navigationService navigationTransportType] == 1;

  return v3;
}

- (void)dealloc
{
  [(MNNavigationService *)self->_navigationService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = VLFSessionTransitSteppingMonitor;
  [(VLFSessionTransitSteppingMonitor *)&v3 dealloc];
}

- (VLFSessionTransitSteppingMonitor)initWithObserver:(id)observer navigationService:(id)service
{
  serviceCopy = service;
  v11.receiver = self;
  v11.super_class = VLFSessionTransitSteppingMonitor;
  v8 = [(VLFSessionMonitor *)&v11 initWithObserver:observer];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_navigationService, service);
    [(MNNavigationService *)v9->_navigationService registerObserver:v9];
    [(VLFSessionMonitor *)v9 setState:2];
  }

  return v9;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionTransitSteppingMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionTransitSteppingMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end