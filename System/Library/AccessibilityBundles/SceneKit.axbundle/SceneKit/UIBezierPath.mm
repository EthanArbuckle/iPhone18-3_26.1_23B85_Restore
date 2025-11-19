@interface UIBezierPath
@end

@implementation UIBezierPath

uint64_t __73__UIBezierPath_AXAdditions__accessibilityBezierPathWithSCNVector3Points___block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 32);
    v4 = a2;
    [v4 SCNVector3Value];
    v6 = v5;
    [v4 SCNVector3Value];
    v8 = v7;

    return [v3 addLineToPoint:{v6, v8}];
  }

  return result;
}

@end