@interface CNContactImageManagedObject
- (void)setupWithContactImage:(id)a3 contactIdentifier:(id)a4;
- (void)setupWithContactImage:(id)a3 contactIdentifier:(id)a4 externalDetails:(id)a5 isCurrent:(BOOL)a6;
- (void)setupWithContactImage:(id)a3 pairedPoster:(id)a4 contactIdentifier:(id)a5;
- (void)setupWithContactImage:(id)a3 pairedPoster:(id)a4 contactIdentifier:(id)a5 externalDetails:(id)a6 isCurrent:(BOOL)a7;
- (void)updateWithContactImage:(id)a3;
- (void)updateWithContactImage:(id)a3 pairedPoster:(id)a4;
@end

@implementation CNContactImageManagedObject

- (void)updateWithContactImage:(id)a3
{
  v4 = a3;
  v5 = [v4 imageData];
  [(CNContactImageManagedObject *)self setImageData:v5];

  v6 = [v4 lastUsedDate];
  [(CNContactImageManagedObject *)self setLastUsedDate:v6];

  [v4 cropRect];
  v7 = [(CNContactImageManagedObject *)self cropRectStringFromCGRect:?];
  [(CNContactImageManagedObject *)self setCropRectString:v7];

  v8 = [v4 displayString];
  [(CNContactImageManagedObject *)self setDisplayString:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "source")}];
  [(CNContactImageManagedObject *)self setSource:v9];

  v10 = [v4 sourceIdentifier];
  [(CNContactImageManagedObject *)self setSourceIdentifier:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "encodingType")}];
  [(CNContactImageManagedObject *)self setImageDataEncodingType:v11];

  v12 = [v4 variant];
  [(CNContactImageManagedObject *)self setVariant:v12];

  v13 = [v4 poseConfigurationData];
  [(CNContactImageManagedObject *)self setPoseConfigurationData:v13];

  -[CNContactImageManagedObject setIgnoredForRevert:](self, "setIgnoredForRevert:", [v4 ignoredForRevert]);
  v14 = MEMORY[0x1E696AD98];
  v15 = [v4 itemDetails];

  v16 = [v14 numberWithUnsignedInteger:v15];
  [(CNContactImageManagedObject *)self setItemDetailsNumber:v16];
}

- (void)updateWithContactImage:(id)a3 pairedPoster:(id)a4
{
  v19 = a4;
  v6 = a3;
  v7 = [v6 imageData];
  [(CNContactImageManagedObject *)self setImageData:v7];

  v8 = [v6 lastUsedDate];
  [(CNContactImageManagedObject *)self setLastUsedDate:v8];

  [v6 cropRect];
  v9 = [(CNContactImageManagedObject *)self cropRectStringFromCGRect:?];
  [(CNContactImageManagedObject *)self setCropRectString:v9];

  v10 = [v6 displayString];
  [(CNContactImageManagedObject *)self setDisplayString:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "source")}];
  [(CNContactImageManagedObject *)self setSource:v11];

  v12 = [v6 sourceIdentifier];
  [(CNContactImageManagedObject *)self setSourceIdentifier:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "encodingType")}];
  [(CNContactImageManagedObject *)self setImageDataEncodingType:v13];

  v14 = [v6 variant];
  [(CNContactImageManagedObject *)self setVariant:v14];

  v15 = [v6 poseConfigurationData];
  [(CNContactImageManagedObject *)self setPoseConfigurationData:v15];

  -[CNContactImageManagedObject setIgnoredForRevert:](self, "setIgnoredForRevert:", [v6 ignoredForRevert]);
  v16 = MEMORY[0x1E696AD98];
  v17 = [v6 itemDetails];

  v18 = [v16 numberWithUnsignedInteger:v17];
  [(CNContactImageManagedObject *)self setItemDetailsNumber:v18];

  [(CNContactImageManagedObject *)self setPairedPoster:v19];
}

- (void)setupWithContactImage:(id)a3 contactIdentifier:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v8 identifier];
  v11 = [v9 initWithUUIDString:v10];

  [(CNContactImageManagedObject *)self setIdentifier:v11];
  [(CNContactImageManagedObject *)self setContactIdentifier:v7];

  [(CNContactImageManagedObject *)self updateWithContactImage:v8];
}

- (void)setupWithContactImage:(id)a3 contactIdentifier:(id)a4 externalDetails:(id)a5 isCurrent:(BOOL)a6
{
  v6 = a6;
  v10 = MEMORY[0x1E696AFB0];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 alloc];
  v15 = [v13 identifier];
  v16 = [v14 initWithUUIDString:v15];

  [(CNContactImageManagedObject *)self setIdentifier:v16];
  [(CNContactImageManagedObject *)self setContactIdentifier:v12];

  [(CNContactImageManagedObject *)self setExternalDetails:v11];
  [(CNContactImageManagedObject *)self setIsCurrent:v6];
  [(CNContactImageManagedObject *)self updateWithContactImage:v13];
}

- (void)setupWithContactImage:(id)a3 pairedPoster:(id)a4 contactIdentifier:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 alloc];
  v13 = [v11 identifier];
  v14 = [v12 initWithUUIDString:v13];

  [(CNContactImageManagedObject *)self setIdentifier:v14];
  [(CNContactImageManagedObject *)self setContactIdentifier:v9];

  [(CNContactImageManagedObject *)self updateWithContactImage:v11 pairedPoster:v10];
}

- (void)setupWithContactImage:(id)a3 pairedPoster:(id)a4 contactIdentifier:(id)a5 externalDetails:(id)a6 isCurrent:(BOOL)a7
{
  v7 = a7;
  v12 = MEMORY[0x1E696AFB0];
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 alloc];
  v18 = [v16 identifier];
  v19 = [v17 initWithUUIDString:v18];

  [(CNContactImageManagedObject *)self setIdentifier:v19];
  [(CNContactImageManagedObject *)self setContactIdentifier:v14];

  [(CNContactImageManagedObject *)self setExternalDetails:v13];
  [(CNContactImageManagedObject *)self setIsCurrent:v7];
  [(CNContactImageManagedObject *)self updateWithContactImage:v16 pairedPoster:v15];
}

@end