@interface AutomaticVehicleSelectionTask
- (AutomaticVehicleSelectionTask)initWithPlatformController:(id)a3;
- (BOOL)_isAccessoryCarPlayConnected:(id)a3;
- (id)_vehicleForIdentifier:(id)a3;
- (void)_handleAccessoryConnect:(id)a3;
- (void)_handleAccessoryDisconnect:(id)a3;
- (void)_selectVehicleAndForceRerouteIfNeeded:(id)a3;
- (void)_updateGarage:(id)a3;
- (void)_updateVehicleSelectionIfNeeded;
- (void)platformController:(id)a3 willChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
@end

@implementation AutomaticVehicleSelectionTask

- (BOOL)_isAccessoryCarPlayConnected:(id)a3
{
  v3 = a3;
  if ([v3 supportsCarPlay] & 1) != 0 || (objc_msgSend(v3, "supportsWirelessCarPlay"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 supportsUSBCarPlay];
  }

  return v4;
}

- (id)_vehicleForIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(VGVirtualGarage *)self->_garage vehicles];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 iapIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_handleAccessoryDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100022C48();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AutomaticVehicleSelectionTask: _handleAccessoryDisconnect: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008C9828;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v7, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_handleAccessoryConnect:(id)a3
{
  v4 = a3;
  v5 = sub_100022C48();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AutomaticVehicleSelectionTask: _handleAccessoryConnect: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008C99A0;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v7, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)platformController:(id)a3 willChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = a5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  self->_isNavigating = isKindOfClass & 1;
}

- (void)_selectVehicleAndForceRerouteIfNeeded:(id)a3
{
  v4 = a3;
  v5 = sub_100022C48();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 displayName];
    if (self->_isNavigating)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = v7;
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AutomaticVehicleSelectionTask: will select vehicle: %@ and forceReroute: %@", &v11, 0x16u);
  }

  v9 = +[VGVirtualGarageService sharedService];
  [v9 virtualGarageSelectVehicle:v4];

  if (self->_isNavigating)
  {
    v10 = +[MNNavigationService sharedService];
    [v10 forceReroute];
  }
}

- (void)_updateVehicleSelectionIfNeeded
{
  if ((GEOConfigGetBOOL() & 1) != 0 || (GEOConfigGetBOOL() & 1) == 0)
  {
    v7 = sub_100022C48();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "AutomaticVehicleSelectionTask: ignoring callback because vehicle deselection is disabled";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    }
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v3 = +[EAAccessoryManager sharedAccessoryManager];
    v4 = [v3 connectedAccessories];

    v5 = [v4 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v32;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          if ([(AutomaticVehicleSelectionTask *)self _isAccessoryCarPlayConnected:v10])
          {
            v11 = [v10 serialNumber];

            v7 = v11;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    if (GEOConfigGetBOOL())
    {
      v13 = v7 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {

      v7 = @"CarDisplaySim";
      goto LABEL_25;
    }

    if (v7)
    {
LABEL_25:
      v14 = [(AutomaticVehicleSelectionTask *)self _vehicleForIdentifier:v7];
      v15 = [v14 identifier];
      if (v15)
      {
      }

      else
      {
        v16 = [(VGVirtualGarage *)self->_garage selectedVehicle];
        v17 = [v16 identifier];

        if (!v17)
        {
          v22 = sub_100022C48();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v36 = v7;
            v30 = "AutomaticVehicleSelectionTask: user connected to CarPlay and the head unit (%@) does not match any saved vehicles, no vehicle is selected at the moment so we can safely ignore this call.";
LABEL_45:
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
          }

LABEL_46:

LABEL_47:
          goto LABEL_48;
        }
      }

      v18 = [v14 identifier];
      v19 = [(VGVirtualGarage *)self->_garage selectedVehicle];
      v20 = [v19 identifier];
      v21 = [v18 isEqualToString:v20];

      if (v21)
      {
        v22 = sub_100022C48();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v14 displayName];
          *buf = 138412546;
          v36 = v7;
          v37 = 2112;
          v38 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "AutomaticVehicleSelectionTask: user connected to a head unit (%@) and its underlying vehicle (%@) is already selected. Ignoring this call.", buf, 0x16u);
        }

        goto LABEL_46;
      }

      if (!self->_isNavigating || (GEOConfigGetBOOL() & 1) != 0)
      {
        v24 = sub_100022C48();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v25)
          {
            v26 = [v14 identifier];
            v27 = [v14 displayName];
            *buf = 138412802;
            v36 = v7;
            v37 = 2112;
            v38 = v26;
            v39 = 2112;
            v40 = v27;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "AutomaticVehicleSelectionTask: user connected to CarPlay HU (%@) that is paired or disambiguated to vehicle: <%@, %@>. We'll select it automatically.", buf, 0x20u);
          }

          v28 = self;
          v29 = v14;
        }

        else
        {
          if (v25)
          {
            *buf = 138412290;
            v36 = v7;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "AutomaticVehicleSelectionTask: user connected to CarPlay (identifier: %@) but there is no associated vehicle for this head unit. It is either a new vehicle that was not yet disambiguated or a nonEV -> we'll deselect the currently selected vehicle", buf, 0xCu);
          }

          v28 = self;
          v29 = 0;
        }

        [(AutomaticVehicleSelectionTask *)v28 _selectVehicleAndForceRerouteIfNeeded:v29];
        goto LABEL_47;
      }

      v22 = sub_100022C48();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v7;
        v30 = "AutomaticVehicleSelectionTask: user is navigating and EVRoutingShouldSelectVehiclesDuringNavigation is disabled so we'll ignore connection to a HU: %@";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    v7 = sub_100022C48();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "AutomaticVehicleSelectionTask: we have disconnected from CarPlay (there was no accessory that supports CarPlay and has a serialNumber), but we will keep the current selection.";
      goto LABEL_15;
    }
  }

LABEL_48:
}

- (void)_updateGarage:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008CA114;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (AutomaticVehicleSelectionTask)initWithPlatformController:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AutomaticVehicleSelectionTask;
  v5 = [(AutomaticVehicleSelectionTask *)&v19 init];
  if (v5)
  {
    [v4 registerObserver:v5];
    v6 = [v4 currentSession];
    objc_opt_class();
    v5->_isNavigating = objc_opt_isKindOfClass() & 1;

    v7 = +[VGVirtualGarageService sharedService];
    [v7 registerObserver:v5];

    objc_initWeak(&location, v5);
    v8 = +[VGVirtualGarageService sharedService];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1008CA4A0;
    v16 = &unk_101655840;
    objc_copyWeak(&v17, &location);
    [v8 virtualGarageGetGarageWithReply:&v13];

    v9 = [EAAccessoryManager sharedAccessoryManager:v13];
    [v9 registerForLocalNotifications];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v5 selector:"_handleAccessoryConnect:" name:EAAccessoryDidConnectNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v5 selector:"_handleAccessoryDisconnect:" name:EAAccessoryDidDisconnectNotification object:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v5;
}

@end