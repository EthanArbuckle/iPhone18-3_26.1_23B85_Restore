@interface ANSTVideoCaptionAlgorithmConfiguration
+ (id)new;
- (ANSTVideoCaptionAlgorithmConfiguration)init;
- (ANSTVideoCaptionAlgorithmConfiguration)initWithVersion:(unint64_t)version error:(id *)error;
@end

@implementation ANSTVideoCaptionAlgorithmConfiguration

- (ANSTVideoCaptionAlgorithmConfiguration)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTVideoCaptionAlgorithmConfiguration)initWithVersion:(unint64_t)version error:(id *)error
{
  v5.receiver = self;
  v5.super_class = ANSTVideoCaptionAlgorithmConfiguration;
  return [(ANSTConfiguration *)&v5 initWithVersion:version, error];
}

@end