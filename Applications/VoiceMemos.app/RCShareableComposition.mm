@interface RCShareableComposition
+ (id)_createTemporaryDirectory;
+ (void)_accessRecording:(id)recording withBlock:(id)block;
- (BOOL)hasBeenTranscribed;
- (BOOL)hasMultipleTracks;
- (BOOL)registerAudioFileRepresentationWithItemProvider:(id)provider error:(id *)error;
- (NSString)recordingUUID;
- (NSString)title;
- (RCShareableComposition)initWithComposition:(id)composition;
- (float)exportProgress;
- (id)_cachedItemsForActivityTypes;
- (id)_cachedSubjectsForActivityTypes;
- (id)_cachedThumbnailsForActivityTypes;
- (id)_createManagedTemporaryDirectory;
- (id)_fileTypeIdentifier;
- (id)_subjectForActivityType:(id)type;
- (id)activityViewController:(id)controller itemsForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerOperation:(id)operation;
- (id)activityViewControllerPlaceholderItems:(id)items;
- (id)placeholderURL;
- (void)_attachSharingMetadataToRecording:(id)recording atURL:(id)l completion:(id)completion;
- (void)_cleanUpManagedTemporaryDirectories;
- (void)_copyResourcesForRecording:(id)recording toDirectory:(id)directory completion:(id)completion;
- (void)_renderRecording:(id)recording toDirectory:(id)directory completion:(id)completion;
- (void)_splitTracksForRecording:(id)recording toDirectory:(id)directory completion:(id)completion;
- (void)cancelExportOperation;
- (void)dealloc;
@end

@implementation RCShareableComposition

- (RCShareableComposition)initWithComposition:(id)composition
{
  compositionCopy = composition;
  v13.receiver = self;
  v13.super_class = RCShareableComposition;
  v6 = [(RCShareableComposition *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_composition, composition);
    v8 = objc_alloc_init(NSMutableArray);
    temporaryDirectories = v7->_temporaryDirectories;
    v7->_temporaryDirectories = v8;

    v10 = objc_alloc_init(RCShareMemoExporter);
    exporter = v7->exporter;
    v7->exporter = v10;
  }

  return v7;
}

- (NSString)recordingUUID
{
  composition = [(RCShareableComposition *)self composition];
  savedRecordingUUID = [composition savedRecordingUUID];

  return savedRecordingUUID;
}

- (NSString)title
{
  composition = [(RCShareableComposition *)self composition];
  title = [composition title];

  return title;
}

- (void)cancelExportOperation
{
  exporter = self->exporter;
  composition = [(RCShareableComposition *)self composition];
  savedRecordingUUID = [composition savedRecordingUUID];
  [(RCShareMemoExporter *)exporter cancelExportForRecordingWithId:savedRecordingUUID];

  exportOperation = [(RCShareableComposition *)self exportOperation];
  [exportOperation cancel];
}

- (float)exportProgress
{
  exporter = self->exporter;
  composition = [(RCShareableComposition *)self composition];
  savedRecordingUUID = [composition savedRecordingUUID];
  [(RCShareMemoExporter *)exporter progressForRecordingWithId:savedRecordingUUID];
  v6 = v5;

  return v6;
}

- (BOOL)hasBeenTranscribed
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_opt_class();
  composition = [(RCShareableComposition *)self composition];
  savedRecordingUUID = [composition savedRecordingUUID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3D20;
  v7[3] = &unk_10028C7A8;
  v7[4] = &v8;
  [v3 _accessRecording:savedRecordingUUID withBlock:v7];

  LOBYTE(composition) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return composition;
}

+ (id)_createTemporaryDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = NSTemporaryDirectory();
  v4 = [NSURL fileURLWithPath:v3];
  v9 = 0;
  v5 = [v2 URLForDirectory:99 inDomain:1 appropriateForURL:v4 create:1 error:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001BBD50(v6, v7);
    }
  }

  return v5;
}

