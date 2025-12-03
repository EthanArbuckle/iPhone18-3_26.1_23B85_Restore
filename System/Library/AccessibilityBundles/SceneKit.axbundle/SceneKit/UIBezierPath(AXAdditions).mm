@interface UIBezierPath(AXAdditions)
+ (id)accessibilityBezierPathWithSCNVector3Points:()AXAdditions;
@end

@implementation UIBezierPath(AXAdditions)

+ (id)accessibilityBezierPathWithSCNVector3Points:()AXAdditions
{
  v4 = a3;
  bezierPath = [self bezierPath];
  if ([v4 count])
  {
    firstObject = [v4 firstObject];
    [firstObject SCNVector3Value];
    v8 = v7;
    firstObject2 = [v4 firstObject];
    [firstObject2 SCNVector3Value];
    [bezierPath moveToPoint:{v8, v10}];

    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __73__UIBezierPath_AXAdditions__accessibilityBezierPathWithSCNVector3Points___block_invoke;
    v13[3] = &unk_29F2F34F0;
    v11 = bezierPath;
    v14 = v11;
    [v4 enumerateObjectsUsingBlock:v13];
    [v11 closePath];
  }

  return bezierPath;
}

@end