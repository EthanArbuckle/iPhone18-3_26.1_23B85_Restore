@interface ATXHeuristicRequestRideForEventActionMaker
- (ATXHeuristicRequestRideForEventActionMaker)initWithCoder:(id)coder;
- (ATXHeuristicRequestRideForEventActionMaker)initWithTitle:(id)title subtitle:(id)subtitle pickupLocation:(id)location dropoffEvent:(id)event preferredAppBundleID:(id)d;
- (BOOL)shouldPredictDropOffLocationGivenPickupLocation:(id)location andDropOffLocation:(id)offLocation;
- (id)_makeAction;
- (id)actionTypeName;
- (id)dropOffLocationFromEKEvent:(id)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHeuristicRequestRideForEventActionMaker

- (ATXHeuristicRequestRideForEventActionMaker)initWithTitle:(id)title subtitle:(id)subtitle pickupLocation:(id)location dropoffEvent:(id)event preferredAppBundleID:(id)d
{
  titleCopy = title;
  subtitleCopy = subtitle;
  locationCopy = location;
  eventCopy = event;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = ATXHeuristicRequestRideForEventActionMaker;
  v17 = [(ATXHeuristicRequestRideForEventActionMaker *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->super._title, title);
    objc_storeStrong(&v18->super._subtitle, subtitle);
    objc_storeStrong(&v18->_pickupLocation, location);
    objc_storeStrong(&v18->_dropoffEvent, event);
    objc_storeStrong(&v18->_preferredAppBundleID, d);
  }

  return v18;
}

- (id)dropOffLocationFromEKEvent:(id)event
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (eventCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      structuredLocation = [eventCopy structuredLocation];
      geoLocation = [structuredLocation geoLocation];

      goto LABEL_9;
    }

    v7 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicCreateCalendarEventActionMaker _makeAction];
    }
  }

  else
  {
    v7 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      heuristic = [(ATXHeuristicActionMaker *)self heuristic];
      v11 = 138412290;
      v12 = heuristic;
      _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "Failed to create drop off location because of nil ekEvent. Heuristic: %@.", &v11, 0xCu);
    }
  }

  geoLocation = 0;
LABEL_9:

  v9 = *MEMORY[0x277D85DE8];

  return geoLocation;
}

- (BOOL)shouldPredictDropOffLocationGivenPickupLocation:(id)location andDropOffLocation:(id)offLocation
{
  v21 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  offLocationCopy = offLocation;
  v8 = offLocationCopy;
  if (locationCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = offLocationCopy == 0;
  }

  v10 = !v9;
  if (locationCopy && offLocationCopy)
  {
    [(CLLocation *)self->_pickupLocation distanceFromLocation:offLocationCopy];
    v12 = v11;
    if (v11 > 96600.0)
    {
      v13 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        heuristic = [(ATXHeuristicActionMaker *)self heuristic];
        v17 = 134218242;
        v18 = v12 / 1610.0;
        v19 = 2112;
        v20 = heuristic;
        _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "Dropoff location of %f miles is more than 40 miles away from pickup location . Heuristic: %@.", &v17, 0x16u);
      }

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_makeAction
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = [(ATXHeuristicObjectHandle *)self->_dropoffEvent obj];
  v4 = [(ATXHeuristicRequestRideForEventActionMaker *)self dropOffLocationFromEKEvent:v3];
  if ([(ATXHeuristicRequestRideForEventActionMaker *)self shouldPredictDropOffLocationGivenPickupLocation:self->_pickupLocation andDropOffLocation:v4])
  {
    v5 = MEMORY[0x277CBFC40];
    structuredLocation = [v3 structuredLocation];
    title = [structuredLocation title];
    v8 = [v5 placemarkWithLocation:v4 name:title postalAddress:0];

    eventIdentifier = [v3 eventIdentifier];

    if (eventIdentifier)
    {
      v20 = *MEMORY[0x277CEB208];
      eventIdentifier2 = [v3 eventIdentifier];
      v21[0] = eventIdentifier2;
      eventIdentifier = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    }
  }

  else
  {
    v8 = 0;
    eventIdentifier = 0;
  }

  pickupLocation = self->_pickupLocation;
  if (pickupLocation)
  {
    v12 = [MEMORY[0x277CBFC40] placemarkWithLocation:pickupLocation name:0 postalAddress:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_alloc(MEMORY[0x277CD3F80]) initWithPickupLocation:v12 dropOffLocation:v8 rideOptionName:0 partySize:0 paymentMethod:0 scheduledPickupTime:0];
  [v13 _setLaunchId:self->_preferredAppBundleID];
  v14 = objc_alloc(MEMORY[0x277CEB2C8]);
  v15 = objc_opt_new();
  LOBYTE(v19) = 0;
  v16 = [v14 initWithIntent:v13 actionUUID:v15 bundleId:self->_preferredAppBundleID heuristic:0 heuristicMetadata:eventIdentifier criteria:0 isFutureMedia:v19 title:self->super._title subtitle:self->super._subtitle];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)actionTypeName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (ATXHeuristicRequestRideForEventActionMaker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ATXHeuristicRequestRideForEventActionMaker;
  v5 = [(ATXHeuristicActionMaker *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pickupLocation"];
    pickupLocation = v5->_pickupLocation;
    v5->_pickupLocation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dropoffEvent"];
    dropoffEvent = v5->_dropoffEvent;
    v5->_dropoffEvent = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredAppBundleID"];
    preferredAppBundleID = v5->_preferredAppBundleID;
    v5->_preferredAppBundleID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ATXHeuristicRequestRideForEventActionMaker;
  [(ATXHeuristicActionMaker *)&v7 encodeWithCoder:coderCopy];
  pickupLocation = self->_pickupLocation;
  if (pickupLocation)
  {
    [coderCopy encodeObject:pickupLocation forKey:@"pickupLocation"];
  }

  dropoffEvent = self->_dropoffEvent;
  if (dropoffEvent)
  {
    [coderCopy encodeObject:dropoffEvent forKey:@"dropoffEvent"];
  }

  [coderCopy encodeObject:self->_preferredAppBundleID forKey:@"preferredAppBundleID"];
}

@end