@interface HMDemoCameraClip
- (HMDemoCameraClip)initWithClipURL:(id)a3 startDate:(id)a4 duration:(double)a5 significantEvents:(id)a6;
@end

@implementation HMDemoCameraClip

- (HMDemoCameraClip)initWithClipURL:(id)a3 startDate:(id)a4 duration:(double)a5 significantEvents:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = [HMCameraClipEncryptionContext alloc];
  v14 = [MEMORY[0x1E695DEF0] data];
  v15 = [(HMCameraClipEncryptionContext *)v13 initWithKey:v14 scheme:1];

  v16 = [MEMORY[0x1E696AFB0] UUID];
  v21.receiver = self;
  v21.super_class = HMDemoCameraClip;
  v17 = [(HMCameraClip *)&v21 initWithUniqueIdentifier:v16 startDate:v12 duration:0 size:1 targetFragmentDuration:0 isComplete:0 isDonated:a5 quality:0.0 streamingAssetVersion:@"1" encryptionContext:v15 significantEvents:v11];

  if (v17)
  {
    v18 = [v10 copy];
    clipURL = v17->_clipURL;
    v17->_clipURL = v18;
  }

  return v17;
}

@end