@interface MapsRadarDraft
+ (BOOL)isTapToRadarAuthorizedCached;
+ (BOOL)isTapToRadarAuthorizedSync;
+ (BOOL)isTapToRadarKitSupported;
+ (id)service;
- (MapsRadarAttachment)metadataAttachment;
- (MapsRadarDraft)init;
- (MapsRadarDraft)initWithoutLocationInformation;
- (NSArray)attachments;
- (NSArray)collaborationContactHandles;
- (NSArray)deviceClasses;
- (NSArray)diagnosticExtensionIDs;
- (NSArray)keywords;
- (NSArray)notes;
- (NSArray)screenshots;
- (NSDictionary)diagnosticExtensionParameters;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)descriptionText;
- (NSURL)tapToRadarURL;
- (RadarDraft)tapToRadarKitDraft;
- (id)service;
- (void)_launchTapToRadarKitWithDisplayReason:(id)a3;
- (void)_launchURLScheme;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
- (void)addAttachment:(id)a3;
- (void)addAttachments:(id)a3;
- (void)addCollaborationContactHandle:(id)a3;
- (void)addCollaborationContactHandles:(id)a3;
- (void)addDeviceClass:(id)a3;
- (void)addDeviceClasses:(id)a3;
- (void)addDiagnosticExtensionID:(id)a3;
- (void)addDiagnosticExtensionIDs:(id)a3;
- (void)addDiagnosticExtensionKey:(id)a3 value:(id)a4;
- (void)addDiagnosticExtensionParameters:(id)a3;
- (void)addKeyword:(id)a3;
- (void)addKeywords:(id)a3;
- (void)addNote:(id)a3;
- (void)addNotes:(id)a3;
- (void)addScreenshot:(id)a3;
- (void)addScreenshots:(id)a3;
- (void)launchTTRWithDisplayReason:(id)a3;
@end

@implementation MapsRadarDraft

