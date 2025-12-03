@interface VNMutableEntityIdentificationModel
+ (BOOL)canCreateModelOfClass:(Class)class withObjects:(id)objects error:(id *)error;
+ (id)modelFromPersonsModel:(id)model error:(id *)error;
+ (id)modelWithConfiguration:(id)configuration dataSource:(id)source error:(id *)error;
+ (id)modelWithConfiguration:(id)configuration error:(id *)error;
+ (id)newModelForVersion:(unint64_t)version modelObjects:(id)objects error:(id *)error;
- (BOOL)addAllPersonsFromPersonsModel:(id)model error:(id *)error;
- (BOOL)addPersonWithUniqueIdentifier:(id)identifier fromPersonsModel:(id)model error:(id *)error;
- (VNMutableEntityIdentificationModel)initWithConfiguration:(id)configuration;
@end

@implementation VNMutableEntityIdentificationModel

+ (id)modelWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  if ([self validateConfiguration:configurationCopy error:error])
  {
    v7 = [[self alloc] initWithConfiguration:configurationCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newModelForVersion:(unint64_t)version modelObjects:(id)objects error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v9 = [objectsCopy objectForKeyedSubscript:&unk_1F19C12D0];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    if (error)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = NSStringFromClass(self);
      v13 = [v11 stringWithFormat:@"%@ cannot open a read-only model", v12];

      *error = VNEntityIdentificationModelErrorForReadOnlyModelWithLocalizedDescription(v13);

      error = 0;
    }
  }

  else
  {
    v14 = [self modelConfigurationForVersion:version modelObjects:objectsCopy error:error];
    if (v14)
    {
      v25 = v14;
      v15 = [[self alloc] initWithConfiguration:v14];
      v16 = [objectsCopy objectForKeyedSubscript:&unk_1F19C12E8];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      keyEnumerator = [v16 keyEnumerator];
      v18 = [keyEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v27;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v27 != v20)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v22 = *(*(&v26 + 1) + 8 * i);
            v23 = [v16 objectForKey:v22];
            LODWORD(v22) = [v15 addObservations:v23 toEntityWithUniqueIdentifier:v22 error:error];

            if (!v22)
            {

              error = 0;
              goto LABEL_15;
            }
          }

          v19 = [keyEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      error = v15;
LABEL_15:

      v14 = v25;
    }

    else
    {
      error = 0;
    }
  }

  return error;
}

+ (id)modelWithConfiguration:(id)configuration dataSource:(id)source error:(id *)error
{
  if (error)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = NSStringFromClass(self);
    v8 = [v6 stringWithFormat:@"%@ cannot be created with a data source", v7];

    *error = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(2, v8, 0);
  }

  return 0;
}

+ (BOOL)canCreateModelOfClass:(Class)class withObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    if (error)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = NSStringFromClass(self);
      v11 = [v9 stringWithFormat:@"%@ cannot be created from a read-only model", v10];

      *error = VNEntityIdentificationModelErrorForReadOnlyModelWithLocalizedDescription(v11);

      LOBYTE(error) = 0;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = &OBJC_METACLASS___VNMutableEntityIdentificationModel;
    LOBYTE(error) = objc_msgSendSuper2(&v13, sel_canCreateModelOfClass_withObjects_error_, class, objectsCopy, error);
  }

  return error;
}

- (VNMutableEntityIdentificationModel)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[VNEntityIdentificationModelTrainingData alloc] initWithModelConfiguration:configurationCopy];
  v8.receiver = self;
  v8.super_class = VNMutableEntityIdentificationModel;
  v6 = [(VNEntityIdentificationModel *)&v8 initWithConfiguration:configurationCopy dataSource:v5];

  if (v6)
  {
    [(VNEntityIdentificationModelTrainingData *)v5 setDelegate:v6];
    objc_storeStrong(&v6->_trainingData, v5);
  }

  return v6;
}

- (BOOL)addPersonWithUniqueIdentifier:(id)identifier fromPersonsModel:(id)model error:(id *)error
{
  identifierCopy = identifier;
  v9 = [model faceObservationsForPersonWithUniqueIdentifier:identifierCopy error:error];
  if (v9)
  {
    v10 = [(VNMutableEntityIdentificationModel *)self addObservations:v9 toEntityWithUniqueIdentifier:identifierCopy error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)addAllPersonsFromPersonsModel:(id)model error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  [modelCopy personUniqueIdentifiers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![(VNMutableEntityIdentificationModel *)self addPersonWithUniqueIdentifier:*(*(&v14 + 1) + 8 * i) fromPersonsModel:modelCopy error:error, v14])
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

+ (id)modelFromPersonsModel:(id)model error:(id *)error
{
  modelCopy = model;
  configuration = [modelCopy configuration];
  v8 = objc_alloc_init(VNCreateFaceprintRequest);
  if (-[VNRequest setRevision:error:](v8, "setRevision:error:", [configuration faceprintRequestRevision], error))
  {
    v9 = [VNEntityIdentificationModelConfiguration newConfigurationForEntityPrintsGeneratedByRequest:v8 error:error];
    if (v9)
    {
      [v9 setMaximumEntities:{objc_msgSend(configuration, "maximumIdentities")}];
      [v9 setMaximumTrainingPrintsPerEntity:{objc_msgSend(configuration, "maximumTrainingFaceprintsPerIdentity")}];
      v10 = [self modelWithConfiguration:v9 error:error];
      v11 = v10;
      if (v10 && [v10 addAllPersonsFromPersonsModel:modelCopy error:error])
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end