@interface NTKParmesanGalleryPlaceholderConfiguration
- (NSString)uniqueSnapshotIdentifier;
- (NTKParmesanGalleryPlaceholderConfiguration)init;
- (void)applyToFace:(id)face forDevice:(id)device;
@end

@implementation NTKParmesanGalleryPlaceholderConfiguration

- (void)applyToFace:(id)face forDevice:(id)device
{
  faceCopy = face;
  deviceCopy = device;
  selfCopy = self;
  sub_23BFBE330(faceCopy, deviceCopy);
}

- (NSString)uniqueSnapshotIdentifier
{
  selfCopy = self;
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