@interface VNReadOnlyEntityIdentificationModel
+ (id)newModelForVersion:(unint64_t)version modelObjects:(id)objects error:(id *)error;
- (BOOL)dropTrainedModelAndReturnError:(id *)error;
- (VNReadOnlyEntityIdentificationModel)initWithConfiguration:(id)configuration trainedModel:(id)model;
- (id)observationsForEntityWithUniqueIdentifier:(id)identifier error:(id *)error;
- (unint64_t)entityIdentificationModel:(id)model numberOfObservationsForEntityAtIndex:(unint64_t)index;
@end

@implementation VNReadOnlyEntityIdentificationModel

- (unint64_t)entityIdentificationModel:(id)model numberOfObservationsForEntityAtIndex:(unint64_t)index
{
  v5 = [(VNEntityIdentificationModelTrainedModel *)self->_trainedModel uniqueIdentifierOfEntityAtIndex:index];
  v6 = [(VNEntityIdentificationModelTrainedModel *)self->_trainedModel printCountForEntityWithUniqueIdentifier:v5];

  return v6;
}

- (id)observationsForEntityWithUniqueIdentifier:(id)identifier error:(id *)error
{
  if (error)
  {
    *error = VNEntityIdentificationModelErrorForReadOnlyModelWithLocalizedDescription(@"observations are not available in a read-only model");
  }

  return 0;
}

- (BOOL)dropTrainedModelAndReturnError:(id *)error
{
  if (error)
  {
    *error = VNEntityIdentificationModelErrorForReadOnlyModelWithLocalizedDescription(0);
  }

  return 0;
}

- (VNReadOnlyEntityIdentificationModel)initWithConfiguration:(id)configuration trainedModel:(id)model
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = VNReadOnlyEntityIdentificationModel;
  v8 = [(VNEntityIdentificationModel *)&v11 initWithConfiguration:configuration dataSource:self];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_trainedModel, model);
  }

  return v9;
}

+ (id)newModelForVersion:(unint64_t)version modelObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  v9 = [self modelConfigurationForVersion:version modelObjects:objectsCopy error:error];
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    while (1)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&newModelForVersion_modelObjects_error__kTrainedModelSupportedTags[4 * v10]];
      v14 = [objectsCopy objectForKeyedSubscript:v13];

      if (v14)
      {
        break;
      }

      v11 = 0;
      v10 = 1;
      if ((v12 & 1) == 0)
      {
        if (error)
        {
          VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, @"trained model data is not available", 0);
          v14 = 0;
          *error = v15 = 0;
          goto LABEL_17;
        }

        v14 = 0;
        goto LABEL_16;
      }
    }

    if (![v14 entityCount])
    {
LABEL_11:
      v15 = [[self alloc] initWithConfiguration:v9 trainedModel:v14];
      goto LABEL_17;
    }

    entityPrintOriginatingRequestSpecifier = [v9 entityPrintOriginatingRequestSpecifier];
    entityPrintOriginatingRequestSpecifier2 = [v14 entityPrintOriginatingRequestSpecifier];
    if ([entityPrintOriginatingRequestSpecifier hasModelEquivalencyToRequestSpecifier:entityPrintOriginatingRequestSpecifier2])
    {

      goto LABEL_11;
    }

    if (error)
    {
      *error = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, @"trained model entity print originating request is not defined", 0);
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