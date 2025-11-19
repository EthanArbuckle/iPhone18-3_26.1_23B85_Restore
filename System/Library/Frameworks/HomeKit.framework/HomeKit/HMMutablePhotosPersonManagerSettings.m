@interface HMMutablePhotosPersonManagerSettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutablePhotosPersonManagerSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMPhotosPersonManagerSettings allocWithZone:?]];
  [(HMPhotosPersonManagerSettings *)v4 setImportingFromPhotoLibraryEnabled:[(HMPhotosPersonManagerSettings *)self isImportingFromPhotoLibraryEnabled]];
  [(HMPhotosPersonManagerSettings *)v4 setSharingFaceClassificationsEnabled:[(HMPhotosPersonManagerSettings *)self isSharingFaceClassificationsEnabled]];
  return v4;
}

@end