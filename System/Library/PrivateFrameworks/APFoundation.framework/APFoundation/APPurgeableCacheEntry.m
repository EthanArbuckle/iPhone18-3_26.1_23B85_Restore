@interface APPurgeableCacheEntry
- (APPurgeableCacheEntry)initWithObject:(id)a3;
@end

@implementation APPurgeableCacheEntry

- (APPurgeableCacheEntry)initWithObject:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = APPurgeableCacheEntry;
  v6 = [(APPurgeableCacheEntry *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, a3);
    v11 = objc_msgSend_date(MEMORY[0x1E695DF00], v8, v9, v10);
    objc_msgSend_timeIntervalSinceReferenceDate(v11, v12, v13, v14);
    v7->_timestamp = v15;
  }

  return v7;
}

@end