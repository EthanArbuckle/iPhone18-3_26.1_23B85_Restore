@interface OfflineMapsManagementCellModel
- (BOOL)isEqual:(id)equal;
- (OfflineMapsManagementCellModel)init;
- (id)identifier;
- (unint64_t)hash;
@end

@implementation OfflineMapsManagementCellModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    identifier = [(OfflineMapsManagementCellModel *)v6 identifier];
    identifier2 = [(OfflineMapsManagementCellModel *)self identifier];
    if (identifier == identifier2 || [identifier isEqual:identifier2])
    {
      isEnabled = [(OfflineMapsManagementCellModel *)v6 isEnabled];
      v10 = isEnabled ^ [(OfflineMapsManagementCellModel *)self isEnabled]^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  identifier = [(OfflineMapsManagementCellModel *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)identifier
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSNumber numberWithUnsignedInteger:[(OfflineMapsManagementCellModel *)self cellType]];
  v6 = [NSString stringWithFormat:@"%@.%@", v4, v5];

  return v6;
}

- (OfflineMapsManagementCellModel)init
{
  v6.receiver = self;
  v6.super_class = OfflineMapsManagementCellModel;
  v2 = [(OfflineMapsManagementCellModel *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 1;
    v4 = v2;
  }

  return v3;
}

@end