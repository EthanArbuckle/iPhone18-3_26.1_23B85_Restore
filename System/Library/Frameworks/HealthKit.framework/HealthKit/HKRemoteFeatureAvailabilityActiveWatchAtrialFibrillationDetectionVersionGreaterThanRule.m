@interface HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionGreaterThanRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
- (void)setTargetVersion:(id *)a3;
@end

@implementation HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionGreaterThanRule

- (void)processUserInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"AtrialFibrillationDetectionVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    HKSemanticVersionFromString(&v7, v4);
    v5 = v7;
    v6 = v8;
    [(HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionGreaterThanRule *)self setTargetVersion:&v5];
  }
}

- (BOOL)evaluate
{
  v3 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v4 = v3;
  if (v3)
  {
    [v3 watchAtrialFibrillationDetectionVersion];
  }

  else
  {
    v13 = 0uLL;
    v14 = 0;
  }

  if (HKSemanticVersionIsUnknown(&v13))
  {
    v5 = 0;
LABEL_15:

    return v5;
  }

  v6 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v7 = v6;
  if (v6)
  {
    [v6 watchAtrialFibrillationDetectionVersion];
  }

  else
  {
    v13 = 0uLL;
    v14 = 0;
  }

  v11 = 0uLL;
  v12 = 0;
  v8 = HKSemanticVersionsEqual(&v13, &v11);

  if (!v8)
  {
    [(HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionGreaterThanRule *)self targetVersion];
    v9 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
    v4 = v9;
    if (v9)
    {
      [v9 watchAtrialFibrillationDetectionVersion];
    }

    else
    {
      v11 = 0uLL;
      v12 = 0;
    }

    v5 = HKSemanticVersionCompare(&v13, &v11) == -1;
    goto LABEL_15;
  }

  return 0;
}

- (void)setTargetVersion:(id *)a3
{
  var2 = a3->var2;
  *&self->_targetVersion.majorVersion = *&a3->var0;
  self->_targetVersion.patchVersion = var2;
}

@end