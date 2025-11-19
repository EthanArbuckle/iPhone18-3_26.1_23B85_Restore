@interface HDClinicalContentAnalyticsUnknownRecordsMetric
- (HDClinicalContentAnalyticsUnknownRecordsMetric)init;
- (NSString)debugDescription;
- (id)analyticsString;
- (id)elements;
- (int64_t)countForMetricElement:(id)a3;
- (void)_addMetricElementsForRulesVersion:(int64_t)a3 hostURL:(id)a4 resourceType:(id)a5 failureInfo:(id)a6;
- (void)accumulateMetricForItem:(id)a3;
- (void)addUnknownRecordsMetricElement:(id)a3;
- (void)enumerateElementsAsCoreAnalyticsPayloadWithDeviceContext:(id)a3 block:(id)a4;
@end

@implementation HDClinicalContentAnalyticsUnknownRecordsMetric

- (HDClinicalContentAnalyticsUnknownRecordsMetric)init
{
  v6.receiver = self;
  v6.super_class = HDClinicalContentAnalyticsUnknownRecordsMetric;
  v2 = [(HDClinicalContentAnalyticsUnknownRecordsMetric *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    elements = v2->_elements;
    v2->_elements = v3;
  }

  return v2;
}

- (void)accumulateMetricForItem:(id)a3
{
  v5 = a3;
  v6 = [v5 medicalRecord];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    sub_A5E34(a2, self);
  }

  v17 = [v5 medicalRecord];
  v8 = [v17 metadata];
  v9 = [v8 objectForKeyedSubscript:_HKPrivateMetadataKeyExtractionFailureInfo];

  v10 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v9 error:0];
  v11 = [[HDHRSExtractionFailureInfo alloc] initWithCoder:v10];
  v12 = [v5 medicalRecord];
  v13 = [v12 extractionVersion];

  v14 = [v5 sourceURL];

  v15 = [v17 FHIRIdentifier];
  v16 = [v15 resourceType];
  [(HDClinicalContentAnalyticsUnknownRecordsMetric *)self _addMetricElementsForRulesVersion:v13 hostURL:v14 resourceType:v16 failureInfo:v11];
}

- (void)_addMetricElementsForRulesVersion:(int64_t)a3 hostURL:(id)a4 resourceType:(id)a5 failureInfo:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [a4 absoluteString];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = v11;
  obj = [v11 failureRecords];
  v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [v17 resourceKeyPath];
        v19 = [v17 propertyName];
        v20 = -[HDClinicalContentAnalyticsUnknownRecordsMetricElement initWithExtractionRulesVersion:reportedHost:resourceType:propertyName:resourceKeyPath:failureCode:]([HDClinicalContentAnalyticsUnknownRecordsMetricElement alloc], "initWithExtractionRulesVersion:reportedHost:resourceType:propertyName:resourceKeyPath:failureCode:", a3, v12, v10, v19, v18, [v17 failureCode]);
        [(HDClinicalContentAnalyticsUnknownRecordsMetric *)self addUnknownRecordsMetricElement:v20];
      }

      v14 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }
}

- (void)enumerateElementsAsCoreAnalyticsPayloadWithDeviceContext:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  elements = self->_elements;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6B8D8;
  v11[3] = &unk_1081A8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NSMutableDictionary *)elements enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)addUnknownRecordsMetricElement:(id)a3
{
  elements = self->_elements;
  v5 = a3;
  v7 = [(NSMutableDictionary *)elements objectForKeyedSubscript:v5];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 integerValue] + 1);
  [(NSMutableDictionary *)self->_elements setObject:v6 forKeyedSubscript:v5];
}

- (int64_t)countForMetricElement:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (id)elements
{
  v2 = [(NSMutableDictionary *)self->_elements copy];

  return v2;
}

- (NSString)debugDescription
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableDictionary count](self->_elements, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_elements;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(HDClinicalContentAnalyticsUnknownRecordsMetric *)self countForMetricElement:v9];
        v11 = [v9 debugDescription];
        v12 = [NSString stringWithFormat:@"%@ --> %lu", v11, v10];

        [v3 addObject:v12];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v13 = objc_opt_class();
  v14 = [(HDClinicalContentAnalyticsUnknownRecordsMetric *)self count];
  v15 = [v3 componentsJoinedByString:@"\n\t"];
  v16 = [NSString stringWithFormat:@"<%@ %p> %lu elements:\n\t%@", v13, self, v14, v15, v18];

  return v16;
}

- (id)analyticsString
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableDictionary count](self->_elements, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(NSMutableDictionary *)self->_elements hk_sortedKeys];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [NSNumber numberWithInteger:[(HDClinicalContentAnalyticsUnknownRecordsMetric *)self countForMetricElement:v9]];
        v11 = [v9 payloadForCoreAnalyticsWithEventCount:v10 deviceContext:&__NSDictionary0__struct];

        v12 = [v11 description];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v13 = objc_opt_class();
  v14 = [(HDClinicalContentAnalyticsUnknownRecordsMetric *)self count];
  v15 = [v3 componentsJoinedByString:@"\n---\n"];
  v16 = [NSString stringWithFormat:@"%@ %lu elements:\n\n%@", v13, v14, v15];

  return v16;
}

@end