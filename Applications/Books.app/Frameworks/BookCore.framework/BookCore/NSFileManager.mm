@interface NSFileManager
- (BOOL)bc_doesFolderAtURL:(id)l containFileAtURL:(id)rL;
- (BOOL)bc_removeFilesWithExtension:(id)extension fromDirectory:(id)directory;
- (BOOL)im_safeLinkItemAtURL:(id)l toURL:(id)rL error:(id *)error;
@end

@implementation NSFileManager

- (BOOL)im_safeLinkItemAtURL:(id)l toURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_158198;
  v61 = sub_1581A8;
  v62 = 0;
  v65[0] = NSURLIsDirectoryKey;
  v65[1] = NSURLIsRegularFileKey;
  v8 = [NSArray arrayWithObjects:v65 count:2];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1581B0;
  v56[3] = &unk_2CE5D0;
  v56[4] = &v57;
  selfCopy = self;
  v9 = [(NSFileManager *)self enumeratorAtURL:lCopy includingPropertiesForKeys:v8 options:0 errorHandler:v56];
  v36 = lCopy;
  v37 = v8;
  path = [lCopy path];
  stringByResolvingSymlinksInPath = [path stringByResolvingSymlinksInPath];

  v12 = v58;
  if (!v58[5])
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = v9;
    v13 = [v9 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v13)
    {
      v14 = *v53;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v53 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v52 + 1) + 8 * i);
          obj = 0;
          v51 = 0;
          v17 = v58;
          [v16 getResourceValue:&v51 forKey:NSURLIsDirectoryKey error:&obj];
          v18 = v51;
          objc_storeStrong(v17 + 5, obj);
          if (v58[5] || [v18 BOOLValue] && (objc_msgSend(v16, "path"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "im_stringWithPathRelativeTo:", stringByResolvingSymlinksInPath), v20 = objc_claimAutoreleasedReturnValue(), v19, objc_msgSend(rLCopy, "URLByAppendingPathComponent:", v20), v21 = objc_claimAutoreleasedReturnValue(), v22 = (v58 + 5), v49 = v58[5], -[NSFileManager createDirectoryAtURL:withIntermediateDirectories:attributes:error:](selfCopy, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v21, 1, 0, &v49), objc_storeStrong(v22, v49), LOBYTE(v22) = v58[5] == 0, v21, v20, (v22 & 1) == 0))
          {

            goto LABEL_14;
          }
        }

        v13 = [v9 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v12 = v58;
    if (!v58[5])
    {
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1581DC;
      v48[3] = &unk_2CE5D0;
      v48[4] = &v57;
      v23 = [(NSFileManager *)selfCopy enumeratorAtURL:v36 includingPropertiesForKeys:v37 options:0 errorHandler:v48];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v9 = v23;
      v24 = [v9 countByEnumeratingWithState:&v44 objects:v63 count:16];
      if (v24)
      {
        v25 = *v45;
        while (2)
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v45 != v25)
            {
              objc_enumerationMutation(v9);
            }

            v27 = *(*(&v44 + 1) + 8 * j);
            v42 = 0;
            v43 = 0;
            v28 = v58;
            [v27 getResourceValue:&v43 forKey:NSURLIsRegularFileKey error:&v42];
            v29 = v43;
            objc_storeStrong(v28 + 5, v42);
            if (v58[5] || [v29 BOOLValue] && (objc_msgSend(v27, "path"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "im_stringWithPathRelativeTo:", stringByResolvingSymlinksInPath), v31 = objc_claimAutoreleasedReturnValue(), v30, objc_msgSend(rLCopy, "URLByAppendingPathComponent:", v31), v32 = objc_claimAutoreleasedReturnValue(), v33 = (v58 + 5), v41 = v58[5], -[NSFileManager linkItemAtURL:toURL:error:](selfCopy, "linkItemAtURL:toURL:error:", v27, v32, &v41), objc_storeStrong(v33, v41), LOBYTE(v33) = v58[5] == 0, v32, v31, (v33 & 1) == 0))
            {

              goto LABEL_27;
            }
          }

          v24 = [v9 countByEnumeratingWithState:&v44 objects:v63 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:

      v12 = v58;
    }
  }

  if (error)
  {
    *error = v12[5];
    v12 = v58;
  }

  v34 = v12[5] == 0;

  _Block_object_dispose(&v57, 8);
  return v34;
}

- (BOOL)bc_doesFolderAtURL:(id)l containFileAtURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  if ([rLCopy isFileURL] && objc_msgSend(lCopy, "isFileURL"))
  {
    path = [rLCopy path];
    stringByStandardizingPath = [path stringByStandardizingPath];

    stringByResolvingSymlinksInPath = [stringByStandardizingPath stringByResolvingSymlinksInPath];

    path2 = [lCopy path];
    stringByStandardizingPath2 = [path2 stringByStandardizingPath];

    stringByResolvingSymlinksInPath2 = [stringByStandardizingPath2 stringByResolvingSymlinksInPath];

    v13 = [stringByResolvingSymlinksInPath hasPrefix:stringByResolvingSymlinksInPath2];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)bc_removeFilesWithExtension:(id)extension fromDirectory:(id)directory
{
  extensionCopy = extension;
  v7 = [NSURL fileURLWithPath:directory];
  v8 = [(NSFileManager *)self enumeratorAtURL:v7 includingPropertiesForKeys:0 options:5 errorHandler:0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v25;
    *&v11 = 138412546;
    v22 = v11;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        pathExtension = [v15 pathExtension];
        v17 = [pathExtension isEqualToString:extensionCopy];

        if (v17)
        {
          v23 = 0;
          v18 = [(NSFileManager *)self removeItemAtURL:v15 error:&v23];
          v19 = v23;
          if ((v18 & 1) == 0)
          {
            v20 = BCIMLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v29 = v15;
              v30 = 2112;
              v31 = v19;
              _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "Error removing file %@: %@", buf, 0x16u);
            }
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v12);
  }

  return 1;
}

@end