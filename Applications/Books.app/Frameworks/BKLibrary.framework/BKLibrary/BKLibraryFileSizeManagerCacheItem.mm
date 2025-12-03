@interface BKLibraryFileSizeManagerCacheItem
- (BKLibraryFileSizeManagerCacheItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKLibraryFileSizeManagerCacheItem

- (BKLibraryFileSizeManagerCacheItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BKLibraryFileSizeManagerCacheItem;
  v5 = [(BKLibraryFileSizeManagerCacheItem *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    [(BKLibraryFileSizeManagerCacheItem *)v5 setFileURL:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileOnDiskLastTouchDate"];
    [(BKLibraryFileSizeManagerCacheItem *)v5 setFileOnDiskLastTouchDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileSize"];
    [(BKLibraryFileSizeManagerCacheItem *)v5 setFileSizeNumber:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fileURL = [(BKLibraryFileSizeManagerCacheItem *)self fileURL];
  [coderCopy encodeObject:fileURL forKey:@"fileURL"];

  fileOnDiskLastTouchDate = [(BKLibraryFileSizeManagerCacheItem *)self fileOnDiskLastTouchDate];
  [coderCopy encodeObject:fileOnDiskLastTouchDate forKey:@"fileOnDiskLastTouchDate"];

  fileSizeNumber = [(BKLibraryFileSizeManagerCacheItem *)self fileSizeNumber];
  [coderCopy encodeObject:fileSizeNumber forKey:@"fileSize"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  if (v4)
  {
    fileURL = [(BKLibraryFileSizeManagerCacheItem *)self fileURL];
    [v4 setFileURL:fileURL];

    fileOnDiskLastTouchDate = [(BKLibraryFileSizeManagerCacheItem *)self fileOnDiskLastTouchDate];
    [v4 setFileOnDiskLastTouchDate:fileOnDiskLastTouchDate];

    fileSizeNumber = [(BKLibraryFileSizeManagerCacheItem *)self fileSizeNumber];
    [v4 setFileSizeNumber:fileSizeNumber];
  }

  return v4;
}

@end