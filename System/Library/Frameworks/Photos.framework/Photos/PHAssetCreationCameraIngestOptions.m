@interface PHAssetCreationCameraIngestOptions
+ (id)optionsFromXPCDict:(id)a3;
- (PHAssetCreationCameraIngestOptions)initWithCameraMetadataPath:(id)a3 isCameraRearFacing:(BOOL)a4 isExpectingPairedVideo:(BOOL)a5 finalAssetHeight:(double)a6 finalAssetWidth:(double)a7 dbgFilePath:(id)a8 previewImgSurfaceRef:(void *)a9 creationDate:(id)a10 jobType:(id)a11 placeholderHeight:(double)a12 placeholderWidth:(double)a13 previewImageData:(id)a14 deferredIdentifier:(id)a15 captureID:(id)a16 sharingRestriction:(unsigned __int16)a17;
- (PHAssetCreationCameraIngestOptions)initWithCoder:(id)a3;
- (PHAssetCreationCameraIngestOptions)initWithXPCDict:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromJobDictionary:(id)a3 withPreviewImgSurfaceRef:(__IOSurface *)a4;
- (void)dealloc;
- (void)encodeToXPCDict:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHAssetCreationCameraIngestOptions

- (void)dealloc
{
  previewImgSurfaceRef = self->_previewImgSurfaceRef;
  if (previewImgSurfaceRef)
  {
    CFRelease(previewImgSurfaceRef);
    self->_previewImgSurfaceRef = 0;
  }

  v4.receiver = self;
  v4.super_class = PHAssetCreationCameraIngestOptions;
  [(PHAssetCreationCameraIngestOptions *)&v4 dealloc];
}

- (PHAssetCreationCameraIngestOptions)initWithXPCDict:(id)a3
{
  v4 = xpc_dictionary_get_value(a3, "cameraIngestOptions");
  v5 = v4;
  if (v4)
  {
    length = 0;
    data = xpc_dictionary_get_data(v4, "previewImageData", &length);
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:length];
    v8 = PLStringFromXPCDictionary();
    v24 = xpc_dictionary_get_BOOL(v5, "isRearFacingCamera");
    v23 = xpc_dictionary_get_BOOL(v5, "isExpectingPairedVideo");
    v9 = xpc_dictionary_get_double(v5, "assetFinalHeight");
    v10 = xpc_dictionary_get_double(v5, "assetFinalWidth");
    v11 = PLStringFromXPCDictionary();
    v12 = PLCreateIOSurfaceFromXPCDictionary();
    v13 = PLDateFromXPCDictionary();
    v14 = PLStringFromXPCDictionary();
    v15 = xpc_dictionary_get_double(v5, "placeholderHeight");
    v16 = xpc_dictionary_get_double(v5, "placeholderWidth");
    v17 = PLStringFromXPCDictionary();
    v18 = PLStringFromXPCDictionary();
    LOWORD(v22) = xpc_dictionary_get_int64(v5, "sharingRestriction");
    self = [(PHAssetCreationCameraIngestOptions *)self initWithCameraMetadataPath:v8 isCameraRearFacing:v24 isExpectingPairedVideo:v23 finalAssetHeight:v11 finalAssetWidth:v12 dbgFilePath:v13 previewImgSurfaceRef:v9 creationDate:v10 jobType:v15 placeholderHeight:v16 placeholderWidth:v14 previewImageData:v7 deferredIdentifier:v17 captureID:v18 sharingRestriction:v22];

    [(PHAssetCreationCameraIngestOptions *)self setCandidateOptions:xpc_dictionary_get_int64(v5, "processingCandidateOption")];
    v19 = PLStringFromXPCDictionary();
    [(PHAssetCreationCameraIngestOptions *)self setPortraitEffectFilterName:v19];

    v20 = PLStringFromXPCDictionary();
    [(PHAssetCreationCameraIngestOptions *)self setBackupAdjustmentsFile:v20];
  }

  return self;
}

