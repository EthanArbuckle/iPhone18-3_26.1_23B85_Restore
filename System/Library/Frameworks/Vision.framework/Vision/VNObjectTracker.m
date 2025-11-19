@interface VNObjectTracker
- (id)_parseInputObservations:(id)a3 imageBuffer:(id)a4 error:(id *)a5;
@end

@implementation VNObjectTracker

- (id)_parseInputObservations:(id)a3 imageBuffer:(id)a4 error:(id *)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 uuid];
    v8 = v7;
    if (v7)
    {
      v13 = v7;
      [v6 boundingBox];
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v16);
      v14[0] = DictionaryRepresentation;
      a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else if (a5)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Object identifier is not initialized in detected object observation"];
      *a5 = [VNError errorWithCode:5 message:v11];

      a5 = 0;
    }
  }

  else if (a5)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VNDetectedObjectObservation object is expected to initialize Object Tracker"];
    *a5 = [VNError errorWithCode:5 message:v10];

    a5 = 0;
  }

  return a5;
}

@end