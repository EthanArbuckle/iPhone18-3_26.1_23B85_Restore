@interface _MFIconCacheItem
- (_MFIconCacheItem)initWithFilename:(id)a3;
@end

@implementation _MFIconCacheItem

- (_MFIconCacheItem)initWithFilename:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MFIconCacheItem;
  v5 = [(_MFIconCacheItem *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    filename = v5->_filename;
    v5->_filename = v6;
  }

  return v5;
}

@end