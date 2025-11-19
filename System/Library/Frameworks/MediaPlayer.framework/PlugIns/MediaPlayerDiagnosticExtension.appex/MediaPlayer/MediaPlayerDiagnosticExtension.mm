@interface MediaPlayerDiagnosticExtension
- (id)_archiveItems:(id)a3 fromDirectoryURL:(id)a4 withFileName:(id)a5 displayName:(id)a6;
- (id)_archiveURLs:(id)a3 fromDirectoryURL:(id)a4 withFileName:(id)a5 displayName:(id)a6;
- (id)attachmentList;
- (id)mediaLibraryAttachments;
- (id)mediaLogsAttachments;
- (id)preferencesAttachment;
@end

@implementation MediaPlayerDiagnosticExtension

- (id)_archiveURLs:(id)a3 fromDirectoryURL:(id)a4 withFileName:(id)a5 displayName:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NSTemporaryDirectory();
  v41[0] = v11;
  v41[1] = v10;
  v34 = v10;
  v12 = [NSArray arrayWithObjects:v41 count:2];
  v13 = [NSURL fileURLWithPathComponents:v12];

  v14 = [DEUtils createUserOwnedDirectoryAtUrl:v13];
  v33 = v13;
  v15 = [[DEArchive alloc] initWithURL:v13];
  v35 = v9;
  v16 = [v9 path];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v36 + 1) + 8 * i);
        v23 = [v22 path];
        v24 = [v23 hasPrefix:v16];

        if (v24)
        {
          v25 = [v22 path];
          v26 = [v25 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(v16, "length"), &stru_100004218}];

          [v15 addFile:v22 withPathName:v26];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v19);
  }

  [v15 closeArchive];
  v27 = [v15 tarGzUrl];
  v28 = [DEAttachmentItem attachmentWithPathURL:v27];

  [v28 setDeleteOnAttach:&__kCFBooleanTrue];
  v29 = [v15 tarGzUrl];
  v30 = [v29 path];
  v31 = [v30 lastPathComponent];
  [v28 setDisplayName:v31];

  return v28;
}

- (id)_archiveItems:(id)a3 fromDirectoryURL:(id)a4 withFileName:(id)a5 displayName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v23 + 1) + 8 * i) path];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v21 = [(MediaPlayerDiagnosticExtension *)self _archiveURLs:v14 fromDirectoryURL:v11 withFileName:v12 displayName:v13];

  return v21;
}

- (id)preferencesAttachment
{
  v3 = +[NSMutableArray array];
  v4 = MSVMobileHomeDirectory();
  v22[0] = v4;
  v22[1] = @"Library";
  v22[2] = @"Preferences";
  v5 = [NSArray arrayWithObjects:v22 count:3];
  v6 = [NSURL fileURLWithPathComponents:v5];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [&off_100004668 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(&off_100004668);
        }

        v11 = [NSRegularExpression regularExpressionWithPattern:*(*(&v17 + 1) + 8 * i) options:1 error:0];
        v12 = [(MediaPlayerDiagnosticExtension *)self filesInDir:v6 matchingPattern:v11 excludingPattern:0];
        [v3 addObjectsFromArray:v12];
      }

      v8 = [&off_100004668 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v3 count])
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"MEDIA_PREFERENCES" value:&stru_100004218 table:@"MediaPlayerDiagnostics"];
    v15 = [(MediaPlayerDiagnosticExtension *)self _archiveItems:v3 fromDirectoryURL:v6 withFileName:@"MediaPreferences" displayName:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)mediaLogsAttachments
{
  v3 = +[NSMutableArray array];
  v4 = MSVMobileHomeDirectory();
  v12[0] = v4;
  v12[1] = @"Library";
  v12[2] = @"Logs";
  v12[3] = @"MediaServices";
  v5 = [NSArray arrayWithObjects:v12 count:4];
  v6 = [NSURL fileURLWithPathComponents:v5];

  v7 = [DEUtils findAllItems:v6 includeDirs:0];
  if ([v7 count])
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"MEDIA_LOGGING" value:&stru_100004218 table:@"MediaPlayerDiagnostics"];
    v10 = [(MediaPlayerDiagnosticExtension *)self _archiveURLs:v7 fromDirectoryURL:v6 withFileName:@"MediaServices" displayName:v9];

    [v3 addObject:v10];
  }

  return v3;
}

