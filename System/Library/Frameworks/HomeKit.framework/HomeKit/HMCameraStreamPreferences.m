@interface HMCameraStreamPreferences
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCameraStreamPreferences)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraStreamPreferences

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(HMCameraStreamPreferences *)self videoPreferences];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69A29C8]);
    v6 = [(HMCameraStreamPreferences *)self videoPreferences];
    v7 = [v5 initWithName:@"Video" value:v6];
    [v3 addObject:v7];
  }

  v8 = [(HMCameraStreamPreferences *)self audioPreferences];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69A29C8]);
    v10 = [(HMCameraStreamPreferences *)self audioPreferences];
    v11 = [v9 initWithName:@"Audio" value:v10];
    [v3 addObject:v11];
  }

  if ([(HMCameraStreamPreferences *)self minimumRequiredAvailableOrInUseStreams]>= 1)
  {
    v12 = objc_alloc(MEMORY[0x1E69A29C8]);
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMCameraStreamPreferences minimumRequiredAvailableOrInUseStreams](self, "minimumRequiredAvailableOrInUseStreams")}];
    v14 = [v12 initWithName:@"Minimum Required" value:v13];
    [v3 addObject:v14];
  }

  if ([(HMCameraStreamPreferences *)self shouldTakeOwnershipOfExistingStream])
  {
    v15 = objc_alloc(MEMORY[0x1E69A29C8]);
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMCameraStreamPreferences shouldTakeOwnershipOfExistingStream](self, "shouldTakeOwnershipOfExistingStream")}];
    v17 = [v15 initWithName:@"Take Ownership" value:v16];
    [v3 addObject:v17];
  }

  v18 = [v3 copy];

  return v18;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  v3 = [(HMCameraStreamPreferences *)self audioPreferences];
  v4 = [v3 hash];

  v5 = [(HMCameraStreamPreferences *)self videoPreferences];
  v6 = [v5 hash] ^ v4;

  v7 = v6 ^ [(HMCameraStreamPreferences *)self minimumRequiredAvailableOrInUseStreams];
  return v7 ^ [(HMCameraStreamPreferences *)self shouldTakeOwnershipOfExistingStream];
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
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [(HMCameraStreamPreferences *)self audioPreferences];
  v8 = [v6 audioPreferences];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [(HMCameraStreamPreferences *)self videoPreferences];
  v11 = [v6 videoPreferences];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = [(HMCameraStreamPreferences *)self minimumRequiredAvailableOrInUseStreams];
  if (v13 == [v6 minimumRequiredAvailableOrInUseStreams])
  {
    v14 = [(HMCameraStreamPreferences *)self shouldTakeOwnershipOfExistingStream];
    v15 = v14 ^ [v6 shouldTakeOwnershipOfExistingStream] ^ 1;
  }

  else
  {
LABEL_9:
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(HMCameraStreamPreferences *)self audioPreferences];
  [v6 encodeObject:v4 forKey:@"HM.CameraStreamAudioPreferences"];

  v5 = [(HMCameraStreamPreferences *)self videoPreferences];
  [v6 encodeObject:v5 forKey:@"HM.CameraStreamVideoPreferences"];

  [v6 encodeInteger:-[HMCameraStreamPreferences minimumRequiredAvailableOrInUseStreams](self forKey:{"minimumRequiredAvailableOrInUseStreams"), @"HMCameraStreamMinimumRequiredAvailableOrInUseStreams"}];
  [v6 encodeBool:-[HMCameraStreamPreferences shouldTakeOwnershipOfExistingStream](self forKey:{"shouldTakeOwnershipOfExistingStream"), @"HM.CameraStreamShouldTakeOwnershipOfExistingStream"}];
}

- (HMCameraStreamPreferences)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = HMCameraStreamPreferences;
  v3 = a3;
  v4 = [(HMCameraStreamPreferences *)&v9 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"HM.CameraStreamAudioPreferences", v9.receiver, v9.super_class}];
  [(HMCameraStreamPreferences *)v4 setAudioPreferences:v5];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.CameraStreamVideoPreferences"];
  [(HMCameraStreamPreferences *)v4 setVideoPreferences:v6];

  -[HMCameraStreamPreferences setMinimumRequiredAvailableOrInUseStreams:](v4, "setMinimumRequiredAvailableOrInUseStreams:", [v3 decodeIntegerForKey:@"HMCameraStreamMinimumRequiredAvailableOrInUseStreams"]);
  v7 = [v3 decodeBoolForKey:@"HM.CameraStreamShouldTakeOwnershipOfExistingStream"];

  [(HMCameraStreamPreferences *)v4 setShouldTakeOwnershipOfExistingStream:v7];
  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end