- (PHAssetCreationCameraIngestOptions)initWithCoder:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v46 = [v3 stringWithUTF8String:"cameraMetadataPath"];
  v30 = [v4 decodeObjectForKey:v46];
  v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"isRearFacingCamera"];
  v35 = [v4 decodeBoolForKey:v45];
  v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"isExpectingPairedVideo"];
  v38 = [v4 decodeBoolForKey:v44];
  v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetFinalHeight"];
  [v4 decodeDoubleForKey:v43];
  v6 = v5;
  v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetFinalWidth"];
  [v4 decodeDoubleForKey:v42];
  v8 = v7;
  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"dbgPath"];
  v34 = [v4 decodeObjectForKey:v40];
  v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"previewImgSurfaceRef"];
  v33 = [v4 decodeObjectForKey:v39];
  v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"creationDate"];
  v9 = [v4 decodeObjectForKey:v37];
  v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"jobType"];
  v28 = [v4 decodeObjectForKey:v36];
  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"placeholderHeight"];
  [v4 decodeDoubleForKey:v32];
  v11 = v10;
  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"placeholderWidth"];
  [v4 decodeDoubleForKey:v31];
  v13 = v12;
  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"previewImageData"];
  v14 = [v4 decodeObjectForKey:v29];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"deferredPhotoIdentifier"];
  v16 = [v4 decodeObjectForKey:v15];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"captureID"];
  v18 = [v4 decodeObjectForKey:v17];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sharingRestriction"];
  LOWORD(v27) = [v4 decodeIntForKey:v19];
  v20 = [(PHAssetCreationCameraIngestOptions *)self initWithCameraMetadataPath:v30 isCameraRearFacing:v35 isExpectingPairedVideo:v38 finalAssetHeight:v34 finalAssetWidth:v33 dbgFilePath:v9 previewImgSurfaceRef:v6 creationDate:v8 jobType:v11 placeholderHeight:v13 placeholderWidth:v28 previewImageData:v14 deferredIdentifier:v16 captureID:v18 sharingRestriction:v27];

  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"processingCandidateOption"];
  -[PHAssetCreationCameraIngestOptions setCandidateOptions:](v20, "setCandidateOptions:", [v4 decodeIntForKey:v21]);

  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"portraitEffectFilterName"];
  v23 = [v4 decodeObjectForKey:v22];
  [(PHAssetCreationCameraIngestOptions *)v20 setPortraitEffectFilterName:v23];

  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"backupAdjustmentsFile"];
  v25 = [v4 decodeObjectForKey:v24];

  [(PHAssetCreationCameraIngestOptions *)v20 setBackupAdjustmentsFile:v25];
  return v20;
}

- (void)encodeToXPCDict:(id)a3
{
  v4 = a3;
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v4, "cameraIngestOptions", xdict);

  xpc_dictionary_set_BOOL(xdict, "isRearFacingCamera", self->_isRearFacingCamera);
  xpc_dictionary_set_BOOL(xdict, "isExpectingPairedVideo", self->_isExpectingPairedVideo);
  PLXPCDictionarySetString();
  PLXPCDictionarySetString();
  xpc_dictionary_set_double(xdict, "assetFinalHeight", self->_finalAssetHeight);
  xpc_dictionary_set_double(xdict, "assetFinalWidth", self->_finalAssetWidth);
  xpc_dictionary_set_double(xdict, "placeholderHeight", self->_placeholderHeight);
  xpc_dictionary_set_double(xdict, "placeholderWidth", self->_placeholderWidth);
  PLXPCDictionarySetString();
  PLXPCDictionarySetIOSurface();
  PLXPCDictionarySetDate();
  PLXPCDictionarySetData();
  xpc_dictionary_set_int64(xdict, "processingCandidateOption", self->_candidateOptions);
  PLXPCDictionarySetString();
  PLXPCDictionarySetString();
  PLXPCDictionarySetString();
  PLXPCDictionarySetString();
  xpc_dictionary_set_int64(xdict, "sharingRestriction", self->_sharingRestriction);
}

