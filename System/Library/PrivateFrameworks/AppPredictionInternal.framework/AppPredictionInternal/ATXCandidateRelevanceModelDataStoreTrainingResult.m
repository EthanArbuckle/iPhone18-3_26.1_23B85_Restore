@interface ATXCandidateRelevanceModelDataStoreTrainingResult
- (ATXCandidateRelevanceModelDataStoreTrainingResult)initWithModel:(id)a3 candidate:(id)a4 featurizationManager:(id)a5 modelUUID:(id)a6 datasetMetadata:(id)a7 clientModelName:(id)a8 trainDate:(id)a9 isVerified:(BOOL)a10;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXCandidateRelevanceModelDataStoreTrainingResult:(id)a3;
- (id)description;
@end

@implementation ATXCandidateRelevanceModelDataStoreTrainingResult

- (ATXCandidateRelevanceModelDataStoreTrainingResult)initWithModel:(id)a3 candidate:(id)a4 featurizationManager:(id)a5 modelUUID:(id)a6 datasetMetadata:(id)a7 clientModelName:(id)a8 trainDate:(id)a9 isVerified:(BOOL)a10
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v17 = a8;
  v18 = a9;
  v27.receiver = self;
  v27.super_class = ATXCandidateRelevanceModelDataStoreTrainingResult;
  v19 = [(ATXCandidateRelevanceModelDataStoreTrainingResult *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_model, a3);
    objc_storeStrong(&v20->_candidate, a4);
    objc_storeStrong(&v20->_featurizationManager, a5);
    objc_storeStrong(&v20->_modelUUID, a6);
    objc_storeStrong(&v20->_datasetMetadata, a7);
    objc_storeStrong(&v20->_clientModelName, a8);
    objc_storeStrong(&v20->_trainDate, a9);
    v20->_isVerified = a10;
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

  v6 = [(ATXCandidate *)self->_candidate identifier];
  [v3 appendFormat:@"Candidate Identifier: %@\n", v6];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCandidateRelevanceModelDataStoreTrainingResult *)self isEqualToATXCandidateRelevanceModelDataStoreTrainingResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXCandidateRelevanceModelDataStoreTrainingResult:(id)a3
{
  v4 = a3;
  v5 = self->_model;
  v6 = v5;
  if (v5 == v4[2])
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
  if (v8 == v4[3])
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
  if (v11 == v4[4])
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
  if (v14 == v4[5])
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
  if (v17 == v4[6])
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
  if (v20 == v4[7])
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
  if (v25 == v4[8])
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