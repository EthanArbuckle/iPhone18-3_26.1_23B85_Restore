@interface S3ContentConfig
- (S3ContentConfig)initWithFilename:(id)filename bucket:(id)bucket;
@end

@implementation S3ContentConfig

- (S3ContentConfig)initWithFilename:(id)filename bucket:(id)bucket
{
  filenameCopy = filename;
  bucketCopy = bucket;
  v12.receiver = self;
  v12.super_class = S3ContentConfig;
  v9 = [(S3ContentConfig *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_filename, filename);
    objc_storeStrong(&v10->_bucket, bucket);
  }

  return v10;
}

@end