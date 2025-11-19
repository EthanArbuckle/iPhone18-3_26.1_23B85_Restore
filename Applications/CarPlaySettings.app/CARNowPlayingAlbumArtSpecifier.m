@interface CARNowPlayingAlbumArtSpecifier
+ (BOOL)userSettingControlAvailable;
- (CARNowPlayingAlbumArtSpecifier)initWithPanelController:(id)a3;
- (CARSettingsPanelController)panelController;
- (void)_performAction:(id)a3;
- (void)_vehicleDidChange;
- (void)setAlbumArtUserPreference:(BOOL)a3;
@end

@implementation CARNowPlayingAlbumArtSpecifier

+ (BOOL)userSettingControlAvailable
{
  v2 = +[CRCarPlayCapabilities capabilitiesIdentifier];
  v3 = [CRCarPlayCapabilities fetchCarCapabilitiesWithIdentifier:v2];

  LOBYTE(v2) = ([v3 disabledFeature] & 1) == 0;
  return v2;
}

- (CARNowPlayingAlbumArtSpecifier)initWithPanelController:(id)a3
{
  v4 = a3;
  v5 = sub_10001C80C(@"ALBUM_ART_TITLE");
  v15.receiver = self;
  v15.super_class = CARNowPlayingAlbumArtSpecifier;
  v6 = [(CARSettingsSwitchCellSpecifier *)&v15 initWithTitle:v5 image:0 icon:0];

  if (v6)
  {
    objc_storeWeak(&v6->_panelController, v4);
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
  v3 = [(CARNowPlayingAlbumArtSpecifier *)self panelController];

  if (v3)
  {
    v4 = [(CARNowPlayingAlbumArtSpecifier *)self panelController];
    v8 = [v4 vehicle];

    if (v8)
    {
      -[CARNowPlayingAlbumArtSpecifier setAlbumArtDisabled:](self, "setAlbumArtDisabled:", [v8 albumArtUserPreference] == 1);
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

- (void)_performAction:(id)a3
{
  if (a3)
  {
    v4 = [a3 BOOLValue];
  }

  else
  {
    v4 = [(CARNowPlayingAlbumArtSpecifier *)self albumArtDisabled];
  }

  [(CARNowPlayingAlbumArtSpecifier *)self setAlbumArtDisabled:v4 ^ 1];
  v5 = [NSNumber numberWithInt:[(CARNowPlayingAlbumArtSpecifier *)self albumArtDisabled]^ 1];
  [(CARSettingsCellSpecifier *)self setCellValue:v5];

  v6 = [(CARNowPlayingAlbumArtSpecifier *)self albumArtDisabled]^ 1;

  [(CARNowPlayingAlbumArtSpecifier *)self setAlbumArtUserPreference:v6];
}

- (void)setAlbumArtUserPreference:(BOOL)a3
{
  v3 = a3;
  v5 = [(CARNowPlayingAlbumArtSpecifier *)self panelController];

  if (v5)
  {
    v6 = [(CARNowPlayingAlbumArtSpecifier *)self panelController];
    v9 = [v6 vehicle];

    if (v9)
    {
      v7 = (v3 ? 2 : 1);
      if ([v9 albumArtUserPreference] != v7)
      {
        [v9 setAlbumArtUserPreference:v7];
        v8 = [(CARNowPlayingAlbumArtSpecifier *)self panelController];
        [v8 saveVehicle:v9];
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