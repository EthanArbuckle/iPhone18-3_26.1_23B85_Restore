@interface ParkedCar
+ (id)title;
- (CLLocationCoordinate2D)coordinate;
- (NSString)locationDisplayString;
- (NSString)locationName;
- (NSString)title;
- (ParkedCar)initWithVehicleEvent:(id)a3 geoMapItem:(id)a4;
- (void)setMapItem:(id)a3;
- (void)updateFromVehicleEvent:(id)a3 geoMapItem:(id)a4;
@end

@implementation ParkedCar

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (NSString)locationName
{
  v3 = [(RTVehicleEvent *)self->_vehicleEvent nearbyLocationOfInterest];

  if (v3)
  {
    v4 = [(RTVehicleEvent *)self->_vehicleEvent nearbyLocationOfInterest];
    [v4 type];
    MSgLOITypeForRTLOIType();
    v5 = [(RTVehicleEvent *)self->_vehicleEvent nearbyLocationOfInterest];
    v6 = [v5 customLabel];
    v3 = MapsSuggestionsRoutineLocalizedLabelLOIType();
  }

  v7 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v8 = v3;
  if ([v8 length])
  {
    v9 = v8;
  }

  else
  {
    v10 = [v7 addressObject];
    v11 = [v10 parkingDisplayName];

    if ([v11 length])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v9 = v12;
  }

  return v9;
}

- (NSString)locationDisplayString
{
  v2 = [(ParkedCar *)self locationName];
  if ([v2 length])
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Near %@ [Widget/Proactive Tray FmC row subtitle value:with address]" table:{@"localized string not found", 0}];
    v5 = [NSString stringWithFormat:v4, v2];
  }

  else
  {
    v5 = &stru_1016631F0;
  }

  return v5;
}

- (NSString)title
{
  v2 = objc_opt_class();

  return [v2 title];
}

- (void)setMapItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [[CLLocation alloc] initWithLatitude:self->_coordinate.latitude longitude:self->_coordinate.longitude];
    v4 = [[MKMapItem alloc] initWithCLLocation:v5];
  }

  v6 = [(ParkedCar *)self title];
  [(MKMapItem *)v4 setName:v6];

  mapItem = self->_mapItem;
  self->_mapItem = v4;
}

- (void)updateFromVehicleEvent:(id)a3 geoMapItem:(id)a4
{
  v37 = a3;
  v7 = a4;
  objc_storeStrong(&self->_vehicleEvent, a3);
  v8 = [v37 notes];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1016631F0;
  }

  objc_storeStrong(&self->_notes, v10);

  v11 = [(RTVehicleEvent *)self->_vehicleEvent location];
  [v11 latitude];
  v13 = v12;
  v14 = [(RTVehicleEvent *)self->_vehicleEvent location];
  [v14 longitude];
  self->_coordinate = CLLocationCoordinate2DMake(v13, v15);

  v16 = [v37 location];
  self->_referenceFrame = [v16 referenceFrame];

  v17 = [(RTVehicleEvent *)self->_vehicleEvent location];
  [v17 horizontalUncertainty];
  self->_horizontalAccuracy = v18;

  if (__isinfd() || __isnand())
  {
    self->_horizontalAccuracy = -1.0;
  }

  v19 = [(RTVehicleEvent *)self->_vehicleEvent date];
  date = self->_date;
  self->_date = v19;

  v21 = [v37 photo];

  if (v21)
  {
    v22 = [UIImage alloc];
    v23 = [v37 photo];
    v24 = [v22 initWithData:v23];
    image = self->_image;
    self->_image = v24;
  }

  else
  {
    v23 = self->_image;
    self->_image = 0;
  }

  if (v7)
  {
    v26 = [[MKMapItem alloc] initWithGeoMapItem:v7 isPlaceHolderPlace:0];
    mapItem = self->_mapItem;
    self->_mapItem = v26;
  }

  else
  {
    v28 = [CLLocation alloc];
    v29 = [(RTVehicleEvent *)self->_vehicleEvent location];
    [v29 latitude];
    v31 = v30;
    v32 = [(RTVehicleEvent *)self->_vehicleEvent location];
    [v32 longitude];
    mapItem = [v28 initWithLatitude:v31 longitude:v33];

    v34 = [[MKMapItem alloc] initWithCLLocation:mapItem];
    v35 = self->_mapItem;
    self->_mapItem = v34;
  }

  v36 = [(ParkedCar *)self title];
  [(MKMapItem *)self->_mapItem setName:v36];
}

- (ParkedCar)initWithVehicleEvent:(id)a3 geoMapItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (v11.receiver = self, v11.super_class = ParkedCar, v8 = [(ParkedCar *)&v11 init], (self = v8) != 0))
  {
    [(ParkedCar *)v8 updateFromVehicleEvent:v6 geoMapItem:v7];
    self = self;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Parked Car [FindMyCar]" value:@"localized string not found" table:0];

  return v3;
}

@end