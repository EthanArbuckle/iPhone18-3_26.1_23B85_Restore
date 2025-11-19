@interface CNPhotoPickerConfiguration
+ (CNPhotoPickerConfiguration)contactsConfiguration;
+ (CNPhotoPickerConfiguration)gameCenterConfiguration;
- (CNPhotoPickerConfiguration)initWithIncludeContactImage:(BOOL)a3 includeUnifiedContactImages:(BOOL)a4 includeFaces:(BOOL)a5 includeMonograms:(BOOL)a6 includeAnimoji:(BOOL)a7 includeRecents:(BOOL)a8 includeEmoji:(BOOL)a9 allowPhotoCapture:(BOOL)a10 allowPhotoFromLibrary:(BOOL)a11 allowAnimojiCreation:(BOOL)a12 allowRotation:(BOOL)a13;
- (id)configurationBySettingAllowsPhotoCapture:(BOOL)a3;
@end

@implementation CNPhotoPickerConfiguration

- (CNPhotoPickerConfiguration)initWithIncludeContactImage:(BOOL)a3 includeUnifiedContactImages:(BOOL)a4 includeFaces:(BOOL)a5 includeMonograms:(BOOL)a6 includeAnimoji:(BOOL)a7 includeRecents:(BOOL)a8 includeEmoji:(BOOL)a9 allowPhotoCapture:(BOOL)a10 allowPhotoFromLibrary:(BOOL)a11 allowAnimojiCreation:(BOOL)a12 allowRotation:(BOOL)a13
{
  v23.receiver = self;
  v23.super_class = CNPhotoPickerConfiguration;
  v19 = [(CNPhotoPickerConfiguration *)&v23 init];
  v20 = v19;
  if (v19)
  {
    v19->_includeContactImage = a3;
    v19->_includeUnifiedContactImages = a4;
    v19->_includeMonograms = a6;
    v19->_includeAnimoji = a7;
    v19->_includeFaces = a5;
    v19->_includeRecents = a8;
    v19->_includeEmoji = a9;
    v19->_allowPhotoCapture = a10;
    v19->_allowPhotoFromLibrary = a11;
    v19->_allowAnimojiCreation = a12;
    v19->_allowRotation = a13;
    v21 = v19;
  }

  return v20;
}

- (id)configurationBySettingAllowsPhotoCapture:(BOOL)a3
{
  v4 = [CNPhotoPickerConfiguration alloc];
  v5 = [(CNPhotoPickerConfiguration *)self includeContactImage];
  v6 = [(CNPhotoPickerConfiguration *)self includeUnifiedContactImages];
  v7 = [(CNPhotoPickerConfiguration *)self includeFaces];
  v8 = [(CNPhotoPickerConfiguration *)self includeMonograms];
  v9 = [(CNPhotoPickerConfiguration *)self includeAnimoji];
  v10 = [(CNPhotoPickerConfiguration *)self includeRecents];
  v11 = [(CNPhotoPickerConfiguration *)self includeEmoji];
  v12 = [(CNPhotoPickerConfiguration *)self allowPhotoFromLibrary];
  BYTE4(v15) = 0;
  BYTE3(v15) = [(CNPhotoPickerConfiguration *)self allowAnimojiCreation];
  BYTE2(v15) = v12;
  BYTE1(v15) = a3;
  LOBYTE(v15) = v11;
  v13 = [CNPhotoPickerConfiguration initWithIncludeContactImage:v4 includeUnifiedContactImages:"initWithIncludeContactImage:includeUnifiedContactImages:includeFaces:includeMonograms:includeAnimoji:includeRecents:includeEmoji:allowPhotoCapture:allowPhotoFromLibrary:allowAnimojiCreation:allowRotation:" includeFaces:v5 includeMonograms:v6 includeAnimoji:v7 includeRecents:v8 includeEmoji:v9 allowPhotoCapture:v10 allowPhotoFromLibrary:v15 allowAnimojiCreation:? allowRotation:?];

  return v13;
}

+ (CNPhotoPickerConfiguration)gameCenterConfiguration
{
  BYTE4(v4) = 1;
  LODWORD(v4) = 0x1000000;
  v2 = [[a1 alloc] initWithIncludeContactImage:1 includeUnifiedContactImages:0 includeFaces:0 includeMonograms:1 includeAnimoji:1 includeRecents:0 includeEmoji:v4 allowPhotoCapture:? allowPhotoFromLibrary:? allowAnimojiCreation:? allowRotation:?];

  return v2;
}

+ (CNPhotoPickerConfiguration)contactsConfiguration
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 16843009;
  v2 = [[a1 alloc] initWithIncludeContactImage:1 includeUnifiedContactImages:1 includeFaces:1 includeMonograms:1 includeAnimoji:1 includeRecents:1 includeEmoji:v4 allowPhotoCapture:? allowPhotoFromLibrary:? allowAnimojiCreation:? allowRotation:?];

  return v2;
}

@end