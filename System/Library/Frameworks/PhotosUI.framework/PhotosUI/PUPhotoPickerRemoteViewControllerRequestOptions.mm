@interface PUPhotoPickerRemoteViewControllerRequestOptions
- (BOOL)allowsMultipleSelection;
- (BOOL)convertAutoloopsToGIF;
- (BOOL)requiresPickingConfirmation;
- (BOOL)showsFileSizePicker;
- (BOOL)showsPrompt;
- (NSArray)mediaTypes;
- (PUPhotoPickerRemoteViewControllerRequestOptions)initWithCoder:(id)a3;
- (PUPhotoPickerRemoteViewControllerRequestOptions)initWithRequestedClassName:(id)a3 photoPickerProperties:(id)a4;
- (PUPhotoPickerRemoteViewControllerRequestOptions)initWithRequestedIdentifier:(id)a3 photoPickerProperties:(id)a4;
- (id)description;
- (int64_t)modalPresentationStyle;
- (int64_t)sourceType;
- (unint64_t)multipleSelectionLimit;
- (unint64_t)savingOptions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUPhotoPickerRemoteViewControllerRequestOptions

- (int64_t)sourceType
{
  v2 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69DE990]];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)modalPresentationStyle
{
  v2 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [v2 objectForKeyedSubscript:@"_UIImagePickerControllerModalPresentationStyle"];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)convertAutoloopsToGIF
{
  v2 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [v2 objectForKey:@"_UIImagePickerControllerConvertAutoloopsToGIF"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (BOOL)showsPrompt
{
  v2 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [v2 objectForKey:*MEMORY[0x1E69DE988]];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (BOOL)showsFileSizePicker
{
  v2 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [v2 objectForKeyedSubscript:@"_UIImagePickerControllerShowsFileSizePicker"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (BOOL)requiresPickingConfirmation
{
  if ([(PUPhotoPickerRemoteViewControllerRequestOptions *)self showsFileSizePicker])
  {
    return 1;
  }

  v4 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v5 = [v4 objectForKeyedSubscript:@"_UIImagePickerControllerRequiresPickingConfirmation"];

  LOBYTE(v4) = [v5 BOOLValue];
  return v4;
}

- (unint64_t)multipleSelectionLimit
{
  v2 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [v2 objectForKey:*MEMORY[0x1E69DE958]];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (BOOL)allowsMultipleSelection
{
  v2 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [v2 objectForKey:*MEMORY[0x1E69DE8C8]];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (NSArray)mediaTypes
{
  v2 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [v2 objectForKey:*MEMORY[0x1E69DE950]];

  return v3;
}

- (unint64_t)savingOptions
{
  v2 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self photoPickerProperties];
  v3 = [v2 objectForKey:*MEMORY[0x1E69DE9D8]];

  v4 = [v3 integerValue];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  requestedIdentifier = self->_requestedIdentifier;
  v5 = a3;
  [v5 encodeObject:requestedIdentifier forKey:@"requestedIdentifier"];
  [v5 encodeObject:self->_requestedClassName forKey:@"requestedClassName"];
  [v5 encodeObject:self->_photoPickerProperties forKey:@"photoPickerProperties"];
  [v5 encodeBool:self->_onboardingHeaderDismissedBefore forKey:@"onboardingHeader"];
}

- (PUPhotoPickerRemoteViewControllerRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PUPhotoPickerRemoteViewControllerRequestOptions;
  v5 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedIdentifier"];
    requestedIdentifier = v5->_requestedIdentifier;
    v5->_requestedIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedClassName"];
    requestedClassName = v5->_requestedClassName;
    v5->_requestedClassName = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"photoPickerProperties"];
    photoPickerProperties = v5->_photoPickerProperties;
    v5->_photoPickerProperties = v16;

    v5->_onboardingHeaderDismissedBefore = [v4 decodeBoolForKey:@"onboardingHeader"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self requestedClassName];
  v7 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)self requestedIdentifier];
  v8 = [v3 stringWithFormat:@"%@ requestedClassName %@ requestedIdentifier %@", v5, v6, v7];

  return v8;
}

- (PUPhotoPickerRemoteViewControllerRequestOptions)initWithRequestedIdentifier:(id)a3 photoPickerProperties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PUPhotoPickerRemoteViewControllerRequestOptions;
  v9 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestedIdentifier, a3);
    objc_storeStrong(&v10->_photoPickerProperties, a4);
    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    v10->_onboardingHeaderDismissedBefore = [v11 BOOLForKey:@"com.apple.photos.picker.header"];
  }

  return v10;
}

- (PUPhotoPickerRemoteViewControllerRequestOptions)initWithRequestedClassName:(id)a3 photoPickerProperties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PUPhotoPickerRemoteViewControllerRequestOptions;
  v9 = [(PUPhotoPickerRemoteViewControllerRequestOptions *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestedClassName, a3);
    objc_storeStrong(&v10->_photoPickerProperties, a4);
    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    v10->_onboardingHeaderDismissedBefore = [v11 BOOLForKey:@"com.apple.photos.picker.header"];
  }

  return v10;
}

@end