- (RadarDraft)tapToRadarKitDraft
{
  if ([objc_opt_class() isTapToRadarKitSupported] && objc_msgSend(objc_opt_class(), "isTapToRadarAuthorizedSync"))
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2050000000;
    v3 = qword_10195D950;
    v47 = qword_10195D950;
    if (!qword_10195D950)
    {
      v39 = _NSConcreteStackBlock;
      v40 = 3221225472;
      v41 = sub_1008196A8;
      v42 = &unk_1016608A8;
      v43 = &v44;
      sub_1008196A8(&v39);
      v3 = v45[3];
    }

    v4 = v3;
    _Block_object_dispose(&v44, 8);
    v5 = objc_alloc_init(v3);
    [v5 setIsUserInitiated:1];
    v6 = [(MapsRadarDraft *)self title];
    [v5 setTitle:v6];

    v7 = [(MapsRadarDraft *)self descriptionText];
    [v5 setProblemDescription:v7];

    v8 = [(MapsRadarDraft *)self component];

    if (v8)
    {
      v44 = 0;
      v45 = &v44;
      v46 = 0x2050000000;
      v9 = qword_10195D958;
      v47 = qword_10195D958;
      if (!qword_10195D958)
      {
        v39 = _NSConcreteStackBlock;
        v40 = 3221225472;
        v41 = sub_100819718;
        v42 = &unk_1016608A8;
        v43 = &v44;
        sub_100819718(&v39);
        v9 = v45[3];
      }

      v10 = v9;
      _Block_object_dispose(&v44, 8);
      v11 = [v9 alloc];
      v12 = [(MapsRadarDraft *)self component];
      v13 = [v12 name];
      v14 = [(MapsRadarDraft *)self component];
      v15 = [v14 version];
      v16 = [(MapsRadarDraft *)self component];
      v17 = [v16 ID];
      v18 = [v11 initWithName:v13 version:v15 identifier:{objc_msgSend(v17, "integerValue")}];
      [v5 setComponent:v18];
    }

    else
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 bundleIdentifier];
      [v5 setBundleID:v13];
    }

    v19 = [(MapsRadarDraft *)self classification];
    if ((v19 - 1) >= 0xA)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    [v5 setClassification:v20];
    v21 = [(MapsRadarDraft *)self reproducibility];
    if ((v21 - 1) >= 6)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    [v5 setReproducibility:v22];
    v23 = [(MapsRadarDraft *)self temporaryAttachmentsFolderURL];
    v48 = v23;
    v24 = [NSArray arrayWithObjects:&v48 count:1];
    v25 = [(MapsRadarDraft *)self screenshots];
    v26 = sub_100021DB0(v25, &stru_10162B4E0);
    v27 = [v24 arrayByAddingObjectsFromArray:v26];
    [v5 setAttachments:v27];

    v28 = [(MapsRadarDraft *)self keywords];
    v29 = sub_100021DB0(v28, &stru_10162B500);
    [v5 setKeywords:v29];

    if ([(MapsRadarDraft *)self collectFullLogArchive])
    {
      v30 = 6;
    }

    else
    {
      v30 = 0;
    }

    [v5 setAutoDiagnostics:v30];
    v31 = [(MapsRadarDraft *)self timeOfIssue];
    [v5 setTimeOfIssue:v31];

    [v5 setDeleteOnAttach:1];
    v32 = [(MapsRadarDraft *)self collaborationContactHandles];
    [v5 setCollaborationContactHandles:v32];

    v33 = [(MapsRadarDraft *)self deviceClasses];
    LODWORD(v34) = [v33 containsObject:@"iPhone"];
    if ([v33 containsObject:@"iPad"])
    {
      v34 = v34 | 2;
    }

    else
    {
      v34 = v34;
    }

    if ([v33 containsObject:@"Watch"])
    {
      v34 |= 4uLL;
    }

    if ([v33 containsObject:@"AppleTV"])
    {
      v34 |= 8uLL;
    }

    if ([v33 containsObject:@"HomePod"])
    {
      v34 |= 0x10uLL;
    }

    if ([v33 containsObject:@"Mac"])
    {
      v34 |= 0x20uLL;
    }

    if ([v33 containsObject:@"Vision"])
    {
      v35 = v34 | 0x40;
    }

    else
    {
      v35 = v34;
    }

    [v5 setRemoteDeviceClasses:v35];

    [v5 setShouldCaptureDumpDisplay:1];
    [v5 setShouldCaptureScreenshot:1];
    v36 = [(MapsRadarDraft *)self diagnosticExtensionIDs];
    [v5 setDiagnosticExtensionIDs:v36];

    v37 = [(MapsRadarDraft *)self diagnosticExtensionParameters];
    [v5 setDiagnosticExtensionParameters:v37];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isTapToRadarAuthorizedSync
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = [v2 service];
  v4 = [v3 serviceSettings];
  qword_10195D938 = [v4 authorizationStatus];

  LOBYTE(v3) = qword_10195D938 == 3;
  objc_sync_exit(v2);

  return v3;
}

+ (BOOL)isTapToRadarAuthorizedCached
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100819B28;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195D930 != -1)
  {
    dispatch_once(&qword_10195D930, block);
  }

  v3 = a1;
  objc_sync_enter(v3);
  v4 = qword_10195D938 == 3;
  objc_sync_exit(v3);

  return v4;
}

+ (BOOL)isTapToRadarKitSupported
{
  v2 = sub_100819824();
  if (v2)
  {
    LOBYTE(v2) = sub_100819C90() != 0;
  }

  return v2;
}

+ (id)service
{
  v2 = sub_100819C90();

  return [v2 shared];
}