- (id)_createManagedTemporaryDirectory
{
  v3 = self->_temporaryDirectories;
  objc_sync_enter(v3);
  _createTemporaryDirectory = [objc_opt_class() _createTemporaryDirectory];
  if (_createTemporaryDirectory)
  {
    [(NSMutableArray *)self->_temporaryDirectories addObject:_createTemporaryDirectory];
  }

  objc_sync_exit(v3);

  return _createTemporaryDirectory;
}

- (void)_cleanUpManagedTemporaryDirectories
{
  v3 = +[NSFileManager defaultManager];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_temporaryDirectories;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v15 = 0;
        path = [v9 path];
        v11 = [v3 fileExistsAtPath:path isDirectory:&v15];
        v12 = v15;

        if (v11)
        {
          if (v12)
          {
            v14 = 0;
            if (([v3 removeItemAtURL:v9 error:&v14] & 1) == 0)
            {
              v13 = OSLogForCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                sub_1001BBDDC(buf, &v21, v13);
              }
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }
}

- (void)dealloc
{
  [(RCShareableComposition *)self _cleanUpManagedTemporaryDirectories];
  v3.receiver = self;
  v3.super_class = RCShareableComposition;
  [(RCShareableComposition *)&v3 dealloc];
}

- (BOOL)registerAudioFileRepresentationWithItemProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
  _fileTypeIdentifier = [(RCShareableComposition *)self _fileTypeIdentifier];
  if (_fileTypeIdentifier)
  {
    composition = [(RCShareableComposition *)self composition];
    composedAVURL = [composition composedAVURL];

    composition2 = [(RCShareableComposition *)self composition];
    savedRecordingUUID = [composition2 savedRecordingUUID];

    v12 = +[NSFileManager defaultManager];
    path = [composedAVURL path];
    v14 = [v12 isReadableFileAtPath:path];

    if (v14)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000C4290;
      v16[3] = &unk_10028C7F8;
      v17 = composedAVURL;
      selfCopy = self;
      v19 = savedRecordingUUID;
      [providerCopy registerFileRepresentationForTypeIdentifier:_fileTypeIdentifier fileOptions:0 visibility:0 loadHandler:v16];
    }
  }

  else if (error)
  {
    *error = [NSError errorWithDomain:RCVoiceMemosErrorDomain code:3 userInfo:0];
  }

  return _fileTypeIdentifier != 0;
}

- (id)activityViewControllerPlaceholderItems:(id)items
{
  placeholderURL = [(RCShareableComposition *)self placeholderURL];
  v6 = placeholderURL;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)activityViewController:(id)controller itemsForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  if (!typeCopy)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  composition = [(RCShareableComposition *)self composition];
  compositionIsShareable = [composition compositionIsShareable];

  if (!compositionIsShareable)
  {
    v15 = OSLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1001BBE2C(self, v15);
    }

    goto LABEL_13;
  }

  _cachedItemsForActivityTypes = [(RCShareableComposition *)self _cachedItemsForActivityTypes];
  v11 = [_cachedItemsForActivityTypes objectForKeyedSubscript:typeCopy];
  if (!v11)
  {
    v11 = [(RCShareableComposition *)self _itemsForActivityType:typeCopy];
    if (v11)
    {
      v12 = +[RCShareMemoHelper customActivityTypes];
      v13 = [v12 containsObject:typeCopy];

      v14 = [typeCopy isEqual:UIActivityTypeCopyToPasteboard];
      if ((v13 & 1) == 0 && (v14 & 1) == 0)
      {
        +[RCAnalyticsUtilities sendDidShareRecording];
      }

      [_cachedItemsForActivityTypes setObject:v11 forKeyedSubscript:typeCopy];
    }
  }

