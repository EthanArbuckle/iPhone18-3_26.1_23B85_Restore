@interface CNPhotoPickerConfiguration
+ (CNPhotoPickerConfiguration)contactsConfiguration;
+ (CNPhotoPickerConfiguration)gameCenterConfiguration;
- (CNPhotoPickerConfiguration)initWithIncludeContactImage:(BOOL)image includeUnifiedContactImages:(BOOL)images includeFaces:(BOOL)faces includeMonograms:(BOOL)monograms includeAnimoji:(BOOL)animoji includeRecents:(BOOL)recents includeEmoji:(BOOL)emoji allowPhotoCapture:(BOOL)self0 allowPhotoFromLibrary:(BOOL)self1 allowAnimojiCreation:(BOOL)self2 allowRotation:(BOOL)self3;
- (id)configurationBySettingAllowsPhotoCapture:(BOOL)capture;
@end

@implementation CNPhotoPickerConfiguration

- (CNPhotoPickerConfiguration)initWithIncludeContactImage:(BOOL)image includeUnifiedContactImages:(BOOL)images includeFaces:(BOOL)faces includeMonograms:(BOOL)monograms includeAnimoji:(BOOL)animoji includeRecents:(BOOL)recents includeEmoji:(BOOL)emoji allowPhotoCapture:(BOOL)self0 allowPhotoFromLibrary:(BOOL)self1 allowAnimojiCreation:(BOOL)self2 allowRotation:(BOOL)self3
{
  v23.receiver = self;
  v23.super_class = CNPhotoPickerConfiguration;
  v19 = [(CNPhotoPickerConfiguration *)&v23 init];
  v20 = v19;
  if (v19)
  {
    v19->_includeContactImage = image;
    v19->_includeUnifiedContactImages = images;
    v19->_includeMonograms = monograms;
    v19->_includeAnimoji = animoji;
    v19->_includeFaces = faces;
    v19->_includeRecents = recents;
    v19->_includeEmoji = emoji;
    v19->_allowPhotoCapture = capture;
    v19->_allowPhotoFromLibrary = library;
    v19->_allowAnimojiCreation = creation;
    v19->_allowRotation = rotation;
    v21 = v19;
  }

  return v20;
}

- (id)configurationBySettingAllowsPhotoCapture:(BOOL)capture
{
  v4 = [CNPhotoPickerConfiguration alloc];
  includeContactImage = [(CNPhotoPickerConfiguration *)self includeContactImage];
  includeUnifiedContactImages = [(CNPhotoPickerConfiguration *)self includeUnifiedContactImages];
  includeFaces = [(CNPhotoPickerConfiguration *)self includeFaces];
  includeMonograms = [(CNPhotoPickerConfiguration *)self includeMonograms];
  includeAnimoji = [(CNPhotoPickerConfiguration *)self includeAnimoji];
  includeRecents = [(CNPhotoPickerConfiguration *)self includeRecents];
  includeEmoji = [(CNPhotoPickerConfiguration *)self includeEmoji];
  allowPhotoFromLibrary = [(CNPhotoPickerConfiguration *)self allowPhotoFromLibrary];
  BYTE4(v15) = 0;
  BYTE3(v15) = [(CNPhotoPickerConfiguration *)self allowAnimojiCreation];
  BYTE2(v15) = allowPhotoFromLibrary;
  BYTE1(v15) = capture;
  LOBYTE(v15) = includeEmoji;
  v13 = [CNPhotoPickerConfiguration initWithIncludeContactImage:v4 includeUnifiedContactImages:"initWithIncludeContactImage:includeUnifiedContactImages:includeFaces:includeMonograms:includeAnimoji:includeRecents:includeEmoji:allowPhotoCapture:allowPhotoFromLibrary:allowAnimojiCreation:allowRotation:" includeFaces:includeContactImage includeMonograms:includeUnifiedContactImages includeAnimoji:includeFaces includeRecents:includeMonograms includeEmoji:includeAnimoji allowPhotoCapture:includeRecents allowPhotoFromLibrary:v15 allowAnimojiCreation:? allowRotation:?];

  return v13;
}

+ (CNPhotoPickerConfiguration)gameCenterConfiguration
{
  BYTE4(v4) = 1;
  LODWORD(v4) = 0x1000000;
  v2 = [[self alloc] initWithIncludeContactImage:1 includeUnifiedContactImages:0 includeFaces:0 includeMonograms:1 includeAnimoji:1 includeRecents:0 includeEmoji:v4 allowPhotoCapture:? allowPhotoFromLibrary:? allowAnimojiCreation:? allowRotation:?];

  return v2;
}

+ (CNPhotoPickerConfiguration)contactsConfiguration
{
  BYTE4(v4) = 0;
  LODWORD(v4) = 16843009;
  v2 = [[self alloc] initWithIncludeContactImage:1 includeUnifiedContactImages:1 includeFaces:1 includeMonograms:1 includeAnimoji:1 includeRecents:1 includeEmoji:v4 allowPhotoCapture:? allowPhotoFromLibrary:? allowAnimojiCreation:? allowRotation:?];

  return v2;
}

@end