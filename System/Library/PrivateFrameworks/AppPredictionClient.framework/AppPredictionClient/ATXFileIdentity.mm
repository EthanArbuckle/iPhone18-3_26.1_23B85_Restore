@interface ATXFileIdentity
- (ATXFileIdentity)initWithCoder:(id)coder;
- (ATXFileIdentity)initWithItemURL:(id)l;
- (ATXFileIdentity)initWithItemURL:(id)l bookmarkData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXFileIdentity:(id)identity;
- (id)resolveItemURLWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXFileIdentity

- (ATXFileIdentity)initWithItemURL:(id)l
{
  lCopy = l;
  v11 = 0;
  v5 = [lCopy bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v11];
  v6 = v11;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = __atxlog_handle_document_predictor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXFileIdentity *)lCopy initWithItemURL:v7, v9];
    }

    selfCopy = 0;
  }

  else
  {
    self = [(ATXFileIdentity *)self initWithItemURL:lCopy bookmarkData:v5];
    selfCopy = self;
  }

  return selfCopy;
}

- (ATXFileIdentity)initWithItemURL:(id)l bookmarkData:(id)data
{
  lCopy = l;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = ATXFileIdentity;
  v8 = [(ATXFileIdentity *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    itemURL = v8->_itemURL;
    v8->_itemURL = v9;

    v11 = [dataCopy copy];
    bookmarkData = v8->_bookmarkData;
    v8->_bookmarkData = v11;
  }

  return v8;
}

- (id)resolveItemURLWithError:(id *)error
{
  bookmarkData = self->_bookmarkData;
  if (bookmarkData)
  {
    v10 = 0;
    v5 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:bookmarkData options:768 relativeToURL:0 bookmarkDataIsStale:0 error:&v10];
    v6 = v10;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = v5;
    goto LABEL_8;
  }

  v6 = [MEMORY[0x1E696ABC0] atx_errorWithCode:1 debugDescription:@"Bookmark data is nil."];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXFileIdentity *)self isEqualToATXFileIdentity:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXFileIdentity:(id)identity
{
  identityCopy = identity;
  v5 = self->_itemURL;
  v6 = v5;
  if (v5 == identityCopy[1])
  {
  }

  else
  {
    v7 = [(NSURL *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_bookmarkData;
  v10 = v9;
  if (v9 == identityCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSData *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  itemURL = self->_itemURL;
  coderCopy = coder;
  [coderCopy encodeObject:itemURL forKey:@"ATXFileIdentityCodingKeyItemURL"];
  [coderCopy encodeObject:self->_bookmarkData forKey:@"ATXFileIdentityCodingKeyBookmarkData"];
}

- (ATXFileIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ATXFileIdentityCodingKeyItemURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ATXFileIdentityCodingKeyBookmarkData"];

  v7 = [(ATXFileIdentity *)self initWithItemURL:v5 bookmarkData:v6];
  return v7;
}

- (void)initWithItemURL:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = "[ATXFileIdentity initWithItemURL:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s Unable to create bookmark data for file URL %@ because of error %@.", &v3, 0x20u);
}

@end