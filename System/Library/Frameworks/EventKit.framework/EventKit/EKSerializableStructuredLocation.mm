@interface EKSerializableStructuredLocation
+ (id)classesForKey;
- (EKSerializableStructuredLocation)initWithStructuredLocation:(id)location;
- (id)createStructuredLocation;
@end

@implementation EKSerializableStructuredLocation

+ (id)classesForKey
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"calLocation";
  v6 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (EKSerializableStructuredLocation)initWithStructuredLocation:(id)location
{
  locationCopy = location;
  v8.receiver = self;
  v8.super_class = EKSerializableStructuredLocation;
  v5 = [(EKSerializableStructuredLocation *)&v8 init];
  if (v5)
  {
    calLocation = [locationCopy calLocation];
    [(EKSerializableStructuredLocation *)v5 setCalLocation:calLocation];
  }

  return v5;
}

- (id)createStructuredLocation
{
  calLocation = [(EKSerializableStructuredLocation *)self calLocation];
  v3 = [EKStructuredLocation locationWithCalLocation:calLocation];

  return v3;
}

@end