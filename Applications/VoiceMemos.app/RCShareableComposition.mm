@interface RCShareableComposition
+ (id)_createTemporaryDirectory;
+ (void)_accessRecording:(id)a3 withBlock:(id)a4;
- (BOOL)hasBeenTranscribed;
- (BOOL)hasMultipleTracks;
- (BOOL)registerAudioFileRepresentationWithItemProvider:(id)a3 error:(id *)a4;
- (NSString)recordingUUID;
- (NSString)title;
- (RCShareableComposition)initWithComposition:(id)a3;
- (float)exportProgress;
- (id)_cachedItemsForActivityTypes;
- (id)_cachedSubjectsForActivityTypes;
- (id)_cachedThumbnailsForActivityTypes;
- (id)_createManagedTemporaryDirectory;
- (id)_fileTypeIdentifier;
- (id)_subjectForActivityType:(id)a3;
- (id)activityViewController:(id)a3 itemsForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)activityViewControllerOperation:(id)a3;
- (id)activityViewControllerPlaceholderItems:(id)a3;
- (id)placeholderURL;
- (void)_attachSharingMetadataToRecording:(id)a3 atURL:(id)a4 completion:(id)a5;
- (void)_cleanUpManagedTemporaryDirectories;
- (void)_copyResourcesForRecording:(id)a3 toDirectory:(id)a4 completion:(id)a5;
- (void)_renderRecording:(id)a3 toDirectory:(id)a4 completion:(id)a5;
- (void)_splitTracksForRecording:(id)a3 toDirectory:(id)a4 completion:(id)a5;
- (void)cancelExportOperation;
- (void)dealloc;
@end

@implementation RCShareableComposition

- (RCShareableComposition)initWithComposition:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = RCShareableComposition;
  v6 = [(RCShareableComposition *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_composition, a3);
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
  v2 = [(RCShareableComposition *)self composition];
  v3 = [v2 savedRecordingUUID];

  return v3;
}

- (NSString)title
{
  v2 = [(RCShareableComposition *)self composition];
  v3 = [v2 title];

  return v3;
}

- (void)cancelExportOperation
{
  exporter = self->exporter;
  v4 = [(RCShareableComposition *)self composition];
  v5 = [v4 savedRecordingUUID];
  [(RCShareMemoExporter *)exporter cancelExportForRecordingWithId:v5];

  v6 = [(RCShareableComposition *)self exportOperation];
  [v6 cancel];
}

- (float)exportProgress
{
  exporter = self->exporter;
  v3 = [(RCShareableComposition *)self composition];
  v4 = [v3 savedRecordingUUID];
  [(RCShareMemoExporter *)exporter progressForRecordingWithId:v4];
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
  v4 = [(RCShareableComposition *)self composition];
  v5 = [v4 savedRecordingUUID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3D20;
  v7[3] = &unk_10028C7A8;
  v7[4] = &v8;
  [v3 _accessRecording:v5 withBlock:v7];

  LOBYTE(v4) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
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
  v4 = [objc_opt_class() _createTemporaryDirectory];
  if (v4)
  {
    [(NSMutableArray *)self->_temporaryDirectories addObject:v4];
  }

  objc_sync_exit(v3);

  return v4;
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
        v10 = [v9 path];
        v11 = [v3 fileExistsAtPath:v10 isDirectory:&v15];
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

- (BOOL)registerAudioFileRepresentationWithItemProvider:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(RCShareableComposition *)self _fileTypeIdentifier];
  if (v7)
  {
    v8 = [(RCShareableComposition *)self composition];
    v9 = [v8 composedAVURL];

    v10 = [(RCShareableComposition *)self composition];
    v11 = [v10 savedRecordingUUID];

    v12 = +[NSFileManager defaultManager];
    v13 = [v9 path];
    v14 = [v12 isReadableFileAtPath:v13];

    if (v14)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000C4290;
      v16[3] = &unk_10028C7F8;
      v17 = v9;
      v18 = self;
      v19 = v11;
      [v6 registerFileRepresentationForTypeIdentifier:v7 fileOptions:0 visibility:0 loadHandler:v16];
    }
  }

  else if (a4)
  {
    *a4 = [NSError errorWithDomain:RCVoiceMemosErrorDomain code:3 userInfo:0];
  }

  return v7 != 0;
}

