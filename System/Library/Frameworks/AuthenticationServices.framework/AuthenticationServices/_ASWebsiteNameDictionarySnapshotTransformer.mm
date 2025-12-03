@interface _ASWebsiteNameDictionarySnapshotTransformer
- (id)objectFromData:(id)data;
@end

@implementation _ASWebsiteNameDictionarySnapshotTransformer

- (id)objectFromData:(id)data
{
  dataCopy = data;
  v4 = [[_ASWebsiteNameDictionary alloc] initWithSnapshotData:dataCopy error:0];

  return v4;
}

@end