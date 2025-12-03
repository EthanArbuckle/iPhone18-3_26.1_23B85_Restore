@interface CPTrip
- (CPTrip)init;
- (CPTrip)initWithCoder:(id)coder;
- (CPTrip)initWithOrigin:(MKMapItem *)origin destination:(MKMapItem *)destination routeChoices:(NSArray *)routeChoices;
- (id)description;
- (signed)destinationTimeZoneOffsetFromGMT;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPTrip

- (CPTrip)init
{
  mapItemForCurrentLocation = [MEMORY[0x277CD4E80] mapItemForCurrentLocation];
  mapItemForCurrentLocation2 = [MEMORY[0x277CD4E80] mapItemForCurrentLocation];
  v5 = [(CPTrip *)self initWithOrigin:mapItemForCurrentLocation destination:mapItemForCurrentLocation2 routeChoices:MEMORY[0x277CBEBF8]];

  return v5;
}

- (CPTrip)initWithOrigin:(MKMapItem *)origin destination:(MKMapItem *)destination routeChoices:(NSArray *)routeChoices
{
  v24[1] = *MEMORY[0x277D85DE8];
  v9 = origin;
  v10 = destination;
  v11 = routeChoices;
  v23.receiver = self;
  v23.super_class = CPTrip;
  v12 = [(CPTrip *)&v23 init];
  if (v12)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v12->_identifier;
    v12->_identifier = uUID;

    objc_storeStrong(&v12->_origin, origin);
    objc_storeStrong(&v12->_destination, destination);
    v15 = [(NSArray *)v11 copy];
    v16 = v12->_routeChoices;
    v12->_routeChoices = v15;

    name = [(MKMapItem *)v10 name];

    if (name)
    {
      name2 = [(MKMapItem *)v10 name];
      v24[0] = name2;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      destinationNameVariants = v12->_destinationNameVariants;
      v12->_destinationNameVariants = v19;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

- (CPTrip)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPIdentifierKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPTripOriginKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPTripDestinationKey"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kCPTripRouteChoicesKey"];

  v12 = [(CPTrip *)self initWithOrigin:v6 destination:v7 routeChoices:v11];
  [(CPTrip *)v12 setIdentifier:v5];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CPTrip *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPIdentifierKey"];

  origin = [(CPTrip *)self origin];
  placemark = [origin placemark];

  postalAddress = [placemark postalAddress];
  v7 = MEMORY[0x277CBFC40];
  location = [placemark location];
  name = [placemark name];
  v10 = [v7 placemarkWithLocation:location name:name postalAddress:postalAddress];

  v11 = objc_alloc(MEMORY[0x277CD4E80]);
  v12 = [objc_alloc(MEMORY[0x277CD4F00]) initWithPlacemark:v10];
  v13 = [v11 initWithPlacemark:v12];

  destination = [(CPTrip *)self destination];
  placemark2 = [destination placemark];

  postalAddress2 = [placemark2 postalAddress];
  v17 = MEMORY[0x277CBFC40];
  location2 = [placemark2 location];
  name2 = [placemark2 name];
  v20 = [v17 placemarkWithLocation:location2 name:name2 postalAddress:postalAddress2];

  v21 = objc_alloc(MEMORY[0x277CD4E80]);
  v22 = [objc_alloc(MEMORY[0x277CD4F00]) initWithPlacemark:v20];
  v23 = [v21 initWithPlacemark:v22];

  [coderCopy encodeObject:v13 forKey:@"kCPTripOriginKey"];
  [coderCopy encodeObject:v23 forKey:@"kCPTripDestinationKey"];
  routeChoices = [(CPTrip *)self routeChoices];
  [coderCopy encodeObject:routeChoices forKey:@"kCPTripRouteChoicesKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = CPTrip;
  v4 = [(CPTrip *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ {origin: %@, destination: %@, routeChoices: %@}", v4, self->_origin, self->_destination, self->_routeChoices];

  return v5;
}

- (signed)destinationTimeZoneOffsetFromGMT
{
  destination = [(CPTrip *)self destination];
  timeZone = [destination timeZone];
  secondsFromGMT = [timeZone secondsFromGMT];
  v5 = ((secondsFromGMT * 0x8888888888888889) >> 64) + secondsFromGMT;
  v6 = (v5 >> 63) + (v5 >> 5);

  return v6;
}

@end