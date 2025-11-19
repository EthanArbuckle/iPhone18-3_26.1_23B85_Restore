@interface EKPredictedLocationOfInterest
- (EKPredictedLocationOfInterest)initWithPredictedLocationOfInterest:(id)a3;
- (EKPredictedLocationOfInterest)initWithType:(int64_t)a3 customLabel:(id)a4 mapItemName:(id)a5 addressCountryCode:(id)a6 addressThoroughFare:(id)a7 addressLocality:(id)a8;
@end

@implementation EKPredictedLocationOfInterest

- (EKPredictedLocationOfInterest)initWithPredictedLocationOfInterest:(id)a3
{
  v16 = a3;
  v4 = [v16 locationOfInterest];
  v5 = [v4 mapItem];
  v6 = [v5 address];
  v7 = [v4 type];
  v8 = [v4 customLabel];
  v9 = [v5 name];
  v10 = [v6 countryCode];
  v11 = [v6 thoroughfare];
  v12 = [v6 locality];
  v13 = [(EKPredictedLocationOfInterest *)self initWithType:v7 customLabel:v8 mapItemName:v9 addressCountryCode:v10 addressThoroughFare:v11 addressLocality:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_rtPredictedLocationOfInterest, a3);
  }

  return v13;
}

- (EKPredictedLocationOfInterest)initWithType:(int64_t)a3 customLabel:(id)a4 mapItemName:(id)a5 addressCountryCode:(id)a6 addressThoroughFare:(id)a7 addressLocality:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v32.receiver = self;
  v32.super_class = EKPredictedLocationOfInterest;
  v19 = [(EKPredictedLocationOfInterest *)&v32 init];
  v20 = v19;
  if (v19)
  {
    v19->_type = a3;
    v21 = [v14 copy];
    customLabel = v20->_customLabel;
    v20->_customLabel = v21;

    v23 = [v15 copy];
    mapItemName = v20->_mapItemName;
    v20->_mapItemName = v23;

    v25 = [v16 copy];
    addressCountryCode = v20->_addressCountryCode;
    v20->_addressCountryCode = v25;

    v27 = [v17 copy];
    addressThoroughfare = v20->_addressThoroughfare;
    v20->_addressThoroughfare = v27;

    v29 = [v18 copy];
    addressLocality = v20->_addressLocality;
    v20->_addressLocality = v29;
  }

  return v20;
}

@end