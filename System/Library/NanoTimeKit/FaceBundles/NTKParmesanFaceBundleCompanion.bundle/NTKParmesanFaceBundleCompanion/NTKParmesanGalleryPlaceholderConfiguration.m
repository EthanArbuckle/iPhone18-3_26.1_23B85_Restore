@interface NTKParmesanGalleryPlaceholderConfiguration
- (NSString)uniqueSnapshotIdentifier;
- (NTKParmesanGalleryPlaceholderConfiguration)init;
- (void)applyToFace:(id)a3 forDevice:(id)a4;
@end

@implementation NTKParmesanGalleryPlaceholderConfiguration

- (void)applyToFace:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23BFBE330(v6, v7);
}

- (NSString)uniqueSnapshotIdentifier
{
  v2 = self;
  sub_23BFBE774();

  v3 = sub_23BFFA2C0();

  return v3;
}

- (NTKParmesanGalleryPlaceholderConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end