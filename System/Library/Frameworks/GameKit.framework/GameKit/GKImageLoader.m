@interface GKImageLoader
+ (id)getImageURLForURLTemplate:(id)a3 size:(int64_t)a4;
+ (id)getImageURLForURLTemplate:(id)a3 size:(int64_t)a4 scale:(double)a5;
@end

@implementation GKImageLoader

+ (id)getImageURLForURLTemplate:(id)a3 size:(int64_t)a4
{
  [objc_msgSend(off_278236580 "sharedController")];

  return [GKImageLoader getImageURLForURLTemplate:a3 size:a4 scale:?];
}

+ (id)getImageURLForURLTemplate:(id)a3 size:(int64_t)a4 scale:(double)a5
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"template";
  v8[0] = a3;
  result = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1), "_gkImageURLForSize:scale:", a4, a5)}];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

@end