@interface HomeListCollectionsSectionController
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
@end

@implementation HomeListCollectionsSectionController

- (void)homeDataProvidingObjectDidUpdate:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HomeListCollectionsSectionController();
  [(HomeListSectionController *)&v4 homeDataProvidingObjectDidUpdate:a3];
}

@end