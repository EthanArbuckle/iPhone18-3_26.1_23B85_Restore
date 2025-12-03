@interface PHPhotoLibraryOpenOptions
- (id)debugDescription;
@end

@implementation PHPhotoLibraryOpenOptions

- (id)debugDescription
{
  if ([(PHPhotoLibraryOpenOptions *)self internalUpgradeOptions])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"upgradeOpts[%d] ", -[PHPhotoLibraryOpenOptions internalUpgradeOptions](self, "internalUpgradeOptions")];
  }

  else
  {
    v3 = &stru_1F0FC60C8;
  }

  if ([(PHPhotoLibraryOpenOptions *)self internalCreateOptions])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"createOpts[%d] ", -[PHPhotoLibraryOpenOptions internalCreateOptions](self, "internalCreateOptions")];
  }

  else
  {
    v4 = &stru_1F0FC60C8;
  }

  v10.receiver = self;
  v10.super_class = PHPhotoLibraryOpenOptions;
  v5 = [(PHPhotoLibraryOpenOptions *)&v10 description];
  allowsUpgrade = [(PHPhotoLibraryOpenOptions *)self allowsUpgrade];
  v7 = @"N";
  if (allowsUpgrade)
  {
    v7 = @"Y";
  }

  v8 = [v5 stringByAppendingFormat:@": upgrade:[%@] %@%@", v7, v4, v3];

  return v8;
}

@end