- (NSURL)tapToRadarURL
{
  v3 = objc_alloc_init(NSURLComponents);
  [v3 setScheme:@"tap-to-radar"];
  [v3 setHost:@"new"];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [NSURLQueryItem alloc];
  v6 = [(MapsRadarDraft *)self title];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1016631F0;
  }

  v9 = [v5 initWithName:@"Title" value:v8];
  [v4 addObject:v9];

  v10 = [(MapsRadarDraft *)self descriptionText];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [NSURLQueryItem alloc];
    v13 = [(MapsRadarDraft *)self descriptionText];
    v14 = [v12 initWithName:@"Description" value:v13];
    [v4 addObject:v14];
  }

  if ([(MapsRadarDraft *)self classification])
  {
    v15 = [(MapsRadarDraft *)self classification];
    if (v15 > 0xA)
    {
      v16 = @"Security";
    }

    else
    {
      v16 = *(&off_10162C0D0 + v15);
    }

    v17 = [[NSURLQueryItem alloc] initWithName:@"Classification" value:v16];
    [v4 addObject:v17];
  }

  if ([(MapsRadarDraft *)self reproducibility])
  {
    v18 = [(MapsRadarDraft *)self reproducibility];
    if (v18 > 6)
    {
      v19 = @"Always";
    }

    else
    {
      v19 = *(&off_10162C128 + v18);
    }

    v20 = [[NSURLQueryItem alloc] initWithName:@"Reproducibility" value:v19];
    [v4 addObject:v20];
  }

  v21 = [(MapsRadarDraft *)self attachments];
  v22 = [(MapsRadarDraft *)self screenshots];
  v23 = [v22 count];

  if (v23)
  {
    v24 = [NSURLQueryItem alloc];
    v25 = [(MapsRadarDraft *)self screenshots];
    v26 = sub_100021DB0(v25, &stru_10162C050);
    v27 = [v26 componentsJoinedByString:{@", "}];
    v28 = [v24 initWithName:@"Screenshot" value:v27];
    [v4 addObject:v28];
  }

  v29 = [(MapsRadarDraft *)self metadataAttachment];
  if (v29)
  {
    v30 = [v21 arrayByAddingObject:v29];

    v21 = v30;
  }

  if ([v21 count])
  {
    v31 = [NSURLQueryItem alloc];
    v32 = [(MapsRadarDraft *)self temporaryAttachmentsFolderURL];
    v33 = [v32 path];
    v34 = [v31 initWithName:@"Attachments" value:v33];
    [v4 addObject:v34];
  }

  v35 = [(MapsRadarDraft *)self keywords];
  v36 = [v35 count];

  if (v36)
  {
    v37 = [(MapsRadarDraft *)self keywords];
    v38 = sub_100021DB0(v37, &stru_10162C090);
    v39 = [NSSet setWithArray:v38];
    v40 = [v39 allObjects];

    v41 = [NSURLQueryItem alloc];
    v42 = [v40 componentsJoinedByString:{@", "}];
    v43 = [v41 initWithName:@"Keywords" value:v42];
    [v4 addObject:v43];
  }

  v44 = [(MapsRadarDraft *)self component];

  if (v44)
  {
    v45 = [NSURLQueryItem alloc];
    v46 = [(MapsRadarDraft *)self component];
    v47 = [v46 name];
    v48 = [v45 initWithName:@"ComponentName" value:v47];
    [v4 addObject:v48];

    v49 = [NSURLQueryItem alloc];
    v50 = [(MapsRadarDraft *)self component];
    v51 = [v50 version];
    v52 = [v49 initWithName:@"ComponentVersion" value:v51];
    [v4 addObject:v52];

    v53 = [NSURLQueryItem alloc];
    v54 = [(MapsRadarDraft *)self component];
    v55 = [v54 ID];
    v56 = [v55 stringValue];
    v57 = [v53 initWithName:@"ComponentID" value:v56];
    [v4 addObject:v57];
  }

  if ([(MapsRadarDraft *)self collectFullLogArchive])
  {
    v58 = [[NSURLQueryItem alloc] initWithName:@"AutoDiagnostics" value:@"full-log-archive"];
    [v4 addObject:v58];
  }

  v59 = [(MapsRadarDraft *)self collaborationContactHandles];
  v60 = [v59 count];

  if (v60)
  {
    v61 = [NSURLQueryItem alloc];
    v62 = [(MapsRadarDraft *)self collaborationContactHandles];
    v63 = [v62 componentsJoinedByString:{@", "}];
    v64 = [v61 initWithName:@"CollaborationContactHandles" value:v63];
    [v4 addObject:v64];
  }

  v65 = [(MapsRadarDraft *)self deviceClasses];
  v66 = [v65 count];

  if (v66)
  {
    v67 = [NSURLQueryItem alloc];
    v68 = [(MapsRadarDraft *)self deviceClasses];
    v69 = [v68 componentsJoinedByString:{@", "}];
    v70 = [v67 initWithName:@"DeviceClasses" value:v69];
    [v4 addObject:v70];
  }

  v71 = [NSURLQueryItem alloc];
  v72 = +[NSBundle mainBundle];
  v73 = [v72 bundleIdentifier];
  v74 = [v71 initWithName:@"BundleID" value:v73];
  [v4 addObject:v74];

  v75 = [[NSURLQueryItem alloc] initWithName:@"DeleteOnAttach" value:@"1"];
  [v4 addObject:v75];

  v76 = [[NSURLQueryItem alloc] initWithName:@"IncludeDevicePrefixInTitle" value:@"1"];
  [v4 addObject:v76];

  v77 = [NSURLQueryItem alloc];
  v78 = [(MapsRadarDraft *)self diagnosticExtensionIDs];
  v79 = [v78 componentsJoinedByString:{@", "}];
  v80 = [v77 initWithName:@"ExtensionIdentifiers" value:v79];
  [v4 addObject:v80];

  if (qword_10195DA38 != -1)
  {
    dispatch_once(&qword_10195DA38, &stru_10162C0B0);
  }

  v81 = [NSURLQueryItem alloc];
  v82 = qword_10195DA30;
  v83 = [(MapsRadarDraft *)self timeOfIssue];
  v84 = [v82 stringFromDate:v83];
  v85 = [v81 initWithName:@"TimeOfIssue" value:v84];
  [v4 addObject:v85];

  [v3 setQueryItems:v4];
  v86 = [v3 URL];

  return v86;
}

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  v11 = a3;
  v11[2](v11, @"title", self->_title);
  v11[2](v11, @"notes", &self->_notes->super.isa);
  v11[2](v11, @"component", &self->_component->super.isa);
  classification = self->_classification;
  if (classification > 0xA)
  {
    v5 = @"Security";
  }

  else
  {
    v5 = *(&off_10164F2F0 + classification);
  }

  v11[2](v11, @"classification", &v5->isa);
  v11[2](v11, @"diagnostic extension ids", &self->_diagnosticExtensionIDs->super.isa);
  v11[2](v11, @"diagnostic extension params", &self->_diagnosticExtensionParameters->super.isa);
  reproducibility = self->_reproducibility;
  if (reproducibility > 6)
  {
    v7 = @"Always";
  }

  else
  {
    v7 = *(&off_10164F348 + reproducibility);
  }

  v11[2](v11, @"reproducibility", &v7->isa);
  v11[2](v11, @"attachments", &self->_attachments->super.isa);
  v11[2](v11, @"screenshots", &self->_screenshots->super.isa);
  v11[2](v11, @"keywords", &self->_keywords->super.isa);
  v11[2](v11, @"time of issue", &self->_timeOfIssue->super.isa);
  if (self->_locationOfIssue)
  {
    locationOfIssue = self->_locationOfIssue;
  }

  else
  {
    locationOfIssue = @"<Not collected>";
  }

  v11[2](v11, @"location of issue", &locationOfIssue->super.isa);
  if (self->_collectFullLogArchive)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v11[2](v11, @"full log archive", &v9->isa);
  v11[2](v11, @"collaboration contact handles", &self->_collaborationContactHandles->super.isa);
  v11[2](v11, @"device classes", &self->_deviceClasses->super.isa);
  v10 = [(NSURL *)self->_temporaryFolderURL path];
  v11[2](v11, @"temporary folder", v10);
}

