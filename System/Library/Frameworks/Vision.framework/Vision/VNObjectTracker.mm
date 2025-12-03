@interface VNObjectTracker
- (id)_parseInputObservations:(id)observations imageBuffer:(id)buffer error:(id *)error;
@end

@implementation VNObjectTracker

- (id)_parseInputObservations:(id)observations imageBuffer:(id)buffer error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [observationsCopy uuid];
    v8 = uuid;
    if (uuid)
    {
      v13 = uuid;
      [observationsCopy boundingBox];
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v16);
      v14[0] = DictionaryRepresentation;
      error = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else if (error)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Object identifier is not initialized in detected object observation"];
      *error = [VNError errorWithCode:5 message:v11];

      error = 0;
    }
  }

  else if (error)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VNDetectedObjectObservation object is expected to initialize Object Tracker"];
    *error = [VNError errorWithCode:5 message:v10];

    error = 0;
  }

  return error;
}

@end