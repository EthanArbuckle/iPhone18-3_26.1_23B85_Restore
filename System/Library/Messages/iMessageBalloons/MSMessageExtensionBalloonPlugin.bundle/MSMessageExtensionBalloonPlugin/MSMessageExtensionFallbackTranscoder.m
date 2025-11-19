@interface MSMessageExtensionFallbackTranscoder
- (id)fallbackInLPFromPayloadDictionary:(id)a3;
- (void)fallbackForData:(id)a3 attachments:(id)a4 inFileURL:(id)a5 completionBlockWithText:(id)a6;
- (void)fallbackForData:(id)a3 inFileURL:(id)a4 completionBlock:(id)a5;
@end

@implementation MSMessageExtensionFallbackTranscoder

- (id)fallbackInLPFromPayloadDictionary:(id)a3
{
  v3 = [a3 objectForKey:IMExtensionPayloadFallbackLinkMetadataKey];
  if (!v3)
  {
    v8 = 0;
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
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_2D7B0(v5, v8);
    }

LABEL_10:

    v8 = 0;
    v9 = v7;
    v7 = v4;
    v4 = v5;
    goto LABEL_11;
  }

  v8 = [v6 originalURL];
  v9 = [v8 scheme];
  if (([v9 isEqualToIgnoringCase:@"http"] & 1) == 0)
  {
    v10 = [v8 scheme];
    v11 = [v10 isEqualToIgnoringCase:@"https"];

    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
LABEL_13:

  return v8;
}

- (void)fallbackForData:(id)a3 inFileURL:(id)a4 completionBlock:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1E958;
  v9[3] = &unk_4D800;
  v10 = a5;
  v8 = v10;
  [(MSMessageExtensionFallbackTranscoder *)self fallbackForData:a3 attachments:0 inFileURL:a4 completionBlockWithText:v9];
}

- (void)fallbackForData:(id)a3 attachments:(id)a4 inFileURL:(id)a5 completionBlockWithText:(id)a6
{
  v10 = a3;
  v11 = a4;
  v54 = a5;
  v12 = a6;
  v13 = IMExtensionPayloadUnarchivingClasses();
  v60 = 0;
  v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v10 error:&v60];
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
  if (![v11 count] && !v17)
  {
    if (v16)
    {
      [v16 absoluteString];
      v20 = v19 = v16;
      (*(v12 + 2))(v12, 0, v20, 0, 1, 1);

      v16 = v19;
    }

    else
    {
      (*(v12 + 2))(v12, 0, 0, 0, 1, 0);
    }

    goto LABEL_39;
  }

  v49 = v10;
  v50 = v16;
  v46 = v14;
  v47 = v13;
  v52 = +[NSMutableArray array];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v48 = v11;
  obj = v11;
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
        v27 = [v26 im_lastPathComponent];
        v28 = [v54 URLByAppendingPathComponent:v27];

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
          v32 = [v31 domain];
          v33 = v24;
          v34 = [v31 code];
          v61 = NSUnderlyingErrorKey;
          v62 = v23;
          [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v35 = v22;
          v37 = v36 = v23;
          v38 = v34;
          v24 = v33;
          v39 = [NSError errorWithDomain:v32 code:v38 userInfo:v37];

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
    v40 = [v51 absoluteString];
  }

  else
  {
    v40 = 0;
  }

  v15 = v45;
  v41 = [v51 scheme];
  if ([v41 isEqualToIgnoringCase:@"http"])
  {
    goto LABEL_34;
  }

  v42 = [v51 scheme];
  v43 = [v42 isEqualToIgnoringCase:@"https"];

  if ((v43 & 1) == 0)
  {
    if (v50)
    {
      [v50 absoluteString];
      v40 = v41 = v40;
    }

    else
    {
      v41 = v40;
      v40 = 0;
    }

LABEL_34:
    v10 = v49;

    goto LABEL_35;
  }

  v10 = v49;
LABEL_35:
  if ([v52 count])
  {
    v44 = v52;
  }

  else
  {
    v44 = 0;
  }

  (*(v12 + 2))(v12, v44, v40, v23, v23 == 0, 1);

  v11 = v48;
  v14 = v46;
  v13 = v47;
  v16 = v50;
LABEL_39:
}

@end