@interface PHFaceprint
- (PHFaceprint)initWithDictionaryRepresentation:(id)a3;
- (PHFaceprint)initWithFaceprintData:(id)a3 faceprintVersion:(int64_t)a4;
- (id)dictionaryRepresentation;
@end

@implementation PHFaceprint

- (PHFaceprint)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"faceprintData"];
  v6 = [v4 objectForKeyedSubscript:@"faceprintVersion"];

  v7 = -[PHFaceprint initWithFaceprintData:faceprintVersion:](self, "initWithFaceprintData:faceprintVersion:", v5, [v6 integerValue]);
  return v7;
}

- (id)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  faceprintVersion = self->_faceprintVersion;
  faceprintData = self->_faceprintData;
  v7[0] = @"faceprintData";
  v7[1] = @"faceprintVersion";
  v8[0] = faceprintData;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:faceprintVersion];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (PHFaceprint)initWithFaceprintData:(id)a3 faceprintVersion:(int64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PHFaceprint.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"data != nil"}];
  }

  v13.receiver = self;
  v13.super_class = PHFaceprint;
  v9 = [(PHFaceprint *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_faceprintData, a3);
    v10->_faceprintVersion = a4;
  }

  return v10;
}

@end