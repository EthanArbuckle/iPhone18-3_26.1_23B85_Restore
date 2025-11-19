@interface SharedTripSceneAwareSubscription
- (SharedTripSceneAwareSubscription)initWithTripIdentifier:(id)a3 scene:(id)a4;
- (void)_setIsActive:(BOOL)a3;
- (void)_subscribeIfNecessary:(id)a3;
- (void)_unsubscribeIfNecessary:(id)a3;
- (void)_updateForSceneState:(int64_t)a3;
@end

@implementation SharedTripSceneAwareSubscription

- (void)_setIsActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (!a3)
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

          v6 = self;
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          if (objc_opt_respondsToSelector())
          {
            v9 = [(SharedTripSceneAwareSubscription *)v6 performSelector:"accessibilityIdentifier"];
            v10 = v9;
            if (v9 && ![v9 isEqualToString:v8])
            {
              v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

              goto LABEL_13;
            }
          }

          v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_13:

          tripIdentifier = self->_tripIdentifier;
          *buf = 138543618;
          v42 = v11;
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

        v17 = self;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        if (objc_opt_respondsToSelector())
        {
          v20 = [(SharedTripSceneAwareSubscription *)v17 performSelector:"accessibilityIdentifier"];
          v21 = v20;
          if (v20 && ![v20 isEqualToString:v19])
          {
            v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

            goto LABEL_22;
          }
        }

        v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_22:

        v23 = v17->_tripIdentifier;
        *buf = 138543618;
        v42 = v22;
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

    v24 = self;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    if (objc_opt_respondsToSelector())
    {
      v27 = [(SharedTripSceneAwareSubscription *)v24 performSelector:"accessibilityIdentifier"];
      v28 = v27;
      if (v27 && ![v27 isEqualToString:v26])
      {
        v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];

LABEL_30:
        v30 = v29;
        v31 = self->_tripIdentifier;
        v32 = objc_loadWeakRetained(&v24->_scene);
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

    v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
    goto LABEL_30;
  }
}

- (void)_updateForSceneState:(int64_t)a3
{
  v5 = sub_1000946AC();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    goto LABEL_17;
  }

  v6 = self;
  if (!v6)
  {
    v11 = @"<nil>";
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(SharedTripSceneAwareSubscription *)v6 performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

      goto LABEL_8;
    }
  }

  v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
  if (a3 >= 2)
  {
    v12 = "inactive";
  }

  else
  {
    v12 = "active";
  }

  WeakRetained = objc_loadWeakRetained(&v6->_scene);
  v14 = WeakRetained;
  if ((a3 + 1) > 3)
  {
    v15 = @"unknown";
  }

  else
  {
    v15 = *(&off_101657430 + a3 + 1);
  }

  *buf = 138544130;
  v17 = v11;
  v18 = 2080;
  v19 = v12;
  v20 = 2114;
  v21 = WeakRetained;
  v22 = 2114;
  v23 = v15;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Will set %s for scene state %{public}@: %{public}@", buf, 0x2Au);

LABEL_17:
  [(SharedTripSceneAwareSubscription *)self _setIsActive:a3 < 2];
}

- (void)_subscribeIfNecessary:(id)a3
{
  v4 = a3;
  v5 = sub_1000946AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SharedTripSceneAwareSubscription *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    v12 = [v4 name];
    v13 = [v4 object];
    *buf = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Scene activating with %{public}@: %{public}@", buf, 0x20u);
  }

  [(SharedTripSceneAwareSubscription *)self _updateForSceneState:0];
}

- (void)_unsubscribeIfNecessary:(id)a3
{
  v4 = a3;
  v5 = sub_1000946AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SharedTripSceneAwareSubscription *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    v12 = [v4 name];
    v13 = [v4 object];
    *buf = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Scene deactivating with %{public}@: %{public}@", buf, 0x20u);
  }

  [(SharedTripSceneAwareSubscription *)self _updateForSceneState:2];
}

- (SharedTripSceneAwareSubscription)initWithTripIdentifier:(id)a3 scene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = SharedTripSceneAwareSubscription;
  v8 = [(SharedTripSceneAwareSubscription *)&v21 init];
  if (v8)
  {
    v9 = [v6 copy];
    tripIdentifier = v8->_tripIdentifier;
    v8->_tripIdentifier = v9;

    v11 = objc_storeWeak(&v8->_scene, v7);
    -[SharedTripSceneAwareSubscription _updateForSceneState:](v8, "_updateForSceneState:", [v7 activationState]);

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