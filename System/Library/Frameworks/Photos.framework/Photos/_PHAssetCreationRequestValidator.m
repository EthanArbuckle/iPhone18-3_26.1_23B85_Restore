@interface _PHAssetCreationRequestValidator
- (BOOL)getLivePhotoVideoMetadataFromURL:(id)a3 videoComplementMetadata:(id)a4 pairingIdentifier:(id *)a5 videoDuration:(id *)a6 imageDisplayTime:(id *)a7 error:(id *)a8;
- (PHAssetCreationRequest)assetCreationRequest;
- (_PHAssetCreationRequestValidator)initWithAssetCreationRequest:(id)a3;
@end

@implementation _PHAssetCreationRequestValidator

- (PHAssetCreationRequest)assetCreationRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_assetCreationRequest);

  return WeakRetained;
}

- (BOOL)getLivePhotoVideoMetadataFromURL:(id)a3 videoComplementMetadata:(id)a4 pairingIdentifier:(id *)a5 videoDuration:(id *)a6 imageDisplayTime:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = [(_PHAssetCreationRequestValidator *)self assetCreationRequest];
  v17 = [v16 pairingIdentifier];
  v18 = v17;
  v42 = 0uLL;
  v43 = 0;
  if (v16)
  {
    [v16 videoDuration];
    v40 = 0uLL;
    v41 = 0;
    [v16 imageDisplayTime];
    if (!v18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v40 = 0uLL;
    v41 = 0;
    if (!v17)
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
  v30 = a5;
  v31 = a6;
  v19 = a7;
  v20 = a8;
  v38 = *MEMORY[0x1E6960C70];
  v39 = *(MEMORY[0x1E6960C70] + 16);
  v36 = v38;
  v37 = v39;
  v34 = 0;
  v35 = 0;
  v33.receiver = self;
  v33.super_class = _PHAssetCreationRequestValidator;
  v21 = v14;
  v22 = v15;
  v32 = [(PHValidator *)&v33 getLivePhotoVideoMetadataFromURL:v14 videoComplementMetadata:v15 pairingIdentifier:&v35 videoDuration:&v38 imageDisplayTime:&v36 error:&v34];
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
  v14 = v21;
  a8 = v20;
  v15 = v22;
  a7 = v19;
  a5 = v30;
  a6 = v31;
LABEL_15:
  objc_storeStrong(&self->_validatedPairingIdentifier, v18);
  *&self->_validatedVideoDuration.value = v42;
  self->_validatedVideoDuration.epoch = v43;
  *&self->_validatedImageDisplayTime.value = v40;
  self->_validatedImageDisplayTime.epoch = v41;
  if (a5)
  {
    v27 = v18;
    *a5 = v18;
  }

  if (a6)
  {
    *&a6->var0 = v42;
    a6->var3 = v43;
  }

  if (a7)
  {
    *&a7->var0 = v40;
    a7->var3 = v41;
  }

  if (a8)
  {
    v28 = v24;
    *a8 = v24;
  }

  return v32;
}

- (_PHAssetCreationRequestValidator)initWithAssetCreationRequest:(id)a3
{
  v4 = a3;
  v5 = [(_PHAssetCreationRequestValidator *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_assetCreationRequest, v4);
  }

  return v6;
}

@end