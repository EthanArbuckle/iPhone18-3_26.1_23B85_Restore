@interface SwiftDataSpotlightDelegate
- (id)initForStoreWithDescription:(id)a3 coordinator:(id)a4;
@end

@implementation SwiftDataSpotlightDelegate

- (id)initForStoreWithDescription:(id)a3 coordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SwiftDataSpotlightDelegate();
  return [(NSCoreDataCoreSpotlightDelegate *)&v7 initForStoreWithDescription:a3 coordinator:a4];
}

@end