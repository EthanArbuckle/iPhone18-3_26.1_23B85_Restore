@interface CBCoordinatedSetInfo
- (CBCoordinatedSetInfo)initWithInfo:(id)a3 withSize:(unsigned __int8)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CBCoordinatedSetInfo

- (CBCoordinatedSetInfo)initWithInfo:(id)a3 withSize:(unsigned __int8)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CBCoordinatedSetInfo;
  v8 = [(CBCoordinatedSetInfo *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_setName, a3);
    v9->_setSize = a4;
    v10 = v9;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSString *)self->_setName copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end