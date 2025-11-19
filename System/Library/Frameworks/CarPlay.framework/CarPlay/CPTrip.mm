@interface CPTrip
- (CPTrip)init;
- (CPTrip)initWithCoder:(id)a3;
- (CPTrip)initWithOrigin:(MKMapItem *)origin destination:(MKMapItem *)destination routeChoices:(NSArray *)routeChoices;
- (id)description;
- (signed)destinationTimeZoneOffsetFromGMT;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPTrip

- (CPTrip)init
{
  v3 = [MEMORY[0x277CD4E80] mapItemForCurrentLocation];
  v4 = [MEMORY[0x277CD4E80] mapItemForCurrentLocation];
  v5 = [(CPTrip *)self initWithOrigin:v3 destination:v4 routeChoices:MEMORY[0x277CBEBF8]];

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
    v13 = [MEMORY[0x277CCAD78] UUID];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    objc_storeStrong(&v12->_origin, origin);
    objc_storeStrong(&v12->_destination, destination);
    v15 = [(NSArray *)v11 copy];
    v16 = v12->_routeChoices;
    v12->_routeChoices = v15;

    v17 = [(MKMapItem *)v10 name];

    if (v17)
    {
      v18 = [(MKMapItem *)v10 name];
      v24[0] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      destinationNameVariants = v12->_destinationNameVariants;
      v12->_destinationNameVariants = v19;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

- (CPTrip)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPIdentifierKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPTripOriginKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPTripDestinationKey"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kCPTripRouteChoicesKey"];

  v12 = [(CPTrip *)self initWithOrigin:v6 destination:v7 routeChoices:v11];
  [(CPTrip *)v12 setIdentifier:v5];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPTrip *)self identifier];
  [v4 encodeObject:v5 forKey:@"kCPIdentifierKey"];

  v6 = [(CPTrip *)self origin];
  v26 = [v6 placemark];

  v25 = [v26 postalAddress];
  v7 = MEMORY[0x277CBFC40];
  v8 = [v26 location];
  v9 = [v26 name];
  v10 = [v7 placemarkWithLocation:v8 name:v9 postalAddress:v25];

  v11 = objc_alloc(MEMORY[0x277CD4E80]);
  v12 = [objc_alloc(MEMORY[0x277CD4F00]) initWithPlacemark:v10];
  v13 = [v11 initWithPlacemark:v12];

  v14 = [(CPTrip *)self destination];
  v15 = [v14 placemark];

  v16 = [v15 postalAddress];
  v17 = MEMORY[0x277CBFC40];
  v18 = [v15 location];
  v19 = [v15 name];
  v20 = [v17 placemarkWithLocation:v18 name:v19 postalAddress:v16];

  v21 = objc_alloc(MEMORY[0x277CD4E80]);
  v22 = [objc_alloc(MEMORY[0x277CD4F00]) initWithPlacemark:v20];
  v23 = [v21 initWithPlacemark:v22];

  [v4 encodeObject:v13 forKey:@"kCPTripOriginKey"];
  [v4 encodeObject:v23 forKey:@"kCPTripDestinationKey"];
  v24 = [(CPTrip *)self routeChoices];
  [v4 encodeObject:v24 forKey:@"kCPTripRouteChoicesKey"];
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
  v2 = [(CPTrip *)self destination];
  v3 = [v2 timeZone];
  v4 = [v3 secondsFromGMT];
  v5 = ((v4 * 0x8888888888888889) >> 64) + v4;
  v6 = (v5 >> 63) + (v5 >> 5);

  return v6;
}

@end