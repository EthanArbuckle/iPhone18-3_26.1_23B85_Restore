@interface HDClinicalContentAnalyticsUnknownRecordsMetric
- (HDClinicalContentAnalyticsUnknownRecordsMetric)init;
- (NSString)debugDescription;
- (id)analyticsString;
- (id)elements;
- (int64_t)countForMetricElement:(id)element;
- (void)_addMetricElementsForRulesVersion:(int64_t)version hostURL:(id)l resourceType:(id)type failureInfo:(id)info;
- (void)accumulateMetricForItem:(id)item;
- (void)addUnknownRecordsMetricElement:(id)element;
- (void)enumerateElementsAsCoreAnalyticsPayloadWithDeviceContext:(id)context block:(id)block;
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

- (void)accumulateMetricForItem:(id)item
{
  itemCopy = item;
  medicalRecord = [itemCopy medicalRecord];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    sub_A5E34(a2, self);
  }

  medicalRecord2 = [itemCopy medicalRecord];
  metadata = [medicalRecord2 metadata];
  v9 = [metadata objectForKeyedSubscript:_HKPrivateMetadataKeyExtractionFailureInfo];

  v10 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v9 error:0];
  v11 = [[HDHRSExtractionFailureInfo alloc] initWithCoder:v10];
  medicalRecord3 = [itemCopy medicalRecord];
  extractionVersion = [medicalRecord3 extractionVersion];

  sourceURL = [itemCopy sourceURL];

  fHIRIdentifier = [medicalRecord2 FHIRIdentifier];
  resourceType = [fHIRIdentifier resourceType];
  [(HDClinicalContentAnalyticsUnknownRecordsMetric *)self _addMetricElementsForRulesVersion:extractionVersion hostURL:sourceURL resourceType:resourceType failureInfo:v11];
}

- (void)_addMetricElementsForRulesVersion:(int64_t)version hostURL:(id)l resourceType:(id)type failureInfo:(id)info
{
  typeCopy = type;
  infoCopy = info;
  absoluteString = [l absoluteString];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = infoCopy;
  obj = [infoCopy failureRecords];
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
        resourceKeyPath = [v17 resourceKeyPath];
        propertyName = [v17 propertyName];
        v20 = -[HDClinicalContentAnalyticsUnknownRecordsMetricElement initWithExtractionRulesVersion:reportedHost:resourceType:propertyName:resourceKeyPath:failureCode:]([HDClinicalContentAnalyticsUnknownRecordsMetricElement alloc], "initWithExtractionRulesVersion:reportedHost:resourceType:propertyName:resourceKeyPath:failureCode:", version, absoluteString, typeCopy, propertyName, resourceKeyPath, [v17 failureCode]);
        [(HDClinicalContentAnalyticsUnknownRecordsMetric *)self addUnknownRecordsMetricElement:v20];
      }

      v14 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }
}

- (void)enumerateElementsAsCoreAnalyticsPayloadWithDeviceContext:(id)context block:(id)block
{
  contextCopy = context;
  blockCopy = block;
  elements = self->_elements;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6B8D8;
  v11[3] = &unk_1081A8;
  v12 = contextCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = contextCopy;
  [(NSMutableDictionary *)elements enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)addUnknownRecordsMetricElement:(id)element
{
  elements = self->_elements;
  elementCopy = element;
  v7 = [(NSMutableDictionary *)elements objectForKeyedSubscript:elementCopy];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 integerValue] + 1);
  [(NSMutableDictionary *)self->_elements setObject:v6 forKeyedSubscript:elementCopy];
}

- (int64_t)countForMetricElement:(id)element
{
  v3 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:element];
  integerValue = [v3 integerValue];

  return integerValue;
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
  hk_sortedKeys = [(NSMutableDictionary *)self->_elements hk_sortedKeys];
  v5 = [hk_sortedKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(hk_sortedKeys);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [NSNumber numberWithInteger:[(HDClinicalContentAnalyticsUnknownRecordsMetric *)self countForMetricElement:v9]];
        v11 = [v9 payloadForCoreAnalyticsWithEventCount:v10 deviceContext:&__NSDictionary0__struct];

        v12 = [v11 description];
        [v3 addObject:v12];
      }

      v6 = [hk_sortedKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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