@interface NSDocumentDeserializer
- (id)deserializeNewData;
- (id)deserializeNewPList;
- (void)fixupDirInfo:(id)a3;
@end

@implementation NSDocumentDeserializer

- (id)deserializeNewData
{
  v3 = [(NSData *)NSPageData allocWithZone:[(NSDocumentDeserializer *)self zone]];

  return [(NSAKDeserializer *)self deserializeData:v3];
}

- (void)fixupDirInfo:(id)a3
{
  v4 = [(NSDocumentDeserializer *)self zone];
  v5 = [a3 objectForKey:@"."];
  if (v5)
  {
    v8 = [v5 deserializer];
    v6 = [(NSAKDeserializer *)[NSDirInfoDeserializer allocWithZone:?], "initForDeserializerStream:", v8];
    v7 = [v6 deserializePList:{+[NSDirInfo allocWithZone:](NSDirInfo, "allocWithZone:", v4)}];
    [a3 setObject:v7 forKey:@"."];
  }
}

- (id)deserializeNewPList
{
  v3 = [(NSAKDeserializer *)self deserializePList:[NSRTFD allocWithZone:[(NSDocumentDeserializer *)self zone]]];
  [(NSDocumentDeserializer *)self fixupDirInfo:v3];
  return v3;
}

@end