@interface PHAssetPhotosInfoPanelExtendedProperties
+ (id)propertiesToFetch;
- (PHAssetPhotosInfoPanelExtendedProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetPhotosInfoPanelExtendedProperties

- (PHAssetPhotosInfoPanelExtendedProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  if (dictionaryCopy && (v134.receiver = self, v134.super_class = PHAssetPhotosInfoPanelExtendedProperties, v10 = [(PHAssetPhotosInfoPanelExtendedProperties *)&v134 init], (self = v10) != 0))
  {
    v133 = assetCopy;
    objc_storeWeak(&v10->super._asset, assetCopy);
    v11 = !prefetchedCopy;
    if (prefetchedCopy)
    {
      v12 = @"extendedAttributes.cameraMake";
    }

    else
    {
      v12 = @"cameraMake";
    }

    if (prefetchedCopy)
    {
      v13 = @"extendedAttributes.cameraModel";
    }

    else
    {
      v13 = @"cameraModel";
    }

    if (v11)
    {
      v14 = @"lensModel";
    }

    else
    {
      v14 = @"extendedAttributes.lensModel";
    }

    if (v11)
    {
      v15 = @"flashFired";
    }

    else
    {
      v15 = @"extendedAttributes.flashFired";
    }

    if (v11)
    {
      v16 = @"whiteBalance";
    }

    else
    {
      v16 = @"extendedAttributes.whiteBalance";
    }

    if (v11)
    {
      v17 = @"meteringMode";
    }

    else
    {
      v17 = @"extendedAttributes.meteringMode";
    }

    if (v11)
    {
      v18 = @"iso";
    }

    else
    {
      v18 = @"extendedAttributes.iso";
    }

    if (v11)
    {
      v19 = @"focalLength";
    }

    else
    {
      v19 = @"extendedAttributes.focalLength";
    }

    if (v11)
    {
      v20 = @"focalLengthIn35mm";
    }

    else
    {
      v20 = @"extendedAttributes.focalLengthIn35mm";
    }

    v102 = v20;
    if (v11)
    {
      v21 = @"exposureBias";
    }

    else
    {
      v21 = @"extendedAttributes.exposureBias";
    }

    v22 = @"aperture";
    if (!v11)
    {
      v22 = @"extendedAttributes.aperture";
    }

    v104 = v21;
    v106 = v22;
    if (v11)
    {
      v23 = @"shutterSpeed";
    }

    else
    {
      v23 = @"extendedAttributes.shutterSpeed";
    }

    v24 = @"extendedAttributes.codec";
    if (v11)
    {
      v24 = @"codec";
    }

    v108 = v23;
    v110 = v24;
    v25 = @"fps";
    if (!v11)
    {
      v25 = @"extendedAttributes.fps";
    }

    v112 = v25;
    if (v11)
    {
      v26 = @"duration";
    }

    else
    {
      v26 = @"extendedAttributes.duration";
    }

    v114 = v26;
    if (v11)
    {
      v27 = @"sampleRate";
    }

    else
    {
      v27 = @"extendedAttributes.sampleRate";
    }

    v28 = @"bitrate";
    if (!v11)
    {
      v28 = @"extendedAttributes.bitrate";
    }

    v116 = v27;
    v118 = v28;
    if (v11)
    {
      v29 = @"trackFormat";
    }

    else
    {
      v29 = @"extendedAttributes.trackFormat";
    }

    v30 = @"extendedAttributes.slushPreset";
    if (v11)
    {
      v30 = @"slushPreset";
    }

    v120 = v29;
    v122 = v30;
    v31 = @"digitalZoomRatio";
    if (!v11)
    {
      v31 = @"extendedAttributes.digitalZoomRatio";
    }

    v123 = v31;
    if (v11)
    {
      v32 = @"dateCreated";
    }

    else
    {
      v32 = @"extendedAttributes.dateCreated";
    }

    v124 = v32;
    v33 = @"timezoneOffset";
    if (!v11)
    {
      v33 = @"extendedAttributes.timezoneOffset";
    }

    v126 = v33;
    v34 = @"timezoneName";
    if (!v11)
    {
      v34 = @"extendedAttributes.timezoneName";
    }

    v128 = v34;
    v35 = @"generativeAIType";
    if (!v11)
    {
      v35 = @"extendedAttributes.generativeAIType";
    }

    v130 = v35;
    v36 = @"extendedAttributes.credit";
    if (v11)
    {
      v36 = @"credit";
    }

    v132 = v36;
    v37 = [dictionaryCopy objectForKeyedSubscript:v12];
    cameraMake = self->_cameraMake;
    self->_cameraMake = v37;

    v131 = self->_cameraMake;
    v39 = [dictionaryCopy objectForKeyedSubscript:v13];
    cameraModel = self->_cameraModel;
    self->_cameraModel = v39;

    v129 = self->_cameraModel;
    v41 = [dictionaryCopy objectForKeyedSubscript:v14];
    lensModel = self->_lensModel;
    self->_lensModel = v41;

    v127 = self->_lensModel;
    v43 = [dictionaryCopy objectForKeyedSubscript:v15];
    flashFired = self->_flashFired;
    self->_flashFired = v43;

    v125 = self->_flashFired;
    v45 = [dictionaryCopy objectForKeyedSubscript:v16];
    whiteBalance = self->_whiteBalance;
    self->_whiteBalance = v45;

    v101 = self->_whiteBalance;
    v47 = [dictionaryCopy objectForKeyedSubscript:v17];
    meteringMode = self->_meteringMode;
    self->_meteringMode = v47;

    v100 = self->_meteringMode;
    v49 = [dictionaryCopy objectForKeyedSubscript:v18];
    iso = self->_iso;
    self->_iso = v49;

    v99 = self->_iso;
    v51 = [dictionaryCopy objectForKeyedSubscript:v19];
    focalLength = self->_focalLength;
    self->_focalLength = v51;

    v98 = self->_focalLength;
    v53 = [dictionaryCopy objectForKeyedSubscript:v102];
    focalLengthIn35mm = self->_focalLengthIn35mm;
    self->_focalLengthIn35mm = v53;

    v103 = self->_focalLengthIn35mm;
    v55 = [dictionaryCopy objectForKeyedSubscript:v104];
    exposureBias = self->_exposureBias;
    self->_exposureBias = v55;

    v105 = self->_exposureBias;
    v57 = [dictionaryCopy objectForKeyedSubscript:v106];
    aperture = self->_aperture;
    self->_aperture = v57;

    v107 = self->_aperture;
    v59 = [dictionaryCopy objectForKeyedSubscript:v108];
    shutterSpeed = self->_shutterSpeed;
    self->_shutterSpeed = v59;

    v109 = self->_shutterSpeed;
    v61 = [dictionaryCopy objectForKeyedSubscript:v110];
    codec = self->_codec;
    self->_codec = v61;

    v111 = self->_codec;
    v63 = [dictionaryCopy objectForKeyedSubscript:v112];
    fps = self->_fps;
    self->_fps = v63;

    v113 = self->_fps;
    v65 = [dictionaryCopy objectForKeyedSubscript:v114];
    duration = self->_duration;
    self->_duration = v65;

    v115 = self->_duration;
    v67 = [dictionaryCopy objectForKeyedSubscript:v116];
    sampleRate = self->_sampleRate;
    self->_sampleRate = v67;

    v117 = self->_sampleRate;
    v69 = [dictionaryCopy objectForKeyedSubscript:v118];
    bitrate = self->_bitrate;
    self->_bitrate = v69;

    v119 = self->_bitrate;
    v71 = [dictionaryCopy objectForKeyedSubscript:v120];
    trackFormat = self->_trackFormat;
    self->_trackFormat = v71;

    v121 = self->_trackFormat;
    v73 = [MEMORY[0x1E69C0708] formattedCameraModelFromCameraModel:self->_cameraModel cameraMake:self->_cameraMake];
    formattedCameraModel = self->_formattedCameraModel;
    self->_formattedCameraModel = v73;

    v75 = self->_formattedCameraModel;
    v76 = [dictionaryCopy objectForKeyedSubscript:v122];
    semanticStylePreset = self->_semanticStylePreset;
    self->_semanticStylePreset = v76;

    v78 = self->_semanticStylePreset;
    v79 = [dictionaryCopy objectForKeyedSubscript:v123];
    digitalZoomRatio = self->_digitalZoomRatio;
    self->_digitalZoomRatio = v79;

    v81 = self->_digitalZoomRatio;
    v82 = [dictionaryCopy objectForKeyedSubscript:v124];
    dateCreated = self->_dateCreated;
    self->_dateCreated = v82;

    v84 = self->_dateCreated;
    v85 = [dictionaryCopy objectForKeyedSubscript:v126];
    timezoneOffset = self->_timezoneOffset;
    self->_timezoneOffset = v85;

    v87 = self->_timezoneOffset;
    v88 = [dictionaryCopy objectForKeyedSubscript:v128];
    timezoneName = self->_timezoneName;
    self->_timezoneName = v88;

    v90 = self->_timezoneName;
    v91 = [dictionaryCopy objectForKeyedSubscript:v130];
    generativeAIType = self->_generativeAIType;
    self->_generativeAIType = v91;

    v93 = self->_generativeAIType;
    v94 = [dictionaryCopy objectForKeyedSubscript:v132];
    credit = self->_credit;
    self->_credit = v94;

    if (v131 || v129 || v127 || v125 || v101 || v100 || v99 || v98 || v103 || v105 || v107 || v109 || v111 || v113 || v115 || v117 || v119 || v121 || v75 || v78 || v81 || v84 || v87 || v90 || v93 || self->_credit)
    {
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    assetCopy = v133;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_45;

  return v2;
}

void __61__PHAssetPhotosInfoPanelExtendedProperties_propertiesToFetch__block_invoke()
{
  v3[25] = *MEMORY[0x1E69E9840];
  v3[0] = @"cameraMake";
  v3[1] = @"cameraModel";
  v3[2] = @"lensModel";
  v3[3] = @"flashFired";
  v3[4] = @"whiteBalance";
  v3[5] = @"meteringMode";
  v3[6] = @"iso";
  v3[7] = @"focalLength";
  v3[8] = @"focalLengthIn35mm";
  v3[9] = @"exposureBias";
  v3[10] = @"aperture";
  v3[11] = @"shutterSpeed";
  v3[12] = @"codec";
  v3[13] = @"fps";
  v3[14] = @"duration";
  v3[15] = @"sampleRate";
  v3[16] = @"bitrate";
  v3[17] = @"trackFormat";
  v3[18] = @"slushPreset";
  v3[19] = @"digitalZoomRatio";
  v3[20] = @"dateCreated";
  v3[21] = @"timezoneOffset";
  v3[22] = @"timezoneName";
  v3[23] = @"generativeAIType";
  v3[24] = @"credit";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:25];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_45;
  propertiesToFetch_pl_once_object_45 = v1;
}

@end