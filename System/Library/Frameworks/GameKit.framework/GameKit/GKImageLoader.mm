@interface GKImageLoader
+ (id)getImageURLForURLTemplate:(id)template size:(int64_t)size;
+ (id)getImageURLForURLTemplate:(id)template size:(int64_t)size scale:(double)scale;
@end

@implementation GKImageLoader

+ (id)getImageURLForURLTemplate:(id)template size:(int64_t)size
{
  [objc_msgSend(off_278236580 "sharedController")];

  return [GKImageLoader getImageURLForURLTemplate:template size:size scale:?];
}

+ (id)getImageURLForURLTemplate:(id)template size:(int64_t)size scale:(double)scale
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"template";
  v8[0] = template;
  result = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1), "_gkImageURLForSize:scale:", size, scale)}];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

@end