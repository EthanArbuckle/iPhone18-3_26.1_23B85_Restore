@interface NSIndexPath(MusicKit)
+ (id)musicKit_indexPathForItem:()MusicKit inSection:;
@end

@implementation NSIndexPath(MusicKit)

+ (id)musicKit_indexPathForItem:()MusicKit inSection:
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a4;
  v7[1] = a3;
  v4 = [objc_opt_class() indexPathWithIndexes:v7 length:2];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end