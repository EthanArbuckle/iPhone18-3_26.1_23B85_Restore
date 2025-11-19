@interface SKUniformInfo
- (SKUniformInfo)init;
@end

@implementation SKUniformInfo

- (SKUniformInfo)init
{
  v5.receiver = self;
  v5.super_class = SKUniformInfo;
  v2 = [(SKUniformInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKUniformInfo *)v2 setSeed:0];
  }

  return v3;
}

@end