@interface MSMessageExtensionFallbackTranscoder
- (id)fallbackInLPFromPayloadDictionary:(id)dictionary;
- (void)fallbackForData:(id)data attachments:(id)attachments inFileURL:(id)l completionBlockWithText:(id)text;
- (void)fallbackForData:(id)data inFileURL:(id)l completionBlock:(id)block;
@end

@implementation MSMessageExtensionFallbackTranscoder

- (id)fallbackInLPFromPayloadDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:IMExtensionPayloadFallbackLinkMetadataKey];
  if (!v3)
  {
    originalURL = 0;
    goto LABEL_13;
  }

  v13 = 0;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v13];
  v5 = v13;
  [v4 _enableStrictSecureDecodingMode];
  v6 = [v4 decodeObjectOfClass:IMWeakLinkClass() forKey:NSKeyedArchiveRootObjectKey];
  v7 = v6;
  if (v5 || !v6)
  {
    originalURL = IMLogHandleForCategory();
    if (os_log_type_enabled(originalURL, OS_LOG_TYPE_ERROR))
    {
      sub_2D7B0(v5, originalURL);
    }

LABEL_10:

    originalURL = 0;
    scheme = v7;
    v7 = v4;
    v4 = v5;
    goto LABEL_11;
  }

  originalURL = [v6 originalURL];
  scheme = [originalURL scheme];
  if (([scheme isEqualToIgnoringCase:@"http"] & 1) == 0)
  {
    scheme2 = [originalURL scheme];
    v11 = [scheme2 isEqualToIgnoringCase:@"https"];

    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
LABEL_13:

  return originalURL;
}

- (void)fallbackForData:(id)data inFileURL:(id)l completionBlock:(id)block
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1E958;
  v9[3] = &unk_4D800;
  blockCopy = block;
  v8 = blockCopy;
  [(MSMessageExtensionFallbackTranscoder *)self fallbackForData:data attachments:0 inFileURL:l completionBlockWithText:v9];
}

- (void)fallbackForData:(id)data attachments:(id)attachments inFileURL:(id)l completionBlockWithText:(id)text
{
  dataCopy = data;
  attachmentsCopy = attachments;
  lCopy = l;
  textCopy = text;
  v13 = IMExtensionPayloadUnarchivingClasses();
  v60 = 0;
  v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:dataCopy error:&v60];
  v15 = v60;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [(MSMessageExtensionFallbackTranscoder *)self fallbackInLPFromPayloadDictionary:v14];
    v17 = [v14 objectForKey:IMExtensionPayloadURLKey];
  }

  else
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_2D828(v15, v18);
    }

    v17 = 0;
    v16 = 0;
  }

  v51 = v17;
  if (![attachmentsCopy count] && !v17)
  {
    if (v16)
    {
      [v16 absoluteString];
      v20 = v19 = v16;
      (*(textCopy + 2))(textCopy, 0, v20, 0, 1, 1);

      v16 = v19;
    }

    else
    {
      (*(textCopy + 2))(textCopy, 0, 0, 0, 1, 0);
    }

    goto LABEL_39;
  }

  v49 = dataCopy;
  v50 = v16;
  v46 = v14;
  v47 = v13;
  v52 = +[NSMutableArray array];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v48 = attachmentsCopy;
  obj = attachmentsCopy;
  v21 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v57;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v57 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v56 + 1) + 8 * i);
        im_lastPathComponent = [v26 im_lastPathComponent];
        v28 = [lCopy URLByAppendingPathComponent:im_lastPathComponent];

        v29 = +[NSFileManager defaultManager];
        v55 = 0;
        v30 = [v29 copyItemAtURL:v26 toURL:v28 error:&v55];
        v31 = v55;

        if (v30)
        {
          [v52 addObject:v28];
        }

        else if (v23)
        {
          domain = [v31 domain];
          v33 = v24;
          code = [v31 code];
          v61 = NSUnderlyingErrorKey;
          v62 = v23;
          [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v35 = v22;
          v37 = v36 = v23;
          v38 = code;
          v24 = v33;
          v39 = [NSError errorWithDomain:domain code:v38 userInfo:v37];

          v22 = v35;
          v23 = v39;
        }

        else
        {
          v23 = v31;
        }
      }

      v22 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v22);
  }

  else
  {
    v23 = 0;
  }

  if (v51)
  {
    absoluteString = [v51 absoluteString];
  }

  else
  {
    absoluteString = 0;
  }

  v15 = v45;
  scheme = [v51 scheme];
  if ([scheme isEqualToIgnoringCase:@"http"])
  {
    goto LABEL_34;
  }

  scheme2 = [v51 scheme];
  v43 = [scheme2 isEqualToIgnoringCase:@"https"];

  if ((v43 & 1) == 0)
  {
    if (v50)
    {
      [v50 absoluteString];
      absoluteString = scheme = absoluteString;
    }

    else
    {
      scheme = absoluteString;
      absoluteString = 0;
    }

LABEL_34:
    dataCopy = v49;

    goto LABEL_35;
  }

  dataCopy = v49;
LABEL_35:
  if ([v52 count])
  {
    v44 = v52;
  }

  else
  {
    v44 = 0;
  }

  (*(textCopy + 2))(textCopy, v44, absoluteString, v23, v23 == 0, 1);

  attachmentsCopy = v48;
  v14 = v46;
  v13 = v47;
  v16 = v50;
LABEL_39:
}

@end