@interface IDSService
- (id)amsa_allDevices;
@end

@implementation IDSService

- (id)amsa_allDevices
{
  v3 = [(IDSService *)self linkedDevicesWithRelationship:1];
  v4 = [(IDSService *)self linkedDevicesWithRelationship:2];
  if (v3 | v4)
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count] + objc_msgSend(v4, "count"));
    v6 = v5;
    if (v3)
    {
      [v5 addObjectsFromArray:v3];
    }

    if (v4)
    {
      [v6 addObjectsFromArray:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end