LABEL_14:
  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  v17 = v16;

  return v16;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  typeCopy = type;
  customSubject = [(RCShareableComposition *)self customSubject];

  if (customSubject)
  {
    customSubject2 = [(RCShareableComposition *)self customSubject];
  }

  else
  {
    _cachedSubjectsForActivityTypes = [(RCShareableComposition *)self _cachedSubjectsForActivityTypes];
    customSubject2 = [_cachedSubjectsForActivityTypes objectForKeyedSubscript:typeCopy];
    if (!customSubject2)
    {
      v9 = [(RCShareableComposition *)self _subjectForActivityType:typeCopy];
      if (v9)
      {
        customSubject2 = v9;
        [_cachedSubjectsForActivityTypes setObject:v9 forKeyedSubscript:typeCopy];
      }

      else
      {
        customSubject2 = &stru_100295BB8;
      }
    }
  }

  return customSubject2;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  typeCopy = type;
  _cachedThumbnailsForActivityTypes = [(RCShareableComposition *)self _cachedThumbnailsForActivityTypes];
  height = [_cachedThumbnailsForActivityTypes objectForKeyedSubscript:typeCopy];
  if (!height)
  {
    composition = [(RCShareableComposition *)self composition];
    v12 = ([composition hasMultipleTracks] << 63) >> 63;

    composition2 = [(RCShareableComposition *)self composition];
    composedAVURL = [composition2 composedAVURL];
    v15 = [RCWaveform waveformURLForAVURL:composedAVURL trackIndex:v12];

    height = 0;
    if ([v15 checkResourceIsReachableAndReturnError:0])
    {
      composition3 = [(RCShareableComposition *)self composition];
      height = [RCWaveformSnapshotGenerator snapshotForComposition:composition3 size:width, height];

      [_cachedThumbnailsForActivityTypes setObject:height forKeyedSubscript:typeCopy];
    }
  }

  return height;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  _fileTypeIdentifier = [(RCShareableComposition *)self _fileTypeIdentifier];
  if (_fileTypeIdentifier)
  {
    v5 = objc_alloc_init(LPLinkMetadata);
    v6 = objc_alloc_init(LPFileMetadata);
    composition = [(RCShareableComposition *)self composition];
    title = [composition title];
    [v6 setName:title];

    [v6 setIcon:0];
    [v6 setType:_fileTypeIdentifier];
    composition2 = [(RCShareableComposition *)self composition];
    composedAVURL = [composition2 composedAVURL];
    v18 = 0;
    v17 = 0;
    v11 = [composedAVURL getResourceValue:&v18 forKey:NSURLFileSizeKey error:&v17];
    v12 = v18;
    v13 = v17;

    if (v11)
    {
      unsignedLongLongValue = [v12 unsignedLongLongValue];
    }

    else
    {
      v15 = OSLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[RCShareableComposition activityViewControllerLinkMetadata:]";
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s -- Error reading file size: %@", buf, 0x16u);
      }

      unsignedLongLongValue = 0;
    }

    [v6 setSize:unsignedLongLongValue];
    [v5 setSpecialization:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)activityViewControllerOperation:(id)operation
{
  operationCopy = operation;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  v5 = [NSArray arrayWithObjects:&selfCopy count:1];
  v6 = [RCShareMemoHelper customActivitiesForShareableCompositions:v5];

  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v6);
        }

        activityType = [*(*(&v24 + 1) + 8 * i) activityType];
        activity = [operationCopy activity];
        activityType2 = [activity activityType];
        v13 = activityType == activityType2;

        if (v13)
        {

          exportOperation = 0;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  objc_initWeak(&location, self);
  v14 = [RCExternallySignalledAsyncOperation alloc];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000C4F0C;
  v21 = &unk_10028C870;
  objc_copyWeak(&v22, &location);
  v15 = [(RCExternallySignalledAsyncOperation *)v14 initWithBlock:&v18];
  [(RCShareableComposition *)self setExportOperation:v15, v18, v19, v20, v21];

  exportOperation = [(RCShareableComposition *)self exportOperation];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
LABEL_11:

  return exportOperation;
}

- (BOOL)hasMultipleTracks
{
  composition = [(RCShareableComposition *)self composition];
  hasMultipleTracks = [composition hasMultipleTracks];

  return hasMultipleTracks;
}

