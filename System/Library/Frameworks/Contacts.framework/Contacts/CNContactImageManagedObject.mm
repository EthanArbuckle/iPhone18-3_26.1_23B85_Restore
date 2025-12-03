@interface CNContactImageManagedObject
- (void)setupWithContactImage:(id)image contactIdentifier:(id)identifier;
- (void)setupWithContactImage:(id)image contactIdentifier:(id)identifier externalDetails:(id)details isCurrent:(BOOL)current;
- (void)setupWithContactImage:(id)image pairedPoster:(id)poster contactIdentifier:(id)identifier;
- (void)setupWithContactImage:(id)image pairedPoster:(id)poster contactIdentifier:(id)identifier externalDetails:(id)details isCurrent:(BOOL)current;
- (void)updateWithContactImage:(id)image;
- (void)updateWithContactImage:(id)image pairedPoster:(id)poster;
@end

@implementation CNContactImageManagedObject

- (void)updateWithContactImage:(id)image
{
  imageCopy = image;
  imageData = [imageCopy imageData];
  [(CNContactImageManagedObject *)self setImageData:imageData];

  lastUsedDate = [imageCopy lastUsedDate];
  [(CNContactImageManagedObject *)self setLastUsedDate:lastUsedDate];

  [imageCopy cropRect];
  v7 = [(CNContactImageManagedObject *)self cropRectStringFromCGRect:?];
  [(CNContactImageManagedObject *)self setCropRectString:v7];

  displayString = [imageCopy displayString];
  [(CNContactImageManagedObject *)self setDisplayString:displayString];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(imageCopy, "source")}];
  [(CNContactImageManagedObject *)self setSource:v9];

  sourceIdentifier = [imageCopy sourceIdentifier];
  [(CNContactImageManagedObject *)self setSourceIdentifier:sourceIdentifier];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(imageCopy, "encodingType")}];
  [(CNContactImageManagedObject *)self setImageDataEncodingType:v11];

  variant = [imageCopy variant];
  [(CNContactImageManagedObject *)self setVariant:variant];

  poseConfigurationData = [imageCopy poseConfigurationData];
  [(CNContactImageManagedObject *)self setPoseConfigurationData:poseConfigurationData];

  -[CNContactImageManagedObject setIgnoredForRevert:](self, "setIgnoredForRevert:", [imageCopy ignoredForRevert]);
  v14 = MEMORY[0x1E696AD98];
  itemDetails = [imageCopy itemDetails];

  v16 = [v14 numberWithUnsignedInteger:itemDetails];
  [(CNContactImageManagedObject *)self setItemDetailsNumber:v16];
}

- (void)updateWithContactImage:(id)image pairedPoster:(id)poster
{
  posterCopy = poster;
  imageCopy = image;
  imageData = [imageCopy imageData];
  [(CNContactImageManagedObject *)self setImageData:imageData];

  lastUsedDate = [imageCopy lastUsedDate];
  [(CNContactImageManagedObject *)self setLastUsedDate:lastUsedDate];

  [imageCopy cropRect];
  v9 = [(CNContactImageManagedObject *)self cropRectStringFromCGRect:?];
  [(CNContactImageManagedObject *)self setCropRectString:v9];

  displayString = [imageCopy displayString];
  [(CNContactImageManagedObject *)self setDisplayString:displayString];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(imageCopy, "source")}];
  [(CNContactImageManagedObject *)self setSource:v11];

  sourceIdentifier = [imageCopy sourceIdentifier];
  [(CNContactImageManagedObject *)self setSourceIdentifier:sourceIdentifier];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(imageCopy, "encodingType")}];
  [(CNContactImageManagedObject *)self setImageDataEncodingType:v13];

  variant = [imageCopy variant];
  [(CNContactImageManagedObject *)self setVariant:variant];

  poseConfigurationData = [imageCopy poseConfigurationData];
  [(CNContactImageManagedObject *)self setPoseConfigurationData:poseConfigurationData];

  -[CNContactImageManagedObject setIgnoredForRevert:](self, "setIgnoredForRevert:", [imageCopy ignoredForRevert]);
  v16 = MEMORY[0x1E696AD98];
  itemDetails = [imageCopy itemDetails];

  v18 = [v16 numberWithUnsignedInteger:itemDetails];
  [(CNContactImageManagedObject *)self setItemDetailsNumber:v18];

  [(CNContactImageManagedObject *)self setPairedPoster:posterCopy];
}

- (void)setupWithContactImage:(id)image contactIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  imageCopy = image;
  v9 = [v6 alloc];
  identifier = [imageCopy identifier];
  v11 = [v9 initWithUUIDString:identifier];

  [(CNContactImageManagedObject *)self setIdentifier:v11];
  [(CNContactImageManagedObject *)self setContactIdentifier:identifierCopy];

  [(CNContactImageManagedObject *)self updateWithContactImage:imageCopy];
}

- (void)setupWithContactImage:(id)image contactIdentifier:(id)identifier externalDetails:(id)details isCurrent:(BOOL)current
{
  currentCopy = current;
  v10 = MEMORY[0x1E696AFB0];
  detailsCopy = details;
  identifierCopy = identifier;
  imageCopy = image;
  v14 = [v10 alloc];
  identifier = [imageCopy identifier];
  v16 = [v14 initWithUUIDString:identifier];

  [(CNContactImageManagedObject *)self setIdentifier:v16];
  [(CNContactImageManagedObject *)self setContactIdentifier:identifierCopy];

  [(CNContactImageManagedObject *)self setExternalDetails:detailsCopy];
  [(CNContactImageManagedObject *)self setIsCurrent:currentCopy];
  [(CNContactImageManagedObject *)self updateWithContactImage:imageCopy];
}

- (void)setupWithContactImage:(id)image pairedPoster:(id)poster contactIdentifier:(id)identifier
{
  v8 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  posterCopy = poster;
  imageCopy = image;
  v12 = [v8 alloc];
  identifier = [imageCopy identifier];
  v14 = [v12 initWithUUIDString:identifier];

  [(CNContactImageManagedObject *)self setIdentifier:v14];
  [(CNContactImageManagedObject *)self setContactIdentifier:identifierCopy];

  [(CNContactImageManagedObject *)self updateWithContactImage:imageCopy pairedPoster:posterCopy];
}

- (void)setupWithContactImage:(id)image pairedPoster:(id)poster contactIdentifier:(id)identifier externalDetails:(id)details isCurrent:(BOOL)current
{
  currentCopy = current;
  v12 = MEMORY[0x1E696AFB0];
  detailsCopy = details;
  identifierCopy = identifier;
  posterCopy = poster;
  imageCopy = image;
  v17 = [v12 alloc];
  identifier = [imageCopy identifier];
  v19 = [v17 initWithUUIDString:identifier];

  [(CNContactImageManagedObject *)self setIdentifier:v19];
  [(CNContactImageManagedObject *)self setContactIdentifier:identifierCopy];

  [(CNContactImageManagedObject *)self setExternalDetails:detailsCopy];
  [(CNContactImageManagedObject *)self setIsCurrent:currentCopy];
  [(CNContactImageManagedObject *)self updateWithContactImage:imageCopy pairedPoster:posterCopy];
}

@end