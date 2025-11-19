@interface ShowCuratedCollectionActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation ShowCuratedCollectionActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v12 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v12;
    v7 = [MKMapItemIdentifier alloc];
    v8 = [v6 curatedCollectionMUID];
    v9 = [v6 resultProviderID];

    v10 = [v7 initWithMUID:v8 resultProviderID:v9 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
    v11 = [v5 appCoordinator];
    [v11 openCuratedCollectionWithIdentifier:v10];
  }
}

@end