- (id)mediaLibraryAttachments
{
  v3 = +[NSMutableArray array];
  v4 = MSVMobileHomeDirectory();
  v58[0] = v4;
  v58[1] = @"Media";
  v5 = [NSArray arrayWithObjects:v58 count:2];
  v6 = [NSURL fileURLWithPathComponents:v5];

  v7 = [v6 path];
  v57[0] = v7;
  v57[1] = @"iTunes_Control";
  v57[2] = @"iTunes";
  v8 = [NSArray arrayWithObjects:v57 count:3];
  v9 = [NSURL fileURLWithPathComponents:v8];

  v49 = [NSRegularExpression regularExpressionWithPattern:@"MediaLibrary\\.sqlitedb.*" options:0 error:0];
  v10 = [MediaPlayerDiagnosticExtension filesInDir:"filesInDir:matchingPattern:excludingPattern:" matchingPattern:v9 excludingPattern:?];
  if ([v10 count])
  {
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"MEDIALIBRARY_DATABASE" value:&stru_100004218 table:@"MediaPlayerDiagnostics"];
    v13 = [(MediaPlayerDiagnosticExtension *)self _archiveItems:v10 fromDirectoryURL:v9 withFileName:@"MediaLibrary.sqlpkg" displayName:v12];

    [v3 addObject:v13];
  }

  if (MSVDeviceSupportsMultipleLibraries())
  {
    v44 = v9;
    v47 = v3;
    v14 = [NSRegularExpression regularExpressionWithPattern:@"[0-9a-f]{40}" options:0 error:0];
    v15 = +[NSDate distantPast];
    v45 = v6;
    v43 = v14;
    v16 = [DEUtils findEntriesInDirectory:v6 createdAfter:v15 matchingPattern:v14];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v17)
    {
      v18 = v17;
      v48 = *v51;
      do
      {
        v19 = 0;
        v20 = v10;
        do
        {
          if (*v51 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v50 + 1) + 8 * v19);
          v22 = [v21 path];
          v55[0] = v22;
          v55[1] = @"iTunes_Control";
          v55[2] = @"iTunes";
          v23 = [NSArray arrayWithObjects:v55 count:3];
          v24 = [NSURL fileURLWithPathComponents:v23];

          v10 = [(MediaPlayerDiagnosticExtension *)self filesInDir:v24 matchingPattern:v49 excludingPattern:0];

          if ([v10 count])
          {
            v25 = [v21 lastPathComponent];
            v26 = [NSString stringWithFormat:@"MediaLibrary-%@.sqlpkg", v25];

            v27 = [NSBundle bundleForClass:objc_opt_class()];
            v28 = [v27 localizedStringForKey:@"MEDIALIBRARY_DATABASE" value:&stru_100004218 table:@"MediaPlayerDiagnostics"];
            v29 = [v21 lastPathComponent];
            [v28 stringByAppendingFormat:@" (%@)", v29];
            v31 = v30 = self;

            v32 = [(MediaPlayerDiagnosticExtension *)v30 _archiveItems:v10 fromDirectoryURL:v24 withFileName:v26 displayName:v31];
            [v47 addObject:v32];

            self = v30;
          }

          v19 = v19 + 1;
          v20 = v10;
        }

        while (v18 != v19);
        v18 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v18);
    }

    v3 = v47;
    v9 = v44;
    v6 = v45;
  }

  v33 = MSVMobileHomeDirectory();
  v54[0] = v33;
  v54[1] = @"Library";
  v54[2] = @"NanoMusicSync";
  v34 = [NSArray arrayWithObjects:v54 count:3];
  v35 = [NSURL fileURLWithPathComponents:v34];

  v36 = [DEUtils findAllItems:v35 includeDirs:0];
  if ([v36 count])
  {
    v37 = [NSBundle bundleForClass:objc_opt_class()];
    v38 = [v37 localizedStringForKey:@"NANOMUSIC_SYNC" value:&stru_100004218 table:@"MediaPlayerDiagnostics"];
    v39 = self;
    v40 = v38;
    v41 = [(MediaPlayerDiagnosticExtension *)v39 _archiveURLs:v36 fromDirectoryURL:v35 withFileName:@"NanoMusicSync" displayName:v38];

    [v3 addObject:v41];
  }

  return v3;
}

- (id)attachmentList
{
  attachments = self->_attachments;
  if (!attachments)
  {
    v4 = +[NSMutableArray array];
    v5 = [(MediaPlayerDiagnosticExtension *)self mediaLogsAttachments];
    if (v5)
    {
      [(NSArray *)v4 addObjectsFromArray:v5];
    }

    v6 = [(MediaPlayerDiagnosticExtension *)self mediaLibraryAttachments];
    if (v6)
    {
      [(NSArray *)v4 addObjectsFromArray:v6];
    }

    v7 = [(MediaPlayerDiagnosticExtension *)self preferencesAttachment];
    if (v7)
    {
      [(NSArray *)v4 addObject:v7];
    }

    v8 = self->_attachments;
    self->_attachments = v4;

    attachments = self->_attachments;
  }

  return attachments;
}

@end