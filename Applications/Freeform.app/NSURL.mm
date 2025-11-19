@interface NSURL
+ (id)crl_URLWithStringDataOnPasteboard:(id)a3 itemSet:(id)a4 pasteboardType:(id)a5;
+ (id)crl_fileURLWithPath:(id)a3;
+ (id)crl_urlFromUserProvidedTelephoneString:(id)a3 withDataDetector:(id)a4;
- (BOOL)crl_canOpenURL;
- (BOOL)crl_conformsToAnyUTI:(id)a3;
- (BOOL)crl_conformsToUTI:(id)a3;
- (BOOL)crl_fileSize:(unint64_t *)a3 error:(id *)a4;
- (BOOL)crl_isFileUrlConformingToType:(id)a3;
- (BOOL)crl_isInTemporaryDirectory;
- (BOOL)crl_isInTrash;
- (BOOL)crl_matchesURL:(id)a3 canCompareFileID:(BOOL)a4;
- (CRLSandboxedURL)sandboxedURL;
- (NSString)crl_UTI;
- (id)crl_URLExceptPrivate;
- (id)crl_fileTypeIdentifierHandlingFileCoordinationPromises;
- (id)crl_pathExceptPrivate;
- (id)crl_prettyStringFromTelephoneURL;
- (id)crl_reachableFileURLByDeletingUnreachablePathComponents;
- (unint64_t)crl_fileSize;
- (void)crl_removeCachedResourceValueForKeys:(id)a3;
@end

@implementation NSURL

- (NSString)crl_UTI
{
  v2 = [(NSURL *)self path];
  v3 = [v2 crl_pathUTI];

  return v3;
}

- (BOOL)crl_conformsToUTI:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self pathExtension];
  v6 = [v5 crl_pathExtensionConformsToUTI:v4];

  return v6;
}

- (BOOL)crl_conformsToAnyUTI:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self pathExtension];
  if (v5)
  {
    [UTType typesWithTag:v5 tagClass:UTTagClassFilenameExtension conformingToType:0];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = v31 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      v23 = v4;
      v21 = *v29;
      do
      {
        v10 = 0;
        v22 = v8;
        do
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v28 + 1) + 8 * v10);
          if (([v11 isDynamic] & 1) == 0)
          {
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v12 = v4;
            v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v25;
              while (2)
              {
                for (i = 0; i != v14; i = i + 1)
                {
                  if (*v25 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v24 + 1) + 8 * i);
                  v18 = [v11 identifier];
                  LOBYTE(v17) = [v18 crl_conformsToUTI:v17];

                  if (v17)
                  {

                    v19 = 1;
                    v4 = v23;
                    goto LABEL_23;
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            v8 = v22;
            v4 = v23;
            v9 = v21;
          }

          v10 = v10 + 1;
        }

        while (v10 != v8);
        v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        v19 = 0;
      }

      while (v8);
    }

    else
    {
      v19 = 0;
    }

LABEL_23:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)crl_fileSize
{
  v3 = 0;
  [(NSURL *)self crl_fileSize:&v3 error:0];
  return v3;
}

- (BOOL)crl_fileSize:(unint64_t *)a3 error:(id *)a4
{
  v5 = self;
  [(NSURL *)self removeCachedResourceValueForKey:NSURLFileSizeKey];
  v38 = 0;
  v29 = v5;
  LODWORD(v5) = [(NSURL *)v5 getResourceValue:&v38 forKey:NSURLFileSizeKey error:0];
  v6 = v38;
  v7 = v6;
  v8 = 0;
  if (v5)
  {
    v8 = [v6 unsignedLongLongValue];
  }

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 enumeratorAtURL:v29 includingPropertiesForKeys:0 options:0 errorHandler:0];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v30 = a4;
    v13 = *v35;
    v14 = 1;
    do
    {
      v15 = 0;
      do
      {
        v16 = v7;
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * v15);
        [v17 removeCachedResourceValueForKey:NSURLFileSizeKey];
        v32 = 0;
        v33 = 0;
        v18 = [v17 getResourceValue:&v33 forKey:NSURLFileSizeKey error:&v32];
        v7 = v33;

        v19 = v32;
        if (v18)
        {
          v8 = &v8[[v7 unsignedLongLongValue]];
        }

        else
        {
          if ((v14 & 1) == 0)
          {
            goto LABEL_17;
          }

          if (qword_101AD5A08 != -1)
          {
            sub_10133E858();
          }

          v20 = off_1019EDA60;
          if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
          {
            v22 = v20;
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            v25 = [v19 domain];
            v26 = [v19 code];
            *buf = 138413314;
            v40 = v29;
            v41 = 2114;
            v42 = v24;
            v43 = 2114;
            v44 = v25;
            v45 = 2048;
            v46 = v26;
            v47 = 2112;
            v48 = v19;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Unable to get NSURLFileSizeKey for URL: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
          }

          if (v30)
          {
            v21 = v19;
            v14 = 0;
            *v30 = v19;
          }

          else
          {
LABEL_17:
            v14 = 0;
          }
        }

        v15 = v15 + 1;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v34 objects:v49 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 1;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return v14 & 1;
}

