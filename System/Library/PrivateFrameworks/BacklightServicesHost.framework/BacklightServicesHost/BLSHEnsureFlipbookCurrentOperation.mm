@interface BLSHEnsureFlipbookCurrentOperation
+ (id)operation;
- (NSString)description;
@end

@implementation BLSHEnsureFlipbookCurrentOperation

+ (id)operation
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[BLSHEnsureFlipbookCurrentOperation isStarted](self withName:{"isStarted"), @"started"}];
  v5 = [v3 appendBool:-[BLSHEnsureFlipbookCurrentOperation isCompleted](self withName:{"isCompleted"), @"completed"}];
  v6 = [v3 build];

  return v6;
}

@end