- (NSString)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C696A4;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapsRadarDraft *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarDraft *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:@"\n"];
  v12 = [NSString stringWithFormat:@"%@ {\n%@\n}", v10, v11];

  return v12;
}

- (NSString)description
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C698F4;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapsRadarDraft *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarDraft *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [NSString stringWithFormat:@"%@ (%@)", v10, v11];

  return v12;
}

- (MapsRadarAttachment)metadataAttachment
{
  v2 = [(MapsRadarDraft *)self attachments];
  v3 = [v2 sortedArrayUsingComparator:&stru_10164F270];

  if ([v3 count])
  {
    if (qword_10195ECE0 != -1)
    {
      dispatch_once(&qword_10195ECE0, &stru_10164F290);
    }

    v4 = sub_100021DB0(v3, &stru_10164F2D0);
    v5 = [v4 componentsJoinedByString:@"\n"];

    v6 = [MapsRadarTextAttachment attachmentWithFileName:@"metadata.txt" text:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addDiagnosticExtensionParameters:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315906;
      v12 = "[MapsRadarDraft addDiagnosticExtensionParameters:]";
      v13 = 2080;
      v14 = "MapsRadarDraft.m";
      v15 = 1024;
      v16 = 224;
      v17 = 2080;
      v18 = "diagnosticExtensionParameters != nil";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v11, 0x26u);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
      }
    }
  }

  v5 = [(MapsRadarDraft *)self diagnosticExtensionParameters];
  v6 = [v5 mutableCopy];

  [v6 addEntriesFromDictionary:v4];
  v7 = [v6 copy];
  [(MapsRadarDraft *)self setDiagnosticExtensionParameters:v7];
}

