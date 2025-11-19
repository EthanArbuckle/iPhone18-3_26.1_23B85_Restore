@interface NSData
- (NSData)bzip2CompressedData;
- (NSData)bzip2UncompressedData;
- (id)_maps_debugPanelShortcutRepresentation;
@end

@implementation NSData

- (NSData)bzip2CompressedData
{
  [(NSData *)self bytes];
  [(NSData *)self length];
  if (GEOBZ2Compress())
  {
    v3 = [NSData dataWithBytesNoCopy:0 length:0 freeWhenDone:1];
  }

  else
  {
    free(0);
    v3 = 0;
  }

  return v3;
}

- (NSData)bzip2UncompressedData
{
  [(NSData *)self bytes];
  [(NSData *)self length];
  v3 = GEOBZ2Uncompress();
  v4 = 0;
  if (v3)
  {
    v4 = [NSData dataWithBytesNoCopy:0 length:0 freeWhenDone:1];
  }

  return v4;
}

- (id)_maps_debugPanelShortcutRepresentation
{
  v6 = 0;
  v2 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:self error:&v6];
  v3 = v2;
  v4 = 0;
  if (!v6)
  {
    v4 = v2;
  }

  return v4;
}

@end