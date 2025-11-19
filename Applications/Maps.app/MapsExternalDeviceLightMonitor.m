@interface MapsExternalDeviceLightMonitor
- (BOOL)isCarPlayConnected;
- (MapsExternalDeviceLightMonitor)initWithWindowScene:(id)a3;
- (UIWindowScene)windowScene;
- (id)_sceneWithHighestPriority;
- (int64_t)lightLevel;
- (void)_carPlayWindowMapTraitDidChange:(id)a3;
- (void)_processWindowScene:(id)a3 willConnect:(BOOL)a4;
- (void)_reloadConnectedScenes;
- (void)_sceneDidDisconnect:(id)a3;
- (void)_sceneWillConnnect:(id)a3;
- (void)_setMonitoring:(BOOL)a3;
- (void)_updateForCurrentMonitoringState;
- (void)_updateLightLevel;
- (void)setLightLevel:(int64_t)a3;
- (void)setWindowScene:(id)a3;
@end

@implementation MapsExternalDeviceLightMonitor

- (void)_reloadConnectedScenes
{
  v3 = [(MapsExternalDeviceLightMonitor *)self scenesByType];
  [v3 removeAllObjects];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 connectedScenes];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12 && [v12 isCarScene])
        {
          v13 = [v12 carSceneType];
          if (v13)
          {
            v14 = v13;
            v15 = [(MapsExternalDeviceLightMonitor *)self scenesByType];
            v16 = [NSNumber numberWithInteger:v14];
            [v15 setObject:v12 forKeyedSubscript:v16];
          }

          else
          {
            v15 = sub_100014EFC();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v24 = self;
              v25 = 2112;
              v26 = v12;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@: received a scene with type unspecified. scene: %@", buf, 0x16u);
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v17 = sub_100014EFC();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [(MapsExternalDeviceLightMonitor *)self scenesByType];
    *buf = 138412546;
    v24 = self;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@: finished reloading connected scenes: %@", buf, 0x16u);
  }
}

- (void)_updateLightLevel
{
  v3 = [(MapsExternalDeviceLightMonitor *)self _sceneWithHighestPriority];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _maps_interfaceStyle];
    v6 = v5;
    if (v5 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = v5 == 1;
    }

    v8 = sub_100014EFC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = off_101622818[v7];
      v10 = [(MapsExternalDeviceLightMonitor *)self lightLevel];
      if (v10 >= 3)
      {
        v11 = [NSString stringWithFormat:@"<Unknown: %ld>", v10];
      }

      else
      {
        v11 = off_101622818[v10];
      }

      v12 = [v4 carSceneType];
      if (v12 > 6)
      {
        v13 = @".Unknown";
      }

      else
      {
        v13 = off_1016227E0[v12];
      }

      *buf = 138413314;
      v15 = self;
      v16 = 2048;
      v17 = v6;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: _updateLightLevel. mapStyle is: %ld, using lightLevel: %@ (was: %@), dictated by scene of type: %@", buf, 0x34u);
    }
  }

  else
  {
    v8 = sub_100014EFC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: _updateLightLevel. There is no connected CarPlay scene. Setting lightLevel to unsupported", buf, 0xCu);
    }

    v7 = 0;
  }

  [(MapsExternalDeviceLightMonitor *)self setLightLevel:v7];
}

- (id)_sceneWithHighestPriority
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(MapsExternalDeviceLightMonitor *)self scenesByType];
  v4 = [v3 objectEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained((&self->_lightLevel + 1));

        if (v11 == WeakRetained)
        {
          v16 = v11;

          v8 = [v16 _maps_lightLevelPriority];
          v7 = v16;
          goto LABEL_14;
        }

        v13 = [v11 _maps_lightLevelPriority];
        if (v13 > v8)
        {
          v14 = v13;
          v15 = v11;

          v7 = v15;
          v8 = v14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v32 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_14:

  v17 = sub_100014EFC();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = objc_loadWeakRetained((&self->_lightLevel + 1));
    *buf = 138413058;
    v25 = self;
    v26 = 2112;
    v27 = v7;
    v28 = 2048;
    v29 = v8;
    v30 = 2112;
    v31 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@: _sceneWithHighestPriority, scene: %@ priority: %ld windowScene: %@", buf, 0x2Au);
  }

  return v7;
}

