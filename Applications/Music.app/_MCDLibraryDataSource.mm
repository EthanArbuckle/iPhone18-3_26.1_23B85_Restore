@interface _MCDLibraryDataSource
- (MPPropertySet)requestSectionProperties;
@end

@implementation _MCDLibraryDataSource

- (MPPropertySet)requestSectionProperties
{
  v5 = MPModelPropertySectionTitle;
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

@end