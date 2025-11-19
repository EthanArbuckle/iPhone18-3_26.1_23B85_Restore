@interface ATXDocumentInteractionEvent
- (ATXDocumentInteractionEvent)initWithBMAppDocumentInteraction:(id)a3;
- (ATXDocumentInteractionEvent)initWithInteractionType:(int)a3 originalFileURL:(id)a4 bookmarkData:(id)a5 isRemote:(BOOL)a6 bundleIdentifier:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXDocumentInteractionEvent:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXDocumentInteractionEvent

- (ATXDocumentInteractionEvent)initWithInteractionType:(int)a3 originalFileURL:(id)a4 bookmarkData:(id)a5 isRemote:(BOOL)a6 bundleIdentifier:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v22.receiver = self;
  v22.super_class = ATXDocumentInteractionEvent;
  v15 = [(ATXDocumentInteractionEvent *)&v22 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = a3;
    v17 = [v12 copy];
    originalFileURL = v16->_originalFileURL;
    v16->_originalFileURL = v17;

    objc_storeStrong(&v16->_bookmarkData, a5);
    v16->_isRemote = a6;
    v19 = [v14 copy];
    bundleIdentifier = v16->_bundleIdentifier;
    v16->_bundleIdentifier = v19;
  }

  return v16;
}

- (ATXDocumentInteractionEvent)initWithBMAppDocumentInteraction:(id)a3
{
  v4 = a3;
  v5 = [v4 fileIdentity];
  v6 = [v5 itemURL];

  if (v6 && [v6 length])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v6];
    if (!v7)
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXDocumentInteractionEvent initWithBMAppDocumentInteraction:];
      }

      v17 = 0;
      goto LABEL_23;
    }

    v8 = [v4 fileIdentity];
    v9 = [v8 itemURLBookmarkData];

    if (v9)
    {
      v10 = [v4 appIdentity];
      v11 = [v10 bundleIdentifier];

      if (v11)
      {
        v12 = [v4 appIdentity];
        v13 = [v12 bundleIdentifier];

        v14 = [v4 type];
        if (v14 < 5)
        {
          v15 = v14;
          v16 = [v4 remoteUser];
          self = [(ATXDocumentInteractionEvent *)self initWithInteractionType:v15 originalFileURL:v7 bookmarkData:v9 isRemote:v16 != 0 bundleIdentifier:v13];

          v17 = self;
LABEL_22:

LABEL_23:
          goto LABEL_24;
        }

        v18 = __atxlog_handle_default();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [(ATXDocumentInteractionEvent *)v4 initWithBMAppDocumentInteraction:v18];
        }
      }

      else
      {
        v13 = __atxlog_handle_default();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [ATXDocumentInteractionEvent initWithBMAppDocumentInteraction:];
        }
      }
    }

    else
    {
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXDocumentInteractionEvent initWithBMAppDocumentInteraction:];
      }
    }

    v17 = 0;
    goto LABEL_22;
  }

  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ATXDocumentInteractionEvent initWithBMAppDocumentInteraction:];
  }

  v17 = 0;
LABEL_24:

  return v17;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXDocumentInteractionEvent *)self isEqualToATXDocumentInteractionEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDocumentInteractionEvent:(id)a3
{
  v4 = a3;
  if (self->_type != *(v4 + 3))
  {
    goto LABEL_13;
  }

  v5 = self->_originalFileURL;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSURL *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v8 = self->_bookmarkData;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(NSData *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (self->_isRemote != *(v4 + 8))
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v11 = self->_bundleIdentifier;
  v12 = v11;
  if (v11 == v4[4])
  {
    v13 = 1;
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];
  }

LABEL_14:
  return v13;
}

- (unint64_t)hash
{
  v3 = [(ATXDocumentInteractionEvent *)self type];
  v4 = [(ATXDocumentInteractionEvent *)self originalFileURL];
  v5 = [v4 hash] - v3 + 32 * v3;

  v6 = [(ATXDocumentInteractionEvent *)self bookmarkData];
  v7 = [v6 hash] - v5 + 32 * v5;

  v8 = 31 * v7 + [(ATXDocumentInteractionEvent *)self isRemote];
  v9 = [(ATXDocumentInteractionEvent *)self bundleIdentifier];
  v10 = [v9 hash] - v8 + 32 * v8;

  return v10;
}

- (void)initWithBMAppDocumentInteraction:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 type];
  _os_log_fault_impl(&dword_226368000, a2, OS_LOG_TYPE_FAULT, "Document Interaction - %lu not handled in switch statement.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end