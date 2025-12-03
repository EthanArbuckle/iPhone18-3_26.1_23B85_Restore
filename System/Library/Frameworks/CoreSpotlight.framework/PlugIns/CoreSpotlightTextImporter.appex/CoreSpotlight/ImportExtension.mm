@interface ImportExtension
- (BOOL)updateAttributes:(id)attributes forFileAtURL:(id)l error:(id *)error;
@end

@implementation ImportExtension

- (BOOL)updateAttributes:(id)attributes forFileAtURL:(id)l error:(id *)error
{
  attributesCopy = attributes;
  lCopy = l;
  v8 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = lCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "~~~ AEC In updateAttributes, contentURL: %@", buf, 0xCu);
  }

  pathExtension = [lCopy pathExtension];
  context = objc_autoreleasePoolPush();
  if (![pathExtension isEqual:@"plist"])
  {
    if ([pathExtension isEqual:@"plist"])
    {
      v91 = 0;
      v16 = [NSString stringWithContentsOfURL:lCopy encoding:4 error:&v91];
      v11 = v91;
      if (!v16)
      {
        v90 = v11;
        v16 = [NSString stringWithContentsOfURL:lCopy encoding:10 error:&v90];
        v17 = v90;

        if (v16)
        {
          v11 = v17;
        }

        else
        {
          v89 = v17;
          v16 = [NSString stringWithContentsOfURL:lCopy encoding:30 error:&v89];
          v40 = v89;

          if (v16)
          {
            v11 = v40;
          }

          else
          {
            v88 = v40;
            v16 = [NSString stringWithContentsOfURL:lCopy encoding:1 error:&v88];
            v11 = v88;

            if (!v16)
            {
              [attributesCopy setTextContent:@"Importing failed. Force snazzyweaselgoo"];
              goto LABEL_40;
            }
          }
        }
      }

      [attributesCopy setTextContent:v16];

LABEL_40:
      lastPathComponent = [lCopy lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
      [attributesCopy setDisplayName:stringByDeletingPathExtension];

      goto LABEL_95;
    }

    lastPathComponent = lCopy;
    v81 = [NSArray arrayWithObjects:MDItemTitle, MDItemSubject, MDItemComment, MDItemAuthors, MDItemEditors, MDItemOrganizations, MDItemCopyright, MDItemContentCreationDate, MDItemContentModificationDate, MDItemKeywords, MDItemCreator, 0];
    v75 = NSCompanyDocumentAttribute;
    v70 = NSEditorDocumentAttribute;
    v73 = NSAuthorDocumentAttribute;
    v82 = [NSArray arrayWithObjects:NSTitleDocumentAttribute, NSSubjectDocumentAttribute, NSCommentDocumentAttribute, NSAuthorDocumentAttribute, NSEditorDocumentAttribute, NSCompanyDocumentAttribute, NSCopyrightDocumentAttribute, NSCreationTimeDocumentAttribute, NSModificationTimeDocumentAttribute, NSKeywordsDocumentAttribute, @"NSGeneratorDocumentAttribute", 0];
    v78 = [v82 count];
    if ([pathExtension isEqual:@"xml"])
    {
      v18 = objc_alloc_init(NSMutableDictionary);
      v19 = 0;
      v79 = 0;
      v20 = 0;
      v76 = 0;
      v21 = 0;
      v22 = 0;
LABEL_94:
      v66 = v20;
      [v20 closeFile];
      [attributesCopy addAttributesFromDictionary:v18];

      v11 = 0;
      goto LABEL_95;
    }

    v87 = 0;
    v23 = [lastPathComponent getResourceValue:&v87 forKey:NSURLIsDirectoryKey error:0];
    v71 = v87;
    if (v71)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24 == 1 && ([v71 BOOLValue] & 1) != 0)
    {
      v25 = [NSAttributedString alloc];
      v26 = [NSNumber numberWithInt:51200];
      v27 = +[NSDictionary dictionary];
      v28 = [NSDictionary dictionaryWithObjectsAndKeys:v26, @"NSIndexing", v27, NSDefaultAttributesDocumentOption, 0];
      v85 = 0;
      v79 = [v25 initWithURL:lastPathComponent options:v28 documentAttributes:&v85 error:0];
      v19 = v85;

      v29 = 0;
      v30 = 0;
      v74 = 0;
LABEL_46:

      v76 = v30;
LABEL_47:

      v18 = objc_alloc_init(NSMutableDictionary);
      if (!v79)
      {
        v79 = 0;
        v21 = 0;
        v22 = 0;
LABEL_93:
        v20 = v74;
        goto LABEL_94;
      }

      string = [v79 string];
      memset(v97, 0, sizeof(v97));
      v95 = 0u;
      v96 = 0u;
      *buf = 0u;
      v94 = 0u;
      v72 = string;
      v46 = [string length];
      v47 = v46;
      if (v46 >= 32)
      {
        v48 = 32;
      }

      else
      {
        v48 = v46;
      }

      [v72 getCharacters:buf range:{0, v48}];
      if (v47 < 1)
      {
        goto LABEL_67;
      }

      v49 = 0;
      v50 = 0;
      do
      {
        if (*&buf[2 * v49] < 8u)
        {
          ++v50;
        }

        ++v49;
      }

      while (v48 != v49);
      if (v50)
      {
        if (v47 >= 256)
        {
          v51 = 256;
        }

        else
        {
          v51 = v47;
        }

        if (v47 >= 33)
        {
          v52 = v97;
          v53 = v51 - 32;
          [v72 getCharacters:v97 range:{32, v51 - 32}];
          do
          {
            v54 = *v52++;
            if (v54 < 8)
            {
              ++v50;
            }

            --v53;
          }

          while (v53);
        }

        if (v50 > ((v51 + 3) >> 2))
        {
          goto LABEL_69;
        }
      }

      else
      {
LABEL_67:
      }

      v55 = [v19 objectForKey:@"NSNoIndexDocumentAttribute"];
      v56 = [v55 integerValue] > 0;

      if (!v56)
      {
        v22 = 0;
        if (v19 && v78)
        {
          v22 = 0;
          v58 = 0;
          for (i = 0; i != v78; ++i)
          {
            v60 = [v82 objectAtIndex:i];

            v22 = v60;
            v61 = [v19 objectForKey:v60];

            if (v61)
            {
              if (([v22 isEqualToString:v75] & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", v73) & 1) != 0 || objc_msgSend(v22, "isEqualToString:", v70))
              {
                v58 = [NSArray arrayWithObject:v61];
              }

              else
              {
                v58 = v61;
              }

              v62 = [v81 objectAtIndex:i];
              [v18 setObject:v58 forKey:v62];
            }

            else
            {
              v58 = 0;
            }
          }
        }

        v21 = [v19 objectForKey:@"NSDisplayNameDocumentAttribute"];
        if (v21)
        {
          [v18 setObject:v21 forKey:MDItemDisplayName];
        }

        if ([v72 length] < 0xC865)
        {
          v64 = v72;
        }

        else
        {
          v63 = [v72 substringWithRange:{0, 51200}];

          v64 = v63;
        }

        if (v64)
        {
          v65 = v64;
          [v18 setObject:v64 forKey:MDItemTextContent];
          v57 = v65;
        }

        else
        {
          v57 = 0;
        }

        goto LABEL_92;
      }

LABEL_69:
      v21 = 0;
      v22 = 0;
      v57 = v72;
LABEL_92:

      goto LABEL_93;
    }

    v31 = [NSFileHandle fileHandleForReadingFromURL:lastPathComponent error:0];
    if (!v31)
    {
      v74 = 0;
      v76 = 0;
      v79 = 0;
      v19 = 0;
      goto LABEL_47;
    }

    v32 = v31;
    fcntl([v31 fileDescriptor], 48, 1);
    v30 = [v32 readDataOfLength:512];
    v77 = [v30 length];
    v74 = v32;
    v79 = 0;
    if (!v30 || !v77)
    {
      v76 = v30;
      v19 = 0;
      goto LABEL_47;
    }

    v33 = _CFBundleCopyFileTypeForFileData();
    v29 = v33;
    if (v33 && [v33 length])
    {
      v34 = [NSArray arrayWithObjects:@"txt", @"xml", @"html", @"webarchive", @"plist", @"abw", @"svg", @"rdf", @"rtf", @"rtfd", @"sh", @"pl", @"py", @"rb", @"doc", @"docx", @"odt", @"sxw", @"zip", 0];
      v35 = [v34 containsObject:v29];

      v36 = [@"html" isEqualToString:v29];
      if (!v35)
      {
        v79 = 0;
LABEL_45:
        v19 = 0;
        goto LABEL_46;
      }

      if (v36)
      {
        v37 = [NSData dataWithContentsOfURL:lastPathComponent];
        v38 = v37;
        if (v37)
        {
          [v37 length];
          v39 = _MDPlainTextFromHTMLData();
          v79 = [[NSAttributedString alloc] initWithString:v39];
        }

        else
        {
          v79 = 0;
        }

        goto LABEL_45;
      }
    }

    v80 = [NSAttributedString alloc];
    v69 = [NSNumber numberWithInt:51200];
    v41 = +[NSDictionary dictionary];
    0x200 = [NSNumber numberWithBool:v77 < 0x200];
    v43 = [NSDictionary dictionaryWithObjectsAndKeys:v69, @"NSIndexing", v41, NSDefaultAttributesDocumentOption, v74, @"NSFileHandle", v30, @"NSFileHeaderData", 0x200, @"NSNoReadNecessary", 0];
    v86 = 0;
    v79 = [v80 initWithURL:lastPathComponent options:v43 documentAttributes:&v86 error:0];
    v19 = v86;

    goto LABEL_46;
  }

  v92 = 0;
  lastPathComponent = [NSDictionary dictionaryWithContentsOfURL:lCopy error:&v92];
  v11 = v92;
  if (lastPathComponent)
  {
    v12 = [lastPathComponent objectForKeyedSubscript:@"kMDItemDisplayName"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"No Name";
    }

    [attributesCopy setDisplayName:v14];

    v15 = [lastPathComponent objectForKeyedSubscript:@"kMDItemTextContent"];
    [attributesCopy setTextContent:v15];
  }

  else
  {
    v15 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "~~~ AEC did NOT read dictionary %@", buf, 0xCu);
    }
  }

  [attributesCopy setTitle:@"Test Import Happened"];
  [attributesCopy setContentDescription:@"This is a Description"];
LABEL_95:

  objc_autoreleasePoolPop(context);
  if (error)
  {
    v67 = v11;
    *error = v11;
  }

  return 1;
}

@end