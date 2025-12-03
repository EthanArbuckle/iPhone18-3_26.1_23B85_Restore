@interface ComponentSoftwareEnhancedLoggingState
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentSoftwareEnhancedLoggingState

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = +[ELSManager sharedManager];
  snapshot = [v4 snapshot];

  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [snapshot status]);
  [attributesCopy setObject:v6 forKeyedSubscript:ELSDefaultStatus];

  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [snapshot consent]);
  [attributesCopy setObject:v7 forKeyedSubscript:ELSDefaultConsent];

  v8 = +[DSDateFormatter sharedFormatter];
  v9 = [v8 formatterWithType:0];

  startDate = [snapshot startDate];

  if (startDate)
  {
    startDate2 = [snapshot startDate];
    v12 = [v9 stringFromDate:startDate2];
    [attributesCopy setObject:v12 forKeyedSubscript:ELSSubDefaultDatesStart];
  }

  endDate = [snapshot endDate];

  if (endDate)
  {
    endDate2 = [snapshot endDate];
    v15 = [v9 stringFromDate:endDate2];
    [attributesCopy setObject:v15 forKeyedSubscript:ELSSubDefaultDatesEnd];
  }

  queue = [snapshot queue];

  if (queue)
  {
    v36 = v9;
    v38 = attributesCopy;
    v40 = +[NSMutableArray array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v37 = snapshot;
    obj = [snapshot queue];
    v17 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v42;
      v20 = ELSSubDefaultQueueEntryType;
      v21 = ELSSubDefaultQueueEntryExecuteAfterDuration;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v41 + 1) + 8 * i);
          type = [v23 type];
          v25 = [ELSWhitelist findEntryForBundleIdentifier:type];

          if (v25)
          {
            v45[0] = v20;
            parameterName = [v25 parameterName];
            v45[1] = v21;
            v46[0] = parameterName;
            [v23 executeAfterDuration];
            v27 = [NSNumber numberWithDouble:?];
            v46[1] = v27;
            v28 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
            [v40 addObject:v28];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v18);
    }

    attributesCopy = v38;
    [v38 setObject:v40 forKeyedSubscript:ELSDefaultQueue];

    v9 = v36;
    snapshot = v37;
  }

  metadata = [snapshot metadata];

  if (metadata)
  {
    metadata2 = [snapshot metadata];
    v31 = ELSMetadataEnrollmentTicketNumber;
    v32 = [metadata2 objectForKeyedSubscript:ELSMetadataEnrollmentTicketNumber];

    if (v32)
    {
      [attributesCopy setObject:v32 forKeyedSubscript:v31];
    }

    metadata3 = [snapshot metadata];
    v34 = ELSMetadataGigafilesToken;
    v35 = [metadata3 objectForKeyedSubscript:ELSMetadataGigafilesToken];

    if (v35)
    {
      [attributesCopy setObject:v35 forKeyedSubscript:v34];
    }
  }
}

@end