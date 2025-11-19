@interface MSPLowFuelDetails
- (id)_lowFuelImageDataForEngineType:(int)a3 isCarPlay:(BOOL)a4;
- (id)initWithMapsSuggestionsEntry:(id)a3;
@end

@implementation MSPLowFuelDetails

- (id)_lowFuelImageDataForEngineType:(int)a3 isCarPlay:(BOOL)a4
{
  v4 = a4;
  if (a3 == 1 || ((a3 >> 1) & 1) + (a3 & 1) + ((a3 >> 2) & 1) + ((a3 >> 3) & 1) >= 2)
  {
    v5 = +[GEOFeatureStyleAttributes gasStationStyleAttributes];
  }

  else
  {
    v5 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
  }

  v6 = v5;
  if (v4)
  {
    v7 = +[CarDisplayController sharedInstance];
    v8 = [v7 screenTraitCollection];
    [v8 displayScale];
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

  v13 = [MKIconManager imageForStyle:v6 size:v11 forScale:1 format:0 transparent:0 transitMode:v4 isCarplay:v10];
  v14 = v13;
  if (v4)
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

- (id)initWithMapsSuggestionsEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 stringForKey:@"MapsSuggestionsCarPlayEnergyBulletinTitle"];
  v6 = [v4 stringForKey:@"MapsSuggestionsCarPlayEnergyBulletinSubtitle"];
  v7 = [v4 numberForKey:@"MapsSuggestionsCarPlayEnergyBulletinEngineType"];
  v8 = [(MSPLowFuelDetails *)self initWithTitle:v5 subtitle:v6 engineType:v7];

  v9 = -[MSPLowFuelDetails _lowFuelImageDataForEngineType:isCarPlay:](v8, "_lowFuelImageDataForEngineType:isCarPlay:", [v4 engineType], 0);
  [(MSPLowFuelDetails *)v8 setIconData:v9];

  v10 = [v4 engineType];
  v11 = [(MSPLowFuelDetails *)v8 _lowFuelImageDataForEngineType:v10 isCarPlay:1];
  [(MSPLowFuelDetails *)v8 setIconDataCarPlay:v11];

  return v8;
}

@end