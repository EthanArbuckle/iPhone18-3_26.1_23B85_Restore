@interface S3ContentConfig
- (S3ContentConfig)initWithFilename:(id)a3 bucket:(id)a4;
@end

@implementation S3ContentConfig

- (S3ContentConfig)initWithFilename:(id)a3 bucket:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = S3ContentConfig;
  v9 = [(S3ContentConfig *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_filename, a3);
    objc_storeStrong(&v10->_bucket, a4);
  }

  return v10;
}

@end