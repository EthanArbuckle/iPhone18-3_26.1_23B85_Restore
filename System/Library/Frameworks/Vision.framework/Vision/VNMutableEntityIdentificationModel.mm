@interface VNMutableEntityIdentificationModel
+ (BOOL)canCreateModelOfClass:(Class)a3 withObjects:(id)a4 error:(id *)a5;
+ (id)modelFromPersonsModel:(id)a3 error:(id *)a4;
+ (id)modelWithConfiguration:(id)a3 dataSource:(id)a4 error:(id *)a5;
+ (id)modelWithConfiguration:(id)a3 error:(id *)a4;
+ (id)newModelForVersion:(unint64_t)a3 modelObjects:(id)a4 error:(id *)a5;
- (BOOL)addAllPersonsFromPersonsModel:(id)a3 error:(id *)a4;
- (BOOL)addPersonWithUniqueIdentifier:(id)a3 fromPersonsModel:(id)a4 error:(id *)a5;
- (VNMutableEntityIdentificationModel)initWithConfiguration:(id)a3;
@end

@implementation VNMutableEntityIdentificationModel

+ (id)modelWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([a1 validateConfiguration:v6 error:a4])
  {
    v7 = [[a1 alloc] initWithConfiguration:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newModelForVersion:(unint64_t)a3 modelObjects:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 objectForKeyedSubscript:&unk_1F19C12D0];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    if (a5)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = NSStringFromClass(a1);
      v13 = [v11 stringWithFormat:@"%@ cannot open a read-only model", v12];

      *a5 = VNEntityIdentificationModelErrorForReadOnlyModelWithLocalizedDescription(v13);

      a5 = 0;
    }
  }

  else
  {
    v14 = [a1 modelConfigurationForVersion:a3 modelObjects:v8 error:a5];
    if (v14)
    {
      v25 = v14;
      v15 = [[a1 alloc] initWithConfiguration:v14];
      v16 = [v8 objectForKeyedSubscript:&unk_1F19C12E8];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v17 = [v16 keyEnumerator];
      v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v26 + 1) + 8 * i);
            v23 = [v16 objectForKey:v22];
            LODWORD(v22) = [v15 addObservations:v23 toEntityWithUniqueIdentifier:v22 error:a5];

            if (!v22)
            {

              a5 = 0;
              goto LABEL_15;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      a5 = v15;
LABEL_15:

      v14 = v25;
    }

    else
    {
      a5 = 0;
    }
  }

  return a5;
}

+ (id)modelWithConfiguration:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  if (a5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = NSStringFromClass(a1);
    v8 = [v6 stringWithFormat:@"%@ cannot be created with a data source", v7];

    *a5 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(2, v8, 0);
  }

  return 0;
}

+ (BOOL)canCreateModelOfClass:(Class)a3 withObjects:(id)a4 error:(id *)a5
{
  v8 = a4;
  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    if (a5)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = NSStringFromClass(a1);
      v11 = [v9 stringWithFormat:@"%@ cannot be created from a read-only model", v10];

      *a5 = VNEntityIdentificationModelErrorForReadOnlyModelWithLocalizedDescription(v11);

      LOBYTE(a5) = 0;
    }
  }

  else
  {
    v13.receiver = a1;
    v13.super_class = &OBJC_METACLASS___VNMutableEntityIdentificationModel;
    LOBYTE(a5) = objc_msgSendSuper2(&v13, sel_canCreateModelOfClass_withObjects_error_, a3, v8, a5);
  }

  return a5;
}

- (VNMutableEntityIdentificationModel)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[VNEntityIdentificationModelTrainingData alloc] initWithModelConfiguration:v4];
  v8.receiver = self;
  v8.super_class = VNMutableEntityIdentificationModel;
  v6 = [(VNEntityIdentificationModel *)&v8 initWithConfiguration:v4 dataSource:v5];

  if (v6)
  {
    [(VNEntityIdentificationModelTrainingData *)v5 setDelegate:v6];
    objc_storeStrong(&v6->_trainingData, v5);
  }

  return v6;
}

- (BOOL)addPersonWithUniqueIdentifier:(id)a3 fromPersonsModel:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 faceObservationsForPersonWithUniqueIdentifier:v8 error:a5];
  if (v9)
  {
    v10 = [(VNMutableEntityIdentificationModel *)self addObservations:v9 toEntityWithUniqueIdentifier:v8 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)addAllPersonsFromPersonsModel:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [v6 personUniqueIdentifiers];
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

        if (![(VNMutableEntityIdentificationModel *)self addPersonWithUniqueIdentifier:*(*(&v14 + 1) + 8 * i) fromPersonsModel:v6 error:a4, v14])
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

+ (id)modelFromPersonsModel:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 configuration];
  v8 = objc_alloc_init(VNCreateFaceprintRequest);
  if (-[VNRequest setRevision:error:](v8, "setRevision:error:", [v7 faceprintRequestRevision], a4))
  {
    v9 = [VNEntityIdentificationModelConfiguration newConfigurationForEntityPrintsGeneratedByRequest:v8 error:a4];
    if (v9)
    {
      [v9 setMaximumEntities:{objc_msgSend(v7, "maximumIdentities")}];
      [v9 setMaximumTrainingPrintsPerEntity:{objc_msgSend(v7, "maximumTrainingFaceprintsPerIdentity")}];
      v10 = [a1 modelWithConfiguration:v9 error:a4];
      v11 = v10;
      if (v10 && [v10 addAllPersonsFromPersonsModel:v6 error:a4])
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