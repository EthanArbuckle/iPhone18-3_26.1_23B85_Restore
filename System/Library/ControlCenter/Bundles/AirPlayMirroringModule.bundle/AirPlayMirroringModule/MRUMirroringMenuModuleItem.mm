@interface MRUMirroringMenuModuleItem
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation MRUMirroringMenuModuleItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = MRUMirroringMenuModuleItem;
  if ([(CCUIMenuModuleItem *)&v9 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    symbolName = [(MRUMirroringMenuModuleItem *)self symbolName];
    symbolName2 = [equalCopy symbolName];
    v7 = [symbolName isEqual:symbolName2];
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
  symbolName = [(MRUMirroringMenuModuleItem *)self symbolName];
  v5 = [symbolName hash];

  return v5 ^ v3;
}

@end