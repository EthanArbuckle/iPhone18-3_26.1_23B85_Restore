@interface NTKAlaskanPersistenceStorage
- (NSDate)diverCountUpStartDate;
- (NSNumber)gmtOffsetHours;
- (NSNumber)gmtSelectedCityIdentifier;
- (NSString)gmtSelectedTimezone;
- (NTKFaceViewDelegate)delegate;
- (void)setDiverCountUpStartDate:(id)a3;
- (void)setGmtOffsetHours:(id)a3;
- (void)setGmtSelectedCityIdentifier:(id)a3;
- (void)setGmtSelectedTimezone:(id)a3;
@end

@implementation NTKAlaskanPersistenceStorage

- (void)setGmtOffsetHours:(id)a3
{
  v7 = a3;
  v4 = [(NTKAlaskanPersistenceStorage *)self gmtOffsetHours];
  v5 = NTKEqualObjects();

  if ((v5 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained faceViewDidUpdateCustomData:v7 forKey:@"gmt-offset-hours"];
  }
}

- (NSNumber)gmtOffsetHours
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained faceViewDidRequestCustomDataForKey:@"gmt-offset-hours"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setGmtSelectedTimezone:(id)a3
{
  v7 = a3;
  v4 = [(NTKAlaskanPersistenceStorage *)self gmtSelectedTimezone];
  v5 = [v7 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained faceViewDidUpdateCustomData:v7 forKey:@"gmt-selected-timezone"];
  }
}

- (NSString)gmtSelectedTimezone
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained faceViewDidRequestCustomDataForKey:@"gmt-selected-timezone"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setGmtSelectedCityIdentifier:(id)a3
{
  v8 = a3;
  v4 = [v8 integerValue];
  v5 = [(NTKAlaskanPersistenceStorage *)self gmtSelectedCityIdentifier];
  v6 = [v5 integerValue];

  if (v4 != v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained faceViewDidUpdateCustomData:v8 forKey:@"gmt-selected-city"];
  }
}

- (NSNumber)gmtSelectedCityIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained faceViewDidRequestCustomDataForKey:@"gmt-selected-city"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDiverCountUpStartDate:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    v5 = [NSNumber numberWithDouble:?];
    [WeakRetained faceViewDidUpdateCustomData:v5 forKey:NTKDiverCountUpStartDate];
  }

  else
  {
    [WeakRetained faceViewDidUpdateCustomData:0 forKey:NTKDiverCountUpStartDate];
  }
}

- (NSDate)diverCountUpStartDate
{
  v3 = [(NTKAlaskanPersistenceStorage *)self delegate];

  if (v3)
  {
    v4 = [(NTKAlaskanPersistenceStorage *)self delegate];
    v5 = [v4 faceViewDidRequestCustomDataForKey:NTKDiverCountUpStartDate];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 doubleValue];
      v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NTKFaceViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end