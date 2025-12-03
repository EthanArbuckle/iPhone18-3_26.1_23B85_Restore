@interface THSimpleCFICharacterOffset
+ (id)characterOffsetWithOffset:(unint64_t)offset;
- (THSimpleCFICharacterOffset)initWithOffset:(unint64_t)offset;
@end

@implementation THSimpleCFICharacterOffset

- (THSimpleCFICharacterOffset)initWithOffset:(unint64_t)offset
{
  v7.receiver = self;
  v7.super_class = THSimpleCFICharacterOffset;
  v4 = [(THSimpleCFICharacterOffset *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THSimpleCFICharacterOffset *)v4 setOffset:offset];
  }

  return v5;
}

+ (id)characterOffsetWithOffset:(unint64_t)offset
{
  v3 = [[THSimpleCFICharacterOffset alloc] initWithOffset:offset];

  return v3;
}

@end