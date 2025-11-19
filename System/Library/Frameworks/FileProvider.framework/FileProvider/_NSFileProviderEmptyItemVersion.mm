@interface _NSFileProviderEmptyItemVersion
+ (id)emptyVersion;
- (_NSFileProviderEmptyItemVersion)init;
- (_NSFileProviderEmptyItemVersion)initWithCoder:(id)a3;
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
  v3 = [MEMORY[0x1E695DEF0] data];
  v4 = [MEMORY[0x1E695DEF0] data];
  v7.receiver = self;
  v7.super_class = _NSFileProviderEmptyItemVersion;
  v5 = [(NSFileProviderItemVersion *)&v7 initWithContentVersion:v3 metadataVersion:v4];

  return v5;
}

- (_NSFileProviderEmptyItemVersion)initWithCoder:(id)a3
{
  v4 = +[_NSFileProviderEmptyItemVersion emptyVersion];

  return v4;
}

@end