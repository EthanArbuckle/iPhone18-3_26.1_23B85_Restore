@interface _MFIconCacheItem
- (_MFIconCacheItem)initWithFilename:(id)filename;
@end

@implementation _MFIconCacheItem

- (_MFIconCacheItem)initWithFilename:(id)filename
{
  filenameCopy = filename;
  v9.receiver = self;
  v9.super_class = _MFIconCacheItem;
  v5 = [(_MFIconCacheItem *)&v9 init];
  if (v5)
  {
    v6 = [filenameCopy copy];
    filename = v5->_filename;
    v5->_filename = v6;
  }

  return v5;
}

@end