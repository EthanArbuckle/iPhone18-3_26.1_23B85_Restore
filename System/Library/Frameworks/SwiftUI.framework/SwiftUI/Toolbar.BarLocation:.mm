@interface Toolbar.BarLocation:
- (void)Toolbar.LocationStorage;
@end

@implementation Toolbar.BarLocation:

- (void)Toolbar.LocationStorage
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type Toolbar.BarLocation and conformance Toolbar.BarLocation();
    v7 = a3(self, &type metadata for Toolbar.BarLocation, &type metadata for Toolbar.LocationStorage, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

@end