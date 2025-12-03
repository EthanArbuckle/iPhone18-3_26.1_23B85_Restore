@interface HMDemoCameraClip
- (HMDemoCameraClip)initWithClipURL:(id)l startDate:(id)date duration:(double)duration significantEvents:(id)events;
@end

@implementation HMDemoCameraClip

- (HMDemoCameraClip)initWithClipURL:(id)l startDate:(id)date duration:(double)duration significantEvents:(id)events
{
  lCopy = l;
  eventsCopy = events;
  dateCopy = date;
  v13 = [HMCameraClipEncryptionContext alloc];
  data = [MEMORY[0x1E695DEF0] data];
  v15 = [(HMCameraClipEncryptionContext *)v13 initWithKey:data scheme:1];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v21.receiver = self;
  v21.super_class = HMDemoCameraClip;
  v17 = [(HMCameraClip *)&v21 initWithUniqueIdentifier:uUID startDate:dateCopy duration:0 size:1 targetFragmentDuration:0 isComplete:0 isDonated:duration quality:0.0 streamingAssetVersion:@"1" encryptionContext:v15 significantEvents:eventsCopy];

  if (v17)
  {
    v18 = [lCopy copy];
    clipURL = v17->_clipURL;
    v17->_clipURL = v18;
  }

  return v17;
}

@end