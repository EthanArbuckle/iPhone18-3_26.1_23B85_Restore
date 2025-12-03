@interface PHPersonAvailability
- (NSDictionary)dictionaryRepresentation;
- (PHPersonAvailability)initWithRequestedDetectionTypes:(id)types;
@end

@implementation PHPersonAvailability

- (NSDictionary)dictionaryRepresentation
{
  v12[6] = *MEMORY[0x1E69E9840];
  v11[0] = @"availablePersonCount";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHPersonAvailability availablePersonCount](self, "availablePersonCount")}];
  v12[0] = v3;
  v11[1] = @"keyFaceCount";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHPersonAvailability keyFaceCount](self, "keyFaceCount")}];
  v12[1] = v4;
  v11[2] = @"keyFaceWithVUObservationIDCount";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHPersonAvailability keyFaceWithVUObservationIDCount](self, "keyFaceWithVUObservationIDCount")}];
  v12[2] = v5;
  v11[3] = @"mdIDCount";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHPersonAvailability mdIDCount](self, "mdIDCount")}];
  v12[3] = v6;
  v11[4] = @"nonzeroFaceCropsCount";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHPersonAvailability nonzeroFaceCropsCount](self, "nonzeroFaceCropsCount")}];
  v12[4] = v7;
  v11[5] = @"requestedDetectionTypes";
  requestedDetectionTypes = [(PHPersonAvailability *)self requestedDetectionTypes];
  v12[5] = requestedDetectionTypes;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

- (PHPersonAvailability)initWithRequestedDetectionTypes:(id)types
{
  typesCopy = types;
  v9.receiver = self;
  v9.super_class = PHPersonAvailability;
  v6 = [(PHPersonAvailability *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestedDetectionTypes, types);
  }

  return v7;
}

@end