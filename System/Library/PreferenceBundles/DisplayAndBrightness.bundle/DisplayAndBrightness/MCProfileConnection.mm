@interface MCProfileConnection
- (BOOL)isAutoLockOn:(id)a3;
- (id)autoLockTime;
- (id)autoLockTimeMaximum;
- (void)setAutoLockTime:(id)a3;
@end

@implementation MCProfileConnection

- (id)autoLockTime
{
  v3 = [(MCProfileConnection *)self effectiveValueForSetting:MCFeatureAutoLockTime];
  if ([(MCProfileConnection *)self _isUnset:v3])
  {
    v4 = [(MCProfileConnection *)self _autoLockTimeDefault];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (void)setAutoLockTime:(id)a3
{
  v4 = a3;
  v5 = &off_86A0;
  v6 = v4;
  if (v4 && ![(MCProfileConnection *)self _isNever:v4])
  {
    v5 = v6;
  }

  [(MCProfileConnection *)self setValue:v5 forSetting:MCFeatureAutoLockTime];
}

- (BOOL)isAutoLockOn:(id)a3
{
  v4 = a3;
  if ([(MCProfileConnection *)self isAutoLockEnabled]&& ![(MCProfileConnection *)self _isUnset:v4])
  {
    v5 = ![(MCProfileConnection *)self _isNever:v4];
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