@interface VNReadOnlyPersonsModel
+ (id)newModelFromVersion:(unint64_t)version objects:(id)objects error:(id *)error;
- (BOOL)dropCurrentFaceModelAndReturnError:(id *)error;
- (VNReadOnlyPersonsModel)initWithConfiguration:(id)configuration faceModel:(id)model;
- (id)faceCountsForAllPersons;
- (id)faceCountsForPersonsWithUniqueIdentifiers:(id)identifiers;
- (id)faceObservationsForPersonWithUniqueIdentifier:(id)identifier error:(id *)error;
- (id)personUniqueIdentifiers;
- (id)personsModel:(id)model faceObservationAtIndex:(unint64_t)index forPersonAtIndex:(unint64_t)atIndex;
- (id)personsModel:(id)model uniqueIdentifierOfPersonAtIndex:(unint64_t)index;
- (unint64_t)faceCountForPersonWithUniqueIdentifier:(id)identifier;
- (unint64_t)numberOfPersonsInPersonsModel:(id)model;
- (unint64_t)personCount;
- (unint64_t)personsModel:(id)model indexOfPersonWithUniqueIdentifier:(id)identifier;
- (unint64_t)personsModel:(id)model numberOfFaceObservationsForPersonAtIndex:(unint64_t)index;
@end

@implementation VNReadOnlyPersonsModel

- (id)personsModel:(id)model faceObservationAtIndex:(unint64_t)index forPersonAtIndex:(unint64_t)atIndex
{
  atIndex = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0, atIndex];
  faceprintRequestRevision = [atIndex faceprintRequestRevision];
  v7 = [VNFaceObservation faceObservationWithRequestRevision:faceprintRequestRevision boundingBox:0 roll:0 yaw:0 pitch:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v7;
}

- (unint64_t)personsModel:(id)model numberOfFaceObservationsForPersonAtIndex:(unint64_t)index
{
  [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];

  return 0;
}

- (unint64_t)personsModel:(id)model indexOfPersonWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v7 = v6;
  if (v6)
  {
    personUniqueIdentifiers = [v6 personUniqueIdentifiers];
    v9 = [personUniqueIdentifiers indexOfObject:identifierCopy];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (id)personsModel:(id)model uniqueIdentifierOfPersonAtIndex:(unint64_t)index
{
  v5 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v6 = v5;
  if (v5)
  {
    personUniqueIdentifiers = [v5 personUniqueIdentifiers];
    v8 = [personUniqueIdentifiers objectAtIndex:index];
  }

  else
  {
    v8 = &stru_1F1976900;
  }

  return v8;
}

- (unint64_t)numberOfPersonsInPersonsModel:(id)model
{
  v3 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v4 = v3;
  if (v3)
  {
    personUniqueIdentifiers = [v3 personUniqueIdentifiers];
    v6 = [personUniqueIdentifiers count];
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
    faceCountsForAllPersons = [v2 faceCountsForAllPersons];
  }

  else
  {
    faceCountsForAllPersons = MEMORY[0x1E695E0F8];
  }

  return faceCountsForAllPersons;
}

- (id)faceCountsForPersonsWithUniqueIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 faceCountsForPersonsWithUniqueIdentifiers:identifiersCopy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (id)faceObservationsForPersonWithUniqueIdentifier:(id)identifier error:(id *)error
{
  if (error)
  {
    *error = VNPersonsModelErrorForReadOnlyModelWithLocalizedDescription(@"face observations are not available");
  }

  return 0;
}

- (unint64_t)faceCountForPersonWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 faceCountForPersonWithUniqueIdentifier:identifierCopy];
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
    personUniqueIdentifiers = [v2 personUniqueIdentifiers];
  }

  else
  {
    personUniqueIdentifiers = MEMORY[0x1E695E0F0];
  }

  return personUniqueIdentifiers;
}

- (unint64_t)personCount
{
  v2 = [(VNReadOnlyPersonsModel *)self upToDateFaceModelWithCanceller:0 error:0];
  v3 = v2;
  if (v2)
  {
    personCount = [v2 personCount];
  }

  else
  {
    personCount = 0;
  }

  return personCount;
}

- (BOOL)dropCurrentFaceModelAndReturnError:(id *)error
{
  if (error)
  {
    *error = VNPersonsModelErrorForReadOnlyModelWithLocalizedDescription(0);
  }

  return 0;
}

- (VNReadOnlyPersonsModel)initWithConfiguration:(id)configuration faceModel:(id)model
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = VNReadOnlyPersonsModel;
  v8 = [(VNPersonsModel *)&v11 initWithConfiguration:configuration dataSource:self];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._faceModel_DO_NOT_ACCESS_DIRECTLY, model);
  }

  return v9;
}

+ (id)newModelFromVersion:(unint64_t)version objects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  v8 = [self configurationFromLoadedObjects:objectsCopy error:error];
  if (v8)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(&+[VNReadOnlyPersonsModel newModelFromVersion:objects:error:]::kSupportedFaceModelTags + v9)];
      v13 = [objectsCopy objectForKeyedSubscript:v12];

      if (v13)
      {
        break;
      }

      v10 = 0;
      v9 = 1;
      if ((v11 & 1) == 0)
      {
        if (error)
        {
          VNPersonsModelErrorForInvalidModelData(@"face model data is unavailable");
          v13 = 0;
          *error = v14 = 0;
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        goto LABEL_13;
      }
    }

    v15 = [[self alloc] initWithConfiguration:v8 faceModel:v13];
    if ([v15 updateInternalConfigurationWithModelFaceprintRequestRevision:objc_msgSend(v13 error:{"faceprintRequestRevision"), error}])
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