- (void)_updateForCurrentMonitoringState
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  if ([(MapsBaseLightMonitor *)self _isMonitoring])
  {
    v4 = +[NSNotificationCenter defaultCenter];
    WeakRetained = objc_loadWeakRetained((&self->_lightLevel + 1));
    [v4 addObserver:self selector:"_sceneWillConnnect:" name:UISceneWillConnectNotification object:WeakRetained];

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = objc_loadWeakRetained((&self->_lightLevel + 1));
    [v6 addObserver:self selector:"_sceneDidDisconnect:" name:UISceneDidDisconnectNotification object:v7];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"_carPlayWindowMapTraitDidChange:" name:CRSUIWindowMapStyleChangedNotification object:0];

    [(MapsExternalDeviceLightMonitor *)self _reloadConnectedScenes];

    [(MapsExternalDeviceLightMonitor *)self _updateLightLevel];
  }

  else
  {
    [*(&self->_windowScene + 1) removeAllObjects];

    [(MapsExternalDeviceLightMonitor *)self setLightLevel:0];
  }
}

- (BOOL)isCarPlayConnected
{
  v2 = [(MapsExternalDeviceLightMonitor *)self scenesByType];
  v3 = [v2 count] != 0;

  return v3;
}

- (int64_t)lightLevel
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"MapsDebugCarPlayLightLevelKey"];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 integerValue];
    v6 = sub_100014EFC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 3)
      {
        v7 = [NSString stringWithFormat:@"<Unknown: %ld>", v5];
      }

      else
      {
        v7 = off_101622818[v5];
      }

      *buf = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@: Using override CarPlay light level: %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = *(&self->super._monitoring + 1);
  }

  return v5;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained((&self->_lightLevel + 1));

  return WeakRetained;
}

- (void)_processWindowScene:(id)a3 willConnect:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 carSceneType];
  if (v7)
  {
    v8 = v7;
    if (v4)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(MapsExternalDeviceLightMonitor *)self scenesByType];
    v11 = [NSNumber numberWithInteger:v8];
    [v10 setObject:v9 forKeyedSubscript:v11];

    [(MapsExternalDeviceLightMonitor *)self _updateLightLevel];
  }

  else
  {
    v12 = sub_100014EFC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = self;
      v15 = 2112;
      v16 = v6;
      v17 = 1024;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: received invalid scene type for windowScene: %@ willConnect: %d", &v13, 0x1Cu);
    }
  }
}

- (void)_sceneDidDisconnect:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(__CFString *)v6 isCarScene];
  v8 = sub_100014EFC();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      v10 = [(__CFString *)v6 carSceneType];
      if (v10 > 6)
      {
        v11 = @".Unknown";
      }

      else
      {
        v11 = off_1016227E0[v10];
      }

      v12 = [(__CFString *)v6 _maps_interfaceStyle];
      if (v12 >= 3)
      {
        v13 = [NSString stringWithFormat:@"<Unknown %ld>", v12];
      }

      else
      {
        v13 = off_1016227C8[v12];
      }

      *buf = 138412802;
      v15 = self;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: _sceneDidDisconnect: sceneType: %@ interfaceStyle: %@", buf, 0x20u);
    }

    [(MapsExternalDeviceLightMonitor *)self _processWindowScene:v6 willConnect:0];
  }

  else
  {
    if (v9)
    {
      *buf = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: _sceneDidDisconnect: received non-CarPlay scene: %@", buf, 0x16u);
    }
  }
}

- (void)_sceneWillConnnect:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(__CFString *)v6 isCarScene];
  v8 = sub_100014EFC();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      v10 = [(__CFString *)v6 carSceneType];
      if (v10 > 6)
      {
        v11 = @".Unknown";
      }

      else
      {
        v11 = off_1016227E0[v10];
      }

      v12 = [(__CFString *)v6 _maps_interfaceStyle];
      if (v12 >= 3)
      {
        v13 = [NSString stringWithFormat:@"<Unknown %ld>", v12];
      }

      else
      {
        v13 = off_1016227C8[v12];
      }

      *buf = 138412802;
      v15 = self;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: _sceneWillConnnect: sceneType: %@ interfaceStyle: %@", buf, 0x20u);
    }

    [(MapsExternalDeviceLightMonitor *)self _processWindowScene:v6 willConnect:1];
  }

  else
  {
    if (v9)
    {
      *buf = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: _sceneWillConnnect: received non-CarPlay scene: %@", buf, 0x16u);
    }
  }
}