- (void)addDiagnosticExtensionKey:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v18 = "[MapsRadarDraft addDiagnosticExtensionKey:value:]";
      v19 = 2080;
      v20 = "MapsRadarDraft.m";
      v21 = 1024;
      v22 = 217;
      v23 = 2080;
      v24 = "key != nil";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v7)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v18 = "[MapsRadarDraft addDiagnosticExtensionKey:value:]";
      v19 = 2080;
      v20 = "MapsRadarDraft.m";
      v21 = 1024;
      v22 = 218;
      v23 = 2080;
      v24 = "value != nil";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v18 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v15 = v6;
  v16 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [(MapsRadarDraft *)self addDiagnosticExtensionParameters:v8];
}

- (void)addDiagnosticExtensionIDs:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315906;
      v11 = "[MapsRadarDraft addDiagnosticExtensionIDs:]";
      v12 = 2080;
      v13 = "MapsRadarDraft.m";
      v14 = 1024;
      v15 = 211;
      v16 = 2080;
      v17 = "diagnosticExtensionIDs != nil";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v10, 0x26u);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }
  }

  v5 = [(MapsRadarDraft *)self diagnosticExtensionIDs];
  v6 = [v5 arrayByAddingObjectsFromArray:v4];
  [(MapsRadarDraft *)self setDiagnosticExtensionIDs:v6];
}

- (void)addDiagnosticExtensionID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "[MapsRadarDraft addDiagnosticExtensionID:]";
      v12 = 2080;
      v13 = "MapsRadarDraft.m";
      v14 = 1024;
      v15 = 205;
      v16 = 2080;
      v17 = "diagnosticExtensionID != nil";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [(MapsRadarDraft *)self addDiagnosticExtensionIDs:v5];
}

- (void)addNotes:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315906;
      v11 = "[MapsRadarDraft addNotes:]";
      v12 = 2080;
      v13 = "MapsRadarDraft.m";
      v14 = 1024;
      v15 = 199;
      v16 = 2080;
      v17 = "notes != nil";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v10, 0x26u);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }
  }

  v5 = [(MapsRadarDraft *)self notes];
  v6 = [v5 arrayByAddingObjectsFromArray:v4];
  [(MapsRadarDraft *)self setNotes:v6];
}

