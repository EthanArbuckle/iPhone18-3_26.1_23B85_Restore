@interface SLSheetPreviewImageSource
- (void)_generatePreviewImageForAttachment:(id)attachment queueToBlockWhileDownsampling:(id)downsampling resultBlock:(id)block;
- (void)_generatePreviewImageForVideoFileURL:(id)l resultBlock:(id)block;
- (void)previewImageForAttachment:(id)attachment queueToBlockWhileDownsampling:(id)downsampling resultBlock:(id)block;
@end

@implementation SLSheetPreviewImageSource

- (void)previewImageForAttachment:(id)attachment queueToBlockWhileDownsampling:(id)downsampling resultBlock:(id)block
{
  attachmentCopy = attachment;
  downsamplingCopy = downsampling;
  blockCopy = block;
  previewImage = [attachmentCopy previewImage];

  if (previewImage)
  {
    _SLLog(v5, 6, @"previewImageForAttachment: previewImage for attachment is not nil so returning");
    previewImage2 = [attachmentCopy previewImage];
LABEL_3:
    v13 = previewImage2;
    blockCopy[2](blockCopy, previewImage2, 0.0);

    goto LABEL_4;
  }

  if (![attachmentCopy type])
  {
    payload = [attachmentCopy payload];

    if (payload)
    {
      v18 = MEMORY[0x1E69DCAB8];
      payload2 = [attachmentCopy payload];
      v20 = [v18 imageWithData:payload2];

      [v20 size];
      v22 = v21;
      [v20 size];
      if (v22 * v23 >= 262144.0)
      {
        _SLLog(v5, 6, @"previewImageForAttachment: Generating preview from downsampled payload");
        [(SLSheetPreviewImageSource *)self _generatePreviewImageForAttachment:attachmentCopy queueToBlockWhileDownsampling:downsamplingCopy resultBlock:blockCopy];
      }

      else
      {
        _SLLog(v5, 6, @"previewImageForAttachment: Using payload as preview");
        blockCopy[2](blockCopy, v20, 0.0);
      }
    }

    else
    {
      _SLLog(v5, 6, @"previewImageForAttachment: No payload. Guess we need to wait until it loads.");
      blockCopy[2](blockCopy, 0, 0.0);
    }

    goto LABEL_4;
  }

  if (!SLAttachmentPayloadIsAssetLibraryURL(attachmentCopy))
  {
    if ((SLAttachmentPayloadIsVideoFileURL(attachmentCopy) & 1) != 0 || [attachmentCopy type] == 8 && (objc_msgSend(attachmentCopy, "payloadSourceFileURL"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isFileURL"), v24, v25))
    {
      _SLLog(v5, 6, @"previewImageForAttachment: creating preview for video file URL");
      if (SLAttachmentPayloadIsVideoFileURL(attachmentCopy))
      {
        [attachmentCopy payload];
      }

      else
      {
        [attachmentCopy payloadSourceFileURL];
      }
      v26 = ;
      [(SLSheetPreviewImageSource *)self _generatePreviewImageForVideoFileURL:v26 resultBlock:blockCopy];

      goto LABEL_4;
    }

    type = [attachmentCopy type];
    _SLLog(v5, 3, @"previewImageForAttachment: Cannot create preview for attachment of type %i,returning fallback preview");
    goto LABEL_20;
  }

  _SLLog(v5, 6, @"previewImageForAttachment: creating preview for asset URL");
  payload3 = [attachmentCopy payload];
  scheme = [payload3 scheme];
  v16 = [scheme isEqualToString:@"assets-library"];

  if (!v16)
  {
LABEL_20:
    previewImage2 = +[SLSheetImagePreviewView fallbackPreviewImage];
    goto LABEL_3;
  }

  _SLLog(v5, 3, @"ALAsset attachment support is deprecated");
LABEL_4:
}

- (void)_generatePreviewImageForAttachment:(id)attachment queueToBlockWhileDownsampling:(id)downsampling resultBlock:(id)block
{
  attachmentCopy = attachment;
  downsamplingCopy = downsampling;
  blockCopy = block;
  _SLLog(v5, 6, @"SLComposeServiceViewController-_generatePreviewImageForAttachment:%@");
  if ([attachmentCopy type] || (objc_msgSend(attachmentCopy, "previewImage"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    _SLLog(v5, 3, @"_generatePreviewImageForAttachment called for non-image payload attachment");
    blockCopy[2](blockCopy, 0, 0.0);
  }

  else
  {
    _SLLog(v5, 6, @"Image attachment with nil preview - triggering thumbnail generation");
    payload = [attachmentCopy payload];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__SLSheetPreviewImageSource__generatePreviewImageForAttachment_queueToBlockWhileDownsampling_resultBlock___block_invoke;
    block[3] = &unk_1E81759A0;
    v15 = payload;
    v16 = blockCopy;
    v13 = payload;
    dispatch_async(downsamplingCopy, block);
  }
}

void __106__SLSheetPreviewImageSource__generatePreviewImageForAttachment_queueToBlockWhileDownsampling_resultBlock___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__SLSheetPreviewImageSource__generatePreviewImageForAttachment_queueToBlockWhileDownsampling_resultBlock___block_invoke_2;
  v6[3] = &unk_1E8175AD0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [SLImageDownsampling generateThumbnailFromImageData:v3 adjustSmallestSideToSize:200 resultsHandler:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __106__SLSheetPreviewImageSource__generatePreviewImageForAttachment_queueToBlockWhileDownsampling_resultBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__SLSheetPreviewImageSource__generatePreviewImageForAttachment_queueToBlockWhileDownsampling_resultBlock___block_invoke_3;
  block[3] = &unk_1E8175AA8;
  v6 = v3;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __106__SLSheetPreviewImageSource__generatePreviewImageForAttachment_queueToBlockWhileDownsampling_resultBlock___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E69DCAB8] imageWithData:?];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  (*(*(a1 + 48) + 16))(0.0);
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_generatePreviewImageForVideoFileURL:(id)l resultBlock:(id)block
{
  v26[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  _SLLog(v4, 7, @"SLSheetPreviewImageSource _generatePreviewImageForVideoFileURL: %@");
  v9 = objc_alloc(MEMORY[0x1E6988168]);
  v10 = *MEMORY[0x1E6987BB8];
  v25[0] = *MEMORY[0x1E6987BD8];
  v25[1] = v10;
  v26[0] = &unk_1F4202A60;
  v26[1] = MEMORY[0x1E695E110];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{2, lCopy}];
  v12 = [v9 initWithURL:lCopy options:v11];

  _SLLog(v4, 7, @"SLSheetPreviewImageSource _generatePreviewImageForVideoFileURL: got asset %@");
  if (v12)
  {
    assetImageGenerator = self->_assetImageGenerator;
    if (!assetImageGenerator)
    {
      v14 = [objc_alloc(MEMORY[0x1E6987E68]) initWithAsset:{v12, v12}];
      v15 = self->_assetImageGenerator;
      self->_assetImageGenerator = v14;

      [(AVAssetImageGenerator *)self->_assetImageGenerator setAppliesPreferredTrackTransform:1];
      assetImageGenerator = self->_assetImageGenerator;
    }

    v16 = MEMORY[0x1E696B098];
    CMTimeMakeWithSeconds(&v23, 0.0, 1);
    v17 = [v16 valueWithCMTime:&v23];
    v24 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78__SLSheetPreviewImageSource__generatePreviewImageForVideoFileURL_resultBlock___block_invoke;
    v19[3] = &unk_1E8175B20;
    v20 = v12;
    v22 = blockCopy;
    v21 = lCopy;
    [(AVAssetImageGenerator *)assetImageGenerator generateCGImagesAsynchronouslyForTimes:v18 completionHandler:v19];
  }

  else
  {
    _SLLog(v4, 3, @"Could not create AVAsset from %@");
    (*(blockCopy + 2))(blockCopy, 0, 0.0);
  }
}

void __78__SLSheetPreviewImageSource__generatePreviewImageForVideoFileURL_resultBlock___block_invoke(id *a1, uint64_t a2, CGImage *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = MEMORY[0x1E696AD98];
  v11 = a6;
  v12 = [v10 numberWithInteger:a5];
  _SLLog(v6, 7, @"SLSheetPreviewImageSource _generatePreviewImageForVideoFileURL: did generate image %@ result %@ error %{public}@");

  if (a3)
  {
    CGImageRetain(a3);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__SLSheetPreviewImageSource__generatePreviewImageForVideoFileURL_resultBlock___block_invoke_2;
  block[3] = &unk_1E8175AF8;
  v17 = a3;
  v14 = a1[4];
  v16 = a1[6];
  v15 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__SLSheetPreviewImageSource__generatePreviewImageForVideoFileURL_resultBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      [v3 duration];
    }

    _SLLog(v1, 3, @"Video duration CMTime.flags kCMTimeFlags_Valid is not set");
    v6 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{*(a1 + 56), v7}];
    (*(*(a1 + 48) + 16))(0.0);
    CGImageRelease(*(a1 + 56));
  }

  else
  {
    _SLLog(v1, 6, @"AVAssetImageGenerator failed for %@");
    v4 = *(*(a1 + 48) + 16);
    v5.n128_u64[0] = 0;

    v4(v5);
  }
}

@end