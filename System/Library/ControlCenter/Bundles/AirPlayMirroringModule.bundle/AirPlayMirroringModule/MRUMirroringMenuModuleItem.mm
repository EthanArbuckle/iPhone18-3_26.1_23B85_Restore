@interface MRUMirroringMenuModuleItem
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation MRUMirroringMenuModuleItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRUMirroringMenuModuleItem;
  if ([(CCUIMenuModuleItem *)&v9 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(MRUMirroringMenuModuleItem *)self symbolName];
    v6 = [v4 symbolName];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = MRUMirroringMenuModuleItem;
  v3 = [(CCUIMenuModuleItem *)&v7 hash];
  v4 = [(MRUMirroringMenuModuleItem *)self symbolName];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end