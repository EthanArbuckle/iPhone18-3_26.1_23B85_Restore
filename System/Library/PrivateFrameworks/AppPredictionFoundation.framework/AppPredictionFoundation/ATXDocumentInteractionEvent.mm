@interface ATXDocumentInteractionEvent
- (ATXDocumentInteractionEvent)initWithBMAppDocumentInteraction:(id)interaction;
- (ATXDocumentInteractionEvent)initWithInteractionType:(int)type originalFileURL:(id)l bookmarkData:(id)data isRemote:(BOOL)remote bundleIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXDocumentInteractionEvent:(id)event;
- (unint64_t)hash;
@end

@implementation ATXDocumentInteractionEvent

- (ATXDocumentInteractionEvent)initWithInteractionType:(int)type originalFileURL:(id)l bookmarkData:(id)data isRemote:(BOOL)remote bundleIdentifier:(id)identifier
{
  lCopy = l;
  dataCopy = data;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = ATXDocumentInteractionEvent;
  v15 = [(ATXDocumentInteractionEvent *)&v22 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = type;
    v17 = [lCopy copy];
    originalFileURL = v16->_originalFileURL;
    v16->_originalFileURL = v17;

    objc_storeStrong(&v16->_bookmarkData, data);
    v16->_isRemote = remote;
    v19 = [identifierCopy copy];
    bundleIdentifier = v16->_bundleIdentifier;
    v16->_bundleIdentifier = v19;
  }

  return v16;
}

- (ATXDocumentInteractionEvent)initWithBMAppDocumentInteraction:(id)interaction
{
  interactionCopy = interaction;
  fileIdentity = [interactionCopy fileIdentity];
  itemURL = [fileIdentity itemURL];

  if (itemURL && [itemURL length])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:itemURL];
    if (!v7)
    {
      itemURLBookmarkData = __atxlog_handle_default();
      if (os_log_type_enabled(itemURLBookmarkData, OS_LOG_TYPE_ERROR))
      {
        [ATXDocumentInteractionEvent initWithBMAppDocumentInteraction:];
      }

      selfCopy = 0;
      goto LABEL_23;
    }

    fileIdentity2 = [interactionCopy fileIdentity];
    itemURLBookmarkData = [fileIdentity2 itemURLBookmarkData];

    if (itemURLBookmarkData)
    {
      appIdentity = [interactionCopy appIdentity];
      bundleIdentifier = [appIdentity bundleIdentifier];

      if (bundleIdentifier)
      {
        appIdentity2 = [interactionCopy appIdentity];
        bundleIdentifier2 = [appIdentity2 bundleIdentifier];

        type = [interactionCopy type];
        if (type < 5)
        {
          v15 = type;
          remoteUser = [interactionCopy remoteUser];
          self = [(ATXDocumentInteractionEvent *)self initWithInteractionType:v15 originalFileURL:v7 bookmarkData:itemURLBookmarkData isRemote:remoteUser != 0 bundleIdentifier:bundleIdentifier2];

          selfCopy = self;
LABEL_22:

LABEL_23:
          goto LABEL_24;
        }

        v18 = __atxlog_handle_default();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [(ATXDocumentInteractionEvent *)interactionCopy initWithBMAppDocumentInteraction:v18];
        }
      }

      else
      {
        bundleIdentifier2 = __atxlog_handle_default();
        if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_ERROR))
        {
          [ATXDocumentInteractionEvent initWithBMAppDocumentInteraction:];
        }
      }
    }

    else
    {
      bundleIdentifier2 = __atxlog_handle_default();
      if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_ERROR))
      {
        [ATXDocumentInteractionEvent initWithBMAppDocumentInteraction:];
      }
    }

    selfCopy = 0;
    goto LABEL_22;
  }

  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ATXDocumentInteractionEvent initWithBMAppDocumentInteraction:];
  }

  selfCopy = 0;
LABEL_24:

  return selfCopy;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXDocumentInteractionEvent *)self isEqualToATXDocumentInteractionEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDocumentInteractionEvent:(id)event
{
  eventCopy = event;
  if (self->_type != *(eventCopy + 3))
  {
    goto LABEL_13;
  }

  v5 = self->_originalFileURL;
  v6 = v5;
  if (v5 == eventCopy[2])
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
  if (v8 == eventCopy[3])
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

  if (self->_isRemote != *(eventCopy + 8))
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v11 = self->_bundleIdentifier;
  v12 = v11;
  if (v11 == eventCopy[4])
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
  type = [(ATXDocumentInteractionEvent *)self type];
  originalFileURL = [(ATXDocumentInteractionEvent *)self originalFileURL];
  v5 = [originalFileURL hash] - type + 32 * type;

  bookmarkData = [(ATXDocumentInteractionEvent *)self bookmarkData];
  v7 = [bookmarkData hash] - v5 + 32 * v5;

  v8 = 31 * v7 + [(ATXDocumentInteractionEvent *)self isRemote];
  bundleIdentifier = [(ATXDocumentInteractionEvent *)self bundleIdentifier];
  v10 = [bundleIdentifier hash] - v8 + 32 * v8;

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