- (void)addNote:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "[MapsRadarDraft addNote:]";
      v12 = 2080;
      v13 = "MapsRadarDraft.m";
      v14 = 1024;
      v15 = 193;
      v16 = 2080;
      v17 = "note != nil";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [(MapsRadarDraft *)self addNotes:v5];
}

- (void)addDeviceClasses:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315906;
      v11 = "[MapsRadarDraft addDeviceClasses:]";
      v12 = 2080;
      v13 = "MapsRadarDraft.m";
      v14 = 1024;
      v15 = 187;
      v16 = 2080;
      v17 = "deviceClasses != nil";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v10, 0x26u);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }
  }

  v5 = [(MapsRadarDraft *)self deviceClasses];
  v6 = [v5 arrayByAddingObjectsFromArray:v4];
  [(MapsRadarDraft *)self setDeviceClasses:v6];
}

- (void)addDeviceClass:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "[MapsRadarDraft addDeviceClass:]";
      v12 = 2080;
      v13 = "MapsRadarDraft.m";
      v14 = 1024;
      v15 = 181;
      v16 = 2080;
      v17 = "deviceClass != nil";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [(MapsRadarDraft *)self addDeviceClasses:v5];
}

- (void)addCollaborationContactHandles:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315906;
      v11 = "[MapsRadarDraft addCollaborationContactHandles:]";
      v12 = 2080;
      v13 = "MapsRadarDraft.m";
      v14 = 1024;
      v15 = 175;
      v16 = 2080;
      v17 = "collaborationContactHandles != nil";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v10, 0x26u);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }
  }

  v5 = [(MapsRadarDraft *)self collaborationContactHandles];
  v6 = [v5 arrayByAddingObjectsFromArray:v4];
  [(MapsRadarDraft *)self setCollaborationContactHandles:v6];
}

- (void)addCollaborationContactHandle:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "[MapsRadarDraft addCollaborationContactHandle:]";
      v12 = 2080;
      v13 = "MapsRadarDraft.m";
      v14 = 1024;
      v15 = 169;
      v16 = 2080;
      v17 = "collaborationContactHandle != nil";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [(MapsRadarDraft *)self addCollaborationContactHandles:v5];
}

- (void)addKeywords:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315906;
      v11 = "[MapsRadarDraft addKeywords:]";
      v12 = 2080;
      v13 = "MapsRadarDraft.m";
      v14 = 1024;
      v15 = 163;
      v16 = 2080;
      v17 = "keywords != nil";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v10, 0x26u);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }
  }

  v5 = [(MapsRadarDraft *)self keywords];
  v6 = [v5 arrayByAddingObjectsFromArray:v4];
  [(MapsRadarDraft *)self setKeywords:v6];
}

- (void)addKeyword:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "[MapsRadarDraft addKeyword:]";
      v12 = 2080;
      v13 = "MapsRadarDraft.m";
      v14 = 1024;
      v15 = 157;
      v16 = 2080;
      v17 = "keyword != nil";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [(MapsRadarDraft *)self addKeywords:v5];
}

- (void)addScreenshots:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v21 = "[MapsRadarDraft addScreenshots:]";
      v22 = 2080;
      v23 = "MapsRadarDraft.m";
      v24 = 1024;
      v25 = 148;
      v26 = 2080;
      v27 = "screenshots != nil";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v15 + 1) + 8 * i) setRadarDraft:{self, v15}];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = [(MapsRadarDraft *)self screenshots];
  v11 = [v10 arrayByAddingObjectsFromArray:v5];
  [(MapsRadarDraft *)self setScreenshots:v11];
}

