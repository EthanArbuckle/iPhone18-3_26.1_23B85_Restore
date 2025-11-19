@interface CNContactPosterManagedObject
- (void)_setupWithContactPoster:(id)a3 pairedImage:(id)a4 contactIdentifier:(id)a5 externalDetails:(id)a6 isCurrent:(BOOL)a7;
- (void)_updateWithContactPoster:(id)a3 pairedImage:(id)a4;
@end

@implementation CNContactPosterManagedObject

- (void)_updateWithContactPoster:(id)a3 pairedImage:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[CNContactPosterManagedObject setIgnoredForRevert:](self, "setIgnoredForRevert:", [v7 ignoredForRevert]);
  v8 = [v7 posterData];
  [(CNContactPosterManagedObject *)self setPosterData:v8];

  v9 = [v7 posterMetadata];
  [(CNContactPosterManagedObject *)self setPosterMetadata:v9];

  v10 = [v7 lastUsedDate];
  [(CNContactPosterManagedObject *)self setLastUsedDate:v10];

  [(CNContactPosterManagedObject *)self setPairedImage:v6];
  -[CNContactPosterManagedObject setContentIsSensitive:](self, "setContentIsSensitive:", [v7 contentIsSensitive]);
  v11 = [v7 watchPosterImageData];
  [(CNContactPosterManagedObject *)self setWatchPosterImageData:v11];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "itemDetails")}];
  [(CNContactPosterManagedObject *)self setItemDetailsNumber:v12];

  v13 = objc_alloc(MEMORY[0x1E696AFB0]);
  v15 = [v7 identifier];

  v14 = [v13 initWithUUIDString:v15];
  [(CNContactPosterManagedObject *)self setIdentifier:v14];
}

- (void)_setupWithContactPoster:(id)a3 pairedImage:(id)a4 contactIdentifier:(id)a5 externalDetails:(id)a6 isCurrent:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  [(CNContactPosterManagedObject *)self setContactIdentifier:a5];
  [(CNContactPosterManagedObject *)self setExternalDetails:v12];

  [(CNContactPosterManagedObject *)self setIsCurrent:v7];
  [(CNContactPosterManagedObject *)self _updateWithContactPoster:v14 pairedImage:v13];
}

@end