@interface CARSessionStatus
- (id)carInfoForScreen:(id)a3;
- (id)connectedCarScreenInfos;
@end

@implementation CARSessionStatus

- (id)carInfoForScreen:(id)a3
{
  v4 = a3;
  v5 = [(CARSessionStatus *)self currentSession];
  v6 = [v5 configuration];

  if (!v6)
  {
    v7 = 0;
    goto LABEL_28;
  }

  v7 = objc_opt_new();
  v8 = [v6 transportType];
  if (v8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v8 == 3);
  }

  [v7 setDeviceConnection:v9];
  if (([v4 availableInteractionModels] & 2) != 0)
  {
    if ([v4 supportsHighFidelityTouch])
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    [v7 addInputMethod:v10];
  }

  if (([v4 availableInteractionModels] & 4) != 0)
  {
    [v7 addInputMethod:1];
  }

  if (([v4 availableInteractionModels] & 8) != 0)
  {
    [v7 addInputMethod:2];
  }

  if ([v4 availableInteractionModels])
  {
    [v7 addInputMethod:0];
  }

  memset(v27, 0, sizeof(v27));
  [v4 pixelSize];
  v12 = v11;
  [v4 pixelSize];
  v25[0] = v12;
  v25[1] = v13;
  v26 = 3;
  [v7 setScreenResolution:v25];
  v14 = objc_opt_new();
  [v4 physicalSize];
  [v14 setWidth:?];
  [v4 physicalSize];
  [v14 setHeight:v15];
  [v7 setScreenDimension:v14];
  v16 = +[MapsExternalDevice sharedInstance];
  [v7 setDestinationSharingEnabled:{objc_msgSend(v16, "destinationHandoffEnabled")}];

  v17 = +[MapsExternalDevice sharedInstance];
  v18 = [v17 supportsNavigationAidedDriving];

  if (v18)
  {
    v19 = +[MapsExternalDevice sharedInstance];
    v20 = [v19 isNavigationAidedDrivingEnabled];

    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }
  }

  else
  {
    v21 = 1;
  }

  [v7 setNavAidedDrivingStatus:v21];
  v22 = +[MapsExternalDevice sharedInstance];
  v23 = [v22 engineTypes];

  if (v23)
  {
    [v7 addEngineType:1];
    if ((v23 & 0x10000) == 0)
    {
LABEL_24:
      if ((v23 & 0x1000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_33:
      [v7 addEngineType:4];
      if ((v23 & 0x100) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v23 & 0x10000) == 0)
  {
    goto LABEL_24;
  }

  [v7 addEngineType:3];
  if ((v23 & 0x1000000) != 0)
  {
    goto LABEL_33;
  }

LABEL_25:
  if ((v23 & 0x100) != 0)
  {
LABEL_26:
    [v7 addEngineType:2];
  }

LABEL_27:

LABEL_28:

  return v7;
}

- (id)connectedCarScreenInfos
{
  v3 = +[NSMapTable strongToStrongObjectsMapTable];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CARSessionStatus *)self currentSession];
  v5 = [v4 configuration];
  v6 = [v5 screens];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(CARSessionStatus *)self carInfoForScreen:v11];
        [v3 setObject:v12 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v3;
}

@end