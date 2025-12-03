@interface PUPhotoPickerRemoteViewControllerRequestOptions
- (BOOL)allowsMultipleSelection;
- (BOOL)convertAutoloopsToGIF;
- (BOOL)requiresPickingConfirmation;
- (BOOL)showsFileSizePicker;
- (BOOL)showsPrompt;
- (NSArray)mediaTypes;
- (PUPhotoPickerRemoteViewControllerRequestOptions)initWithCoder:(id)coder;
- (PUPhotoPickerRemoteViewControllerRequestOptions)initWithRequestedClassName:(id)name photoPickerProperties:(id)properties;
- (PUPhotoPickerRemoteViewControllerRequestOptions)initWithRequestedIdentifier:(id)identifier photoPickerProperties:(id)properties;
- (id)description;
- (int64_t)modalPresentationStyle;
- (int64_t)sourceType;
- (unint64_t)multipleSelectionLimit;
- (unint64_t)savingOptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUPhotoPickerRemoteViewControllerRequestOptions

- (int64_t)sourceType
{
  photoPickerProperties = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [photoPickerProperties objectForKeyedSubscript:*MEMORY[0x1E69DE990]];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)modalPresentationStyle
{
  photoPickerProperties = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [photoPickerProperties objectForKeyedSubscript:@"_UIImagePickerControllerModalPresentationStyle"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)convertAutoloopsToGIF
{
  photoPickerProperties = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [photoPickerProperties objectForKey:@"_UIImagePickerControllerConvertAutoloopsToGIF"];

  LOBYTE(photoPickerProperties) = [v3 BOOLValue];
  return photoPickerProperties;
}

- (BOOL)showsPrompt
{
  photoPickerProperties = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [photoPickerProperties objectForKey:*MEMORY[0x1E69DE988]];

  LOBYTE(photoPickerProperties) = [v3 BOOLValue];
  return photoPickerProperties;
}

- (BOOL)showsFileSizePicker
{
  photoPickerProperties = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [photoPickerProperties objectForKeyedSubscript:@"_UIImagePickerControllerShowsFileSizePicker"];

  LOBYTE(photoPickerProperties) = [v3 BOOLValue];
  return photoPickerProperties;
}

- (BOOL)requiresPickingConfirmation
{
  if ([(PUPhotoPickerRemoteViewControllerRequestOptions *)self showsFileSizePicker])
  {
    return 1;
  }

  photoPickerProperties = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v5 = [photoPickerProperties objectForKeyedSubscript:@"_UIImagePickerControllerRequiresPickingConfirmation"];

  LOBYTE(photoPickerProperties) = [v5 BOOLValue];
  return photoPickerProperties;
}

- (unint64_t)multipleSelectionLimit
{
  photoPickerProperties = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [photoPickerProperties objectForKey:*MEMORY[0x1E69DE958]];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (BOOL)allowsMultipleSelection
{
  photoPickerProperties = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [photoPickerProperties objectForKey:*MEMORY[0x1E69DE8C8]];

  LOBYTE(photoPickerProperties) = [v3 BOOLValue];
  return photoPickerProperties;
}

- (NSArray)mediaTypes
{
  photoPickerProperties = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [photoPickerProperties objectForKey:*MEMORY[0x1E69DE950]];

  return v3;
}

- (unint64_t)savingOptions
{
  photoPickerProperties = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [photoPickerProperties objectForKey:*MEMORY[0x1E69DE9D8]];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (void)encodeWithCoder:(id)coder
{
  requestedIdentifier = self->_requestedIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:requestedIdentifier forKey:@"requestedIdentifier"];
  [coderCopy encodeObject:self->_requestedClassName forKey:@"requestedClassName"];
  [coderCopy encodeObject:self->_photoPickerProperties forKey:@"photoPickerProperties"];
  [coderCopy encodeBool:self->_onboardingHeaderDismissedBefore forKey:@"onboardingHeader"];
}

- (PUPhotoPickerRemoteViewControllerRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PUPhotoPickerRemoteViewControllerRequestOptions;
  v5 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedIdentifier"];
    requestedIdentifier = v5->_requestedIdentifier;
    v5->_requestedIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedClassName"];
    requestedClassName = v5->_requestedClassName;
    v5->_requestedClassName = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"photoPickerProperties"];
    photoPickerProperties = v5->_photoPickerProperties;
    v5->_photoPickerProperties = v16;

    v5->_onboardingHeaderDismissedBefore = [coderCopy decodeBoolForKey:@"onboardingHeader"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestedClassName = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self requestedClassName];
  requestedIdentifier = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self requestedIdentifier];
  v8 = [v3 stringWithFormat:@"%@ requestedClassName %@ requestedIdentifier %@", v5, requestedClassName, requestedIdentifier];

  return v8;
}

- (PUPhotoPickerRemoteViewControllerRequestOptions)initWithRequestedIdentifier:(id)identifier photoPickerProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  v13.receiver = self;
  v13.super_class = PUPhotoPickerRemoteViewControllerRequestOptions;
  v9 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestedIdentifier, identifier);
    objc_storeStrong(&v10->_photoPickerProperties, properties);
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v10->_onboardingHeaderDismissedBefore = [standardUserDefaults BOOLForKey:@"com.apple.photos.picker.header"];
  }

  return v10;
}

- (PUPhotoPickerRemoteViewControllerRequestOptions)initWithRequestedClassName:(id)name photoPickerProperties:(id)properties
{
  nameCopy = name;
  propertiesCopy = properties;
  v13.receiver = self;
  v13.super_class = PUPhotoPickerRemoteViewControllerRequestOptions;
  v9 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestedClassName, name);
    objc_storeStrong(&v10->_photoPickerProperties, properties);
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v10->_onboardingHeaderDismissedBefore = [standardUserDefaults BOOLForKey:@"com.apple.photos.picker.header"];
  }

  return v10;
}

@end