@interface SharedTripSceneAwareSubscription
- (SharedTripSceneAwareSubscription)initWithTripIdentifier:(id)identifier scene:(id)scene;
- (void)_setIsActive:(BOOL)active;
- (void)_subscribeIfNecessary:(id)necessary;
- (void)_unsubscribeIfNecessary:(id)necessary;
- (void)_updateForSceneState:(int64_t)state;
@end

@implementation SharedTripSceneAwareSubscription

- (void)_setIsActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (!active)
    {
      goto LABEL_15;
    }

    if (self->_tripIdentifier)
    {
      WeakRetained = objc_loadWeakRetained(&self->_scene);

      if (WeakRetained)
      {
        if (self->_active)
        {
          if (self->_token)
          {
            return;
          }

          v5 = sub_1000946AC();
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            goto LABEL_14;
          }

          selfCopy = self;
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          if (objc_opt_respondsToSelector())
          {
            v9 = [(SharedTripSceneAwareSubscription *)selfCopy performSelector:"accessibilityIdentifier"];
            v10 = v9;
            if (v9 && ![v9 isEqualToString:v8])
            {
              selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

              goto LABEL_13;
            }
          }

          selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_13:

          tripIdentifier = self->_tripIdentifier;
          *buf = 138543618;
          v42 = selfCopy;
          v43 = 2114;
          v44 = tripIdentifier;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Acquiring token for trip %{public}@", buf, 0x16u);

LABEL_14:
          v13 = self->_tripIdentifier;
          objc_initWeak(buf, self);
          v14 = +[MSPSharedTripService sharedInstance];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100E9DA7C;
          v38[3] = &unk_101657410;
          objc_copyWeak(&v40, buf);
          token = v13;
          v39 = token;
          [v14 subscribeToSharedTripUpdatesWithIdentifier:token completion:v38];

          objc_destroyWeak(&v40);
          objc_destroyWeak(buf);
LABEL_39:

          return;
        }

LABEL_15:
        if (!self->_token)
        {
          return;
        }

        v16 = sub_1000946AC();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          goto LABEL_23;
        }

        selfCopy2 = self;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        if (objc_opt_respondsToSelector())
        {
          v20 = [(SharedTripSceneAwareSubscription *)selfCopy2 performSelector:"accessibilityIdentifier"];
          v21 = v20;
          if (v20 && ![v20 isEqualToString:v19])
          {
            selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy2, v21];

            goto LABEL_22;
          }
        }

        selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy2];
LABEL_22:

        v23 = selfCopy2->_tripIdentifier;
        *buf = 138543618;
        v42 = selfCopy2;
        v43 = 2114;
        v44 = v23;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Removing token for trip %{public}@", buf, 0x16u);

LABEL_23:
        token = self->_token;
        self->_token = 0;
        goto LABEL_39;
      }
    }

    token = sub_1000946AC();
    if (!os_log_type_enabled(token, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_39;
    }

    selfCopy3 = self;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    if (objc_opt_respondsToSelector())
    {
      v27 = [(SharedTripSceneAwareSubscription *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v28 = v27;
      if (v27 && ![v27 isEqualToString:v26])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v26, selfCopy3, v28];

LABEL_30:
        v30 = selfCopy3;
        v31 = self->_tripIdentifier;
        v32 = objc_loadWeakRetained(&selfCopy3->_scene);
        if (!v32)
        {
          v37 = @"<nil>";
          goto LABEL_38;
        }

        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        if (objc_opt_respondsToSelector())
        {
          v35 = [v32 performSelector:"accessibilityIdentifier"];
          v36 = v35;
          if (v35 && ![v35 isEqualToString:v34])
          {
            v37 = [NSString stringWithFormat:@"%@<%p, %@>", v34, v32, v36];

            goto LABEL_36;
          }
        }

        v37 = [NSString stringWithFormat:@"%@<%p>", v34, v32];
LABEL_36:

LABEL_38:
        *buf = 138543874;
        v42 = v30;
        v43 = 2114;
        v44 = v31;
        v45 = 2114;
        v46 = v37;
        _os_log_impl(&_mh_execute_header, token, OS_LOG_TYPE_FAULT, "[%{public}@] Cannot activate because no trip ID %{public}@ or scene %{public}@", buf, 0x20u);

        goto LABEL_39;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v26, selfCopy3];
    goto LABEL_30;
  }
}

