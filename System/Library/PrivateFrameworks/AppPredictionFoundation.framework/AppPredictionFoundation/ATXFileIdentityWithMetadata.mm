@interface ATXFileIdentityWithMetadata
- (ATXFileIdentityWithMetadata)initWithCoder:(id)a3;
- (ATXFileIdentityWithMetadata)initWithItemURL:(id)a3 bookmarkData:(id)a4 dateLastOpened:(id)a5 dateModified:(id)a6 dateCreated:(id)a7 bundleIdentifier:(id)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXFileIdentityWithMetadata:(id)a3;
- (id)resolveItemURLWithError:(id *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXFileIdentityWithMetadata

- (ATXFileIdentityWithMetadata)initWithItemURL:(id)a3 bookmarkData:(id)a4 dateLastOpened:(id)a5 dateModified:(id)a6 dateCreated:(id)a7 bundleIdentifier:(id)a8
{
  v27 = a3;
  v15 = a4;
  v26 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v28.receiver = self;
  v28.super_class = ATXFileIdentityWithMetadata;
  v19 = [(ATXFileIdentityWithMetadata *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_itemURL, a3);
    v21 = [v15 copy];
    bookmarkData = v20->_bookmarkData;
    v20->_bookmarkData = v21;

    objc_storeStrong(&v20->_dateLastOpened, a5);
    objc_storeStrong(&v20->_dateModified, a6);
    objc_storeStrong(&v20->_dateCreated, a7);
    v23 = [v18 copy];
    bundleIdentifier = v20->_bundleIdentifier;
    v20->_bundleIdentifier = v23;
  }

  return v20;
}

- (id)resolveItemURLWithError:(id *)a3
{
  bookmarkData = self->_bookmarkData;
  if (bookmarkData)
  {
    v10 = 0;
    v5 = [MEMORY[0x277CBEBC0] URLByResolvingBookmarkData:bookmarkData options:768 relativeToURL:0 bookmarkDataIsStale:0 error:&v10];
    v6 = v10;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = v5;
    goto LABEL_8;
  }

  v6 = [MEMORY[0x277CCA9B8] atx_errorWithCode:1 debugDescription:@"Bookmark data is nil."];
  v5 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a3)
  {
    v7 = v6;
    v8 = 0;
    *a3 = v6;
  }

  else
  {
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_itemURL hash];
  v4 = [(NSData *)self->_bookmarkData hash]- v3 + 32 * v3;
  v5 = [(NSDate *)self->_dateLastOpened hash]- v4 + 32 * v4;
  v6 = [(NSDate *)self->_dateModified hash]- v5 + 32 * v5;
  v7 = [(NSDate *)self->_dateCreated hash]- v6 + 32 * v6;
  return [(NSString *)self->_bundleIdentifier hash]- v7 + 32 * v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXFileIdentityWithMetadata *)self isEqualToATXFileIdentityWithMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXFileIdentityWithMetadata:(id)a3
{
  v4 = a3;
  v5 = self->_itemURL;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSURL *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v8 = self->_bookmarkData;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSData *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v11 = self->_dateLastOpened;
  v12 = v11;
  if (v11 == v4[3])
  {
  }

  else
  {
    v13 = [(NSDate *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v14 = self->_dateModified;
  v15 = v14;
  if (v14 == v4[4])
  {
  }

  else
  {
    v16 = [(NSDate *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v17 = self->_dateCreated;
  v18 = v17;
  if (v17 == v4[5])
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }
  }

  v22 = self->_bundleIdentifier;
  v23 = v22;
  if (v22 == v4[6])
  {
    v20 = 1;
  }

  else
  {
    v20 = [(NSString *)v22 isEqual:?];
  }

LABEL_20:
  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  itemURL = self->_itemURL;
  v5 = a3;
  [v5 encodeObject:itemURL forKey:@"itemURL"];
  [v5 encodeObject:self->_bookmarkData forKey:@"bookmarkData"];
  [v5 encodeObject:self->_dateLastOpened forKey:@"dateLastOpened"];
  [v5 encodeObject:self->_dateModified forKey:@"dateModified"];
  [v5 encodeObject:self->_dateCreated forKey:@"dateCreated"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
}

- (ATXFileIdentityWithMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemURL"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkData"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateLastOpened"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateModified"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v11 = [(ATXFileIdentityWithMetadata *)self initWithItemURL:v5 bookmarkData:v6 dateLastOpened:v7 dateModified:v8 dateCreated:v9 bundleIdentifier:v10];
  return v11;
}

@end