@interface VNReadOnlyEntityIdentificationModel
+ (id)newModelForVersion:(unint64_t)a3 modelObjects:(id)a4 error:(id *)a5;
- (BOOL)dropTrainedModelAndReturnError:(id *)a3;
- (VNReadOnlyEntityIdentificationModel)initWithConfiguration:(id)a3 trainedModel:(id)a4;
- (id)observationsForEntityWithUniqueIdentifier:(id)a3 error:(id *)a4;
- (unint64_t)entityIdentificationModel:(id)a3 numberOfObservationsForEntityAtIndex:(unint64_t)a4;
@end

@implementation VNReadOnlyEntityIdentificationModel

- (unint64_t)entityIdentificationModel:(id)a3 numberOfObservationsForEntityAtIndex:(unint64_t)a4
{
  v5 = [(VNEntityIdentificationModelTrainedModel *)self->_trainedModel uniqueIdentifierOfEntityAtIndex:a4];
  v6 = [(VNEntityIdentificationModelTrainedModel *)self->_trainedModel printCountForEntityWithUniqueIdentifier:v5];

  return v6;
}

- (id)observationsForEntityWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = VNEntityIdentificationModelErrorForReadOnlyModelWithLocalizedDescription(@"observations are not available in a read-only model");
  }

  return 0;
}

- (BOOL)dropTrainedModelAndReturnError:(id *)a3
{
  if (a3)
  {
    *a3 = VNEntityIdentificationModelErrorForReadOnlyModelWithLocalizedDescription(0);
  }

  return 0;
}

- (VNReadOnlyEntityIdentificationModel)initWithConfiguration:(id)a3 trainedModel:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VNReadOnlyEntityIdentificationModel;
  v8 = [(VNEntityIdentificationModel *)&v11 initWithConfiguration:a3 dataSource:self];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_trainedModel, a4);
  }

  return v9;
}

+ (id)newModelForVersion:(unint64_t)a3 modelObjects:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 modelConfigurationForVersion:a3 modelObjects:v8 error:a5];
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    while (1)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&newModelForVersion_modelObjects_error__kTrainedModelSupportedTags[4 * v10]];
      v14 = [v8 objectForKeyedSubscript:v13];

      if (v14)
      {
        break;
      }

      v11 = 0;
      v10 = 1;
      if ((v12 & 1) == 0)
      {
        if (a5)
        {
          VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, @"trained model data is not available", 0);
          v14 = 0;
          *a5 = v15 = 0;
          goto LABEL_17;
        }

        v14 = 0;
        goto LABEL_16;
      }
    }

    if (![v14 entityCount])
    {
LABEL_11:
      v15 = [[a1 alloc] initWithConfiguration:v9 trainedModel:v14];
      goto LABEL_17;
    }

    v16 = [v9 entityPrintOriginatingRequestSpecifier];
    v17 = [v14 entityPrintOriginatingRequestSpecifier];
    if ([v16 hasModelEquivalencyToRequestSpecifier:v17])
    {

      goto LABEL_11;
    }

    if (a5)
    {
      *a5 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, @"trained model entity print originating request is not defined", 0);
    }

LABEL_16:
    v15 = 0;
LABEL_17:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end