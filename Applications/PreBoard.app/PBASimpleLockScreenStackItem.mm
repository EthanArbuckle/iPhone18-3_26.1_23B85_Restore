@interface PBASimpleLockScreenStackItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PBASimpleLockScreenStackItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    iconSystemName = [(PBASimpleLockScreenStackItem *)self iconSystemName];
    iconSystemName2 = [v5 iconSystemName];
    v8 = [iconSystemName isEqualToString:iconSystemName2];

    if (v8)
    {
      title = [(PBASimpleLockScreenStackItem *)self title];
      title2 = [v5 title];
      v11 = [title isEqualToString:title2];
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
  iconSystemName = [(PBASimpleLockScreenStackItem *)self iconSystemName];
  v4 = [iconSystemName hash];
  title = [(PBASimpleLockScreenStackItem *)self title];
  v6 = [title hash] + 13 * v4;

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_iconSystemName copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_title copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

@end