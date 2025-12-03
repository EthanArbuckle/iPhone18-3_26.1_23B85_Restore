@interface NavigationSettingsController
- (void)_addAudioSettings:(id)settings;
- (void)_addCustomRoutesSettings:(id)settings;
- (void)_addETAUpdatesSettings:(id)settings;
- (void)_addLocationsSettings:(id)settings;
- (void)_addNavigationRowWithTitle:(id)title section:(id)section handler:(id)handler;
- (void)_addParkingNavigationSettings:(id)settings;
- (void)_addPreloadingSettings:(id)settings;
- (void)_addRoutingSettings:(id)settings;
- (void)_addThermalMitigationsSettings:(id)settings;
- (void)_addTracesAndSimulationSettings:(id)settings;
- (void)_addTrafficOverrideSettings:(id)settings;
- (void)_addVisualFeaturesSettings:(id)settings;
- (void)_addVisualizationSettings:(id)settings;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)prepareContent;
@end

@implementation NavigationSettingsController

- (void)imagePickerControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  _GEOConfigRemoveValue();
  [cancelCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  controllerCopy = controller;
  v8 = [info objectForKeyedSubscript:UIImagePickerControllerPHAsset];
  if (v8)
  {
    v6 = objc_alloc_init(PHVideoRequestOptions);
    [v6 setVersion:1];
    v7 = +[PHImageManager defaultManager];
    [v7 requestAVAssetForVideo:v8 options:v6 resultHandler:&stru_10163A738];
  }

  else
  {
    _GEOConfigRemoveValue();
  }

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)_addTracesAndSimulationSettings:(id)settings
{
  settingsCopy = settings;
  v3 = [settingsCopy addSectionWithTitle:@"Trace Playback" content:&stru_10163A5F8];
  v4 = [settingsCopy addSectionWithTitle:@"Trace Recording" content:&stru_10163A6B8];
  v5 = [settingsCopy addSectionWithTitle:@"Simulation" content:&stru_10163A6D8];
}

- (void)_addParkingNavigationSettings:(id)settings
{
  settingsCopy = settings;
  objc_initWeak(&location, self);
  v5 = [settingsCopy addSectionWithTitle:0 content:&stru_10163A598];
  v6 = [settingsCopy addSectionWithTitle:@"Background Walking Route Thresholds" content:&stru_10163A5B8];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B44214;
  v8[3] = &unk_10165E0A8;
  objc_copyWeak(&v9, &location);
  v7 = [settingsCopy addSectionWithTitle:0 content:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_addVisualFeaturesSettings:(id)settings
{
  settingsCopy = settings;
  objc_initWeak(&location, self);
  objc_initWeak(&from, settingsCopy);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100B4540C;
  v20[3] = &unk_101639930;
  objc_copyWeak(&v21, &from);
  objc_copyWeak(&v22, &location);
  v5 = [settingsCopy addSectionWithTitle:@"General" content:v20];
  if (qword_10195E958 != -1)
  {
    dispatch_once(&qword_10195E958, &stru_10164C728);
  }

  if ((byte_10195E950 & 1) == 0)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100B45620;
    v18[3] = &unk_10165E0A8;
    objc_copyWeak(&v19, &from);
    v6 = [settingsCopy addSectionWithTitle:@"Pedestrian AR" content:v18];
    objc_destroyWeak(&v19);
  }

  if (qword_10195CFF8 != -1)
  {
    dispatch_once(&qword_10195CFF8, &stru_1016272E0);
  }

  if ((byte_10195CFF0 & 1) == 0)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100B45FA8;
    v15[3] = &unk_101639930;
    objc_copyWeak(&v16, &location);
    objc_copyWeak(&v17, &from);
    v7 = [settingsCopy addSectionWithTitle:@"VLF" content:v15];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
    if (qword_10195CFF8 != -1)
    {
      dispatch_once(&qword_10195CFF8, &stru_1016272E0);
    }
  }

  if (byte_10195CFF0 != 1)
  {
    goto LABEL_23;
  }

  if (qword_10195E958 != -1)
  {
    dispatch_once(&qword_10195E958, &stru_10164C728);
  }

  if ((byte_10195E950 & 1) == 0)
  {
LABEL_23:
    if (MapsFeature_IsAvailable_VisualLocalizationCrowdsourcing())
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100B46530;
      v12[3] = &unk_101639930;
      objc_copyWeak(&v13, &location);
      objc_copyWeak(&v14, &from);
      v8 = [settingsCopy addSectionWithTitle:@"VLF Crowdsourcing" content:v12];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&v13);
    }
  }

  if (qword_10195E010 != -1)
  {
    dispatch_once(&qword_10195E010, &stru_101630BA8);
  }

  if ((byte_10195E008 & 1) == 0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100B466D4;
    v10[3] = &unk_10165E0A8;
    objc_copyWeak(&v11, &from);
    v9 = [settingsCopy addSectionWithTitle:@"MarcoLite" content:v10];
    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)_addThermalMitigationsSettings:(id)settings
{
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100B4C84C;
  v24[3] = &unk_101639868;
  settingsCopy = settings;
  v25 = settingsCopy;
  v3 = objc_retainBlock(v24);
  v4 = +[MapsThermalPressureController mitigations];
  allKeys = [v4 allKeys];
  v6 = [allKeys sortedArrayUsingSelector:"compare:"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 isEqualToString:@"NavigationDisableLockScreen"];
        v13 = [v4 objectForKeyedSubscript:v11];
        if (v12)
        {
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100B4C8FC;
          v17[3] = &unk_10165BE30;
          v18 = v4;
          v19 = v11;
          v14 = [settingsCopy addSectionWithTitle:v13 content:v17];

          v13 = v18;
        }

        else
        {
          (v3[2])(v3, v13, v11);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }
}