- (id)crl_fileTypeIdentifierHandlingFileCoordinationPromises
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v15 = 0;
  v3 = [(NSURL *)self getResourceValue:&v15 forKey:NSURLContentTypeKey error:0];
  v4 = v15;
  v19 = v3;
  if ((v17[3] & 1) == 0)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_100269428;
    v13 = sub_100269438;
    v14 = 0;
    v5 = objc_alloc_init(NSFileCoordinator);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100269440;
    v8[3] = &unk_10184DA20;
    v8[4] = &v16;
    v8[5] = &v9;
    [v5 coordinateReadingItemAtURL:self options:4 error:0 byAccessor:v8];
    if (*(v17 + 24) == 1)
    {
      v6 = v10[5];

      v4 = v6;
    }

    _Block_object_dispose(&v9, 8);
  }

  _Block_object_dispose(&v16, 8);

  return v4;
}

- (id)crl_reachableFileURLByDeletingUnreachablePathComponents
{
  if ([(NSURL *)self isFileURL])
  {
    v3 = self;
    while (1)
    {
      v4 = [(NSURL *)v3 path];
      v5 = [v4 length];

      if (v5 < 3)
      {
        break;
      }

      if ([(NSURL *)v3 checkResourceIsReachableAndReturnError:0])
      {
        v6 = v3;
        v3 = v6;
        if (v6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = [(NSURL *)v3 URLByDeletingLastPathComponent];

        v3 = v7;
      }
    }

    v6 = 0;
LABEL_10:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)crl_isInTemporaryDirectory
{
  v9 = 2;
  v3 = +[NSFileManager defaultManager];
  v4 = NSTemporaryDirectory();
  v5 = [NSURL crl_fileURLWithPath:v4];
  v6 = [v3 getRelationship:&v9 ofDirectoryAtURL:v5 toItemAtURL:self error:0];
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (BOOL)crl_isInTrash
{
  v3 = +[NSFileManager defaultManager];
  v27 = 0;
  v28 = 2;
  v4 = [v3 getRelationship:&v28 ofDirectory:102 inDomain:0 toItemAtURL:self error:&v27];
  v5 = v27;
  v6 = v5;
  if (v4)
  {
    v7 = v28 == 0;
    goto LABEL_22;
  }

  if (!v5)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_22;
  }

  if (![v5 crl_isFeatureUnsupportedError])
  {
    if (([v6 crl_isNoSuchFileError] & 1) == 0)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_10133E880();
      }

      v16 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v6 domain];
        v21 = [v6 code];
        *buf = 138413314;
        v30 = self;
        v31 = 2114;
        v32 = v19;
        v33 = 2114;
        v34 = v20;
        v35 = 2048;
        v36 = v21;
        v37 = 2112;
        v38 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to find relationship between URL and trash directory: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
      }
    }

    goto LABEL_19;
  }

  v8 = [(NSURL *)self URLByDeletingLastPathComponent];
  v9 = [v8 pathComponents];
  v10 = [v9 reverseObjectEnumerator];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if ([*(*(&v23 + 1) + 8 * i) isEqualToString:{@".Trash", v23}])
        {
          v7 = 1;
          goto LABEL_21;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v39 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_21:

LABEL_22:
  return v7;
}

+ (id)crl_fileURLWithPath:(id)a3
{
  if (a3)
  {
    v4 = [NSURL fileURLWithPath:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)crl_removeCachedResourceValueForKeys:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSURL *)self removeCachedResourceValueForKey:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)crl_pathExceptPrivate
{
  v2 = [(NSURL *)self path];
  v3 = [v2 crl_pathExceptPrivate];

  return v3;
}

- (id)crl_URLExceptPrivate
{
  v3 = [(NSURL *)self crl_pathExceptPrivate];
  v4 = [NSURL fileURLWithPath:v3 isDirectory:[(NSURL *)self hasDirectoryPath]];

  return v4;
}

- (BOOL)crl_matchesURL:(id)a3 canCompareFileID:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  v8 = self == v6;
  if (v6 && self != v6)
  {
    if (([(NSURL *)self isEqual:v6]& 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      if ([(NSURL *)self isFileURL]&& [(NSURL *)v7 isFileURL])
      {
        v9 = [(NSURL *)self crl_pathExceptPrivate];
        v10 = [(NSURL *)v7 crl_pathExceptPrivate];
        v8 = [v9 isEqualToString:v10];
      }

      else
      {
        v8 = 0;
      }

      if ((v8 & 1) == 0 && v4)
      {
        v16 = 0;
        v11 = [(NSURL *)self getResourceValue:&v16 forKey:NSURLFileResourceIdentifierKey error:0];
        v12 = v16;
        v15 = 0;
        v13 = [(NSURL *)v7 getResourceValue:&v15 forKey:NSURLFileResourceIdentifierKey error:0];
        v8 = 0;
        if (v11 && v13)
        {
          v8 = [v12 isEqual:v15];
        }
      }
    }
  }

  return v8;
}

