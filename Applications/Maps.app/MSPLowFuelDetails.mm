@interface MSPLowFuelDetails
- (id)_lowFuelImageDataForEngineType:(int)type isCarPlay:(BOOL)play;
- (id)initWithMapsSuggestionsEntry:(id)entry;
@end

@implementation MSPLowFuelDetails

- (id)_lowFuelImageDataForEngineType:(int)type isCarPlay:(BOOL)play
{
  playCopy = play;
  if (type == 1 || ((type >> 1) & 1) + (type & 1) + ((type >> 2) & 1) + ((type >> 3) & 1) >= 2)
  {
    v5 = +[GEOFeatureStyleAttributes gasStationStyleAttributes];
  }

  else
  {
    v5 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
  }

  v6 = v5;
  if (playCopy)
  {
    v7 = +[CarDisplayController sharedInstance];
    screenTraitCollection = [v7 screenTraitCollection];
    [screenTraitCollection displayScale];
    v10 = v9;

    v11 = 5;
  }

  else
  {
    v7 = +[MKSystemController sharedInstance];
    [v7 screenScale];
    v10 = v12;
    v11 = 2;
  }

  v13 = [MKIconManager imageForStyle:v6 size:v11 forScale:1 format:0 transparent:0 transitMode:playCopy isCarplay:v10];
  v14 = v13;
  if (playCopy)
  {
    v15 = UIImagePNGRepresentation(v13);
  }

  else
  {
    y = CGPointZero.y;
    v20.width = 20.0;
    v20.height = 20.0;
    UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
    [(UIImage *)v14 drawInRect:CGPointZero.x, y, 20.0, 20.0];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v15 = UIImagePNGRepresentation(v17);
  }

  return v15;
}

- (id)initWithMapsSuggestionsEntry:(id)entry
{
  entryCopy = entry;
  v5 = [entryCopy stringForKey:@"MapsSuggestionsCarPlayEnergyBulletinTitle"];
  v6 = [entryCopy stringForKey:@"MapsSuggestionsCarPlayEnergyBulletinSubtitle"];
  v7 = [entryCopy numberForKey:@"MapsSuggestionsCarPlayEnergyBulletinEngineType"];
  v8 = [(MSPLowFuelDetails *)self initWithTitle:v5 subtitle:v6 engineType:v7];

  v9 = -[MSPLowFuelDetails _lowFuelImageDataForEngineType:isCarPlay:](v8, "_lowFuelImageDataForEngineType:isCarPlay:", [entryCopy engineType], 0);
  [(MSPLowFuelDetails *)v8 setIconData:v9];

  engineType = [entryCopy engineType];
  v11 = [(MSPLowFuelDetails *)v8 _lowFuelImageDataForEngineType:engineType isCarPlay:1];
  [(MSPLowFuelDetails *)v8 setIconDataCarPlay:v11];

  return v8;
}

@end