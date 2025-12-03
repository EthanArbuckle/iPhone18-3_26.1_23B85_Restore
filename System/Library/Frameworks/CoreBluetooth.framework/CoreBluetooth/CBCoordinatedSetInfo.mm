@interface CBCoordinatedSetInfo
- (CBCoordinatedSetInfo)initWithInfo:(id)info withSize:(unsigned __int8)size;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CBCoordinatedSetInfo

- (CBCoordinatedSetInfo)initWithInfo:(id)info withSize:(unsigned __int8)size
{
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = CBCoordinatedSetInfo;
  v8 = [(CBCoordinatedSetInfo *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_setName, info);
    v9->_setSize = size;
    v10 = v9;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_setName copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end