@interface AVExecutionEnvironment
+ (id)currentPlatformIdentifier;
+ (id)sharedExecutionEnvironment;
+ (void)setPlatformIdentifier:(id)identifier forQueue:(id)queue;
- (NSString)platformIdentifier;
@end

@implementation AVExecutionEnvironment

+ (id)sharedExecutionEnvironment
{
  if (sharedExecutionEnvironment_onceToken != -1)
  {
    +[AVExecutionEnvironment sharedExecutionEnvironment];
  }

  return sharedExecutionEnvironment_sSharedExecutionEnvironment;
}

AVExecutionEnvironment *__52__AVExecutionEnvironment_sharedExecutionEnvironment__block_invoke()
{
  result = objc_alloc_init(AVExecutionEnvironment);
  sharedExecutionEnvironment_sSharedExecutionEnvironment = result;
  return result;
}

- (NSString)platformIdentifier
{
  v2 = objc_opt_class();

  return [v2 currentPlatformIdentifier];
}

+ (id)currentPlatformIdentifier
{
  result = dispatch_get_specific(@"AVExecutionEnvironmentCurrentPlatformIdentifierKey");
  if (!result)
  {
    return @"AVPlatformIdentifierIOS";
  }

  return result;
}

+ (void)setPlatformIdentifier:(id)identifier forQueue:(id)queue
{
  identifierCopy = identifier;

  dispatch_queue_set_specific(queue, @"AVExecutionEnvironmentCurrentPlatformIdentifierKey", identifierCopy, AVExecutionEnvironmentReleaseObject);
}

@end