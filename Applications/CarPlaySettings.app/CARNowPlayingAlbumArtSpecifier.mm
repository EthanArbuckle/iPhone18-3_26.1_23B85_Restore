@interface CARNowPlayingAlbumArtSpecifier
+ (BOOL)userSettingControlAvailable;
- (CARNowPlayingAlbumArtSpecifier)initWithPanelController:(id)controller;
- (CARSettingsPanelController)panelController;
- (void)_performAction:(id)action;
- (void)_vehicleDidChange;
- (void)setAlbumArtUserPreference:(BOOL)preference;
@end

@implementation CARNowPlayingAlbumArtSpecifier

+ (BOOL)userSettingControlAvailable
{
  v2 = +[CRCarPlayCapabilities capabilitiesIdentifier];
  v3 = [CRCarPlayCapabilities fetchCarCapabilitiesWithIdentifier:v2];

  LOBYTE(v2) = ([v3 disabledFeature] & 1) == 0;
  return v2;
}

- (CARNowPlayingAlbumArtSpecifier)initWithPanelController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_10001C80C(@"ALBUM_ART_TITLE");
  v15.receiver = self;
  v15.super_class = CARNowPlayingAlbumArtSpecifier;
  v6 = [(CARSettingsSwitchCellSpecifier *)&v15 initWithTitle:v5 image:0 icon:0];

  if (v6)
  {
    objc_storeWeak(&v6->_panelController, controllerCopy);
    objc_initWeak(&location, v6);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10002BECC;
    v12 = &unk_1000DAE40;
    objc_copyWeak(&v13, &location);
    [(CARSettingsCellSpecifier *)v6 setActionBlock:&v9];
    v7 = [NSNotificationCenter defaultCenter:v9];
    [v7 addObserver:v6 selector:"_vehicleDidChange" name:@"CARSettingsPanelControllerVehicleDidChangeNotification" object:0];

    [(CARNowPlayingAlbumArtSpecifier *)v6 _vehicleDidChange];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  [(CARSettingsCellSpecifier *)v6 setAccessibilityIdentifier:@"CPSettingsAlbumArtCell"];

  return v6;
}

- (void)_vehicleDidChange
{
  panelController = [(CARNowPlayingAlbumArtSpecifier *)self panelController];

  if (panelController)
  {
    panelController2 = [(CARNowPlayingAlbumArtSpecifier *)self panelController];
    vehicle = [panelController2 vehicle];

    if (vehicle)
    {
      -[CARNowPlayingAlbumArtSpecifier setAlbumArtDisabled:](self, "setAlbumArtDisabled:", [vehicle albumArtUserPreference] == 1);
    }

    else
    {
      v5 = +[CRCarPlayCapabilities capabilitiesIdentifier];
      v6 = [CRCarPlayCapabilities fetchCarCapabilitiesWithIdentifier:v5];

      -[CARNowPlayingAlbumArtSpecifier setAlbumArtDisabled:](self, "setAlbumArtDisabled:", [v6 nowPlayingAlbumArtMode] == 1);
    }

    v7 = [NSNumber numberWithInt:[(CARNowPlayingAlbumArtSpecifier *)self albumArtDisabled]^ 1];
    [(CARSettingsCellSpecifier *)self setCellValue:v7];
  }
}

- (void)_performAction:(id)action
{
  if (action)
  {
    bOOLValue = [action BOOLValue];
  }

  else
  {
    bOOLValue = [(CARNowPlayingAlbumArtSpecifier *)self albumArtDisabled];
  }

  [(CARNowPlayingAlbumArtSpecifier *)self setAlbumArtDisabled:bOOLValue ^ 1];
  v5 = [NSNumber numberWithInt:[(CARNowPlayingAlbumArtSpecifier *)self albumArtDisabled]^ 1];
  [(CARSettingsCellSpecifier *)self setCellValue:v5];

  v6 = [(CARNowPlayingAlbumArtSpecifier *)self albumArtDisabled]^ 1;

  [(CARNowPlayingAlbumArtSpecifier *)self setAlbumArtUserPreference:v6];
}

- (void)setAlbumArtUserPreference:(BOOL)preference
{
  preferenceCopy = preference;
  panelController = [(CARNowPlayingAlbumArtSpecifier *)self panelController];

  if (panelController)
  {
    panelController2 = [(CARNowPlayingAlbumArtSpecifier *)self panelController];
    vehicle = [panelController2 vehicle];

    if (vehicle)
    {
      v7 = (preferenceCopy ? 2 : 1);
      if ([vehicle albumArtUserPreference] != v7)
      {
        [vehicle setAlbumArtUserPreference:v7];
        panelController3 = [(CARNowPlayingAlbumArtSpecifier *)self panelController];
        [panelController3 saveVehicle:vehicle];
      }
    }
  }
}

- (CARSettingsPanelController)panelController
{
  WeakRetained = objc_loadWeakRetained(&self->_panelController);

  return WeakRetained;
}

@end