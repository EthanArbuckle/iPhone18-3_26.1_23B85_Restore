@interface AXMTVideoCapturerResult
- (AXMTVideoCapturerResult)initWithBuffer:(opaqueCMSampleBuffer *)buffer metadataObjects:(id)objects;
@end

@implementation AXMTVideoCapturerResult

- (AXMTVideoCapturerResult)initWithBuffer:(opaqueCMSampleBuffer *)buffer metadataObjects:(id)objects
{
  objectsCopy = objects;
  v10.receiver = self;
  v10.super_class = AXMTVideoCapturerResult;
  v7 = [(AXMTVideoCapturerResult *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AXMTVideoCapturerResult *)v7 setBuffer:buffer];
    [(AXMTVideoCapturerResult *)v8 setMetadataObjects:objectsCopy];
  }

  return v8;
}

@end