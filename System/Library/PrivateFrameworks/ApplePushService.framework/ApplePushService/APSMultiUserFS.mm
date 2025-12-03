@interface APSMultiUserFS
+ (id)sharedInstance;
- (APSMultiUserFS)initWithIsMultiUserMode:(BOOL)mode;
- (id)systemPath;
@end

@implementation APSMultiUserFS

+ (id)sharedInstance
{
  if (qword_1001BF788 != -1)
  {
    sub_10010B21C();
  }

  v3 = qword_1001BF790;

  return v3;
}

- (APSMultiUserFS)initWithIsMultiUserMode:(BOOL)mode
{
  v5.receiver = self;
  v5.super_class = APSMultiUserFS;
  result = [(APSMultiUserFS *)&v5 init];
  if (result)
  {
    result->_isMultiUser = mode;
  }

  return result;
}

- (id)systemPath
{
  systemPathCache = self->_systemPathCache;
  if (!systemPathCache)
  {
    v4 = container_system_path_for_identifier();
    if (v4)
    {
      v5 = v4;
      v6 = [[NSString alloc] initWithCString:v4 encoding:4];
      v7 = self->_systemPathCache;
      self->_systemPathCache = v6;

      free(v5);
    }

    systemPathCache = self->_systemPathCache;
  }

  v8 = systemPathCache;

  return v8;
}

@end