@interface NSObject(BannerKitInternalAdditions)
- (void)_uniquelyIdentifyPresentable;
- (void)ensurePresentableIsUniquelyIdentifiable;
@end

@implementation NSObject(BannerKitInternalAdditions)

- (void)_uniquelyIdentifyPresentable
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSObject+BannerKit.m" lineNumber:37 description:{@"Attempt to uniquely identify object that isn't a presentable: %@", a2}];
}

- (void)ensurePresentableIsUniquelyIdentifiable
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSObject+BannerKit.m" lineNumber:48 description:{@"Attempt to uniquely identify object that isn't a presentable: %@", a2}];
}

@end