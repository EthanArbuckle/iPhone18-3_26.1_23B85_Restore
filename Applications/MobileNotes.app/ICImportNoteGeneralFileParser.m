@interface ICImportNoteGeneralFileParser
- (BOOL)canHandleFileURL:(id)a3;
- (ICImportNoteGeneralFileParser)init;
- (NSArray)allowedContentTypes;
- (id)attributedStringContentFromFileURL:(id)a3 error:(id *)a4;
- (id)getTypeIdentifierForFileURL:(id)a3;
- (void)addTitleInContent:(id)a3 titleString:(id)a4;
- (void)parseFileURL:(id)a3 newNoteBlock:(id)a4 updatedNoteBlock:(id)a5 errorBlock:(id)a6 completionBlock:(id)a7;
- (void)totalNotesFoundAtFileURL:(id)a3 completionBlock:(id)a4;
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
  v2 = [UTType importedTypeWithIdentifier:@"net.daringfireball.markdown", UTTypeText, UTTypeHTML, UTTypeRTF, UTTypeRTFD];
  v5[4] = v2;
  v3 = [NSArray arrayWithObjects:v5 count:5];

  return v3;
}

- (BOOL)canHandleFileURL:(id)a3
{
  v4 = a3;
  v5 = [(ICImportNoteGeneralFileParser *)self getTypeIdentifierForFileURL:v4];
  v6 = [ICUTType typeWithIdentifier:v5];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [(ICImportNoteGeneralFileParser *)self allowedContentTypes];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100141870;
  v11[3] = &unk_10064AFC0;
  v14 = &v15;
  v8 = v5;
  v12 = v8;
  v9 = v6;
  v13 = v9;
  [v7 enumerateObjectsUsingBlock:v11];

  LOBYTE(v7) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v7;
}

- (void)totalNotesFoundAtFileURL:(id)a3 completionBlock:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, a3 != 0);
  }
}

- (void)parseFileURL:(id)a3 newNoteBlock:(id)a4 updatedNoteBlock:(id)a5 errorBlock:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v42 = a4;
  v43 = a5;
  v13 = a6;
  v14 = a7;
  [(ICImportNoteGeneralFileParser *)self setIsParsing:1];
  v68 = 0;
  v15 = [(ICImportNoteGeneralFileParser *)self attributedStringContentFromFileURL:v12 error:&v68];
  v16 = v68;
  if (v16)
  {
    v17 = v16;
    v18 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1004E1848(v17);
    }

    if (v13)
    {
      v13[2](v13, v17);
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
  v20 = [v19 maximumAttachmentSizeMB];
  v21 = [v20 unsignedLongLongValue];

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
  v55[2] = sub_100142020;
  v55[3] = &unk_10064AFE8;
  v40 = v12;
  v56 = v40;
  v57 = &v64;
  v58 = &v60;
  v59 = v21 << 20;
  [v15 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v22 usingBlock:{0, v55}];
  if (*(v65 + 24) == 1)
  {
    v23 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v36 = [NSByteCountFormatter stringFromByteCount:v61[3] countStyle:0];
      v37 = [NSByteCountFormatter stringFromByteCount:v21 << 20 countStyle:0];
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

    if (v13)
    {
      v13[2](v13, 0);
    }

    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v64, 8);
    goto LABEL_13;
  }

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  if (v42)
  {
    v28 = v42[2]();
  }

  else
  {
    v28 = 0;
  }

  v29 = [v28 managedObjectContext];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10014228C;
  v52[3] = &unk_100645BA0;
  v30 = v28;
  v53 = v30;
  v54 = v15;
  [v29 performBlockAndWait:v52];

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
      sub_1004E18E8();
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
      sub_1004E195C();
    }
  }

  v34 = [v30 managedObjectContext];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1001423C0;
  v44[3] = &unk_100645D40;
  v27 = v30;
  v45 = v27;
  v46 = v39;
  v47 = v38;
  v41 = v38;
  v35 = v39;
  [v34 performBlockAndWait:v44];

  if (v43 && v27)
  {
    v43[2](v43, v27);
  }

LABEL_15:
  [(ICImportNoteGeneralFileParser *)self setIsParsing:0];
  if (v14)
  {
    v14[2](v14);
  }
}

- (id)attributedStringContentFromFileURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ICImportNoteGeneralFileParser *)self getTypeIdentifierForFileURL:v6];
  if (!v7)
  {
    v21 = 0;
    goto LABEL_19;
  }

  v8 = [UTType typeWithIdentifier:v7];
  v9 = [UTType importedTypeWithIdentifier:@"net.daringfireball.markdown"];
  v10 = [v8 conformsToType:v9];

  if (v10)
  {
    v11 = [NSString stringWithContentsOfURL:v6 encoding:4 error:a4];
    v12 = v11;
    if (!a4 || !*a4)
    {
      v22 = [[ICMarkdownRepresentation alloc] initWithPlainMarkdown:v11 error:a4];
      v21 = [v22 createRenderableAttributedString];

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
        v21 = [v26 initWithURL:v6 options:v27 documentAttributes:0 error:a4];

        goto LABEL_19;
      }

      v20 = &NSRTFDTextDocumentType;
    }

    v25 = *v20;

    v17 = v25;
    goto LABEL_17;
  }

  v15 = [NSString stringWithContentsOfURL:v6 encoding:4 error:a4];
  v16 = v15;
  if (a4 && *a4)
  {

    goto LABEL_10;
  }

  v28 = [v6 URLByDeletingLastPathComponent];
  v29 = [ICNote attributedStringFromHTMLString:v16 baseURL:v28 readerDelegate:0];
  v30 = [v29 mutableCopy];

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1001428E0;
  v42 = sub_1001428F0;
  v43 = 0;
  v31 = dispatch_semaphore_create(0);
  v32 = [(ICImportNoteGeneralFileParser *)self notesImporterClient];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1001428F8;
  v35[3] = &unk_10064B050;
  v37 = &v38;
  v33 = v31;
  v36 = v33;
  [v32 parseTitleFromHTMLString:v16 completionBlock:v35];

  dispatch_semaphore_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
  [(ICImportNoteGeneralFileParser *)self addTitleInContent:v30 titleString:v39[5]];
  v21 = [v30 copy];

  _Block_object_dispose(&v38, 8);
LABEL_19:

  return v21;
}

- (void)addTitleInContent:(id)a3 titleString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  if ([v8 length])
  {
    v9 = [[NSAttributedString alloc] initWithString:@"\n"];
    [v5 insertAttributedString:v9 atIndex:0];

    v10 = [ICTTParagraphStyle paragraphStyleNamed:0];
    v11 = [NSAttributedString alloc];
    v12 = [NSString stringWithFormat:@"%@\n", v8];
    v15 = ICTTAttributeNameParagraphStyle;
    v16 = v10;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = [v11 initWithString:v12 attributes:v13];

    [v5 insertAttributedString:v14 atIndex:0];
  }
}

- (id)getTypeIdentifierForFileURL:(id)a3
{
  v3 = a3;
  v10 = 0;
  v9 = 0;
  v4 = [v3 getResourceValue:&v10 forKey:NSURLTypeIdentifierKey error:&v9];
  v5 = v10;
  v6 = v9;
  if ((v4 & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004E19D0(v6);
    }
  }

  return v5;
}

@end