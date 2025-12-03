@interface BLSHEnsureFlipbookCurrentOperation
+ (id)operation;
- (NSString)description;
@end

@implementation BLSHEnsureFlipbookCurrentOperation

+ (id)operation
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[BLSHEnsureFlipbookCurrentOperation isStarted](self withName:{"isStarted"), @"started"}];
  v5 = [v3 appendBool:-[BLSHEnsureFlipbookCurrentOperation isCompleted](self withName:{"isCompleted"), @"completed"}];
  build = [v3 build];

  return build;
}

@end