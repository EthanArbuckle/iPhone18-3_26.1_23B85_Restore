@interface ICEvernoteFileParser
- (BOOL)canHandleFileURL:(id)a3;
- (ICEvernoteFileParser)init;
- (NSArray)allowedContentTypes;
- (id)getTypeIdentifierForFileURL:(id)a3;
- (void)addAttachmentsInContent:(id)a3 forEvernoteResource:(id)a4 forNote:(id)a5;
- (void)addTitleInContent:(id)a3 forEvernoteNote:(id)a4;
- (void)addTodoListsIfNeededInContent:(id)a3 forEvernoteNote:(id)a4;
- (void)cancelParsing;
- (void)parseFileURL:(id)a3 newNoteBlock:(id)a4 updatedNoteBlock:(id)a5 errorBlock:(id)a6 completionBlock:(id)a7;
- (void)totalNotesFoundAtFileURL:(id)a3 completionBlock:(id)a4;
@end

@implementation ICEvernoteFileParser

- (ICEvernoteFileParser)init
{
  v9.receiver = self;
  v9.super_class = ICEvernoteFileParser;
  v2 = [(ICEvernoteFileParser *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(ICNotesImporterClient);
    notesImporterClient = v2->_notesImporterClient;
    v2->_notesImporterClient = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.notes.EvernoteFileParser", v5);
    contentParseQueue = v2->_contentParseQueue;
    v2->_contentParseQueue = v6;
  }

  return v2;
}

- (void)totalNotesFoundAtFileURL:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ICEvernoteFileParser *)self isParsing])
  {
    v8 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3B78();
    }

    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    [(ICEvernoteFileParser *)self setIsParsing:1];
    v9 = [(ICEvernoteFileParser *)self notesImporterClient];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100018A88;
    v10[3] = &unk_1000F2928;
    v10[4] = self;
    v11 = v7;
    [v9 countEvernoteNotesFromFileURL:v6 completionBlock:v10];
  }
}

