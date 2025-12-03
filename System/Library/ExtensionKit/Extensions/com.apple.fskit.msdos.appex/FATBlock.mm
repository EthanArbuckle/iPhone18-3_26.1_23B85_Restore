@interface FATBlock
- (FATBlock)init;
- (FATBlock)initWithOffset:(unint64_t)offset;
- (FATBlock)initWithOffset:(unint64_t)offset andLength:(unint64_t)length;
@end

@implementation FATBlock

- (FATBlock)init
{
  v6.receiver = self;
  v6.super_class = FATBlock;
  v2 = [(FATBlock *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableData alloc] initWithLength:12288];
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

- (FATBlock)initWithOffset:(unint64_t)offset
{
  v8.receiver = self;
  v8.super_class = FATBlock;
  v4 = [(FATBlock *)&v8 init];
  if (v4)
  {
    v5 = [[NSMutableData alloc] initWithLength:12288];
    data = v4->_data;
    v4->_data = v5;

    v4->_startOffset = offset;
  }

  return v4;
}

- (FATBlock)initWithOffset:(unint64_t)offset andLength:(unint64_t)length
{
  v10.receiver = self;
  v10.super_class = FATBlock;
  v6 = [(FATBlock *)&v10 init];
  if (v6)
  {
    v7 = [[NSMutableData alloc] initWithLength:length];
    data = v6->_data;
    v6->_data = v7;

    v6->_startOffset = offset;
  }

  return v6;
}

@end