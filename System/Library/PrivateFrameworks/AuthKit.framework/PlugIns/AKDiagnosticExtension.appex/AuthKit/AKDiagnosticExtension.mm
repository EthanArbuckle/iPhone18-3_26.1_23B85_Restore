@interface AKDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation AKDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = &__NSArray0__struct;
  objc_storeStrong(location, 0);

  return v4;
}

@end