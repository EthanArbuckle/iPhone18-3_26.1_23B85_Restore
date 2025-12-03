@interface ATXCandidateRelevanceModelDataStoreDatasetMetadata
+ (id)datasetMetadataForDataPoints:(id)points;
- (ATXCandidateRelevanceModelDataStoreDatasetMetadata)initWithNumberOfPositiveSamples:(unint64_t)samples numberOfSamples:(unint64_t)ofSamples numberOfDaysWithPositiveSamples:(unint64_t)positiveSamples numberOfDaysWithSamples:(unint64_t)withSamples startDate:(id)date endDate:(id)endDate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXCandidateRelevanceModelDataStoreDatasetMetadata:(id)metadata;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation ATXCandidateRelevanceModelDataStoreDatasetMetadata

- (ATXCandidateRelevanceModelDataStoreDatasetMetadata)initWithNumberOfPositiveSamples:(unint64_t)samples numberOfSamples:(unint64_t)ofSamples numberOfDaysWithPositiveSamples:(unint64_t)positiveSamples numberOfDaysWithSamples:(unint64_t)withSamples startDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v20.receiver = self;
  v20.super_class = ATXCandidateRelevanceModelDataStoreDatasetMetadata;
  v17 = [(ATXCandidateRelevanceModelDataStoreDatasetMetadata *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_numberOfPositiveSamples = samples;
    v17->_numberOfSamples = ofSamples;
    v17->_numberOfDaysWithPositiveSamples = positiveSamples;
    v17->_numberOfDaysWithSamples = withSamples;
    objc_storeStrong(&v17->_startDate, date);
    objc_storeStrong(&v18->_endDate, endDate);
  }

  return v18;
}

+ (id)datasetMetadataForDataPoints:(id)points
{
  v18 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = pointsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 observeDataPoint:{*(*(&v13 + 1) + 8 * i), v13}];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  currentMetadata = [v4 currentMetadata];

  v11 = *MEMORY[0x277D85DE8];

  return currentMetadata;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateStyle:4];
  [v4 setTimeStyle:4];
  v5 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
  [v4 setLocale:v5];

  v6 = [v4 stringFromDate:self->_startDate];
  [v3 appendFormat:@"Dataset Start Date: %@\n", v6];

  v7 = [v4 stringFromDate:self->_endDate];
  [v3 appendFormat:@"Dataset End Date: %@\n", v7];

  [v3 appendFormat:@"Dataset Number of Positive Samples: %lu\n", self->_numberOfPositiveSamples];
  [v3 appendFormat:@"Dataset Number of Samples: %lu\n", self->_numberOfSamples];
  [v3 appendFormat:@"Dataset Number of Days with Positive Samples: %lu\n", self->_numberOfDaysWithPositiveSamples];
  [v3 appendFormat:@"Dataset Number of Days with Samples: %lu", self->_numberOfDaysWithSamples];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCandidateRelevanceModelDataStoreDatasetMetadata *)self isEqualToATXCandidateRelevanceModelDataStoreDatasetMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXCandidateRelevanceModelDataStoreDatasetMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (*&self->_numberOfPositiveSamples != *(metadataCopy + 8) || self->_numberOfDaysWithPositiveSamples != *(metadataCopy + 3) || self->_numberOfDaysWithSamples != *(metadataCopy + 4))
  {
    goto LABEL_6;
  }

  v6 = self->_startDate;
  v7 = v6;
  if (v6 == v5[5])
  {
  }

  else
  {
    v8 = [(NSDate *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
LABEL_6:
      v9 = 0;
      goto LABEL_7;
    }
  }

  v11 = self->_endDate;
  v12 = v11;
  if (v11 == v5[6])
  {
    v9 = 1;
  }

  else
  {
    v9 = [(NSDate *)v11 isEqual:?];
  }

LABEL_7:
  return v9;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXCandidateRelevanceModelDataStoreDatasetMetadata numberOfPositiveSamples](self, "numberOfPositiveSamples")}];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(compareCopy, "numberOfPositiveSamples")}];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXCandidateRelevanceModelDataStoreDatasetMetadata numberOfDaysWithPositiveSamples](self, "numberOfDaysWithPositiveSamples")}];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(compareCopy, "numberOfDaysWithPositiveSamples")}];
    v7 = [v8 compare:v9];
  }

  return v7;
}

@end