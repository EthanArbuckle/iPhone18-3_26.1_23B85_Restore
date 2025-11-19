@interface HDClinicalContentAnalyticsUnknownRecordsMetricElement
- (BOOL)isEqual:(id)a3;
- (HDClinicalContentAnalyticsUnknownRecordsMetricElement)initWithExtractionRulesVersion:(int64_t)a3 reportedHost:(id)a4 resourceType:(id)a5 propertyName:(id)a6 resourceKeyPath:(id)a7 failureCode:(int64_t)a8;
- (id)debugDescription;
- (id)payloadForCoreAnalyticsWithEventCount:(id)a3 deviceContext:(id)a4;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation HDClinicalContentAnalyticsUnknownRecordsMetricElement

- (HDClinicalContentAnalyticsUnknownRecordsMetricElement)initWithExtractionRulesVersion:(int64_t)a3 reportedHost:(id)a4 resourceType:(id)a5 propertyName:(id)a6 resourceKeyPath:(id)a7 failureCode:(int64_t)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_A5EB0(a2, self);
    if (v16)
    {
      goto LABEL_3;
    }
  }

  sub_A5F2C(a2, self);
LABEL_3:
  v29.receiver = self;
  v29.super_class = HDClinicalContentAnalyticsUnknownRecordsMetricElement;
  v19 = [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)&v29 init];
  if (v19)
  {
    v20 = [v15 copy];
    reportedHost = v19->_reportedHost;
    v19->_reportedHost = v20;

    v22 = [v16 copy];
    resourceType = v19->_resourceType;
    v19->_resourceType = v22;

    v24 = [v17 copy];
    propertyName = v19->_propertyName;
    v19->_propertyName = v24;

    v26 = [v18 copy];
    keyPath = v19->_keyPath;
    v19->_keyPath = v26;

    v19->_failureCode = a8;
    v19->_extractionRulesVersion = a3;
  }

  return v19;
}

- (id)payloadForCoreAnalyticsWithEventCount:(id)a3 deviceContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSMutableDictionary alloc];
  v9 = [v7 objectForKeyedSubscript:@"countPairediPad"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &off_110378;
  }

  v32[0] = v11;
  v31[1] = @"countPairediPhone";
  v12 = [v7 objectForKeyedSubscript:?];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &off_110378;
  }

  v32[1] = v14;
  v31[2] = @"countPairedWatch";
  v15 = [v7 objectForKeyedSubscript:?];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &off_110378;
  }

  v32[2] = v17;
  v31[3] = @"countPairedVisionPro";
  v18 = [v7 objectForKeyedSubscript:?];

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &off_110378;
  }

  v32[3] = v19;
  v32[4] = v6;
  v31[4] = @"extractionFailureEventCount";
  v31[5] = @"extractionRulesVersion";
  v20 = [NSNumber numberWithInteger:self->_extractionRulesVersion];
  v32[5] = v20;
  v31[6] = @"failureCode";
  failureCode = self->_failureCode;
  v22 = NSStringFromHDClinicalAnalyticsExtractionFailureCode();
  reportedHost = self->_reportedHost;
  resourceType = self->_resourceType;
  v32[6] = v22;
  v32[7] = reportedHost;
  v31[7] = @"host";
  v31[8] = @"resourceType";
  v32[8] = resourceType;
  v25 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:9];
  v26 = [v8 initWithDictionary:v25];

  propertyName = self->_propertyName;
  if (propertyName)
  {
    [v26 setObject:propertyName forKeyedSubscript:@"propertyName"];
  }

  keyPath = self->_keyPath;
  if (keyPath)
  {
    [v26 setObject:keyPath forKeyedSubscript:@"resourceKeyPath"];
  }

  v29 = [v26 copy];

  return v29;
}

- (unint64_t)hash
{
  extractionRulesVersion = self->_extractionRulesVersion;
  v4 = [(NSString *)self->_reportedHost hash]^ extractionRulesVersion;
  v5 = [(NSString *)self->_resourceType hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_keyPath hash];
  return v6 ^ [(NSString *)self->_propertyName hash]^ self->_failureCode;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self->_extractionRulesVersion != v5->_extractionRulesVersion)
      {
        goto LABEL_19;
      }

      reportedHost = self->_reportedHost;
      v7 = v5->_reportedHost;
      if (reportedHost != v7 && (!v7 || ![(NSString *)reportedHost isEqual:?]))
      {
        goto LABEL_19;
      }

      if (((resourceType = self->_resourceType, v9 = v5->_resourceType, resourceType == v9) || v9 && [(NSString *)resourceType isEqualToString:?]) && ((keyPath = self->_keyPath, v11 = v5->_keyPath, keyPath == v11) || v11 && [(NSString *)keyPath isEqualToString:?]) && ((propertyName = self->_propertyName, v13 = v5->_propertyName, propertyName == v13) || v13 && [(NSString *)propertyName isEqualToString:?]))
      {
        v14 = self->_failureCode == v5->_failureCode;
      }

      else
      {
LABEL_19:
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithInteger:self->_extractionRulesVersion];
  v6 = [NSNumber numberWithInteger:v4[1]];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [(NSString *)self->_resourceType compare:v4[3]];
    if (v8)
    {
LABEL_3:
      v7 = v8;
      goto LABEL_4;
    }

    propertyName = self->_propertyName;
    v11 = v4[4];
    if (propertyName)
    {
      if (!v11)
      {
        goto LABEL_14;
      }

      v8 = [(NSString *)propertyName compare:?];
      if (v8)
      {
        goto LABEL_3;
      }
    }

    else if (v11)
    {
      goto LABEL_16;
    }

    keyPath = self->_keyPath;
    v13 = v4[5];
    if (keyPath)
    {
      if (v13)
      {
        v8 = [(NSString *)keyPath compare:?];
        if (v8)
        {
          goto LABEL_3;
        }

LABEL_17:
        v14 = [NSNumber numberWithInteger:self->_failureCode];
        v15 = [NSNumber numberWithInteger:v4[6]];
        v7 = [v14 compare:v15];

        goto LABEL_4;
      }

LABEL_14:
      v7 = 1;
      goto LABEL_4;
    }

    if (!v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    v7 = -1;
  }

LABEL_4:

  return v7;
}

- (id)debugDescription
{
  v3 = [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)self extractionRulesVersion];
  v4 = [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)self reportedHost];
  v5 = [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)self resourceType];
  v6 = [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)self propertyName];
  v7 = [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)self keyPath];
  [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)self failureCode];
  v8 = NSStringFromHDClinicalAnalyticsExtractionFailureCode();
  v9 = [NSString stringWithFormat:@"(%ld, %@, %@, %@, %@, %@)", v3, v4, v5, v6, v7, v8];

  v10 = [NSString stringWithFormat:@"<%@ %p> %@", objc_opt_class(), self, v9];

  return v10;
}

@end