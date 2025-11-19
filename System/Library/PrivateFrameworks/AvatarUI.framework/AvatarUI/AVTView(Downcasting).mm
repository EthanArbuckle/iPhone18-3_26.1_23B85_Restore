@interface AVTView(Downcasting)
- (uint64_t)downcastWithAVTViewHandler:()Downcasting recordViewHandler:;
@end

@implementation AVTView(Downcasting)

- (uint64_t)downcastWithAVTViewHandler:()Downcasting recordViewHandler:
{
  if (a3)
  {
    return (*(a3 + 16))(a3, result);
  }

  return result;
}

@end