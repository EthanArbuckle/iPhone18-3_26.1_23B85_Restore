@interface NSExtensionContext(INUIHostedViewControlling)
- (double)hostedViewMaximumAllowedSize;
- (double)hostedViewMinimumAllowedSize;
@end

@implementation NSExtensionContext(INUIHostedViewControlling)

- (double)hostedViewMaximumAllowedSize
{
  result = *MEMORY[0x277CBF3A8];
  v1 = *(MEMORY[0x277CBF3A8] + 8);
  return result;
}

- (double)hostedViewMinimumAllowedSize
{
  result = *MEMORY[0x277CBF3A8];
  v1 = *(MEMORY[0x277CBF3A8] + 8);
  return result;
}

@end