- (id)activityViewControllerPlaceholderItems:(id)a3
{
  v3 = [(RCShareableComposition *)self placeholderURL];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)activityViewController:(id)a3 itemsForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v8 = [(RCShareableComposition *)self composition];
  v9 = [v8 compositionIsShareable];

  if (!v9)
  {
    v15 = OSLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1001BBE2C(self, v15);
    }

    goto LABEL_13;
  }

  v10 = [(RCShareableComposition *)self _cachedItemsForActivityTypes];
  v11 = [v10 objectForKeyedSubscript:v7];
  if (!v11)
  {
    v11 = [(RCShareableComposition *)self _itemsForActivityType:v7];
    if (v11)
    {
      v12 = +[RCShareMemoHelper customActivityTypes];
      v13 = [v12 containsObject:v7];

      v14 = [v7 isEqual:UIActivityTypeCopyToPasteboard];
      if ((v13 & 1) == 0 && (v14 & 1) == 0)
      {
        +[RCAnalyticsUtilities sendDidShareRecording];
      }

      [v10 setObject:v11 forKeyedSubscript:v7];
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

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v5 = a4;
  v6 = [(RCShareableComposition *)self customSubject];

  if (v6)
  {
    v7 = [(RCShareableComposition *)self customSubject];
  }

  else
  {
    v8 = [(RCShareableComposition *)self _cachedSubjectsForActivityTypes];
    v7 = [v8 objectForKeyedSubscript:v5];
    if (!v7)
    {
      v9 = [(RCShareableComposition *)self _subjectForActivityType:v5];
      if (v9)
      {
        v7 = v9;
        [v8 setObject:v9 forKeyedSubscript:v5];
      }

      else
      {
        v7 = &stru_100295BB8;
      }
    }
  }

  return v7;
}

- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a4;
  v9 = [(RCShareableComposition *)self _cachedThumbnailsForActivityTypes];
  v10 = [v9 objectForKeyedSubscript:v8];
  if (!v10)
  {
    v11 = [(RCShareableComposition *)self composition];
    v12 = ([v11 hasMultipleTracks] << 63) >> 63;

    v13 = [(RCShareableComposition *)self composition];
    v14 = [v13 composedAVURL];
    v15 = [RCWaveform waveformURLForAVURL:v14 trackIndex:v12];

    v10 = 0;
    if ([v15 checkResourceIsReachableAndReturnError:0])
    {
      v16 = [(RCShareableComposition *)self composition];
      v10 = [RCWaveformSnapshotGenerator snapshotForComposition:v16 size:width, height];

      [v9 setObject:v10 forKeyedSubscript:v8];
    }
  }

  return v10;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = [(RCShareableComposition *)self _fileTypeIdentifier];
  if (v4)
  {
    v5 = objc_alloc_init(LPLinkMetadata);
    v6 = objc_alloc_init(LPFileMetadata);
    v7 = [(RCShareableComposition *)self composition];
    v8 = [v7 title];
    [v6 setName:v8];

    [v6 setIcon:0];
    [v6 setType:v4];
    v9 = [(RCShareableComposition *)self composition];
    v10 = [v9 composedAVURL];
    v18 = 0;
    v17 = 0;
    v11 = [v10 getResourceValue:&v18 forKey:NSURLFileSizeKey error:&v17];
    v12 = v18;
    v13 = v17;

    if (v11)
    {
      v14 = [v12 unsignedLongLongValue];
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

      v14 = 0;
    }

    [v6 setSize:v14];
    [v5 setSpecialization:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)activityViewControllerOperation:(id)a3
{
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = self;
  v5 = [NSArray arrayWithObjects:&v28 count:1];
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

        v10 = [*(*(&v24 + 1) + 8 * i) activityType];
        v11 = [v4 activity];
        v12 = [v11 activityType];
        v13 = v10 == v12;

        if (v13)
        {

          v16 = 0;
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

  v16 = [(RCShareableComposition *)self exportOperation];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
LABEL_11:

  return v16;
}

- (BOOL)hasMultipleTracks
{
  v2 = [(RCShareableComposition *)self composition];
  v3 = [v2 hasMultipleTracks];

  return v3;
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

+ (void)_accessRecording:(id)a3 withBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[RCApplicationContainer sharedContainer];
  v8 = [v7 newBackgroundModel];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C5444;
  v12[3] = &unk_10028A538;
  v13 = v8;
  v14 = v5;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  v11 = v8;
  [v11 performBlockAndWait:v12];
}

- (void)_copyResourcesForRecording:(id)a3 toDirectory:(id)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C5578;
  v9[3] = &unk_10028C898;
  v10 = a4;
  v11 = a5;
  v7 = v10;
  v8 = v11;
  [RCShareableComposition _accessRecording:a3 withBlock:v9];
}

- (void)_renderRecording:(id)a3 toDirectory:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(_TtC10VoiceMemos31EffectsRendererSettingsProvider);
  [(RCShareMemoExporter *)self->exporter renderRecordingWithId:v10 intoDirectory:v9 with:v11 completionHandler:v8];
}

- (void)_splitTracksForRecording:(id)a3 toDirectory:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(_TtC10VoiceMemos34TrackSplitRendererSettingsProvider);
  [(RCShareMemoExporter *)self->exporter splitMultitrackRecordingWithId:v10 intoDirectory:v9 with:v11 completionHandler:v8];
}

- (void)_attachSharingMetadataToRecording:(id)a3 atURL:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(_TtC10VoiceMemos31EffectsRendererSettingsProvider);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000C593C;
  v18 = &unk_10028C8C0;
  v19 = v8;
  v20 = v9;
  v12 = v9;
  v13 = v8;
  v14 = objc_retainBlock(&v15);
  [(RCShareMemoExporter *)self->exporter attachMetadataToRecordingAtURL:v13 withId:v10 with:v11 completionHandler:v14, v15, v16, v17, v18];
}

- (id)_subjectForActivityType:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000C5B70;
  v18 = sub_1000C5B80;
  v19 = 0;
  v5 = objc_opt_class();
  v6 = [(RCShareableComposition *)self composition];
  v7 = [v6 savedRecordingUUID];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C5B88;
  v11[3] = &unk_10028C8E8;
  v13 = &v14;
  v8 = v4;
  v12 = v8;
  [v5 _accessRecording:v7 withBlock:v11];

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
  v2 = [(RCShareableComposition *)self composition];
  v3 = [v2 composedAVURL];
  v4 = [v3 pathExtension];

  if (v4)
  {
    v5 = [RCCaptureFormat AVFileTypeIdentifierForFileExtension:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end