- (void)_addPreloadingSettings:(id)settings
{
  settingsCopy = settings;
  v3 = [settingsCopy addSectionWithTitle:0 content:&stru_1016397E0];
  v4 = [settingsCopy addSectionWithTitle:0 content:&stru_101639800];
}

- (void)_addCustomRoutesSettings:(id)settings
{
  settingsCopy = settings;
  v3 = [settingsCopy addSectionWithTitle:0 content:&stru_1016396C0];
  [v3 setFooter:{@"Enables navigation on a custom route as long as location is near the route, even if current location is not near the origin."}];

  v4 = [settingsCopy addSectionWithTitle:0 content:&stru_1016396E0];
}

- (void)_addAudioSettings:(id)settings
{
  settingsCopy = settings;
  v3 = [settingsCopy addSectionWithTitle:0 content:&stru_101639620];
  v4 = [settingsCopy addSectionWithTitle:@"Server Side Instructions" content:&stru_101639680];
}

- (void)_addETAUpdatesSettings:(id)settings
{
  settingsCopy = settings;
  v3 = [settingsCopy addSectionWithTitle:0 content:&stru_101639240];
  v4 = [settingsCopy addSectionWithTitle:@"ETA Stabilization" content:&stru_101639600];
}

- (void)_addTrafficOverrideSettings:(id)settings
{
  settingsCopy = settings;
  v3 = [settingsCopy addSectionWithTitle:@"Override Color" content:&stru_1016391C0];
  v4 = [settingsCopy addSectionWithTitle:@"Override Section" content:&stru_101639200];
}

- (void)_addRoutingSettings:(id)settings
{
  settingsCopy = settings;
  objc_initWeak(&location, self);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100B4EF60;
  v13 = &unk_10165E0A8;
  objc_copyWeak(&v14, &location);
  v5 = [settingsCopy addSectionWithTitle:0 content:&v10];
  v6 = [settingsCopy addSectionWithTitle:@"Arrival" content:{&stru_101639080, v10, v11, v12, v13}];
  v7 = [settingsCopy addSectionWithTitle:@"Departure From Waypoint" content:&stru_1016390A0];
  v8 = [settingsCopy addSectionWithTitle:@"Logging" content:&stru_101639180];
  v9 = [settingsCopy addSectionWithTitle:0 content:&stru_1016391A0];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_addLocationsSettings:(id)settings
{
  settingsCopy = settings;
  v3 = [settingsCopy addSectionWithTitle:@"Map Matching" content:&stru_101638F60];
  v4 = [settingsCopy addSectionWithTitle:0 content:&stru_101638F80];
  v5 = [settingsCopy addSectionWithTitle:@"Location Projection" content:&stru_101638FA0];
  v6 = [settingsCopy addSectionWithTitle:@"Probe Crumbs" content:&stru_101638FE0];
}

- (void)_addVisualizationSettings:(id)settings
{
  settingsCopy = settings;
  v3 = [settingsCopy addSectionWithTitle:0 content:&stru_101638F20];
  v4 = [settingsCopy addSectionWithTitle:@"Arrival Regions" content:&stru_101638F40];
}

- (void)_addNavigationRowWithTitle:(id)title section:(id)section handler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B4FF74;
  v10[3] = &unk_101638F00;
  titleCopy = title;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = titleCopy;
  v9 = [section addNavigationRowWithTitle:v8 viewControllerContent:v10];
}

- (void)prepareContent
{
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B50220;
  v13[3] = &unk_10165E0A8;
  objc_copyWeak(&v14, &location);
  v3 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Traces and Simulation" content:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100B50310;
  v11[3] = &unk_10165E0A8;
  objc_copyWeak(&v12, &location);
  v4 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Settings" content:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100B5094C;
  v9[3] = &unk_10165E0A8;
  objc_copyWeak(&v10, &location);
  v5 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Features" content:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100B50C58;
  v7[3] = &unk_10165E0A8;
  objc_copyWeak(&v8, &location);
  v6 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Other" content:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end