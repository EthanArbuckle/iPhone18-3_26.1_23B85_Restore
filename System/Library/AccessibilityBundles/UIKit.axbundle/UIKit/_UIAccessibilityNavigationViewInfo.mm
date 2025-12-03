@interface _UIAccessibilityNavigationViewInfo
- (id)barButtonItem;
- (id)navigationBar;
- (id)navigationItem;
- (id)setBarButtonItem:(id *)result;
- (id)setNavigationBar:(id *)result;
- (id)setNavigationItem:(id *)result;
- (uint64_t)isCancelItem;
- (uint64_t)isRightItem;
- (uint64_t)setIsCancelItem:(uint64_t)result;
- (uint64_t)setIsRightItem:(uint64_t)result;
@end

@implementation _UIAccessibilityNavigationViewInfo

- (id)navigationItem
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)setNavigationItem:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 2, a2);
  }

  return result;
}

- (id)barButtonItem
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)setBarButtonItem:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 3, a2);
  }

  return result;
}

- (id)navigationBar
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 32));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)setNavigationBar:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 4, a2);
  }

  return result;
}

- (uint64_t)isCancelItem
{
  if (self)
  {
    v2 = *(self + 8) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)setIsCancelItem:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2 & 1;
  }

  return result;
}

- (uint64_t)isRightItem
{
  if (self)
  {
    v2 = *(self + 9) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)setIsRightItem:(uint64_t)result
{
  if (result)
  {
    *(result + 9) = a2 & 1;
  }

  return result;
}

@end