@interface PUEditingInitialPayload
- (PUEditingInitialPayload)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setLivePhotoStillDisplayTime:(id *)a3;
@end

@implementation PUEditingInitialPayload

- (void)setLivePhotoStillDisplayTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_livePhotoStillDisplayTime.epoch = a3->var3;
  *&self->_livePhotoStillDisplayTime.value = v3;
}

- (void)encodeWithCoder:(id)a3
{
  mediaType = self->_mediaType;
  v5 = a3;
  [v5 encodeInteger:mediaType forKey:@"mediaType"];
  [v5 encodeInteger:self->_mediaSubtypes forKey:@"mediaSubtypes"];
  [v5 encodeInteger:self->_playbackStyle forKey:@"playbackStyle"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_location forKey:@"location"];
  [v5 encodeObject:self->_adjustmentData forKey:@"adjustmentData"];
  [v5 encodeInteger:self->_adjustmentBaseVersion forKey:@"adjustmentBaseVersion"];
  [v5 encodeObject:self->_placeholderImageData forKey:@"placeholderImageData"];
  [v5 encodeObject:self->_displaySizeImageData forKey:@"displaySizeImageData"];
  [v5 encodeObject:self->_videoURL forKey:@"videoURL"];
  [v5 encodeObject:self->_videoPathSandboxExtensionToken forKey:@"videoPathSandboxExtensionToken"];
  [v5 encodeInt64:self->_livePhotoStillDisplayTime.value forKey:@"livePhotoStillDisplayTime.value"];
  [v5 encodeInt32:self->_livePhotoStillDisplayTime.timescale forKey:@"livePhotoStillDisplayTime.timescale"];
  [v5 encodeInt32:self->_livePhotoStillDisplayTime.flags forKey:@"livePhotoStillDisplayTime.flags"];
  [v5 encodeInt64:self->_livePhotoStillDisplayTime.epoch forKey:@"livePhotoStillDisplayTime.epoch"];
  [v5 encodeObject:self->_uniformTypeIdentifier forKey:@"uniformTypeIdentifier"];
  [v5 encodeObject:self->_fullSizeImageURL forKey:@"fullSizeImageURL"];
  [v5 encodeObject:self->_fullSizeImageURLSandboxExtensionToken forKey:@"fullSizeImageURLSandboxExtensionToken"];
  [v5 encodeInt:self->_fullSizeImageExifOrientation forKey:@"fullSizeImageExifOrientation"];
  [v5 encodeObject:self->_accessibilityDescription forKey:@"accessibilityDescription"];
}

- (PUEditingInitialPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PUEditingInitialPayload;
  v5 = [(PUEditingInitialPayload *)&v30 init];
  if (v5)
  {
    *(v5 + 2) = [v4 decodeIntegerForKey:@"mediaType"];
    *(v5 + 3) = [v4 decodeIntegerForKey:@"mediaSubtypes"];
    *(v5 + 4) = [v4 decodeIntegerForKey:@"playbackStyle"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    v7 = *(v5 + 5);
    *(v5 + 5) = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    v9 = *(v5 + 6);
    *(v5 + 6) = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adjustmentData"];
    v11 = *(v5 + 7);
    *(v5 + 7) = v10;

    *(v5 + 8) = [v4 decodeIntegerForKey:@"adjustmentBaseVersion"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderImageData"];
    v13 = *(v5 + 9);
    *(v5 + 9) = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displaySizeImageData"];
    v15 = *(v5 + 10);
    *(v5 + 10) = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"videoURL"];
    v17 = *(v5 + 11);
    *(v5 + 11) = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"videoPathSandboxExtensionToken"];
    v19 = *(v5 + 12);
    *(v5 + 12) = v18;

    CMTimeMake(&v29, [v4 decodeInt64ForKey:@"livePhotoStillDisplayTime.value"], objc_msgSend(v4, "decodeInt32ForKey:", @"livePhotoStillDisplayTime.timescale"));
    *(v5 + 136) = v29;
    *(v5 + 37) = [v4 decodeInt32ForKey:@"livePhotoStillDisplayTime.flags"];
    *(v5 + 19) = [v4 decodeInt64ForKey:@"livePhotoStillDisplayTime.epoch"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniformTypeIdentifier"];
    v21 = *(v5 + 16);
    *(v5 + 16) = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullSizeImageURL"];
    v23 = *(v5 + 13);
    *(v5 + 13) = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullSizeImageURLSandboxExtensionToken"];
    v25 = *(v5 + 14);
    *(v5 + 14) = v24;

    *(v5 + 2) = [v4 decodeIntForKey:@"fullSizeImageExifOrientation"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityDescription"];
    v27 = *(v5 + 15);
    *(v5 + 15) = v26;
  }

  return v5;
}

@end