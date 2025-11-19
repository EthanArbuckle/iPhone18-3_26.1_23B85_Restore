@interface FPTestingCollisionResolution
- (FPTestingCollisionResolution)initWithCoder:(id)a3;
- (FPTestingCollisionResolution)initWithOperationIdentifier:(id)a3 renamedItem:(id)a4 snapshotVersion:(int64_t)a5;
- (unint64_t)side;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPTestingCollisionResolution

- (FPTestingCollisionResolution)initWithOperationIdentifier:(id)a3 renamedItem:(id)a4 snapshotVersion:(int64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = FPTestingCollisionResolution;
  v10 = [(FPTestingOperation *)&v13 initWithOperationIdentifier:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_renamedItem, a4);
    v11->_snapshotVersion = a5;
  }

  return v11;
}

- (unint64_t)side
{
  v2 = [(NSFileProviderItem *)self->_renamedItem itemIdentifier];
  v3 = [v2 hasPrefix:@"__fp/fs/"] ^ 1;

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FPTestingCollisionResolution;
  v4 = a3;
  [(FPTestingOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_renamedItem forKey:{@"_renamedItem", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_snapshotVersion forKey:@"_snapshotVersion"];
}

- (FPTestingCollisionResolution)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FPTestingCollisionResolution;
  v5 = [(FPTestingOperation *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_renamedItem"];
    renamedItem = v5->_renamedItem;
    v5->_renamedItem = v6;

    v5->_snapshotVersion = [v4 decodeIntegerForKey:@"_snapshotVersion"];
  }

  return v5;
}

@end