- (void)encodeWithCoder:(id)a3
{
  isRearFacingCamera = self->_isRearFacingCamera;
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 stringWithUTF8String:"isRearFacingCamera"];
  [v6 encodeBool:isRearFacingCamera forKey:v7];

  isExpectingPairedVideo = self->_isExpectingPairedVideo;
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"isExpectingPairedVideo"];
  [v6 encodeBool:isExpectingPairedVideo forKey:v9];

  jobType = self->_jobType;
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"jobType"];
  [v6 encodeObject:jobType forKey:v11];

  cameraMetadataPath = self->_cameraMetadataPath;
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"cameraMetadataPath"];
  [v6 encodeObject:cameraMetadataPath forKey:v13];

  finalAssetHeight = self->_finalAssetHeight;
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetFinalHeight"];
  [v6 encodeInteger:finalAssetHeight forKey:v15];

  finalAssetWidth = self->_finalAssetWidth;
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetFinalWidth"];
  [v6 encodeInteger:finalAssetWidth forKey:v17];

  placeholderHeight = self->_placeholderHeight;
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"placeholderHeight"];
  [v6 encodeInteger:placeholderHeight forKey:v19];

  placeholderWidth = self->_placeholderWidth;
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"placeholderWidth"];
  [v6 encodeInteger:placeholderWidth forKey:v21];

  dbgFilePath = self->_dbgFilePath;
  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"dbgPath"];
  [v6 encodeObject:dbgFilePath forKey:v23];

  previewImgSurfaceRef = self->_previewImgSurfaceRef;
  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"previewImgSurfaceRef"];
  [v6 encodeObject:previewImgSurfaceRef forKey:v25];

  creationDate = self->_creationDate;
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"creationDate"];
  [v6 encodeObject:creationDate forKey:v27];

  previewImageData = self->_previewImageData;
  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"previewImageData"];
  [v6 encodeObject:previewImageData forKey:v29];

  candidateOptions = self->_candidateOptions;
  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"processingCandidateOption"];
  [v6 encodeInt:candidateOptions forKey:v31];

  deferredPhotoIdentifier = self->_deferredPhotoIdentifier;
  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"deferredPhotoIdentifier"];
  [v6 encodeObject:deferredPhotoIdentifier forKey:v33];

  portraitEffectFilterName = self->_portraitEffectFilterName;
  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"portraitEffectFilterName"];
  [v6 encodeObject:portraitEffectFilterName forKey:v35];

  captureID = self->_captureID;
  v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"captureID"];
  [v6 encodeObject:captureID forKey:v37];

  backupAdjustmentsFile = self->_backupAdjustmentsFile;
  v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"backupAdjustmentsFile"];
  [v6 encodeObject:backupAdjustmentsFile forKey:v39];

  sharingRestriction = self->_sharingRestriction;
  v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sharingRestriction"];
  [v6 encodeInteger:sharingRestriction forKey:v41];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PHAssetCreationCameraIngestOptions alloc];
  LOWORD(v7) = self->_sharingRestriction;
  v5 = [(PHAssetCreationCameraIngestOptions *)v4 initWithCameraMetadataPath:self->_cameraMetadataPath isCameraRearFacing:self->_isRearFacingCamera isExpectingPairedVideo:self->_isExpectingPairedVideo finalAssetHeight:self->_dbgFilePath finalAssetWidth:self->_previewImgSurfaceRef dbgFilePath:self->_creationDate previewImgSurfaceRef:self->_finalAssetHeight creationDate:self->_finalAssetWidth jobType:self->_placeholderHeight placeholderHeight:self->_placeholderWidth placeholderWidth:self->_jobType previewImageData:self->_previewImageData deferredIdentifier:self->_deferredPhotoIdentifier captureID:self->_captureID sharingRestriction:v7];
  [(PHAssetCreationCameraIngestOptions *)v5 setCandidateOptions:self->_candidateOptions];
  [(PHAssetCreationCameraIngestOptions *)v5 setBackupAdjustmentsFile:self->_backupAdjustmentsFile];
  return v5;
}

