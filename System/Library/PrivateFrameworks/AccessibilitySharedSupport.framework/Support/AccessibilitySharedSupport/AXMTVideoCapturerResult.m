@interface AXMTVideoCapturerResult
- (AXMTVideoCapturerResult)initWithBuffer:(opaqueCMSampleBuffer *)a3 metadataObjects:(id)a4;
@end

@implementation AXMTVideoCapturerResult

- (AXMTVideoCapturerResult)initWithBuffer:(opaqueCMSampleBuffer *)a3 metadataObjects:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = AXMTVideoCapturerResult;
  v7 = [(AXMTVideoCapturerResult *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AXMTVideoCapturerResult *)v7 setBuffer:a3];
    [(AXMTVideoCapturerResult *)v8 setMetadataObjects:v6];
  }

  return v8;
}

@end