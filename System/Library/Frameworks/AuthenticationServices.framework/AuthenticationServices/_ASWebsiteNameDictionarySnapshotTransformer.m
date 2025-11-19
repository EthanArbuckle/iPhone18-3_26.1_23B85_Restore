@interface _ASWebsiteNameDictionarySnapshotTransformer
- (id)objectFromData:(id)a3;
@end

@implementation _ASWebsiteNameDictionarySnapshotTransformer

- (id)objectFromData:(id)a3
{
  v3 = a3;
  v4 = [[_ASWebsiteNameDictionary alloc] initWithSnapshotData:v3 error:0];

  return v4;
}

@end