@interface NSDirInfo
- (id)serializeToData;
- (void)dealloc;
@end

@implementation NSDirInfo

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSDirInfo;
  [(NSDirInfo *)&v3 dealloc];
}

- (id)serializeToData
{
  v3 = [(NSDirInfo *)self zone];
  v4 = [[NSAKSerializerStream allocWithZone:?]];
  v5 = [(NSAKSerializer *)[NSDirInfoSerializer allocWithZone:?], "initForSerializerStream:", v4];
  v6 = -[NSPageData initFromSerializerStream:length:](+[NSData allocWithZone:](NSPageData, "allocWithZone:", v3), "initFromSerializerStream:length:", v4, [v5 serializePropertyList:self]);

  return v6;
}

@end