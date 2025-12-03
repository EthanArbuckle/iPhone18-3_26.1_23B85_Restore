@interface MKLinkPreviewImageHelper
+ (void)resizeImageIfNeeded:(id)needed toFrameSize:(CGSize)size displayScale:(double)scale completion:(id)completion;
@end

@implementation MKLinkPreviewImageHelper

+ (void)resizeImageIfNeeded:(id)needed toFrameSize:(CGSize)size displayScale:(double)scale completion:(id)completion
{
  height = size.height;
  width = size.width;
  neededCopy = needed;
  completionCopy = completion;
  v12 = completionCopy;
  if (neededCopy)
  {
    v13 = width * scale;
    v14 = height * scale;
    [neededCopy size];
    v16 = v15;
    [neededCopy size];
    v18 = v17;
    [neededCopy size];
    if (v16 >= v18)
    {
      v21 = v20 / v14;
    }

    else
    {
      v21 = v19 / v13;
    }

    [neededCopy size];
    v24 = v23;
    [neededCopy size];
    v26 = v25;
    [neededCopy size];
    if (v27 <= v13)
    {
      [neededCopy size];
      if (v28 <= v14)
      {
        (v12)[2](v12, neededCopy);
        goto LABEL_10;
      }
    }

    v29[1] = 3221225472;
    v29[0] = MEMORY[0x1E69E9820];
    v29[2] = __84__MKLinkPreviewImageHelper_resizeImageIfNeeded_toFrameSize_displayScale_completion___block_invoke_2;
    v29[3] = &unk_1E76C7E18;
    v31 = v12;
    v30 = neededCopy;
    [v30 _mapkit_prepareThumbnailOfSize:v29 completionHandler:{v24 / v21, v26 / v21}];

    v22 = v31;
  }

  else
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __84__MKLinkPreviewImageHelper_resizeImageIfNeeded_toFrameSize_displayScale_completion___block_invoke;
    v32[3] = &unk_1E76CD4D0;
    v33 = completionCopy;
    _performBlockOnMainThreadIfNeeded(v32);
    v22 = v33;
  }

LABEL_10:
}

void __84__MKLinkPreviewImageHelper_resizeImageIfNeeded_toFrameSize_displayScale_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__MKLinkPreviewImageHelper_resizeImageIfNeeded_toFrameSize_displayScale_completion___block_invoke_3;
  v5[3] = &unk_1E76CAA70;
  v8 = *(a1 + 40);
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  _performBlockOnMainThreadIfNeeded(v5);
}

uint64_t __84__MKLinkPreviewImageHelper_resizeImageIfNeeded_toFrameSize_displayScale_completion___block_invoke_3(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (!v3)
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

@end