@interface DebugColorModel
+ (id)modelWithColor:(id)color name:(id)name;
@end

@implementation DebugColorModel

+ (id)modelWithColor:(id)color name:(id)name
{
  nameCopy = name;
  colorCopy = color;
  v7 = objc_alloc_init(DebugColorModel);
  [(DebugColorModel *)v7 setColor:colorCopy];

  [(DebugColorModel *)v7 setName:nameCopy];

  return v7;
}

@end