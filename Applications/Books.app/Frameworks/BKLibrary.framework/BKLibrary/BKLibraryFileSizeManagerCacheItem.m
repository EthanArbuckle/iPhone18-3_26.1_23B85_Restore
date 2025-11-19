@interface BKLibraryFileSizeManagerCacheItem
- (BKLibraryFileSizeManagerCacheItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKLibraryFileSizeManagerCacheItem

- (BKLibraryFileSizeManagerCacheItem)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BKLibraryFileSizeManagerCacheItem;
  v5 = [(BKLibraryFileSizeManagerCacheItem *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    [(BKLibraryFileSizeManagerCacheItem *)v5 setFileURL:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileOnDiskLastTouchDate"];
    [(BKLibraryFileSizeManagerCacheItem *)v5 setFileOnDiskLastTouchDate:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileSize"];
    [(BKLibraryFileSizeManagerCacheItem *)v5 setFileSizeNumber:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryFileSizeManagerCacheItem *)self fileURL];
  [v4 encodeObject:v5 forKey:@"fileURL"];

  v6 = [(BKLibraryFileSizeManagerCacheItem *)self fileOnDiskLastTouchDate];
  [v4 encodeObject:v6 forKey:@"fileOnDiskLastTouchDate"];

  v7 = [(BKLibraryFileSizeManagerCacheItem *)self fileSizeNumber];
  [v4 encodeObject:v7 forKey:@"fileSize"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [(BKLibraryFileSizeManagerCacheItem *)self fileURL];
    [v4 setFileURL:v5];

    v6 = [(BKLibraryFileSizeManagerCacheItem *)self fileOnDiskLastTouchDate];
    [v4 setFileOnDiskLastTouchDate:v6];

    v7 = [(BKLibraryFileSizeManagerCacheItem *)self fileSizeNumber];
    [v4 setFileSizeNumber:v7];
  }

  return v4;
}

@end