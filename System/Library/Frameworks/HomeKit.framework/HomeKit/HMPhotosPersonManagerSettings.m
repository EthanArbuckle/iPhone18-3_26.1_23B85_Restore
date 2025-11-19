@interface HMPhotosPersonManagerSettings
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMPhotosPersonManagerSettings)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMPhotosPersonManagerSettings

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMPhotosPersonManagerSettings *)self isImportingFromPhotoLibraryEnabled];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"Importing From Photo Library Enabled" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMPhotosPersonManagerSettings *)self isSharingFaceClassificationsEnabled];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"Sharing Face Classifications Enabled" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMPhotosPersonManagerSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  -[HMPhotosPersonManagerSettings setImportingFromPhotoLibraryEnabled:](v5, "setImportingFromPhotoLibraryEnabled:", [v4 decodeBoolForKey:@"HMPMS.ifple"]);
  v6 = [v4 decodeBoolForKey:@"HMPMS.sfce"];

  [(HMPhotosPersonManagerSettings *)v5 setSharingFaceClassificationsEnabled:v6];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[HMPhotosPersonManagerSettings isImportingFromPhotoLibraryEnabled](self forKey:{"isImportingFromPhotoLibraryEnabled"), @"HMPMS.ifple"}];
  [v4 encodeBool:-[HMPhotosPersonManagerSettings isSharingFaceClassificationsEnabled](self forKey:{"isSharingFaceClassificationsEnabled"), @"HMPMS.sfce"}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [[HMMutablePhotosPersonManagerSettings allocWithZone:?]];
  [(HMPhotosPersonManagerSettings *)v4 setImportingFromPhotoLibraryEnabled:[(HMPhotosPersonManagerSettings *)self isImportingFromPhotoLibraryEnabled]];
  [(HMPhotosPersonManagerSettings *)v4 setSharingFaceClassificationsEnabled:[(HMPhotosPersonManagerSettings *)self isSharingFaceClassificationsEnabled]];
  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMPhotosPersonManagerSettings isImportingFromPhotoLibraryEnabled](self, "isImportingFromPhotoLibraryEnabled"), v7 == [v6 isImportingFromPhotoLibraryEnabled]))
  {
    v9 = [(HMPhotosPersonManagerSettings *)self isSharingFaceClassificationsEnabled];
    v8 = v9 ^ [v6 isSharingFaceClassificationsEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end