@interface VNReadOnlyPersonsModel
+ (id)newModelFromVersion:(unint64_t)a3 objects:(id)a4 error:(id *)a5;
- (BOOL)dropCurrentFaceModelAndReturnError:(id *)a3;
- (VNReadOnlyPersonsModel)initWithConfiguration:(id)a3 faceModel:(id)a4;
- (id)faceCountsForAllPersons;
- (id)faceCountsForPersonsWithUniqueIdentifiers:(id)a3;
- (id)faceObservationsForPersonWithUniqueIdentifier:(id)a3 error:(id *)a4;
- (id)personUniqueIdentifiers;
- (id)personsModel:(id)a3 faceObservationAtIndex:(unint64_t)a4 forPersonAtIndex:(unint64_t)a5;
- (id)personsModel:(id)a3 uniqueIdentifierOfPersonAtIndex:(unint64_t)a4;
- (unint64_t)faceCountForPersonWithUniqueIdentifier:(id)a3;
- (unint64_t)numberOfPersonsInPersonsModel:(id)a3;
- (unint64_t)personCount;
- (unint64_t)personsModel:(id)a3 indexOfPersonWithUniqueIdentifier:(id)a4;
- (unint64_t)personsModel:(id)a3 numberOfFaceObservationsForPersonAtIndex:(unint64_t)a4;
@end

@implementation VNReadOnlyPersonsModel

- (id)personsModel:(id)a3 faceObservationAtIndex:(unint64_t)a4 forPersonAtIndex:(unint64_t)a5
{
  v5 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0, a5];
  v6 = [v5 faceprintRequestRevision];
  v7 = [VNFaceObservation faceObservationWithRequestRevision:v6 boundingBox:0 roll:0 yaw:0 pitch:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v7;
}

- (unint64_t)personsModel:(id)a3 numberOfFaceObservationsForPersonAtIndex:(unint64_t)a4
{
  [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];

  return 0;
}

- (unint64_t)personsModel:(id)a3 indexOfPersonWithUniqueIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 personUniqueIdentifiers];
    v9 = [v8 indexOfObject:v5];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (id)personsModel:(id)a3 uniqueIdentifierOfPersonAtIndex:(unint64_t)a4
{
  v5 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 personUniqueIdentifiers];
    v8 = [v7 objectAtIndex:a4];
  }

  else
  {
    v8 = &stru_1F1976900;
  }

  return v8;
}

- (unint64_t)numberOfPersonsInPersonsModel:(id)a3
{
  v3 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 personUniqueIdentifiers];
    v6 = [v5 count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)faceCountsForAllPersons
{
  v2 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 faceCountsForAllPersons];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (id)faceCountsForPersonsWithUniqueIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 faceCountsForPersonsWithUniqueIdentifiers:v4];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (id)faceObservationsForPersonWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = VNPersonsModelErrorForReadOnlyModelWithLocalizedDescription(@"face observations are not available");
  }

  return 0;
}

- (unint64_t)faceCountForPersonWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 faceCountForPersonWithUniqueIdentifier:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)personUniqueIdentifiers
{
  v2 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 personUniqueIdentifiers];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (unint64_t)personCount
{
  v2 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 personCount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)dropCurrentFaceModelAndReturnError:(id *)a3
{
  if (a3)
  {
    *a3 = VNPersonsModelErrorForReadOnlyModelWithLocalizedDescription(0);
  }

  return 0;
}

- (VNReadOnlyPersonsModel)initWithConfiguration:(id)a3 faceModel:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VNReadOnlyPersonsModel;
  v8 = [(VNPersonsModel *)&v11 initWithConfiguration:a3 dataSource:self];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._faceModel_DO_NOT_ACCESS_DIRECTLY, a4);
  }

  return v9;
}

+ (id)newModelFromVersion:(unint64_t)a3 objects:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [a1 configurationFromLoadedObjects:v7 error:a5];
  if (v8)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(&+[VNReadOnlyPersonsModel newModelFromVersion:objects:error:]::kSupportedFaceModelTags + v9)];
      v13 = [v7 objectForKeyedSubscript:v12];

      if (v13)
      {
        break;
      }

      v10 = 0;
      v9 = 1;
      if ((v11 & 1) == 0)
      {
        if (a5)
        {
          VNPersonsModelErrorForInvalidModelData(@"face model data is unavailable");
          v13 = 0;
          *a5 = v14 = 0;
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        goto LABEL_13;
      }
    }

    v15 = [[a1 alloc] initWithConfiguration:v8 faceModel:v13];
    if ([v15 updateInternalConfigurationWithModelFaceprintRequestRevision:objc_msgSend(v13 error:{"faceprintRequestRevision"), a5}])
    {
      v14 = v15;
    }

    else
    {
      v14 = 0;
    }

LABEL_13:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end