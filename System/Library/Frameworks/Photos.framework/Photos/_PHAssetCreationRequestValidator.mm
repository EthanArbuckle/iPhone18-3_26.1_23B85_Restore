@interface _PHAssetCreationRequestValidator
- (BOOL)getLivePhotoVideoMetadataFromURL:(id)l videoComplementMetadata:(id)metadata pairingIdentifier:(id *)identifier videoDuration:(id *)duration imageDisplayTime:(id *)time error:(id *)error;
- (PHAssetCreationRequest)assetCreationRequest;
- (_PHAssetCreationRequestValidator)initWithAssetCreationRequest:(id)request;
@end

@implementation _PHAssetCreationRequestValidator

- (PHAssetCreationRequest)assetCreationRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_assetCreationRequest);

  return WeakRetained;
}

- (BOOL)getLivePhotoVideoMetadataFromURL:(id)l videoComplementMetadata:(id)metadata pairingIdentifier:(id *)identifier videoDuration:(id *)duration imageDisplayTime:(id *)time error:(id *)error
{
  lCopy = l;
  metadataCopy = metadata;
  assetCreationRequest = [(_PHAssetCreationRequestValidator *)self assetCreationRequest];
  pairingIdentifier = [assetCreationRequest pairingIdentifier];
  v18 = pairingIdentifier;
  v42 = 0uLL;
  v43 = 0;
  if (assetCreationRequest)
  {
    [assetCreationRequest videoDuration];
    v40 = 0uLL;
    v41 = 0;
    [assetCreationRequest imageDisplayTime];
    if (!v18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v40 = 0uLL;
    v41 = 0;
    if (!pairingIdentifier)
    {
      goto LABEL_7;
    }
  }

  if (BYTE12(v40) & 1) != 0 && (BYTE12(v42))
  {
    v24 = 0;
    v32 = 1;
    goto LABEL_15;
  }

LABEL_7:
  identifierCopy = identifier;
  durationCopy = duration;
  timeCopy = time;
  errorCopy = error;
  v38 = *MEMORY[0x1E6960C70];
  v39 = *(MEMORY[0x1E6960C70] + 16);
  v36 = v38;
  v37 = v39;
  v34 = 0;
  v35 = 0;
  v33.receiver = self;
  v33.super_class = _PHAssetCreationRequestValidator;
  v21 = lCopy;
  v22 = metadataCopy;
  v32 = [(PHValidator *)&v33 getLivePhotoVideoMetadataFromURL:lCopy videoComplementMetadata:metadataCopy pairingIdentifier:&v35 videoDuration:&v38 imageDisplayTime:&v36 error:&v34];
  v23 = v35;
  v24 = v34;
  if (v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = v23;
  }

  v26 = v25;

  if ((BYTE12(v40) & 1) == 0)
  {
    v40 = v36;
    v41 = v37;
  }

  if ((BYTE12(v42) & 1) == 0)
  {
    v42 = v38;
    v43 = v39;
  }

  v18 = v26;
  lCopy = v21;
  error = errorCopy;
  metadataCopy = v22;
  time = timeCopy;
  identifier = identifierCopy;
  duration = durationCopy;
LABEL_15:
  objc_storeStrong(&self->_validatedPairingIdentifier, v18);
  *&self->_validatedVideoDuration.value = v42;
  self->_validatedVideoDuration.epoch = v43;
  *&self->_validatedImageDisplayTime.value = v40;
  self->_validatedImageDisplayTime.epoch = v41;
  if (identifier)
  {
    v27 = v18;
    *identifier = v18;
  }

  if (duration)
  {
    *&duration->var0 = v42;
    duration->var3 = v43;
  }

  if (time)
  {
    *&time->var0 = v40;
    time->var3 = v41;
  }

  if (error)
  {
    v28 = v24;
    *error = v24;
  }

  return v32;
}

- (_PHAssetCreationRequestValidator)initWithAssetCreationRequest:(id)request
{
  requestCopy = request;
  v5 = [(_PHAssetCreationRequestValidator *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_assetCreationRequest, requestCopy);
  }

  return v6;
}

@end