- (void)addScreenshot:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "[MapsRadarDraft addScreenshot:]";
      v12 = 2080;
      v13 = "MapsRadarDraft.m";
      v14 = 1024;
      v15 = 142;
      v16 = 2080;
      v17 = "screenshot != nil";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [(MapsRadarDraft *)self addScreenshots:v5];
}

- (void)addAttachments:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v21 = "[MapsRadarDraft addAttachments:]";
      v22 = 2080;
      v23 = "MapsRadarDraft.m";
      v24 = 1024;
      v25 = 133;
      v26 = 2080;
      v27 = "attachments != nil";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v15 + 1) + 8 * i) setRadarDraft:{self, v15}];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = [(MapsRadarDraft *)self attachments];
  v11 = [v10 arrayByAddingObjectsFromArray:v5];
  [(MapsRadarDraft *)self setAttachments:v11];
}

- (void)addAttachment:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "[MapsRadarDraft addAttachment:]";
      v12 = 2080;
      v13 = "MapsRadarDraft.m";
      v14 = 1024;
      v15 = 127;
      v16 = 2080;
      v17 = "attachment != nil";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [(MapsRadarDraft *)self addAttachments:v5];
}

- (NSDictionary)diagnosticExtensionParameters
{
  if (self->_diagnosticExtensionParameters)
  {
    return self->_diagnosticExtensionParameters;
  }

  else
  {
    return &__NSDictionary0__struct;
  }
}

- (NSArray)diagnosticExtensionIDs
{
  if (self->_diagnosticExtensionIDs)
  {
    return self->_diagnosticExtensionIDs;
  }

  else
  {
    return &off_1016ED730;
  }
}

