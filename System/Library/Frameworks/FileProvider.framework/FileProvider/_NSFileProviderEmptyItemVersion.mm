@interface _NSFileProviderEmptyItemVersion
+ (id)emptyVersion;
- (_NSFileProviderEmptyItemVersion)init;
- (_NSFileProviderEmptyItemVersion)initWithCoder:(id)coder;
@end

@implementation _NSFileProviderEmptyItemVersion

+ (id)emptyVersion
{
  if (emptyVersion_onceToken != -1)
  {
    +[_NSFileProviderEmptyItemVersion emptyVersion];
  }

  v3 = emptyVersion_instance;

  return v3;
}

- (_NSFileProviderEmptyItemVersion)init
{
  data = [MEMORY[0x1E695DEF0] data];
  data2 = [MEMORY[0x1E695DEF0] data];
  v7.receiver = self;
  v7.super_class = _NSFileProviderEmptyItemVersion;
  v5 = [(NSFileProviderItemVersion *)&v7 initWithContentVersion:data metadataVersion:data2];

  return v5;
}

- (_NSFileProviderEmptyItemVersion)initWithCoder:(id)coder
{
  v4 = +[_NSFileProviderEmptyItemVersion emptyVersion];

  return v4;
}

@end