- (BOOL)crl_canOpenURL
{
  v3 = [(NSURL *)self scheme];
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"tel"];

  if (!v5)
  {
    return 1;
  }

  v6 = [(NSURL *)self resourceSpecifier];
  v7 = [v6 stringByRemovingPercentEncoding];

  v8 = +[NSCharacterSet alphanumericCharacterSet];
  v9 = [v8 invertedSet];
  v10 = [v7 crl_stringByRemovingCharactersInSet:v9];

  v11 = [v10 length] > 2;
  return v11;
}

- (BOOL)crl_isFileUrlConformingToType:(id)a3
{
  v4 = a3;
  if ([(NSURL *)self isFileURL])
  {
    v11 = 0;
    v10 = 0;
    [(NSURL *)self getResourceValue:&v11 forKey:NSURLContentTypeKey error:&v10];
    v5 = v11;
    v6 = v10;
    if (v5)
    {
      v7 = [v5 conformsToType:v4];
    }

    else
    {
      if (qword_101AD5B70 != -1)
      {
        sub_10133E8A8();
      }

      v8 = off_1019EDBC8;
      if (os_log_type_enabled(off_1019EDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10133E8D0(self, v8, v6);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)crl_urlFromUserProvidedTelephoneString:(id)a3 withDataDetector:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [v5 stringByTrimmingCharactersInSet:v7];

  v9 = +[NSCharacterSet alphanumericCharacterSet];
  v10 = [v5 rangeOfCharacterFromSet:v9];

  if ([v8 length])
  {
    v11 = v10 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100269428;
  v31 = sub_100269438;
  v32 = 0;
  if ([v8 hasPrefix:@"tel:"])
  {
    v13 = [NSURL URLWithString:v8];
    v14 = v28[5];
    v28[5] = v13;
  }

  else
  {
    if ([v8 containsString:@" "])
    {
      goto LABEL_12;
    }

    v14 = [@"tel:" stringByAppendingString:v8];
    v15 = [NSURL URLWithString:v14];
    v16 = v28[5];
    v28[5] = v15;
  }

LABEL_12:
  v17 = v28[5];
  if (!v17)
  {
    v18 = [v8 crl_range];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10026A15C;
    v26[3] = &unk_10184DAC8;
    v26[4] = &v27;
    [v6 enumerateMatchesInString:v8 options:0 range:v18 usingBlock:{v19, v26}];
    v17 = v28[5];
    if (!v17)
    {
      v20 = +[NSCharacterSet URLFragmentAllowedCharacterSet];
      v21 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v20];
      v22 = [@"tel:" stringByAppendingString:v21];
      v23 = [NSURL URLWithString:v22];
      v24 = v28[5];
      v28[5] = v23;

      v17 = v28[5];
    }
  }

  v12 = v17;
  _Block_object_dispose(&v27, 8);

LABEL_16:

  return v12;
}

- (id)crl_prettyStringFromTelephoneURL
{
  v2 = [(NSURL *)self resourceSpecifier];
  v3 = [v2 stringByRemovingPercentEncoding];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1018BCA28;
  }

  v5 = v4;

  return v4;
}

+ (id)crl_URLWithStringDataOnPasteboard:(id)a3 itemSet:(id)a4 pasteboardType:(id)a5
{
  v7 = a3;
  v8 = [v7 dataForPasteboardType:a5 inItemSet:a4];
  if ([v8 count])
  {
    if ([v8 count] != 1)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133EB6C();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133EB80(v9, v8);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133EC60();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133EAC0(v10);
      }

      v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSURL(CRLAdditions) crl_URLWithStringDataOnPasteboard:itemSet:pasteboardType:]");
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSURL_CRLAdditions.m"];
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, v12, 323, 0, "Only pasting first item of %lu on pasteboard", [v8 count]);
    }

    v13 = [v8 firstObject];
    if (v13)
    {
      v14 = [[NSString alloc] initWithData:v13 encoding:4];
      if ([v14 length])
      {
        v15 = [NSURL URLWithString:v14];
      }

      else
      {
        v16 = [v7 URLs];
        v15 = [v16 firstObject];
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CRLSandboxedURL)sandboxedURL
{
  v2 = [[CRLSandboxedURL alloc] initWithURL:self];

  return v2;
}

@end