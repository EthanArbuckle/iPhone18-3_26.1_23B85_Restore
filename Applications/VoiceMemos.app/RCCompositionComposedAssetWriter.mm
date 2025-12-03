@interface RCCompositionComposedAssetWriter
- (RCCompositionComposedAssetWriter)initWithCompositionAsset:(id)asset metadata:(id)metadata;
- (float)progress;
- (void)writeCompositionWithCompletionBlock:(id)block;
@end

@implementation RCCompositionComposedAssetWriter

- (RCCompositionComposedAssetWriter)initWithCompositionAsset:(id)asset metadata:(id)metadata
{
  assetCopy = asset;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = RCCompositionComposedAssetWriter;
  v9 = [(RCCompositionComposedAssetWriter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_compositionAsset, asset);
    objc_storeStrong(&v10->_metadata, metadata);
  }

  return v10;
}

- (float)progress
{
  exportSession = self->_exportSession;
  if (!exportSession)
  {
    return 0.0;
  }

  [(AVAssetExportSession *)exportSession progress];
  return result;
}

- (void)writeCompositionWithCompletionBlock:(id)block
{
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = sub_10007991C;
  v105 = sub_10007992C;
  v106 = 0;
  v98[0] = _NSConcreteStackBlock;
  v98[1] = 3221225472;
  v98[2] = sub_100079934;
  v98[3] = &unk_10028B6C8;
  blockCopy = block;
  v99 = blockCopy;
  v100 = &v101;
  v51 = objc_retainBlock(v98);
  v3 = objc_opt_new();
  [(AVComposition *)self->_compositionAsset tracks];
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  obj = v95 = 0u;
  v4 = [obj countByEnumeratingWithState:&v94 objects:v111 count:16];
  if (v4)
  {
    v5 = *v95;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v95 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v94 + 1) + 8 * i);
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        segments = [v7 segments];
        v9 = [segments countByEnumeratingWithState:&v90 objects:v110 count:16];
        if (v9)
        {
          v10 = *v91;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v91 != v10)
              {
                objc_enumerationMutation(segments);
              }

              v12 = *(*(&v90 + 1) + 8 * j);
              sourceURL = [v12 sourceURL];
              v14 = sourceURL == 0;

              if (!v14)
              {
                sourceURL2 = [v12 sourceURL];
                [v3 addObject:sourceURL2];
              }
            }

            v9 = [segments countByEnumeratingWithState:&v90 objects:v110 count:16];
          }

          while (v9);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v94 objects:v111 count:16];
    }

    while (v4);
  }

  v56 = [obj count] > 1;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = sub_10007991C;
  v88 = sub_10007992C;
  v89 = AVAssetExportPresetAppleM4A;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v52 = v3;
  v16 = [v52 countByEnumeratingWithState:&v80 objects:v109 count:16];
  v49 = RCAudioFileExtensionQTA;
  if (v16)
  {
    v50 = *v81;
    v17 = AVAssetExportPresetVoiceMemoALAC;
    do
    {
      v47 = v16;
      v18 = 0;
      do
      {
        if (*v81 != v50)
        {
          objc_enumerationMutation(v52);
        }

        v19 = *(*(&v80 + 1) + 8 * v18);
        v54 = v18;
        if (v56)
        {
          v56 = 1;
        }

        else
        {
          pathExtension = [v19 pathExtension];
          v56 = [pathExtension isEqualToString:v49];
        }

        v21 = [AVURLAsset assetWithURL:v19];
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v53 = v21;
        rc_audioTracks = [v21 rc_audioTracks];
        v23 = [rc_audioTracks countByEnumeratingWithState:&v76 objects:v108 count:16];
        if (v23)
        {
          v24 = *v77;
          do
          {
            for (k = 0; k != v23; k = k + 1)
            {
              if (*v77 != v24)
              {
                objc_enumerationMutation(rc_audioTracks);
              }

              v26 = *(*(&v76 + 1) + 8 * k);
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              v75 = 0u;
              formatDescriptions = [v26 formatDescriptions];
              v28 = [formatDescriptions countByEnumeratingWithState:&v72 objects:v107 count:16];
              if (v28)
              {
                v29 = *v73;
                do
                {
                  for (m = 0; m != v28; m = m + 1)
                  {
                    if (*v73 != v29)
                    {
                      objc_enumerationMutation(formatDescriptions);
                    }

                    if (CMFormatDescriptionGetMediaSubType(*(*(&v72 + 1) + 8 * m)) == 1634492771)
                    {
                      objc_storeStrong(v85 + 5, v17);
                    }
                  }

                  v28 = [formatDescriptions countByEnumeratingWithState:&v72 objects:v107 count:16];
                }

                while (v28);
              }
            }

            v23 = [rc_audioTracks countByEnumeratingWithState:&v76 objects:v108 count:16];
          }

          while (v23);
        }

        v18 = v54 + 1;
      }

      while ((v54 + 1) != v47);
      v16 = [v52 countByEnumeratingWithState:&v80 objects:v109 count:16];
    }

    while (v16);
  }

  v31 = RCAudioFileExtensionM4A;
  if (v56)
  {
    v31 = v49;
  }

  v32 = v31;
  v33 = +[NSFileManager defaultManager];
  v34 = RCRecordingsDirectoryURL();
  v71 = 0;
  v35 = [v33 URLForDirectory:99 inDomain:1 appropriateForURL:v34 create:1 error:&v71];
  v36 = v71;
  v37 = v102[5];
  v102[5] = v35;

  v38 = v102[5];
  if (v38)
  {
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x3032000000;
    v69[3] = sub_10007991C;
    v69[4] = sub_10007992C;
    v39 = +[NSUUID UUID];
    uUIDString = [v39 UUIDString];
    v41 = [v38 URLByAppendingPathComponent:uUIDString];
    v70 = [v41 URLByAppendingPathExtension:v32];

    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = sub_10007991C;
    v67 = sub_10007992C;
    v68 = AVFileTypeAppleM4A;
    v42 = v85[5];
    compositionAsset = self->_compositionAsset;
    v44 = v64[5];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100079A34;
    v58[3] = &unk_10028B718;
    v58[4] = self;
    v60 = &v84;
    v61 = &v63;
    v62 = v69;
    v59 = v51;
    [AVAssetExportSession determineCompatibilityOfExportPreset:v42 withAsset:compositionAsset outputFileType:v44 completionHandler:v58];

    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(v69, 8);
  }

  else
  {
    v45 = OSLogForCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      sub_1001B89D4(v36, v45);
    }

    v46 = RCGenericErrorWithUnderlyingError();
    (v51[2])(v51, 0, v46);
  }

  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v101, 8);
}

@end