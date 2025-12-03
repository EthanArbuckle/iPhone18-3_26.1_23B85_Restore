@interface MCProfileConnection
- (BOOL)isAutoLockOn:(id)on;
- (id)autoLockTime;
- (id)autoLockTimeMaximum;
- (void)setAutoLockTime:(id)time;
@end

@implementation MCProfileConnection

- (id)autoLockTime
{
  v3 = [(MCProfileConnection *)self effectiveValueForSetting:MCFeatureAutoLockTime];
  if ([(MCProfileConnection *)self _isUnset:v3])
  {
    _autoLockTimeDefault = [(MCProfileConnection *)self _autoLockTimeDefault];
  }

  else
  {
    _autoLockTimeDefault = v3;
  }

  v5 = _autoLockTimeDefault;

  return v5;
}

- (void)setAutoLockTime:(id)time
{
  timeCopy = time;
  v5 = &off_100019338;
  v6 = timeCopy;
  if (timeCopy && ![(MCProfileConnection *)self _isNever:timeCopy])
  {
    v5 = v6;
  }

  [(MCProfileConnection *)self setValue:v5 forSetting:MCFeatureAutoLockTime];
}

- (BOOL)isAutoLockOn:(id)on
{
  onCopy = on;
  if ([(MCProfileConnection *)self isAutoLockEnabled]&& ![(MCProfileConnection *)self _isUnset:onCopy])
  {
    v5 = ![(MCProfileConnection *)self _isNever:onCopy];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)autoLockTimeMaximum
{
  v2 = [(MCProfileConnection *)self effectiveParametersForValueSetting:MCFeatureAutoLockTime];
  v3 = [v2 objectForKey:MCSettingParameterRangeMaximumKey];

  return v3;
}

@end