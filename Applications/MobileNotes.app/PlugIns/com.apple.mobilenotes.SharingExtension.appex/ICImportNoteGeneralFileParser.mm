@interface ICImportNoteGeneralFileParser
- (BOOL)canHandleFileURL:(id)l;
- (ICImportNoteGeneralFileParser)init;
- (NSArray)allowedContentTypes;
- (id)attributedStringContentFromFileURL:(id)l error:(id *)error;
- (id)getTypeIdentifierForFileURL:(id)l;
- (void)addTitleInContent:(id)content titleString:(id)string;
- (void)parseFileURL:(id)l newNoteBlock:(id)block updatedNoteBlock:(id)noteBlock errorBlock:(id)errorBlock completionBlock:(id)completionBlock;
- (void)totalNotesFoundAtFileURL:(id)l completionBlock:(id)block;
@end

@implementation ICImportNoteGeneralFileParser

- (ICImportNoteGeneralFileParser)init
{
  v6.receiver = self;
  v6.super_class = ICImportNoteGeneralFileParser;
  v2 = [(ICImportNoteGeneralFileParser *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ICNotesImporterClient);
    notesImporterClient = v2->_notesImporterClient;
    v2->_notesImporterClient = v3;
  }

  return v2;
}

- (NSArray)allowedContentTypes
{
  uTTypeRTFD = [UTType importedTypeWithIdentifier:@"net.daringfireball.markdown", UTTypeText, UTTypeHTML, UTTypeRTF, UTTypeRTFD];
  v5[4] = uTTypeRTFD;
  v3 = [NSArray arrayWithObjects:v5 count:5];

  return v3;
}

- (BOOL)canHandleFileURL:(id)l
{
  lCopy = l;
  v5 = [(ICImportNoteGeneralFileParser *)self getTypeIdentifierForFileURL:lCopy];
  v6 = [ICUTType typeWithIdentifier:v5];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  allowedContentTypes = [(ICImportNoteGeneralFileParser *)self allowedContentTypes];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002CD94;
  v11[3] = &unk_1000F2F90;
  v14 = &v15;
  v8 = v5;
  v12 = v8;
  v9 = v6;
  v13 = v9;
  [allowedContentTypes enumerateObjectsUsingBlock:v11];

  LOBYTE(allowedContentTypes) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return allowedContentTypes;
}

- (void)totalNotesFoundAtFileURL:(id)l completionBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block, l != 0);
  }
}

- (void)parseFileURL:(id)l newNoteBlock:(id)block updatedNoteBlock:(id)noteBlock errorBlock:(id)errorBlock completionBlock:(id)completionBlock
{
  lCopy = l;
  blockCopy = block;
  noteBlockCopy = noteBlock;
  errorBlockCopy = errorBlock;
  completionBlockCopy = completionBlock;
  [(ICImportNoteGeneralFileParser *)self setIsParsing:1];
  v68 = 0;
  v15 = [(ICImportNoteGeneralFileParser *)self attributedStringContentFromFileURL:lCopy error:&v68];
  v16 = v68;
  if (v16)
  {
    v17 = v16;
    v18 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000B485C(v17);
    }

    if (errorBlockCopy)
    {
      errorBlockCopy[2](errorBlockCopy, v17);
    }

    goto LABEL_14;
  }

  if (!v15)
  {
LABEL_13:
    v17 = 0;
LABEL_14:
    v27 = 0;
    goto LABEL_15;
  }

  v19 = +[ICCloudConfiguration sharedConfiguration];
  maximumAttachmentSizeMB = [v19 maximumAttachmentSizeMB];
  unsignedLongLongValue = [maximumAttachmentSizeMB unsignedLongLongValue];

  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v22 = [v15 length];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_10002D544;
  v55[3] = &unk_1000F2FB8;
  v40 = lCopy;
  v56 = v40;
  v57 = &v64;
  v58 = &v60;
  v59 = unsignedLongLongValue << 20;
  [v15 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v22 usingBlock:{0, v55}];
  if (*(v65 + 24) == 1)
  {
    v23 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v36 = [NSByteCountFormatter stringFromByteCount:v61[3] countStyle:0];
      v37 = [NSByteCountFormatter stringFromByteCount:unsignedLongLongValue << 20 countStyle:0];
      *buf = 138412802;
      v72 = v36;
      v73 = 2112;
      v74 = v37;
      v75 = 2112;
      v76 = v40;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Attachment size (%@) is greater then our max (%@) for %@", buf, 0x20u);
    }

    v70[0] = @"Note has an attachment that is too large";
    v69[0] = ICErrorFailureReasonKey;
    v69[1] = ICErrorAttachmentCountKey;
    v24 = [NSNumber numberWithUnsignedInteger:v61[3]];
    v70[1] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];
    v26 = [NSError errorWithDomain:ICErrorDomain code:202 userInfo:v25];

    if (errorBlockCopy)
    {
      errorBlockCopy[2](errorBlockCopy, 0);
    }

    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v64, 8);
    goto LABEL_13;
  }

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  if (blockCopy)
  {
    v28 = blockCopy[2]();
  }

  else
  {
    v28 = 0;
  }

  managedObjectContext = [v28 managedObjectContext];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10002D7B0;
  v52[3] = &unk_1000F23B8;
  v30 = v28;
  v53 = v30;
  v54 = v15;
  [managedObjectContext performBlockAndWait:v52];

  v51 = 0;
  v50 = 0;
  [v40 getResourceValue:&v51 forKey:NSURLCreationDateKey error:&v50];
  v39 = v51;
  v31 = v50;
  if (v31)
  {
    v32 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000B48FC();
    }
  }

  v49 = 0;
  v48 = 0;
  [v40 getResourceValue:&v49 forKey:NSURLContentModificationDateKey error:&v48];
  v38 = v49;
  v17 = v48;

  if (v17)
  {
    v33 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1000B4970();
    }
  }

  managedObjectContext2 = [v30 managedObjectContext];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10002D8E4;
  v44[3] = &unk_1000F22D8;
  v27 = v30;
  v45 = v27;
  v46 = v39;
  v47 = v38;
  v41 = v38;
  v35 = v39;
  [managedObjectContext2 performBlockAndWait:v44];

  if (noteBlockCopy && v27)
  {
    noteBlockCopy[2](noteBlockCopy, v27);
  }

