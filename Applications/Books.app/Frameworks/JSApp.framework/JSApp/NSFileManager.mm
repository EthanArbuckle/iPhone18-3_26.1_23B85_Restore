@interface NSFileManager
- (id)jsa_pathForCacheDirectoryWithDomain:(id)domain;
@end

@implementation NSFileManager

- (id)jsa_pathForCacheDirectoryWithDomain:(id)domain
{
  v4 = sub_843AC();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = NSFileManager.pathForCacheDirectory(with:)(v8).value._object;

  if (object)
  {
    v10 = sub_8437C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end