- (void)_updateForSceneState:(int64_t)state
{
  v5 = sub_1000946AC();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    goto LABEL_17;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(SharedTripSceneAwareSubscription *)selfCopy performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
  if (state >= 2)
  {
    v12 = "inactive";
  }

  else
  {
    v12 = "active";
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_scene);
  v14 = WeakRetained;
  if ((state + 1) > 3)
  {
    v15 = @"unknown";
  }

  else
  {
    v15 = *(&off_101657430 + state + 1);
  }

  *buf = 138544130;
  v17 = selfCopy;
  v18 = 2080;
  v19 = v12;
  v20 = 2114;
  v21 = WeakRetained;
  v22 = 2114;
  v23 = v15;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Will set %s for scene state %{public}@: %{public}@", buf, 0x2Au);

LABEL_17:
  [(SharedTripSceneAwareSubscription *)self _setIsActive:state < 2];
}

- (void)_subscribeIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = sub_1000946AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SharedTripSceneAwareSubscription *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    name = [necessaryCopy name];
    object = [necessaryCopy object];
    *buf = 138543874;
    v15 = selfCopy;
    v16 = 2114;
    v17 = name;
    v18 = 2114;
    v19 = object;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Scene activating with %{public}@: %{public}@", buf, 0x20u);
  }

  [(SharedTripSceneAwareSubscription *)self _updateForSceneState:0];
}

- (void)_unsubscribeIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = sub_1000946AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SharedTripSceneAwareSubscription *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    name = [necessaryCopy name];
    object = [necessaryCopy object];
    *buf = 138543874;
    v15 = selfCopy;
    v16 = 2114;
    v17 = name;
    v18 = 2114;
    v19 = object;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Scene deactivating with %{public}@: %{public}@", buf, 0x20u);
  }

  [(SharedTripSceneAwareSubscription *)self _updateForSceneState:2];
}

- (SharedTripSceneAwareSubscription)initWithTripIdentifier:(id)identifier scene:(id)scene
{
  identifierCopy = identifier;
  sceneCopy = scene;
  v21.receiver = self;
  v21.super_class = SharedTripSceneAwareSubscription;
  v8 = [(SharedTripSceneAwareSubscription *)&v21 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    tripIdentifier = v8->_tripIdentifier;
    v8->_tripIdentifier = v9;

    v11 = objc_storeWeak(&v8->_scene, sceneCopy);
    -[SharedTripSceneAwareSubscription _updateForSceneState:](v8, "_updateForSceneState:", [sceneCopy activationState]);

    v12 = +[NSNotificationCenter defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v8->_scene);
    [v12 addObserver:v8 selector:"_unsubscribeIfNecessary:" name:UISceneWillDeactivateNotification object:WeakRetained];

    v14 = +[NSNotificationCenter defaultCenter];
    v15 = objc_loadWeakRetained(&v8->_scene);
    [v14 addObserver:v8 selector:"_unsubscribeIfNecessary:" name:UISceneDidEnterBackgroundNotification object:v15];

    v16 = +[NSNotificationCenter defaultCenter];
    v17 = objc_loadWeakRetained(&v8->_scene);
    [v16 addObserver:v8 selector:"_subscribeIfNecessary:" name:UISceneDidActivateNotification object:v17];

    v18 = +[NSNotificationCenter defaultCenter];
    v19 = objc_loadWeakRetained(&v8->_scene);
    [v18 addObserver:v8 selector:"_subscribeIfNecessary:" name:UISceneWillEnterForegroundNotification object:v19];
  }

  return v8;
}

@end