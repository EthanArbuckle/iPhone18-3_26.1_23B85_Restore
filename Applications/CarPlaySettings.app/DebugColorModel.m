@interface DebugColorModel
+ (id)modelWithColor:(id)a3 name:(id)a4;
@end

@implementation DebugColorModel

+ (id)modelWithColor:(id)a3 name:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(DebugColorModel);
  [(DebugColorModel *)v7 setColor:v6];

  [(DebugColorModel *)v7 setName:v5];

  return v7;
}

@end