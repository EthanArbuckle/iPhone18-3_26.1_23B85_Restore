@interface EKDefaultSerializerFactory
+ (id)createSerializerWithEventStore:(id)store withVersion:(id)version;
@end

@implementation EKDefaultSerializerFactory

+ (id)createSerializerWithEventStore:(id)store withVersion:(id)version
{
  versionCopy = version;
  storeCopy = store;
  v7 = [[EKSecureKeyedArchiverSerializer alloc] initWithEventStore:storeCopy withVersion:versionCopy];

  return v7;
}

@end