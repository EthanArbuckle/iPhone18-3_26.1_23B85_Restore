@interface EKSerializableStructuredLocation
+ (id)classesForKey;
- (EKSerializableStructuredLocation)initWithStructuredLocation:(id)a3;
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

- (EKSerializableStructuredLocation)initWithStructuredLocation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EKSerializableStructuredLocation;
  v5 = [(EKSerializableStructuredLocation *)&v8 init];
  if (v5)
  {
    v6 = [v4 calLocation];
    [(EKSerializableStructuredLocation *)v5 setCalLocation:v6];
  }

  return v5;
}

- (id)createStructuredLocation
{
  v2 = [(EKSerializableStructuredLocation *)self calLocation];
  v3 = [EKStructuredLocation locationWithCalLocation:v2];

  return v3;
}

@end