- (NSArray)notes
{
  if (self->_notes)
  {
    return self->_notes;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (NSArray)deviceClasses
{
  if (self->_deviceClasses)
  {
    return self->_deviceClasses;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (NSArray)collaborationContactHandles
{
  if (self->_collaborationContactHandles)
  {
    return self->_collaborationContactHandles;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (NSArray)keywords
{
  if (self->_keywords)
  {
    return self->_keywords;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (NSArray)screenshots
{
  if (self->_screenshots)
  {
    return self->_screenshots;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (NSArray)attachments
{
  if (self->_attachments)
  {
    return self->_attachments;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (NSString)descriptionText
{
  v3 = +[NSMutableArray array];
  if ([(NSArray *)self->_notes count])
  {
    [v3 addObjectsFromArray:self->_notes];
  }

  locationOfIssue = self->_locationOfIssue;
  if (locationOfIssue)
  {
    [(CLLocation *)locationOfIssue coordinate];
    v6 = v5;
    [(CLLocation *)self->_locationOfIssue coordinate];
    v8 = [NSString stringWithFormat:@"Device location: %f, %f", v6, v7];
    [v3 addObject:v8];
  }

  if ([v3 count])
  {
    [v3 insertObject:@"----------" atIndex:0];
    v9 = 3;
    do
    {
      [v3 insertObject:@"\n" atIndex:0];
      --v9;
    }

    while (v9);
  }

  v10 = [v3 componentsJoinedByString:@"\n"];

  return v10;
}

- (MapsRadarDraft)initWithoutLocationInformation
{
  v2 = [(MapsRadarDraft *)self init];
  v3 = v2;
  if (v2)
  {
    locationOfIssue = v2->_locationOfIssue;
    v2->_locationOfIssue = 0;
  }

  return v3;
}

- (MapsRadarDraft)init
{
  v16.receiver = self;
  v16.super_class = MapsRadarDraft;
  v2 = [(MapsRadarDraft *)&v16 init];
  if (v2)
  {
    v3 = +[NSDate date];
    timeOfIssue = v2->_timeOfIssue;
    v2->_timeOfIssue = v3;

    v5 = +[MKLocationManager sharedLocationManager];
    v6 = [v5 lastLocation];
    locationOfIssue = v2->_locationOfIssue;
    v2->_locationOfIssue = v6;

    v2->_collectFullLogArchive = GEOConfigGetBOOL();
    v8 = NSTemporaryDirectory();
    v9 = +[NSUUID UUID];
    v10 = [v9 UUIDString];
    v11 = [v8 stringByAppendingPathComponent:v10];
    v12 = [NSURL fileURLWithPath:v11];
    v13 = [v12 URLByAppendingPathComponent:@"MapsDiagnostics/"];
    temporaryFolderURL = v2->_temporaryFolderURL;
    v2->_temporaryFolderURL = v13;
  }

  return v2;
}

- (void)_launchURLScheme
{
  v3 = sub_100D19350();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v14 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Will launch TTR via URL", buf, 0xCu);
  }

  v4 = [(MapsRadarDraft *)self tapToRadarURL];
  if (v4)
  {
    objc_initWeak(buf, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100D193A4;
    v10[3] = &unk_10165D288;
    objc_copyWeak(&v12, buf);
    v11 = v4;
    [UIApplication _maps_unlockApplicationWithCompletion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  else
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v14 = "[MapsRadarDraft(TTR) _launchURLScheme]";
      v15 = 2080;
      v16 = "MapsRadarDraft+TTR.m";
      v17 = 1024;
      v18 = 84;
      v19 = 2080;
      v20 = "tapToRadarURL != nil";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v14 = v7;
        v8 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v9 = sub_100D19350();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v14 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}p] Error creating TTR URL", buf, 0xCu);
    }
  }
}

- (void)_launchTapToRadarKitWithDisplayReason:(id)a3
{
  v4 = a3;
  v5 = sub_100D19350();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v22 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Will launch TTR via TapToRadarKit", buf, 0xCu);
  }

  if (!+[MapsRadarDraft isTapToRadarKitSupported])
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[MapsRadarDraft(TTR) _launchTapToRadarKitWithDisplayReason:]";
      v23 = 2080;
      v24 = "MapsRadarDraft+TTR.m";
      v25 = 1024;
      v26 = 60;
      v27 = 2080;
      v28 = "MapsRadarDraft.isTapToRadarKitSupported";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!+[MapsRadarDraft isTapToRadarAuthorizedSync])
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[MapsRadarDraft(TTR) _launchTapToRadarKitWithDisplayReason:]";
      v23 = 2080;
      v24 = "MapsRadarDraft+TTR.m";
      v25 = 1024;
      v26 = 61;
      v27 = 2080;
      v28 = "MapsRadarDraft.isTapToRadarAuthorizedSync";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v6 = [(MapsRadarDraft *)self tapToRadarKitDraft];
  if (v6)
  {
    objc_initWeak(buf, self);
    v7 = [(MapsRadarDraft *)self service];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100D1A06C;
    v19[3] = &unk_1016600B8;
    objc_copyWeak(&v20, buf);
    [v7 createDraft:v6 forProcessNamed:@"Maps" withDisplayReason:v4 completionHandler:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[MapsRadarDraft(TTR) _launchTapToRadarKitWithDisplayReason:]";
      v23 = 2080;
      v24 = "MapsRadarDraft+TTR.m";
      v25 = 1024;
      v26 = 63;
      v27 = 2080;
      v28 = "draft != nil";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v16;
        v17 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v18 = sub_100D19350();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v22 = self;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{public}p] Error creating TapToRadarKit draft", buf, 0xCu);
    }
  }
}

- (id)service
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = qword_10195F028;
  v10 = qword_10195F028;
  if (!qword_10195F028)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100D1A370;
    v6[3] = &unk_1016608A8;
    v6[4] = &v7;
    sub_100D1A370(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 shared];

  return v4;
}

- (void)launchTTRWithDisplayReason:(id)a3
{
  v4 = a3;
  if (GEOConfigGetBOOL())
  {
    [(MapsRadarDraft *)self _launchTapToRadarKitWithDisplayReason:v4];
  }

  else
  {
    [(MapsRadarDraft *)self _launchURLScheme];
  }
}

@end