@interface SwiftDataSpotlightDelegate
- (id)initForStoreWithDescription:(id)description coordinator:(id)coordinator;
@end

@implementation SwiftDataSpotlightDelegate

- (id)initForStoreWithDescription:(id)description coordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SwiftDataSpotlightDelegate();
  return [(NSCoreDataCoreSpotlightDelegate *)&v7 initForStoreWithDescription:description coordinator:coordinator];
}

@end