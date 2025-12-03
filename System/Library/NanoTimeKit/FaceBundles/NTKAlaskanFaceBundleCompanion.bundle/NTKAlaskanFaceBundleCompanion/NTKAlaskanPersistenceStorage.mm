@interface NTKAlaskanPersistenceStorage
- (NSDate)diverCountUpStartDate;
- (NSNumber)gmtOffsetHours;
- (NSNumber)gmtSelectedCityIdentifier;
- (NSString)gmtSelectedTimezone;
- (NTKFaceViewDelegate)delegate;
- (void)setDiverCountUpStartDate:(id)date;
- (void)setGmtOffsetHours:(id)hours;
- (void)setGmtSelectedCityIdentifier:(id)identifier;
- (void)setGmtSelectedTimezone:(id)timezone;
@end

@implementation NTKAlaskanPersistenceStorage

- (void)setGmtOffsetHours:(id)hours
{
  hoursCopy = hours;
  gmtOffsetHours = [(NTKAlaskanPersistenceStorage *)self gmtOffsetHours];
  v5 = NTKEqualObjects();

  if ((v5 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained faceViewDidUpdateCustomData:hoursCopy forKey:@"gmt-offset-hours"];
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

- (void)setGmtSelectedTimezone:(id)timezone
{
  timezoneCopy = timezone;
  gmtSelectedTimezone = [(NTKAlaskanPersistenceStorage *)self gmtSelectedTimezone];
  v5 = [timezoneCopy isEqualToString:gmtSelectedTimezone];

  if ((v5 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained faceViewDidUpdateCustomData:timezoneCopy forKey:@"gmt-selected-timezone"];
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

- (void)setGmtSelectedCityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  integerValue = [identifierCopy integerValue];
  gmtSelectedCityIdentifier = [(NTKAlaskanPersistenceStorage *)self gmtSelectedCityIdentifier];
  integerValue2 = [gmtSelectedCityIdentifier integerValue];

  if (integerValue != integerValue2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained faceViewDidUpdateCustomData:identifierCopy forKey:@"gmt-selected-city"];
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

- (void)setDiverCountUpStartDate:(id)date
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (dateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
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
  delegate = [(NTKAlaskanPersistenceStorage *)self delegate];

  if (delegate)
  {
    delegate2 = [(NTKAlaskanPersistenceStorage *)self delegate];
    v5 = [delegate2 faceViewDidRequestCustomDataForKey:NTKDiverCountUpStartDate];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 doubleValue];
      delegate = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      delegate = 0;
    }
  }

  return delegate;
}

- (NTKFaceViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end