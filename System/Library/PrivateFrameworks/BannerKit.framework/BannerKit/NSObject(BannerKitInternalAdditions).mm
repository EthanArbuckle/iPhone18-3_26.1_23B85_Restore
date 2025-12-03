@interface NSObject(BannerKitInternalAdditions)
- (void)_uniquelyIdentifyPresentable;
- (void)ensurePresentableIsUniquelyIdentifiable;
@end

@implementation NSObject(BannerKitInternalAdditions)

- (void)_uniquelyIdentifyPresentable
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"NSObject+BannerKit.m" lineNumber:37 description:{@"Attempt to uniquely identify object that isn't a presentable: %@", a2}];
}

- (void)ensurePresentableIsUniquelyIdentifiable
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"NSObject+BannerKit.m" lineNumber:48 description:{@"Attempt to uniquely identify object that isn't a presentable: %@", a2}];
}

@end