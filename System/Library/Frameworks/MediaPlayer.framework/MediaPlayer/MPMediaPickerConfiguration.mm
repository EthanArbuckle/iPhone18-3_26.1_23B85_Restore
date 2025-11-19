@interface MPMediaPickerConfiguration
- (MPMediaPickerConfiguration)init;
- (MPMediaPickerConfiguration)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setShowsCatalogContent:(BOOL)a3;
- (void)setShowsLibraryContent:(BOOL)a3;
- (void)setSupportsUnavailableContent:(BOOL)a3;
@end

@implementation MPMediaPickerConfiguration

- (MPMediaPickerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MPMediaPickerConfiguration;
  v5 = [(MPMediaPickerConfiguration *)&v18 init];
  if (v5)
  {
    v5->_mediaTypes = [v4 decodeIntegerForKey:@"mediaTypes"];
    v5->_allowsPickingMultipleItems = [v4 decodeBoolForKey:@"allowsPickingMultipleItems"];
    v5->_alwaysShowSearchBarInLibrary = [v4 decodeBoolForKey:@"aslsb"];
    v5->_automaticallyDrillsToLibrary = [v4 decodeBoolForKey:@"adtl"];
    v5->_showsCloudItems = [v4 decodeBoolForKey:@"showsCloudItems"];
    v5->_showsItemsWithProtectedAssets = [v4 decodeBoolForKey:@"showsItemsWithProtectedAssets"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prompt"];
    v7 = [v6 copy];
    prompt = v5->_prompt;
    v5->_prompt = v7;

    v5->_picksSingleCollectionEntity = [v4 decodeBoolForKey:@"picksSingleCollectionEntity"];
    v5->_watchCompatibilityVersion = [v4 decodeInt32ForKey:@"watchCompatibilityVersion"];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"typeIdentifiers"];
    v13 = [v12 copy];
    typeIdentifiers = v5->_typeIdentifiers;
    v5->_typeIdentifiers = v13;

    v5->_selectionMode = [v4 decodeIntegerForKey:@"selectionMode"];
    v5->_pickingForExternalPlayer = [v4 decodeBoolForKey:@"pickingForExternalPlayer"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pac"];
    playbackArchiveConfiguration = v5->_playbackArchiveConfiguration;
    v5->_playbackArchiveConfiguration = v15;

    v5->_supportedContentOptions = [v4 decodeIntegerForKey:@"sco"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  mediaTypes = self->_mediaTypes;
  v5 = a3;
  [v5 encodeInteger:mediaTypes forKey:@"mediaTypes"];
  [v5 encodeBool:self->_allowsPickingMultipleItems forKey:@"allowsPickingMultipleItems"];
  [v5 encodeBool:self->_alwaysShowSearchBarInLibrary forKey:@"aslsb"];
  [v5 encodeBool:self->_automaticallyDrillsToLibrary forKey:@"adtl"];
  [v5 encodeBool:self->_showsCloudItems forKey:@"showsCloudItems"];
  [v5 encodeBool:self->_showsItemsWithProtectedAssets forKey:@"showsItemsWithProtectedAssets"];
  [v5 encodeObject:self->_prompt forKey:@"prompt"];
  [v5 encodeBool:self->_picksSingleCollectionEntity forKey:@"picksSingleCollectionEntity"];
  [v5 encodeInt32:self->_watchCompatibilityVersion forKey:@"watchCompatibilityVersion"];
  [v5 encodeObject:self->_typeIdentifiers forKey:@"typeIdentifiers"];
  [v5 encodeInteger:self->_selectionMode forKey:@"selectionMode"];
  [v5 encodeBool:self->_pickingForExternalPlayer forKey:@"pickingForExternalPlayer"];
  [v5 encodeObject:self->_playbackArchiveConfiguration forKey:@"pac"];
  [v5 encodeInteger:self->_supportedContentOptions forKey:@"sco"];
}

- (void)setSupportsUnavailableContent:(BOOL)a3
{
  v3 = a3;
  v5 = [(MPMediaPickerConfiguration *)self supportedContentOptions]& 0xFFFFFFFFFFFFFFFBLL;
  v6 = 4;
  if (!v3)
  {
    v6 = 0;
  }

  [(MPMediaPickerConfiguration *)self setSupportedContentOptions:v5 | v6];
}

- (void)setShowsLibraryContent:(BOOL)a3
{
  v4 = [(MPMediaPickerConfiguration *)self supportedContentOptions]& 0xFFFFFFFFFFFFFFFELL | a3;

  [(MPMediaPickerConfiguration *)self setSupportedContentOptions:v4];
}

- (void)setShowsCatalogContent:(BOOL)a3
{
  v3 = a3;
  v5 = [(MPMediaPickerConfiguration *)self supportedContentOptions]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!v3)
  {
    v6 = 0;
  }

  [(MPMediaPickerConfiguration *)self setSupportedContentOptions:v5 | v6];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = _NSStringFromMPMediaType(self->_mediaTypes, @" | ");
  allowsPickingMultipleItems = self->_allowsPickingMultipleItems;
  alwaysShowSearchBarInLibrary = self->_alwaysShowSearchBarInLibrary;
  automaticallyDrillsToLibrary = self->_automaticallyDrillsToLibrary;
  showsCloudItems = self->_showsCloudItems;
  showsItemsWithProtectedAssets = self->_showsItemsWithProtectedAssets;
  if ([(NSString *)self->_prompt length])
  {
    prompt = self->_prompt;
  }

  else
  {
    prompt = 0;
  }

  v12 = @"NO";
  if (showsItemsWithProtectedAssets)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (showsCloudItems)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (automaticallyDrillsToLibrary)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if (alwaysShowSearchBarInLibrary)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if (allowsPickingMultipleItems)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if (self->_picksSingleCollectionEntity)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  if (self->_pickingForExternalPlayer)
  {
    v12 = @"YES";
  }

  v19 = [v3 stringWithFormat:@"<%@:%p mediaTypes=%@, allowsPickingMultipleItems=%@, alwaysShowsSearchBarInLibrary=%@, automaticallyDrillsToLibrary=%@, showsCloudItems=%@, showsItemsWithProtectedAssets=%@, prompt=%@, picksSingleCollectionEntity=%@, typeIdentifiers=%@, selectionMode=%lu, supportedContentOptions=%lu, pickingForExternalPlayer=%@, playbackArchiveConfiguration=%@>", v4, self, v5, v17, v16, v15, v14, v13, prompt, v18, *&self->_typeIdentifiers, self->_supportedContentOptions, v12, self->_playbackArchiveConfiguration];

  return v19;
}

- (MPMediaPickerConfiguration)init
{
  v5.receiver = self;
  v5.super_class = MPMediaPickerConfiguration;
  v2 = [(MPMediaPickerConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MPMediaPickerConfiguration *)v2 setShowsCloudItems:1];
    [(MPMediaPickerConfiguration *)v3 setShowsItemsWithProtectedAssets:1];
    [(MPMediaPickerConfiguration *)v3 setShowsLibraryContent:1];
  }

  return v3;
}

@end