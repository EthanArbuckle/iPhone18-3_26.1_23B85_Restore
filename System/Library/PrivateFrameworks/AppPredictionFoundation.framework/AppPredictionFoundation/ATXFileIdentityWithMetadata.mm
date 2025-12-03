@interface ATXFileIdentityWithMetadata
- (ATXFileIdentityWithMetadata)initWithCoder:(id)coder;
- (ATXFileIdentityWithMetadata)initWithItemURL:(id)l bookmarkData:(id)data dateLastOpened:(id)opened dateModified:(id)modified dateCreated:(id)created bundleIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXFileIdentityWithMetadata:(id)metadata;
- (id)resolveItemURLWithError:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXFileIdentityWithMetadata

- (ATXFileIdentityWithMetadata)initWithItemURL:(id)l bookmarkData:(id)data dateLastOpened:(id)opened dateModified:(id)modified dateCreated:(id)created bundleIdentifier:(id)identifier
{
  lCopy = l;
  dataCopy = data;
  openedCopy = opened;
  modifiedCopy = modified;
  createdCopy = created;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = ATXFileIdentityWithMetadata;
  v19 = [(ATXFileIdentityWithMetadata *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_itemURL, l);
    v21 = [dataCopy copy];
    bookmarkData = v20->_bookmarkData;
    v20->_bookmarkData = v21;

    objc_storeStrong(&v20->_dateLastOpened, opened);
    objc_storeStrong(&v20->_dateModified, modified);
    objc_storeStrong(&v20->_dateCreated, created);
    v23 = [identifierCopy copy];
    bundleIdentifier = v20->_bundleIdentifier;
    v20->_bundleIdentifier = v23;
  }

  return v20;
}

- (id)resolveItemURLWithError:(id *)error
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
  if (error)
  {
    v7 = v6;
    v8 = 0;
    *error = v6;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXFileIdentityWithMetadata *)self isEqualToATXFileIdentityWithMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXFileIdentityWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = self->_itemURL;
  v6 = v5;
  if (v5 == metadataCopy[1])
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
  if (v8 == metadataCopy[2])
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
  if (v11 == metadataCopy[3])
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
  if (v14 == metadataCopy[4])
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
  if (v17 == metadataCopy[5])
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
  if (v22 == metadataCopy[6])
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

- (void)encodeWithCoder:(id)coder
{
  itemURL = self->_itemURL;
  coderCopy = coder;
  [coderCopy encodeObject:itemURL forKey:@"itemURL"];
  [coderCopy encodeObject:self->_bookmarkData forKey:@"bookmarkData"];
  [coderCopy encodeObject:self->_dateLastOpened forKey:@"dateLastOpened"];
  [coderCopy encodeObject:self->_dateModified forKey:@"dateModified"];
  [coderCopy encodeObject:self->_dateCreated forKey:@"dateCreated"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
}

- (ATXFileIdentityWithMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkData"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateLastOpened"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateModified"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v11 = [(ATXFileIdentityWithMetadata *)self initWithItemURL:v5 bookmarkData:v6 dateLastOpened:v7 dateModified:v8 dateCreated:v9 bundleIdentifier:v10];
  return v11;
}

@end