LABEL_15:
  [(ICImportNoteGeneralFileParser *)self setIsParsing:0];
  if (completionBlockCopy)
  {
    completionBlockCopy[2](completionBlockCopy);
  }
}

- (id)attributedStringContentFromFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [(ICImportNoteGeneralFileParser *)self getTypeIdentifierForFileURL:lCopy];
  if (!v7)
  {
    createRenderableAttributedString = 0;
    goto LABEL_19;
  }

  v8 = [UTType typeWithIdentifier:v7];
  v9 = [UTType importedTypeWithIdentifier:@"net.daringfireball.markdown"];
  v10 = [v8 conformsToType:v9];

  if (v10)
  {
    v11 = [NSString stringWithContentsOfURL:lCopy encoding:4 error:error];
    v12 = v11;
    if (!error || !*error)
    {
      v22 = [[ICMarkdownRepresentation alloc] initWithPlainMarkdown:v11 error:error];
      createRenderableAttributedString = [v22 createRenderableAttributedString];

      goto LABEL_19;
    }
  }

  v13 = [UTType typeWithIdentifier:v7];
  v14 = [v13 conformsToType:UTTypeHTML];

  if (!v14)
  {
LABEL_10:
    v17 = NSPlainTextDocumentType;
    v18 = [UTType typeWithIdentifier:v7];
    v19 = [v18 conformsToType:UTTypeRTF];

    if (v19)
    {
      v20 = &NSRTFTextDocumentType;
    }

    else
    {
      v23 = [UTType typeWithIdentifier:v7];
      v24 = [v23 conformsToType:UTTypeRTFD];

      if (!v24)
      {
LABEL_17:
        v26 = [NSAttributedString alloc];
        v44 = NSDocumentTypeDocumentAttribute;
        v45 = v17;
        v27 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        createRenderableAttributedString = [v26 initWithURL:lCopy options:v27 documentAttributes:0 error:error];

        goto LABEL_19;
      }

      v20 = &NSRTFDTextDocumentType;
    }

    v25 = *v20;

    v17 = v25;
    goto LABEL_17;
  }

  v15 = [NSString stringWithContentsOfURL:lCopy encoding:4 error:error];
  v16 = v15;
  if (error && *error)
  {

    goto LABEL_10;
  }

  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v29 = [ICNote attributedStringFromHTMLString:v16 baseURL:uRLByDeletingLastPathComponent readerDelegate:0];
  v30 = [v29 mutableCopy];

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_10002DE04;
  v42 = sub_10002DE14;
  v43 = 0;
  v31 = dispatch_semaphore_create(0);
  notesImporterClient = [(ICImportNoteGeneralFileParser *)self notesImporterClient];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10002DE1C;
  v35[3] = &unk_1000F3020;
  v37 = &v38;
  v33 = v31;
  v36 = v33;
  [notesImporterClient parseTitleFromHTMLString:v16 completionBlock:v35];

  dispatch_semaphore_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
  [(ICImportNoteGeneralFileParser *)self addTitleInContent:v30 titleString:v39[5]];
  createRenderableAttributedString = [v30 copy];

  _Block_object_dispose(&v38, 8);
LABEL_19:

  return createRenderableAttributedString;
}

- (void)addTitleInContent:(id)content titleString:(id)string
{
  contentCopy = content;
  stringCopy = string;
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [stringCopy stringByTrimmingCharactersInSet:v7];

  if ([v8 length])
  {
    v9 = [[NSAttributedString alloc] initWithString:@"\n"];
    [contentCopy insertAttributedString:v9 atIndex:0];

    v10 = [ICTTParagraphStyle paragraphStyleNamed:0];
    v11 = [NSAttributedString alloc];
    v12 = [NSString stringWithFormat:@"%@\n", v8];
    v15 = ICTTAttributeNameParagraphStyle;
    v16 = v10;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = [v11 initWithString:v12 attributes:v13];

    [contentCopy insertAttributedString:v14 atIndex:0];
  }
}

- (id)getTypeIdentifierForFileURL:(id)l
{
  lCopy = l;
  v10 = 0;
  v9 = 0;
  v4 = [lCopy getResourceValue:&v10 forKey:NSURLTypeIdentifierKey error:&v9];
  v5 = v10;
  v6 = v9;
  if ((v4 & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000B49E4(v6);
    }
  }

  return v5;
}

@end