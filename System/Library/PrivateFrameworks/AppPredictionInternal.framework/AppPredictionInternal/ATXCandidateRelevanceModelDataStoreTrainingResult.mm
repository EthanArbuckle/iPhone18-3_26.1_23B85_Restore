@interface ATXCandidateRelevanceModelDataStoreTrainingResult
- (ATXCandidateRelevanceModelDataStoreTrainingResult)initWithModel:(id)model candidate:(id)candidate featurizationManager:(id)manager modelUUID:(id)d datasetMetadata:(id)metadata clientModelName:(id)name trainDate:(id)date isVerified:(BOOL)self0;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXCandidateRelevanceModelDataStoreTrainingResult:(id)result;
- (id)description;
@end

@implementation ATXCandidateRelevanceModelDataStoreTrainingResult

- (ATXCandidateRelevanceModelDataStoreTrainingResult)initWithModel:(id)model candidate:(id)candidate featurizationManager:(id)manager modelUUID:(id)d datasetMetadata:(id)metadata clientModelName:(id)name trainDate:(id)date isVerified:(BOOL)self0
{
  modelCopy = model;
  candidateCopy = candidate;
  managerCopy = manager;
  dCopy = d;
  metadataCopy = metadata;
  nameCopy = name;
  dateCopy = date;
  v27.receiver = self;
  v27.super_class = ATXCandidateRelevanceModelDataStoreTrainingResult;
  v19 = [(ATXCandidateRelevanceModelDataStoreTrainingResult *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_model, model);
    objc_storeStrong(&v20->_candidate, candidate);
    objc_storeStrong(&v20->_featurizationManager, manager);
    objc_storeStrong(&v20->_modelUUID, d);
    objc_storeStrong(&v20->_datasetMetadata, metadata);
    objc_storeStrong(&v20->_clientModelName, name);
    objc_storeStrong(&v20->_trainDate, date);
    v20->_isVerified = verified;
  }

  return v20;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateStyle:4];
  [v4 setTimeStyle:4];
  v5 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
  [v4 setLocale:v5];

  identifier = [(ATXCandidate *)self->_candidate identifier];
  [v3 appendFormat:@"Candidate Identifier: %@\n", identifier];

  [v3 appendFormat:@"Client Model Name: %@\n", self->_clientModelName];
  [v3 appendFormat:@"Model UUID: %@\n", self->_modelUUID];
  if (self->_isVerified)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"Verified: %@\n", v7];
  [v3 appendFormat:@"%@\n", self->_datasetMetadata];
  v8 = [v4 stringFromDate:self->_trainDate];
  [v3 appendFormat:@"Date Trained: %@\n", v8];

  [v3 appendFormat:@"%@\n", self->_model];
  v9 = [(ATXCandidateRelevanceModel *)self->_model featureImportanceDescriptionForFeaturizationManager:self->_featurizationManager];
  [v3 appendFormat:@"Feature Importances: \n%@\n", v9];

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCandidateRelevanceModelDataStoreTrainingResult *)self isEqualToATXCandidateRelevanceModelDataStoreTrainingResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXCandidateRelevanceModelDataStoreTrainingResult:(id)result
{
  resultCopy = result;
  v5 = self->_model;
  v6 = v5;
  if (v5 == resultCopy[2])
  {
  }

  else
  {
    v7 = [(ATXCandidateRelevanceModel *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v8 = self->_candidate;
  v9 = v8;
  if (v8 == resultCopy[3])
  {
  }

  else
  {
    v10 = [(ATXCandidate *)v8 isEqual:?];

    if (!v10)
    {
      goto LABEL_23;
    }
  }

  v11 = self->_featurizationManager;
  v12 = v11;
  if (v11 == resultCopy[4])
  {
  }

  else
  {
    v13 = [(ATXCandidateRelevanceModelFeaturizationManager *)v11 isEqual:?];

    if (!v13)
    {
      goto LABEL_23;
    }
  }

  v14 = self->_modelUUID;
  v15 = v14;
  if (v14 == resultCopy[5])
  {
  }

  else
  {
    v16 = [(NSUUID *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v17 = self->_datasetMetadata;
  v18 = v17;
  if (v17 == resultCopy[6])
  {
  }

  else
  {
    v19 = [(ATXCandidateRelevanceModelDataStoreDatasetMetadata *)v17 isEqual:?];

    if (!v19)
    {
      goto LABEL_23;
    }
  }

  v20 = self->_clientModelName;
  v21 = v20;
  if (v20 == resultCopy[7])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
LABEL_23:
      v23 = 0;
      goto LABEL_24;
    }
  }

  v25 = self->_trainDate;
  v26 = v25;
  if (v25 == resultCopy[8])
  {
    v23 = 1;
  }

  else
  {
    v23 = [(NSDate *)v25 isEqual:?];
  }

LABEL_24:
  return v23;
}

@end