- (id)initFromJobDictionary:(id)a3 withPreviewImgSurfaceRef:(__IOSurface *)a4
{
  v4 = a3;
  v5 = *MEMORY[0x1E69C0370];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0370]];
  if (!v6)
  {
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C03C8]];
    v6 = [v7 objectForKeyedSubscript:v5];
  }

  v28 = v6;
  v26 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0378]];
  v32 = [v6 BOOLValue];
  v35 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C04F0]];
  v8 = [v35 BOOLValue];
  v34 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C03E0]];
  [v34 floatValue];
  v10 = v9;
  v33 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C03F0]];
  [v33 floatValue];
  v12 = v11;
  v29 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C04D0]];
  v27 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0398]];
  v13 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
  v30 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0530]];
  [v30 floatValue];
  v15 = v14;
  v16 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0538]];
  [v16 floatValue];
  v18 = v17;
  v19 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0540]];
  v20 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C03B0]];
  v21 = [v4 objectForKeyedSubscript:@"captureLogID"];
  v22 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0560]];
  LOWORD(v25) = [v22 integerValue];
  v23 = [(PHAssetCreationCameraIngestOptions *)self initWithCameraMetadataPath:v26 isCameraRearFacing:v32 isExpectingPairedVideo:v8 finalAssetHeight:v29 finalAssetWidth:a4 dbgFilePath:v27 previewImgSurfaceRef:v10 creationDate:v12 jobType:v15 placeholderHeight:v18 placeholderWidth:v13 previewImageData:v19 deferredIdentifier:v20 captureID:v21 sharingRestriction:v25];

  return v23;
}

- (PHAssetCreationCameraIngestOptions)initWithCameraMetadataPath:(id)a3 isCameraRearFacing:(BOOL)a4 isExpectingPairedVideo:(BOOL)a5 finalAssetHeight:(double)a6 finalAssetWidth:(double)a7 dbgFilePath:(id)a8 previewImgSurfaceRef:(void *)a9 creationDate:(id)a10 jobType:(id)a11 placeholderHeight:(double)a12 placeholderWidth:(double)a13 previewImageData:(id)a14 deferredIdentifier:(id)a15 captureID:(id)a16 sharingRestriction:(unsigned __int16)a17
{
  v37 = a3;
  v36 = a8;
  v35 = a10;
  v34 = a11;
  v33 = a14;
  v32 = a15;
  v26 = a16;
  v38.receiver = self;
  v38.super_class = PHAssetCreationCameraIngestOptions;
  v27 = [(PHAssetCreationCameraIngestOptions *)&v38 init];
  if (v27)
  {
    if (a9)
    {
      v27->_previewImgSurfaceRef = CFRetain(a9);
    }

    v27->_isRearFacingCamera = a4;
    objc_storeStrong(&v27->_cameraMetadataPath, a3);
    v27->_finalAssetHeight = a6;
    v27->_finalAssetWidth = a7;
    objc_storeStrong(&v27->_dbgFilePath, a8);
    objc_storeStrong(&v27->_creationDate, a10);
    objc_storeStrong(&v27->_jobType, a11);
    v27->_placeholderHeight = a12;
    v27->_placeholderWidth = a13;
    objc_storeStrong(&v27->_previewImageData, a14);
    v27->_candidateOptions = 0;
    objc_storeStrong(&v27->_deferredPhotoIdentifier, a15);
    objc_storeStrong(&v27->_captureID, a16);
    v27->_isExpectingPairedVideo = a5;
    backupAdjustmentsFile = v27->_backupAdjustmentsFile;
    v27->_backupAdjustmentsFile = 0;

    v27->_sharingRestriction = a17;
  }

  return v27;
}

+ (id)optionsFromXPCDict:(id)a3
{
  v3 = a3;
  v4 = xpc_dictionary_get_value(v3, "cameraIngestOptions");

  if (v4)
  {
    v4 = [[PHAssetCreationCameraIngestOptions alloc] initWithXPCDict:v3];
  }

  return v4;
}

@end