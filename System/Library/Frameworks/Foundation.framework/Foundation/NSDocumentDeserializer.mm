@interface NSDocumentDeserializer
- (id)deserializeNewData;
- (id)deserializeNewPList;
- (void)fixupDirInfo:(id)info;
@end

@implementation NSDocumentDeserializer

- (id)deserializeNewData
{
  v3 = [(NSData *)NSPageData allocWithZone:[(NSDocumentDeserializer *)self zone]];

  return [(NSAKDeserializer *)self deserializeData:v3];
}

- (void)fixupDirInfo:(id)info
{
  v4 = [(NSDocumentDeserializer *)self zone];
  v5 = [info objectForKey:@"."];
  if (v5)
  {
    deserializer = [v5 deserializer];
    v6 = [(NSAKDeserializer *)[NSDirInfoDeserializer allocWithZone:?], "initForDeserializerStream:", deserializer];
    v7 = [v6 deserializePList:{+[NSDirInfo allocWithZone:](NSDirInfo, "allocWithZone:", v4)}];
    [info setObject:v7 forKey:@"."];
  }
}

- (id)deserializeNewPList
{
  v3 = [(NSAKDeserializer *)self deserializePList:[NSRTFD allocWithZone:[(NSDocumentDeserializer *)self zone]]];
  [(NSDocumentDeserializer *)self fixupDirInfo:v3];
  return v3;
}

@end