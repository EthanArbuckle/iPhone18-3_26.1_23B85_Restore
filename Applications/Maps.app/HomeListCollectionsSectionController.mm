@interface HomeListCollectionsSectionController
- (void)homeDataProvidingObjectDidUpdate:(id)update;
@end

@implementation HomeListCollectionsSectionController

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HomeListCollectionsSectionController();
  [(HomeListSectionController *)&v4 homeDataProvidingObjectDidUpdate:update];
}

@end