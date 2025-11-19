@interface CSSearchableItemAttributeSet(Temporary)
- (void)setCachedViewDataSafe:()Temporary;
@end

@implementation CSSearchableItemAttributeSet(Temporary)

- (void)setCachedViewDataSafe:()Temporary
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [a1 setCachedViewData:v4];
  }
}

@end