- (void)_carPlayWindowMapTraitDidChange:(id)a3
{
  v4 = a3;
  v5 = [(__CFString *)v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = sub_100014EFC();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = [v7 windowScene];
      v11 = [v10 carSceneType];
      if (v11 > 6)
      {
        v12 = @".Unknown";
      }

      else
      {
        v12 = off_1016227E0[v11];
      }

      v21 = 138412546;
      v22 = self;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: _carPlayWindowMapTraitDidChange: carSceneType: %@", &v21, 0x16u);
    }

    v9 = [(MapsExternalDeviceLightMonitor *)self _sceneWithHighestPriority];
    v13 = [v7 windowScene];
    v14 = [v9 isEqual:v13];

    if (v14)
    {
      [(MapsExternalDeviceLightMonitor *)self _updateLightLevel];
    }

    else
    {
      v15 = sub_100014EFC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v7 windowScene];
        v17 = [v16 carSceneType];
        if (v17 > 6)
        {
          v18 = @".Unknown";
        }

        else
        {
          v18 = off_1016227E0[v17];
        }

        v19 = [v9 carSceneType];
        if (v19 > 6)
        {
          v20 = @".Unknown";
        }

        else
        {
          v20 = off_1016227E0[v19];
        }

        v21 = 138413058;
        v22 = self;
        v23 = 2112;
        v24 = v4;
        v25 = 2112;
        v26 = v18;
        v27 = 2112;
        v28 = v20;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%@: got notified by a scene with lower priority.: %@. SceneType from notification: %@, current highest priority sceneType: %@", &v21, 0x2Au);
      }
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v21 = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%@: was notified from an unsupported window scene.: %@", &v21, 0x16u);
  }
}

- (void)setLightLevel:(int64_t)a3
{
  if (*(&self->super._monitoring + 1) != a3)
  {
    v5 = sub_100014EFC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(&self->super._monitoring + 1);
      if (v6 >= 3)
      {
        v7 = [NSString stringWithFormat:@"<Unknown: %ld>", *(&self->super._monitoring + 1)];
      }

      else
      {
        v7 = off_101622818[v6];
      }

      v8 = v7;
      if (a3 >= 3)
      {
        v9 = [NSString stringWithFormat:@"<Unknown: %ld>", a3];
      }

      else
      {
        v9 = off_101622818[a3];
      }

      *buf = 138412802;
      v11 = self;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: Changing light level from %@ to %@", buf, 0x20u);
    }

    *(&self->super._monitoring + 1) = a3;
    [(MapsBaseLightMonitor *)self _notifyDidChange];
  }
}

- (void)setWindowScene:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained((&self->_lightLevel + 1));

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak((&self->_lightLevel + 1), obj);
    [(MapsExternalDeviceLightMonitor *)self _updateForCurrentMonitoringState];
    v5 = obj;
  }
}

- (void)_setMonitoring:(BOOL)a3
{
  v3 = a3;
  v5 = [(MapsBaseLightMonitor *)self _isMonitoring];
  v6.receiver = self;
  v6.super_class = MapsExternalDeviceLightMonitor;
  [(MapsBaseLightMonitor *)&v6 _setMonitoring:v3];
  if (v5 != v3)
  {
    [(MapsExternalDeviceLightMonitor *)self _updateForCurrentMonitoringState];
  }
}

- (MapsExternalDeviceLightMonitor)initWithWindowScene:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MapsExternalDeviceLightMonitor;
  v5 = [(MapsBaseLightMonitor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak((v5 + 25), v4);
    v7 = +[NSMutableDictionary dictionary];
    v8 = *(v6 + 33);
    *(v6 + 33) = v7;
  }

  return v6;
}

@end