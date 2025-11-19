@interface THSimpleCFICharacterOffset
+ (id)characterOffsetWithOffset:(unint64_t)a3;
- (THSimpleCFICharacterOffset)initWithOffset:(unint64_t)a3;
@end

@implementation THSimpleCFICharacterOffset

- (THSimpleCFICharacterOffset)initWithOffset:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = THSimpleCFICharacterOffset;
  v4 = [(THSimpleCFICharacterOffset *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THSimpleCFICharacterOffset *)v4 setOffset:a3];
  }

  return v5;
}

+ (id)characterOffsetWithOffset:(unint64_t)a3
{
  v3 = [[THSimpleCFICharacterOffset alloc] initWithOffset:a3];

  return v3;
}

@end