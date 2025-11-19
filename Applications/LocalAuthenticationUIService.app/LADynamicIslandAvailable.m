@interface LADynamicIslandAvailable
@end

@implementation LADynamicIslandAvailable

void __LADynamicIslandAvailable_block_invoke(id a1)
{
  v1 = +[LACUIDevice sharedInstance];
  LADynamicIslandAvailable__available = [v1 isDynamicIslandAvailable];
}

@end