@interface CNContactPosterManagedObject
- (void)_setupWithContactPoster:(id)poster pairedImage:(id)image contactIdentifier:(id)identifier externalDetails:(id)details isCurrent:(BOOL)current;
- (void)_updateWithContactPoster:(id)poster pairedImage:(id)image;
@end

@implementation CNContactPosterManagedObject

- (void)_updateWithContactPoster:(id)poster pairedImage:(id)image
{
  imageCopy = image;
  posterCopy = poster;
  -[CNContactPosterManagedObject setIgnoredForRevert:](self, "setIgnoredForRevert:", [posterCopy ignoredForRevert]);
  posterData = [posterCopy posterData];
  [(CNContactPosterManagedObject *)self setPosterData:posterData];

  posterMetadata = [posterCopy posterMetadata];
  [(CNContactPosterManagedObject *)self setPosterMetadata:posterMetadata];

  lastUsedDate = [posterCopy lastUsedDate];
  [(CNContactPosterManagedObject *)self setLastUsedDate:lastUsedDate];

  [(CNContactPosterManagedObject *)self setPairedImage:imageCopy];
  -[CNContactPosterManagedObject setContentIsSensitive:](self, "setContentIsSensitive:", [posterCopy contentIsSensitive]);
  watchPosterImageData = [posterCopy watchPosterImageData];
  [(CNContactPosterManagedObject *)self setWatchPosterImageData:watchPosterImageData];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(posterCopy, "itemDetails")}];
  [(CNContactPosterManagedObject *)self setItemDetailsNumber:v12];

  v13 = objc_alloc(MEMORY[0x1E696AFB0]);
  identifier = [posterCopy identifier];

  v14 = [v13 initWithUUIDString:identifier];
  [(CNContactPosterManagedObject *)self setIdentifier:v14];
}

- (void)_setupWithContactPoster:(id)poster pairedImage:(id)image contactIdentifier:(id)identifier externalDetails:(id)details isCurrent:(BOOL)current
{
  currentCopy = current;
  detailsCopy = details;
  imageCopy = image;
  posterCopy = poster;
  [(CNContactPosterManagedObject *)self setContactIdentifier:identifier];
  [(CNContactPosterManagedObject *)self setExternalDetails:detailsCopy];

  [(CNContactPosterManagedObject *)self setIsCurrent:currentCopy];
  [(CNContactPosterManagedObject *)self _updateWithContactPoster:posterCopy pairedImage:imageCopy];
}

@end