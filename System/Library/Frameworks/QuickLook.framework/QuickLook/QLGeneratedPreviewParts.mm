@interface QLGeneratedPreviewParts
- (QLGeneratedPreviewParts)initWithData:(id)a3 encoding:(unint64_t)a4 mimeType:(id)a5 attachments:(id)a6;
- (id)URLRequestForContentID:(id)a3;
- (id)newAttachmentURLWithID:(id)a3 mimeType:(id)a4 encoding:(unint64_t)a5;
- (void)_processAttachment:(id)a3 withID:(id)a4;
- (void)_registerURL:(id)a3 forContentID:(id)a4;
- (void)computePreview:(id)a3;
@end

@implementation QLGeneratedPreviewParts

- (QLGeneratedPreviewParts)initWithData:(id)a3 encoding:(unint64_t)a4 mimeType:(id)a5 attachments:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = QLGeneratedPreviewParts;
  v14 = [(QLGeneratedPreviewParts *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_data, a3);
    objc_storeStrong(&v15->_attachments, a6);
    objc_storeStrong(&v15->_mimeType, a5);
    v15->_stringEncoding = a4;
  }

  return v15;
}

- (void)computePreview:(id)a3
{
  stringEncoding = self->_stringEncoding;
  v5 = a3;
  v6 = CFStringConvertNSStringEncodingToEncoding(stringEncoding);
  v7 = CFStringConvertEncodingToIANACharSetName(v6);
  v8 = [(QLGeneratedPreviewParts *)self mimeType];
  [(QLPreviewParts *)self startDataRepresentationWithMimeType:v8 textEncoding:v7];

  v9 = [(QLGeneratedPreviewParts *)self attachments];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__QLGeneratedPreviewParts_computePreview___block_invoke;
  v12[3] = &unk_278B580F8;
  v12[4] = self;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];

  v10 = [(QLGeneratedPreviewParts *)self data];
  v11 = [(QLPreviewParts *)self previewURL];
  [(QLPreviewParts *)self appendData:v10 forURL:v11 lastChunk:1];

  v5[2](v5);
}

- (void)_processAttachment:(id)a3 withID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 contentType];
  v9 = [v8 preferredMIMEType];

  if (!v9)
  {
    v10 = [v7 pathExtension];
    if (!v10 || ([MEMORY[0x277CE1CB8] typeWithFilenameExtension:v10], (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, objc_msgSend(v11, "preferredMIMEType"), v9 = objc_claimAutoreleasedReturnValue(), v12, !v9))
    {
      v9 = @"text/html";
    }
  }

  v13 = [v6 data];
  if (v13)
  {
    v14 = [(QLGeneratedPreviewParts *)self newAttachmentURLWithID:v7 mimeType:v9 encoding:[(QLGeneratedPreviewParts *)self stringEncoding]];
    if (v14)
    {
      [(QLPreviewParts *)self appendData:v13 forURL:v14 lastChunk:1];
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
        v21 = v7;
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
      v21 = v7;
      _os_log_impl(&dword_23A714000, v16, OS_LOG_TYPE_ERROR, "No data for attachement with id %@ #Conversion", &v20, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)newAttachmentURLWithID:(id)a3 mimeType:(id)a4 encoding:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = CFStringConvertNSStringEncodingToEncoding(a5);
  v11 = CFStringConvertEncodingToIANACharSetName(v10);
  v12 = [(QLPreviewParts *)self newSafeAttachmentURLWithID:v8 mimeType:v9 textEncoding:v11];

  if (v12)
  {
    [(QLGeneratedPreviewParts *)self _registerURL:v12 forContentID:v8];
  }

  return v12;
}

- (void)_registerURL:(id)a3 forContentID:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  idToURL = v7->_idToURL;
  if (!idToURL)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = v7->_idToURL;
    v7->_idToURL = v9;

    idToURL = v7->_idToURL;
  }

  [(NSMutableDictionary *)idToURL setObject:v11 forKey:v6];
  objc_sync_exit(v7);
}

- (id)URLRequestForContentID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringByRemovingPercentEncoding];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)v6->_idToURL objectForKey:v5];
  v8 = MEMORY[0x277D43EF8];
  if (!v7)
  {
    v7 = [(NSMutableDictionary *)v6->_idToURL objectForKey:v4];
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
        v15 = v4;
        v16 = 2112;
        v17 = v5;
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
    v17 = v5;
    _os_log_impl(&dword_23A714000, v9, OS_LOG_TYPE_DEBUG, "Returning url %@ for contentID %@ #Conversion", &v14, 0x16u);
  }

  objc_sync_exit(v6);

  if (v7)
  {
    v10 = [(QLPreviewParts *)v6 requestForURL:v7];
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

@end