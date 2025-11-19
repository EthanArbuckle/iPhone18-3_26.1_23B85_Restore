@interface HMCameraStreamAudioPreferences
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCameraStreamAudioPreferences)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraStreamAudioPreferences

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMCameraStreamAudioPreferences *)self codecs];
  v5 = [v3 initWithName:@"Codecs" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  v2 = [(HMCameraStreamAudioPreferences *)self codecs];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMCameraStreamAudioPreferences *)self codecs];
    v8 = [v6 codecs];
    v9 = [v7 isEqualToSet:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMCameraStreamAudioPreferences *)self codecs];
  [v4 encodeObject:v5 forKey:@"HM.CameraStreamAudioCodecs"];
}

- (HMCameraStreamAudioPreferences)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMCameraStreamAudioPreferences *)self init];
  v6 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HM.CameraStreamAudioCodecs"];

  [(HMCameraStreamAudioPreferences *)v5 setCodecs:v9];
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end