- (void)parseFileURL:(id)a3 newNoteBlock:(id)a4 updatedNoteBlock:(id)a5 errorBlock:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(ICEvernoteFileParser *)self isParsing])
  {
    v17 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3B78();
    }

    if (v16)
    {
      v16[2](v16);
    }
  }

  else
  {
    [(ICEvernoteFileParser *)self setIsParsing:1];
    objc_initWeak(&location, self);
    v18 = [(ICEvernoteFileParser *)self notesImporterClient];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100018CD8;
    v19[3] = &unk_1000F2A18;
    objc_copyWeak(&v24, &location);
    v19[4] = self;
    v20 = v15;
    v21 = v13;
    v22 = v14;
    v23 = v16;
    [v18 archiveEvernoteNotesFromFileURL:v12 completionBlock:v19];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

- (NSArray)allowedContentTypes
{
  v2 = [UTType importedTypeWithIdentifier:@"com.evernote.enex"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (BOOL)canHandleFileURL:(id)a3
{
  v3 = [(ICEvernoteFileParser *)self getTypeIdentifierForFileURL:a3];
  if (v3)
  {
    v4 = [UTType importedTypeWithIdentifier:v3];
    v5 = [UTType importedTypeWithIdentifier:@"com.evernote.enex"];
    v6 = [v4 conformsToType:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)cancelParsing
{
  if ([(ICEvernoteFileParser *)self isParsing])
  {

    [(ICEvernoteFileParser *)self setShouldCancelParsingProcess:1];
  }

  else
  {
    v3 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3BEC();
    }
  }
}

- (void)addAttachmentsInContent:(id)a3 forEvernoteResource:(id)a4 forNote:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    if (v8)
    {
      v10 = [v8 md5Hash];

      if (v10)
      {
        v11 = [v8 md5Hash];
        v38 = [NSString stringWithFormat:@"{{NotesAttachment:%@}}", v11];

        v12 = [v7 string];
        v13 = [v12 length];

        if (v13)
        {
          v14 = 0;
          do
          {
            v15 = [v7 string];
            v16 = ([v15 length] - v14);

            v17 = [v7 string];
            v18 = [v17 rangeOfString:v38 options:2 range:{v14, v16}];
            v20 = v19;

            if (v18 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            v21 = [v8 mime];
            v22 = [UTType typeWithMIMEType:v21];
            v23 = [v22 identifier];

            v24 = [v8 fileName];
            v25 = v24;
            if (v24)
            {
              v26 = v24;
            }

            else
            {
              v26 = [ICAttachment filenameFromUTI:v23];
            }

            v27 = v26;

            v47 = 0;
            v48 = &v47;
            v49 = 0x3032000000;
            v50 = sub_10001961C;
            v51 = sub_10001962C;
            v52 = 0;
            v28 = [v9 managedObjectContext];
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_10001A108;
            v41[3] = &unk_1000F2A40;
            v42 = v9;
            v29 = v23;
            v43 = v29;
            v44 = v8;
            v30 = v27;
            v45 = v30;
            v46 = &v47;
            [v28 performBlockAndWait:v41];

            if (v48[5])
            {
              v31 = [NSAttributedString attributedStringWithAttachment:?];
              v32 = [v31 mutableCopy];

              [v32 addAttribute:NSAttachmentAttributeName value:v48[5] range:{0, objc_msgSend(v32, "length")}];
              v33 = [[NSAttributedString alloc] initWithString:@"\n"];
              [v32 appendAttributedString:v33];

              [v7 replaceCharactersInRange:v18 withAttributedString:{v20, v32}];
              v34 = [v32 length];
            }

            else
            {
              v35 = os_log_create("com.apple.notes", "Import");
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                sub_1000B3C20(&buf, v40, v35);
              }

              [v7 replaceCharactersInRange:v18 withString:{v20, @"\n\n"}];
              v34 = [@"\n\n" length];
            }

            v14 = &v18[v34];

            _Block_object_dispose(&v47, 8);
            v36 = [v7 string];
            v37 = [v36 length];
          }

          while (v14 < v37);
        }
      }
    }
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"content" functionName:"[ICEvernoteFileParser addAttachmentsInContent:forEvernoteResource:forNote:]" simulateCrash:1 showAlert:0 format:@"Can't add attachment to nil content."];
  }
}

- (void)addTodoListsIfNeededInContent:(id)a3 forEvernoteNote:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v29 = v6;
    v30 = 0;
    v8 = [NSRegularExpression regularExpressionWithPattern:@"\\{\\{NotesCheckbox\\:(.+?)\\}\\}" options:1 error:&v30];
    v28 = v30;
    v9 = &swift_getObjCClassFromMetadata_ptr;
    while (1)
    {
      v10 = [v5 string];
      v11 = [v5 string];
      v12 = [v8 rangeOfFirstMatchInString:v10 options:1 range:{0, objc_msgSend(v11, "length")}];
      v14 = v13;

      if (v12 == 0x7FFFFFFFFFFFFFFFLL && !v14)
      {
        break;
      }

      v15 = [v5 string];
      v16 = [v15 substringWithRange:{v12 + 16, v14 - 18}];

      v17 = [objc_alloc(v9[229]) initWithString:&stru_1000F6F48];
      [v5 replaceCharactersInRange:v12 withAttributedString:{v14, v17}];

      v18 = [ICTTParagraphStyle paragraphStyleNamed:103];
      if ([v16 BOOLValue])
      {
        v19 = [v18 mutableCopy];
        [v19 todo];
        v21 = v20 = v9;
        v22 = [v21 todoWithDone:1];
        [v19 setTodo:v22];

        v9 = v20;
        v23 = [v19 copy];

        v18 = v23;
      }

      v24 = [v5 string];
      v25 = [v24 paragraphRangeForRange:{v12, 0}];
      v27 = v26;

      [v5 addAttribute:ICTTAttributeNameParagraphStyle value:v18 range:{v25, v27}];
    }

    v7 = v29;
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"content" functionName:"[ICEvernoteFileParser addTodoListsIfNeededInContent:forEvernoteNote:]" simulateCrash:1 showAlert:0 format:@"Can't add todo lists to nil content."];
  }
}

- (void)addTitleInContent:(id)a3 forEvernoteNote:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSAttributedString alloc] initWithString:@"\n"];
  [v6 insertAttributedString:v7 atIndex:0];

  v8 = [ICTTParagraphStyle paragraphStyleNamed:0];
  v9 = [NSAttributedString alloc];
  v10 = [v5 title];

  v11 = &stru_1000F6F48;
  if (v10)
  {
    v11 = v10;
  }

  v12 = [NSString localizedStringWithFormat:@"%@\n", v11];
  v15 = ICTTAttributeNameParagraphStyle;
  v16 = v8;
  v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v14 = [v9 initWithString:v12 attributes:v13];

  [v6 insertAttributedString:v14 atIndex:0];
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
      sub_1000B36EC(v6, v3, v7);
    }
  }

  return v5;
}

@end