void sub_100000F10(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error Exporting Poster store: %@", &v1, 0xCu);
}

erDiagnosticExtension

- (id)exportDataStoreWithOptions:(id)a3 storingAt:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  [v7 removeItemAtURL:v5 error:0];
  [v5 fileSystemRepresentation];
  v8 = sandbox_extension_issue_file();
  v9 = [NSData dataWithBytes:v8 length:strlen(v8)];
  free(v8);
  v10 = objc_alloc_init(PRSService);
  v14 = 0;
  [v10 exportCurrentDataStoreToURL:v5 options:v6 sandboxToken:v9 error:&v14];

  v11 = v14;
  v12 = v14;

  return v11;
}

- (id)attachmentsForParameters:(id)a3 withProgressHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [DECollectionProgress alloc];
  v10 = [NSNumber numberWithDouble:300.0];
  v11 = [v9 initWithPercentComplete:v10 withEstimatedTimeRemaining:0.0];

  [v11 setStatusString:@"Collecting Wallpaper Archive"];
  v6[2](v6, v11);
  v12 = objc_alloc_init(PRSMutableDataStoreArchiveConfiguration);
  v13 = [v7 objectForKey:@"DEExtensionAttachmentsParamConsentProvidedKey"];

  v26 = v8;
  if (v13 && ([v13 BOOLValue] & 1) != 0)
  {
    v14 = 0;
    v15 = @"Full Wallpaper Archive";
  }

  else
  {
    v15 = @"Basic Wallpaper Archive";
    v14 = 1;
  }

  [v12 setStripDescriptors:v14];
  [v12 setStripScreenshots:v14];
  [v12 setStripContentsOfConfigurations:v14];
  v16 = [(WallpaperDiagnosticExtension *)self posterDiagnosticsLogsPath];
  v17 = [NSURL fileURLWithPath:v16 isDirectory:1];
  v18 = [NSURL fileURLWithPath:@"PBArchive" relativeToURL:v17];

  v19 = [(WallpaperDiagnosticExtension *)self exportDataStoreWithOptions:v12 storingAt:v18];
  if (v19)
  {
    v20 = v26;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000F10(v19);
    }
  }

  else
  {
    v21 = [v18 path];
    v22 = [DEAttachmentItem attachmentWithPath:v21];

    [v22 setDisplayName:v15];
    v23 = [NSNumber numberWithBool:1];
    [v22 setDeleteOnAttach:v23];

    v20 = v26;
    [v26 addObject:v22];
  }

  v24 = [[DECollectionProgress alloc] initWithPercentComplete:100.0];
  v6[2](v6, v24);

  return v20;
}

@end