@interface EKDefaultSerializerFactory
+ (id)createSerializerWithEventStore:(id)a3 withVersion:(id)a4;
@end

@implementation EKDefaultSerializerFactory

+ (id)createSerializerWithEventStore:(id)a3 withVersion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[EKSecureKeyedArchiverSerializer alloc] initWithEventStore:v6 withVersion:v5];

  return v7;
}

@end