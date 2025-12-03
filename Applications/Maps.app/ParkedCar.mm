@interface ParkedCar
+ (id)title;
- (CLLocationCoordinate2D)coordinate;
- (NSString)locationDisplayString;
- (NSString)locationName;
- (NSString)title;
- (ParkedCar)initWithVehicleEvent:(id)event geoMapItem:(id)item;
- (void)setMapItem:(id)item;
- (void)updateFromVehicleEvent:(id)event geoMapItem:(id)item;
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
  nearbyLocationOfInterest = [(RTVehicleEvent *)self->_vehicleEvent nearbyLocationOfInterest];

  if (nearbyLocationOfInterest)
  {
    nearbyLocationOfInterest2 = [(RTVehicleEvent *)self->_vehicleEvent nearbyLocationOfInterest];
    [nearbyLocationOfInterest2 type];
    MSgLOITypeForRTLOIType();
    nearbyLocationOfInterest3 = [(RTVehicleEvent *)self->_vehicleEvent nearbyLocationOfInterest];
    customLabel = [nearbyLocationOfInterest3 customLabel];
    nearbyLocationOfInterest = MapsSuggestionsRoutineLocalizedLabelLOIType();
  }

  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  v8 = nearbyLocationOfInterest;
  if ([v8 length])
  {
    v9 = v8;
  }

  else
  {
    addressObject = [_geoMapItem addressObject];
    parkingDisplayName = [addressObject parkingDisplayName];

    if ([parkingDisplayName length])
    {
      v12 = parkingDisplayName;
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
  locationName = [(ParkedCar *)self locationName];
  if ([locationName length])
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Near %@ [Widget/Proactive Tray FmC row subtitle value:with address]" table:{@"localized string not found", 0}];
    v5 = [NSString stringWithFormat:v4, locationName];
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

- (void)setMapItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    v5 = [[CLLocation alloc] initWithLatitude:self->_coordinate.latitude longitude:self->_coordinate.longitude];
    itemCopy = [[MKMapItem alloc] initWithCLLocation:v5];
  }

  title = [(ParkedCar *)self title];
  [(MKMapItem *)itemCopy setName:title];

  mapItem = self->_mapItem;
  self->_mapItem = itemCopy;
}

- (void)updateFromVehicleEvent:(id)event geoMapItem:(id)item
{
  eventCopy = event;
  itemCopy = item;
  objc_storeStrong(&self->_vehicleEvent, event);
  notes = [eventCopy notes];
  v9 = notes;
  if (notes)
  {
    v10 = notes;
  }

  else
  {
    v10 = &stru_1016631F0;
  }

  objc_storeStrong(&self->_notes, v10);

  location = [(RTVehicleEvent *)self->_vehicleEvent location];
  [location latitude];
  v13 = v12;
  location2 = [(RTVehicleEvent *)self->_vehicleEvent location];
  [location2 longitude];
  self->_coordinate = CLLocationCoordinate2DMake(v13, v15);

  location3 = [eventCopy location];
  self->_referenceFrame = [location3 referenceFrame];

  location4 = [(RTVehicleEvent *)self->_vehicleEvent location];
  [location4 horizontalUncertainty];
  self->_horizontalAccuracy = v18;

  if (__isinfd() || __isnand())
  {
    self->_horizontalAccuracy = -1.0;
  }

  date = [(RTVehicleEvent *)self->_vehicleEvent date];
  date = self->_date;
  self->_date = date;

  photo = [eventCopy photo];

  if (photo)
  {
    v22 = [UIImage alloc];
    photo2 = [eventCopy photo];
    v24 = [v22 initWithData:photo2];
    image = self->_image;
    self->_image = v24;
  }

  else
  {
    photo2 = self->_image;
    self->_image = 0;
  }

  if (itemCopy)
  {
    v26 = [[MKMapItem alloc] initWithGeoMapItem:itemCopy isPlaceHolderPlace:0];
    mapItem = self->_mapItem;
    self->_mapItem = v26;
  }

  else
  {
    v28 = [CLLocation alloc];
    location5 = [(RTVehicleEvent *)self->_vehicleEvent location];
    [location5 latitude];
    v31 = v30;
    location6 = [(RTVehicleEvent *)self->_vehicleEvent location];
    [location6 longitude];
    mapItem = [v28 initWithLatitude:v31 longitude:v33];

    v34 = [[MKMapItem alloc] initWithCLLocation:mapItem];
    v35 = self->_mapItem;
    self->_mapItem = v34;
  }

  title = [(ParkedCar *)self title];
  [(MKMapItem *)self->_mapItem setName:title];
}

- (ParkedCar)initWithVehicleEvent:(id)event geoMapItem:(id)item
{
  eventCopy = event;
  itemCopy = item;
  if (eventCopy && (v11.receiver = self, v11.super_class = ParkedCar, v8 = [(ParkedCar *)&v11 init], (self = v8) != 0))
  {
    [(ParkedCar *)v8 updateFromVehicleEvent:eventCopy geoMapItem:itemCopy];
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Parked Car [FindMyCar]" value:@"localized string not found" table:0];

  return v3;
}

@end