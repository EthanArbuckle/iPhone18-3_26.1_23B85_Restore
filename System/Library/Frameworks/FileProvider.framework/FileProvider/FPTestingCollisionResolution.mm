@interface FPTestingCollisionResolution
- (FPTestingCollisionResolution)initWithCoder:(id)coder;
- (FPTestingCollisionResolution)initWithOperationIdentifier:(id)identifier renamedItem:(id)item snapshotVersion:(int64_t)version;
- (unint64_t)side;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPTestingCollisionResolution

- (FPTestingCollisionResolution)initWithOperationIdentifier:(id)identifier renamedItem:(id)item snapshotVersion:(int64_t)version
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = FPTestingCollisionResolution;
  v10 = [(FPTestingOperation *)&v13 initWithOperationIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_renamedItem, item);
    v11->_snapshotVersion = version;
  }

  return v11;
}

- (unint64_t)side
{
  itemIdentifier = [(NSFileProviderItem *)self->_renamedItem itemIdentifier];
  v3 = [itemIdentifier hasPrefix:@"__fp/fs/"] ^ 1;

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FPTestingCollisionResolution;
  coderCopy = coder;
  [(FPTestingOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_renamedItem forKey:{@"_renamedItem", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_snapshotVersion forKey:@"_snapshotVersion"];
}

- (FPTestingCollisionResolution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FPTestingCollisionResolution;
  v5 = [(FPTestingOperation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_renamedItem"];
    renamedItem = v5->_renamedItem;
    v5->_renamedItem = v6;

    v5->_snapshotVersion = [coderCopy decodeIntegerForKey:@"_snapshotVersion"];
  }

  return v5;
}

@end