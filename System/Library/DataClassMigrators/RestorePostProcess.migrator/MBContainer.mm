@interface MBContainer
+ (id)containerWithPropertyList:(id)list volumeMountPoint:(id)point;
+ (id)uninstalledContainerWithDomainName:(id)name volumeMountPoint:(id)point;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSafeHarbor;
- (MBContainer)initWithPropertyList:(id)list volumeMountPoint:(id)point;
- (NSString)safeHarborDir;
- (id)copyWithVolumeMountPoint:(id)point;
- (id)copyWithZone:(_NSZone *)zone;
- (id)propertyListForBackupProperties;
- (int)containerType;
- (unint64_t)hash;
@end

@implementation MBContainer

+ (id)uninstalledContainerWithDomainName:(id)name volumeMountPoint:(id)point
{
  v13[0] = kCFBundleIdentifierKey;
  pointCopy = point;
  nameCopy = name;
  v7 = [MBDomain containerIDWithName:nameCopy];
  v13[1] = @"ContainerContentClass";
  v14[0] = v7;
  v8 = [MBDomain containerTypeWithName:nameCopy];

  if (v8 - 1 > 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_24998[v8 - 1];
  }

  v14[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [MBContainer containerWithPropertyList:v10 volumeMountPoint:pointCopy];

  return v11;
}

+ (id)containerWithPropertyList:(id)list volumeMountPoint:(id)point
{
  listCopy = list;
  pointCopy = point;
  v7 = [listCopy objectForKeyedSubscript:@"ContainerContentClass"];
  v8 = sub_1858(v7);

  v9 = [objc_alloc(*(&off_249C0)[v8]) initWithPropertyList:listCopy volumeMountPoint:pointCopy];

  return v9;
}

- (MBContainer)initWithPropertyList:(id)list volumeMountPoint:(id)point
{
  listCopy = list;
  pointCopy = point;
  v12.receiver = self;
  v12.super_class = MBContainer;
  v8 = [(MBContainer *)&v12 init];
  if (v8)
  {
    v9 = [listCopy mutableCopy];
    plist = v8->_plist;
    v8->_plist = v9;

    objc_storeStrong(&v8->_volumeMountPoint, point);
  }

  return v8;
}

- (id)copyWithVolumeMountPoint:(id)point
{
  pointCopy = point;
  v5 = [(MBContainer *)self copy];
  v6 = v5[2];
  v5[2] = pointCopy;

  return v5;
}

- (BOOL)isSafeHarbor
{
  datePlacedInSafeHarbor = [(MBContainer *)self datePlacedInSafeHarbor];
  v3 = datePlacedInSafeHarbor != 0;

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSMutableDictionary *)self->_plist mutableCopyWithZone:zone];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  objc_storeStrong(v5 + 2, self->_volumeMountPoint);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    identifier = [(MBContainer *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(MBContainer *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (int)containerType
{
  containerTypeString = [(MBContainer *)self containerTypeString];
  v3 = sub_1858(containerTypeString);

  return v3;
}

- (NSString)safeHarborDir
{
  if (![(MBContainer *)self isSafeHarbor])
  {
    sub_13508(a2, self);
  }

  containerDir = [(MBContainer *)self containerDir];
  stringByDeletingLastPathComponent = [containerDir stringByDeletingLastPathComponent];

  return stringByDeletingLastPathComponent;
}

- (id)propertyListForBackupProperties
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_plist;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(NSMutableDictionary *)self->_plist objectForKeyedSubscript:v9, v12];
        if (qword_2A768 != -1)
        {
          sub_1357C();
        }

        if ([qword_2A760 containsObject:v9])
        {
          [v3 setObject:v10 forKeyedSubscript:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

@end