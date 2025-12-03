@interface HMCameraStreamPreferences
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCameraStreamPreferences)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraStreamPreferences

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  videoPreferences = [(HMCameraStreamPreferences *)self videoPreferences];

  if (videoPreferences)
  {
    v5 = objc_alloc(MEMORY[0x1E69A29C8]);
    videoPreferences2 = [(HMCameraStreamPreferences *)self videoPreferences];
    v7 = [v5 initWithName:@"Video" value:videoPreferences2];
    [array addObject:v7];
  }

  audioPreferences = [(HMCameraStreamPreferences *)self audioPreferences];

  if (audioPreferences)
  {
    v9 = objc_alloc(MEMORY[0x1E69A29C8]);
    audioPreferences2 = [(HMCameraStreamPreferences *)self audioPreferences];
    v11 = [v9 initWithName:@"Audio" value:audioPreferences2];
    [array addObject:v11];
  }

  if ([(HMCameraStreamPreferences *)self minimumRequiredAvailableOrInUseStreams]>= 1)
  {
    v12 = objc_alloc(MEMORY[0x1E69A29C8]);
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMCameraStreamPreferences minimumRequiredAvailableOrInUseStreams](self, "minimumRequiredAvailableOrInUseStreams")}];
    v14 = [v12 initWithName:@"Minimum Required" value:v13];
    [array addObject:v14];
  }

  if ([(HMCameraStreamPreferences *)self shouldTakeOwnershipOfExistingStream])
  {
    v15 = objc_alloc(MEMORY[0x1E69A29C8]);
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMCameraStreamPreferences shouldTakeOwnershipOfExistingStream](self, "shouldTakeOwnershipOfExistingStream")}];
    v17 = [v15 initWithName:@"Take Ownership" value:v16];
    [array addObject:v17];
  }

  v18 = [array copy];

  return v18;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  audioPreferences = [(HMCameraStreamPreferences *)self audioPreferences];
  v4 = [audioPreferences hash];

  videoPreferences = [(HMCameraStreamPreferences *)self videoPreferences];
  v6 = [videoPreferences hash] ^ v4;

  v7 = v6 ^ [(HMCameraStreamPreferences *)self minimumRequiredAvailableOrInUseStreams];
  return v7 ^ [(HMCameraStreamPreferences *)self shouldTakeOwnershipOfExistingStream];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

  audioPreferences = [(HMCameraStreamPreferences *)self audioPreferences];
  audioPreferences2 = [v6 audioPreferences];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_9;
  }

  videoPreferences = [(HMCameraStreamPreferences *)self videoPreferences];
  videoPreferences2 = [v6 videoPreferences];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_9;
  }

  minimumRequiredAvailableOrInUseStreams = [(HMCameraStreamPreferences *)self minimumRequiredAvailableOrInUseStreams];
  if (minimumRequiredAvailableOrInUseStreams == [v6 minimumRequiredAvailableOrInUseStreams])
  {
    shouldTakeOwnershipOfExistingStream = [(HMCameraStreamPreferences *)self shouldTakeOwnershipOfExistingStream];
    v15 = shouldTakeOwnershipOfExistingStream ^ [v6 shouldTakeOwnershipOfExistingStream] ^ 1;
  }

  else
  {
LABEL_9:
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  audioPreferences = [(HMCameraStreamPreferences *)self audioPreferences];
  [coderCopy encodeObject:audioPreferences forKey:@"HM.CameraStreamAudioPreferences"];

  videoPreferences = [(HMCameraStreamPreferences *)self videoPreferences];
  [coderCopy encodeObject:videoPreferences forKey:@"HM.CameraStreamVideoPreferences"];

  [coderCopy encodeInteger:-[HMCameraStreamPreferences minimumRequiredAvailableOrInUseStreams](self forKey:{"minimumRequiredAvailableOrInUseStreams"), @"HMCameraStreamMinimumRequiredAvailableOrInUseStreams"}];
  [coderCopy encodeBool:-[HMCameraStreamPreferences shouldTakeOwnershipOfExistingStream](self forKey:{"shouldTakeOwnershipOfExistingStream"), @"HM.CameraStreamShouldTakeOwnershipOfExistingStream"}];
}

- (HMCameraStreamPreferences)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = HMCameraStreamPreferences;
  coderCopy = coder;
  v4 = [(HMCameraStreamPreferences *)&v9 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"HM.CameraStreamAudioPreferences", v9.receiver, v9.super_class}];
  [(HMCameraStreamPreferences *)v4 setAudioPreferences:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.CameraStreamVideoPreferences"];
  [(HMCameraStreamPreferences *)v4 setVideoPreferences:v6];

  -[HMCameraStreamPreferences setMinimumRequiredAvailableOrInUseStreams:](v4, "setMinimumRequiredAvailableOrInUseStreams:", [coderCopy decodeIntegerForKey:@"HMCameraStreamMinimumRequiredAvailableOrInUseStreams"]);
  v7 = [coderCopy decodeBoolForKey:@"HM.CameraStreamShouldTakeOwnershipOfExistingStream"];

  [(HMCameraStreamPreferences *)v4 setShouldTakeOwnershipOfExistingStream:v7];
  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end