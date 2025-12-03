@interface PUEditingInitialPayload
- (PUEditingInitialPayload)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setLivePhotoStillDisplayTime:(id *)time;
@end

@implementation PUEditingInitialPayload

- (void)setLivePhotoStillDisplayTime:(id *)time
{
  v3 = *&time->var0;
  self->_livePhotoStillDisplayTime.epoch = time->var3;
  *&self->_livePhotoStillDisplayTime.value = v3;
}

- (void)encodeWithCoder:(id)coder
{
  mediaType = self->_mediaType;
  coderCopy = coder;
  [coderCopy encodeInteger:mediaType forKey:@"mediaType"];
  [coderCopy encodeInteger:self->_mediaSubtypes forKey:@"mediaSubtypes"];
  [coderCopy encodeInteger:self->_playbackStyle forKey:@"playbackStyle"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_adjustmentData forKey:@"adjustmentData"];
  [coderCopy encodeInteger:self->_adjustmentBaseVersion forKey:@"adjustmentBaseVersion"];
  [coderCopy encodeObject:self->_placeholderImageData forKey:@"placeholderImageData"];
  [coderCopy encodeObject:self->_displaySizeImageData forKey:@"displaySizeImageData"];
  [coderCopy encodeObject:self->_videoURL forKey:@"videoURL"];
  [coderCopy encodeObject:self->_videoPathSandboxExtensionToken forKey:@"videoPathSandboxExtensionToken"];
  [coderCopy encodeInt64:self->_livePhotoStillDisplayTime.value forKey:@"livePhotoStillDisplayTime.value"];
  [coderCopy encodeInt32:self->_livePhotoStillDisplayTime.timescale forKey:@"livePhotoStillDisplayTime.timescale"];
  [coderCopy encodeInt32:self->_livePhotoStillDisplayTime.flags forKey:@"livePhotoStillDisplayTime.flags"];
  [coderCopy encodeInt64:self->_livePhotoStillDisplayTime.epoch forKey:@"livePhotoStillDisplayTime.epoch"];
  [coderCopy encodeObject:self->_uniformTypeIdentifier forKey:@"uniformTypeIdentifier"];
  [coderCopy encodeObject:self->_fullSizeImageURL forKey:@"fullSizeImageURL"];
  [coderCopy encodeObject:self->_fullSizeImageURLSandboxExtensionToken forKey:@"fullSizeImageURLSandboxExtensionToken"];
  [coderCopy encodeInt:self->_fullSizeImageExifOrientation forKey:@"fullSizeImageExifOrientation"];
  [coderCopy encodeObject:self->_accessibilityDescription forKey:@"accessibilityDescription"];
}

- (PUEditingInitialPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = PUEditingInitialPayload;
  v5 = [(PUEditingInitialPayload *)&v30 init];
  if (v5)
  {
    *(v5 + 2) = [coderCopy decodeIntegerForKey:@"mediaType"];
    *(v5 + 3) = [coderCopy decodeIntegerForKey:@"mediaSubtypes"];
    *(v5 + 4) = [coderCopy decodeIntegerForKey:@"playbackStyle"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    v7 = *(v5 + 5);
    *(v5 + 5) = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    v9 = *(v5 + 6);
    *(v5 + 6) = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adjustmentData"];
    v11 = *(v5 + 7);
    *(v5 + 7) = v10;

    *(v5 + 8) = [coderCopy decodeIntegerForKey:@"adjustmentBaseVersion"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderImageData"];
    v13 = *(v5 + 9);
    *(v5 + 9) = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displaySizeImageData"];
    v15 = *(v5 + 10);
    *(v5 + 10) = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"videoURL"];
    v17 = *(v5 + 11);
    *(v5 + 11) = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"videoPathSandboxExtensionToken"];
    v19 = *(v5 + 12);
    *(v5 + 12) = v18;

    CMTimeMake(&v29, [coderCopy decodeInt64ForKey:@"livePhotoStillDisplayTime.value"], objc_msgSend(coderCopy, "decodeInt32ForKey:", @"livePhotoStillDisplayTime.timescale"));
    *(v5 + 136) = v29;
    *(v5 + 37) = [coderCopy decodeInt32ForKey:@"livePhotoStillDisplayTime.flags"];
    *(v5 + 19) = [coderCopy decodeInt64ForKey:@"livePhotoStillDisplayTime.epoch"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniformTypeIdentifier"];
    v21 = *(v5 + 16);
    *(v5 + 16) = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullSizeImageURL"];
    v23 = *(v5 + 13);
    *(v5 + 13) = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullSizeImageURLSandboxExtensionToken"];
    v25 = *(v5 + 14);
    *(v5 + 14) = v24;

    *(v5 + 2) = [coderCopy decodeIntForKey:@"fullSizeImageExifOrientation"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityDescription"];
    v27 = *(v5 + 15);
    *(v5 + 15) = v26;
  }

  return v5;
}

@end