- (id)placeholderURL
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5314;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  if (qword_1002D7158 != -1)
  {
    dispatch_once(&qword_1002D7158, block);
  }

  return qword_1002D7160;
}

+ (void)_accessRecording:(id)recording withBlock:(id)block
{
  recordingCopy = recording;
  blockCopy = block;
  v7 = +[RCApplicationContainer sharedContainer];
  newBackgroundModel = [v7 newBackgroundModel];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C5444;
  v12[3] = &unk_10028A538;
  v13 = newBackgroundModel;
  v14 = recordingCopy;
  v15 = blockCopy;
  v9 = blockCopy;
  v10 = recordingCopy;
  v11 = newBackgroundModel;
  [v11 performBlockAndWait:v12];
}

- (void)_copyResourcesForRecording:(id)recording toDirectory:(id)directory completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C5578;
  v9[3] = &unk_10028C898;
  directoryCopy = directory;
  completionCopy = completion;
  v7 = directoryCopy;
  v8 = completionCopy;
  [RCShareableComposition _accessRecording:recording withBlock:v9];
}

- (void)_renderRecording:(id)recording toDirectory:(id)directory completion:(id)completion
{
  completionCopy = completion;
  directoryCopy = directory;
  recordingCopy = recording;
  v11 = objc_alloc_init(_TtC10VoiceMemos31EffectsRendererSettingsProvider);
  [(RCShareMemoExporter *)self->exporter renderRecordingWithId:recordingCopy intoDirectory:directoryCopy with:v11 completionHandler:completionCopy];
}

- (void)_splitTracksForRecording:(id)recording toDirectory:(id)directory completion:(id)completion
{
  completionCopy = completion;
  directoryCopy = directory;
  recordingCopy = recording;
  v11 = objc_alloc_init(_TtC10VoiceMemos34TrackSplitRendererSettingsProvider);
  [(RCShareMemoExporter *)self->exporter splitMultitrackRecordingWithId:recordingCopy intoDirectory:directoryCopy with:v11 completionHandler:completionCopy];
}

- (void)_attachSharingMetadataToRecording:(id)recording atURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  recordingCopy = recording;
  v11 = objc_alloc_init(_TtC10VoiceMemos31EffectsRendererSettingsProvider);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000C593C;
  v18 = &unk_10028C8C0;
  v19 = lCopy;
  v20 = completionCopy;
  v12 = completionCopy;
  v13 = lCopy;
  v14 = objc_retainBlock(&v15);
  [(RCShareMemoExporter *)self->exporter attachMetadataToRecordingAtURL:v13 withId:recordingCopy with:v11 completionHandler:v14, v15, v16, v17, v18];
}

- (id)_subjectForActivityType:(id)type
{
  typeCopy = type;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000C5B70;
  v18 = sub_1000C5B80;
  v19 = 0;
  v5 = objc_opt_class();
  composition = [(RCShareableComposition *)self composition];
  savedRecordingUUID = [composition savedRecordingUUID];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C5B88;
  v11[3] = &unk_10028C8E8;
  v13 = &v14;
  v8 = typeCopy;
  v12 = v8;
  [v5 _accessRecording:savedRecordingUUID withBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)_cachedItemsForActivityTypes
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = objc_opt_new();
    objc_setAssociatedObject(self, a2, v4, 0x301);
  }

  return v4;
}

- (id)_cachedSubjectsForActivityTypes
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = objc_opt_new();
    objc_setAssociatedObject(self, a2, v4, 0x301);
  }

  return v4;
}

- (id)_cachedThumbnailsForActivityTypes
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = objc_opt_new();
    objc_setAssociatedObject(self, a2, v4, 0x301);
  }

  return v4;
}

- (id)_fileTypeIdentifier
{
  composition = [(RCShareableComposition *)self composition];
  composedAVURL = [composition composedAVURL];
  pathExtension = [composedAVURL pathExtension];

  if (pathExtension)
  {
    v5 = [RCCaptureFormat AVFileTypeIdentifierForFileExtension:pathExtension];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end