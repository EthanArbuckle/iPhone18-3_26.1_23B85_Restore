@interface QLGeneratedPreviewParts
- (QLGeneratedPreviewParts)initWithData:(id)data encoding:(unint64_t)encoding mimeType:(id)type attachments:(id)attachments;
- (id)URLRequestForContentID:(id)d;
- (id)newAttachmentURLWithID:(id)d mimeType:(id)type encoding:(unint64_t)encoding;
- (void)_processAttachment:(id)attachment withID:(id)d;
- (void)_registerURL:(id)l forContentID:(id)d;
- (void)computePreview:(id)preview;
@end

@implementation QLGeneratedPreviewParts

- (QLGeneratedPreviewParts)initWithData:(id)data encoding:(unint64_t)encoding mimeType:(id)type attachments:(id)attachments
{
  dataCopy = data;
  typeCopy = type;
  attachmentsCopy = attachments;
  v17.receiver = self;
  v17.super_class = QLGeneratedPreviewParts;
  v14 = [(QLGeneratedPreviewParts *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_data, data);
    objc_storeStrong(&v15->_attachments, attachments);
    objc_storeStrong(&v15->_mimeType, type);
    v15->_stringEncoding = encoding;
  }

  return v15;
}

- (void)computePreview:(id)preview
{
  stringEncoding = self->_stringEncoding;
  previewCopy = preview;
  v6 = CFStringConvertNSStringEncodingToEncoding(stringEncoding);
  v7 = CFStringConvertEncodingToIANACharSetName(v6);
  mimeType = [(QLGeneratedPreviewParts *)self mimeType];
  [(QLPreviewParts *)self startDataRepresentationWithMimeType:mimeType textEncoding:v7];

  attachments = [(QLGeneratedPreviewParts *)self attachments];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__QLGeneratedPreviewParts_computePreview___block_invoke;
  v12[3] = &unk_278B580F8;
  v12[4] = self;
  [attachments enumerateKeysAndObjectsUsingBlock:v12];

  data = [(QLGeneratedPreviewParts *)self data];
  previewURL = [(QLPreviewParts *)self previewURL];
  [(QLPreviewParts *)self appendData:data forURL:previewURL lastChunk:1];

  previewCopy[2](previewCopy);
}

- (void)_processAttachment:(id)attachment withID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  dCopy = d;
  contentType = [attachmentCopy contentType];
  preferredMIMEType = [contentType preferredMIMEType];

  if (!preferredMIMEType)
  {
    pathExtension = [dCopy pathExtension];
    if (!pathExtension || ([MEMORY[0x277CE1CB8] typeWithFilenameExtension:pathExtension], (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, objc_msgSend(v11, "preferredMIMEType"), preferredMIMEType = objc_claimAutoreleasedReturnValue(), v12, !preferredMIMEType))
    {
      preferredMIMEType = @"text/html";
    }
  }

  data = [attachmentCopy data];
  if (data)
  {
    v14 = [(QLGeneratedPreviewParts *)self newAttachmentURLWithID:dCopy mimeType:preferredMIMEType encoding:[(QLGeneratedPreviewParts *)self stringEncoding]];
    if (v14)
    {
      [(QLPreviewParts *)self appendData:data forURL:v14 lastChunk:1];
    }

    else
    {
      v17 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        v19 = MEMORY[0x277D43EF8];
        QLSInitLogging();
        v17 = *v19;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412290;
        v21 = dCopy;
        _os_log_impl(&dword_23A714000, v17, OS_LOG_TYPE_ERROR, "Unable to create attachment for id %@ #Conversion", &v20, 0xCu);
      }
    }
  }

  else
  {
    v15 = MEMORY[0x277D43EF8];
    v16 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21 = dCopy;
      _os_log_impl(&dword_23A714000, v16, OS_LOG_TYPE_ERROR, "No data for attachement with id %@ #Conversion", &v20, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)newAttachmentURLWithID:(id)d mimeType:(id)type encoding:(unint64_t)encoding
{
  dCopy = d;
  typeCopy = type;
  v10 = CFStringConvertNSStringEncodingToEncoding(encoding);
  v11 = CFStringConvertEncodingToIANACharSetName(v10);
  v12 = [(QLPreviewParts *)self newSafeAttachmentURLWithID:dCopy mimeType:typeCopy textEncoding:v11];

  if (v12)
  {
    [(QLGeneratedPreviewParts *)self _registerURL:v12 forContentID:dCopy];
  }

  return v12;
}

- (void)_registerURL:(id)l forContentID:(id)d
{
  lCopy = l;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idToURL = selfCopy->_idToURL;
  if (!idToURL)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = selfCopy->_idToURL;
    selfCopy->_idToURL = v9;

    idToURL = selfCopy->_idToURL;
  }

  [(NSMutableDictionary *)idToURL setObject:lCopy forKey:dCopy];
  objc_sync_exit(selfCopy);
}

- (id)URLRequestForContentID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  stringByRemovingPercentEncoding = [dCopy stringByRemovingPercentEncoding];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMutableDictionary *)selfCopy->_idToURL objectForKey:stringByRemovingPercentEncoding];
  v8 = MEMORY[0x277D43EF8];
  if (!v7)
  {
    v7 = [(NSMutableDictionary *)selfCopy->_idToURL objectForKey:dCopy];
    if (v7)
    {
      v11 = *v8;
      if (!*v8)
      {
        QLSInitLogging();
        v11 = *v8;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138412546;
        v15 = dCopy;
        v16 = 2112;
        v17 = stringByRemovingPercentEncoding;
        _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_INFO, "Preview generator uses escaped content ID as key (%@) in attachments dictionary (kQLPreviewPropertyAttachmentsKey). It should use the unescaped content ID (%@) #Conversion", &v14, 0x16u);
      }
    }
  }

  v9 = *v8;
  if (!*v8)
  {
    QLSInitLogging();
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = stringByRemovingPercentEncoding;
    _os_log_impl(&dword_23A714000, v9, OS_LOG_TYPE_DEBUG, "Returning url %@ for contentID %@ #Conversion", &v14, 0x16u);
  }

  objc_sync_exit(selfCopy);

  if (v7)
  {
    v10 = [(QLPreviewParts *)selfCopy requestForURL:v7];
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

@end