@interface SHLCloudContainerTransformer
- (SHLCloudContainerTransformer)initWithScope:(int64_t)scope;
- (id)cloudBackedContainer;
@end

@implementation SHLCloudContainerTransformer

- (SHLCloudContainerTransformer)initWithScope:(int64_t)scope
{
  v5.receiver = self;
  v5.super_class = SHLCloudContainerTransformer;
  result = [(SHLCloudContainerTransformer *)&v5 init];
  if (result)
  {
    result->_scope = scope;
  }

  return result;
}

- (id)cloudBackedContainer
{
  v3 = +[SHLCloudContext sharedContext];
  v4 = [v3 containerWithScope:{-[SHLCloudContainerTransformer scope](self, "scope")}];

  v5 = [[SHLCloudBackedContainer alloc] initWithContainer:v4 usingEncryption:[(SHLCloudContainerTransformer *)self scope]== 1];

  return v5;
}

@end