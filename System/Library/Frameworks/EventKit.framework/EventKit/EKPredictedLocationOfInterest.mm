@interface EKPredictedLocationOfInterest
- (EKPredictedLocationOfInterest)initWithPredictedLocationOfInterest:(id)interest;
- (EKPredictedLocationOfInterest)initWithType:(int64_t)type customLabel:(id)label mapItemName:(id)name addressCountryCode:(id)code addressThoroughFare:(id)fare addressLocality:(id)locality;
@end

@implementation EKPredictedLocationOfInterest

- (EKPredictedLocationOfInterest)initWithPredictedLocationOfInterest:(id)interest
{
  interestCopy = interest;
  locationOfInterest = [interestCopy locationOfInterest];
  mapItem = [locationOfInterest mapItem];
  address = [mapItem address];
  type = [locationOfInterest type];
  customLabel = [locationOfInterest customLabel];
  name = [mapItem name];
  countryCode = [address countryCode];
  thoroughfare = [address thoroughfare];
  locality = [address locality];
  v13 = [(EKPredictedLocationOfInterest *)self initWithType:type customLabel:customLabel mapItemName:name addressCountryCode:countryCode addressThoroughFare:thoroughfare addressLocality:locality];

  if (v13)
  {
    objc_storeStrong(&v13->_rtPredictedLocationOfInterest, interest);
  }

  return v13;
}

- (EKPredictedLocationOfInterest)initWithType:(int64_t)type customLabel:(id)label mapItemName:(id)name addressCountryCode:(id)code addressThoroughFare:(id)fare addressLocality:(id)locality
{
  labelCopy = label;
  nameCopy = name;
  codeCopy = code;
  fareCopy = fare;
  localityCopy = locality;
  v32.receiver = self;
  v32.super_class = EKPredictedLocationOfInterest;
  v19 = [(EKPredictedLocationOfInterest *)&v32 init];
  v20 = v19;
  if (v19)
  {
    v19->_type = type;
    v21 = [labelCopy copy];
    customLabel = v20->_customLabel;
    v20->_customLabel = v21;

    v23 = [nameCopy copy];
    mapItemName = v20->_mapItemName;
    v20->_mapItemName = v23;

    v25 = [codeCopy copy];
    addressCountryCode = v20->_addressCountryCode;
    v20->_addressCountryCode = v25;

    v27 = [fareCopy copy];
    addressThoroughfare = v20->_addressThoroughfare;
    v20->_addressThoroughfare = v27;

    v29 = [localityCopy copy];
    addressLocality = v20->_addressLocality;
    v20->_addressLocality = v29;
  }

  return v20;
}

@end