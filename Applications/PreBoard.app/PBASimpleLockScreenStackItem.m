@interface PBASimpleLockScreenStackItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PBASimpleLockScreenStackItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PBASimpleLockScreenStackItem *)self iconSystemName];
    v7 = [v5 iconSystemName];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = [(PBASimpleLockScreenStackItem *)self title];
      v10 = [v5 title];
      v11 = [v9 isEqualToString:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(PBASimpleLockScreenStackItem *)self iconSystemName];
  v4 = [v3 hash];
  v5 = [(PBASimpleLockScreenStackItem *)self title];
  v6 = [v5 hash] + 13 * v4;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_iconSystemName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

@end