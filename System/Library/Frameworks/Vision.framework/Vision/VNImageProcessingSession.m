@interface VNImageProcessingSession
- (VNImageProcessingSession)init;
- (id)_printsProducedByRequest:(__CVBuffer *)a3 onPixelBuffer:(void *)a4 withAugmentations:(__CFString *)a5 error:;
@end

@implementation VNImageProcessingSession

- (id)_printsProducedByRequest:(__CVBuffer *)a3 onPixelBuffer:(void *)a4 withAugmentations:(__CFString *)a5 error:
{
  v68[1] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v62 = a1;
  if (!a1)
  {
    v39 = 0;
    goto LABEL_42;
  }

  v9 = a4;
  v57 = v8;
  v10 = v8;
  if ([v10 conformsToProtocol:&unk_1F19C58D8])
  {
    v11 = [v10 supportedImageSizeSet];
    v12 = [v11 firstObject];

    if (v12)
    {
      [v10 VNImageProcessingSessionRegionOfInterest];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      v23 = [v12 pixelsWideRange];
      v24 = [v23 idealDimension];

      v25 = [v12 pixelsHighRange];
      v26 = [v25 idealDimension];

      v60 = [v12 idealImageFormat];
      v27 = v9;
      if (!v24 || !v26)
      {
        if (a5)
        {
          [VNError errorForInvalidArgumentWithLocalizedDescription:@"scaled dimensions cannot be 0"];
          *a5 = v58 = 0;
        }

        else
        {
          v58 = 0;
        }

LABEL_23:

        goto LABEL_24;
      }

      context = objc_autoreleasePoolPush();
      v67 = @"VNImageBufferOption_DoNotCacheRepresentations";
      v68[0] = MEMORY[0x1E695E118];
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
      v28 = [[VNImageBuffer alloc] initWithCVPixelBuffer:a3 orientation:1 options:v63 session:*(v62 + 8)];
      if (v28)
      {
        v29 = [v27 count];
        v30 = v14 * Width;
        v31 = v18 * Width;
        v32 = v16 * Height;
        v33 = v20 * Height;
        if (v29)
        {
          v65 = 0;
          v58 = [(VNImageBuffer *)v28 augmentedCroppedBuffersWithWidth:v24 height:v26 format:v60 cropRect:0 options:v27 augmentationOptions:&v65 error:v30, v32, v31, v33];
          v34 = v65;
          goto LABEL_19;
        }

        v65 = 0;
        v37 = [(VNImageBuffer *)v28 croppedBufferWithWidth:v24 height:v26 format:v60 cropRect:0 options:&v65 error:v30, v32, v31, v33];
        v34 = v65;
        if (v37)
        {
          v66 = v37;
          v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];

LABEL_19:
          objc_autoreleasePoolPop(context);
          if (a5 && v34)
          {
            v38 = v34;
            *a5 = v34;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v34 = [VNError errorForInternalErrorWithLocalizedDescription:@"could not create augmentation image buffer"];
      }

      v58 = 0;
      goto LABEL_19;
    }
  }

  if (a5)
  {
    v35 = objc_alloc(MEMORY[0x1E696AEC0]);
    v36 = [v10 specifier];
    v12 = [v35 initWithFormat:@"%@ does not provide ideal image parameters", v36];

    [VNError errorWithCode:19 message:v12];
    *a5 = v58 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v58 = 0;
LABEL_25:

  v39 = v58;
  if (v58)
  {
    v40 = v10;
    v41 = v58;
    contexta = objc_autoreleasePoolPush();
    v61 = v40;
    v68[0] = v40;
    v64 = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
    v43 = [v41 count];
    v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v43];
    v45 = 0;
    if (v43)
    {
      v46 = 0;
      v47 = MEMORY[0x1E695E0F8];
      while (1)
      {
        v48 = -[VNImageRequestHandler initWithCVPixelBuffer:options:session:]([VNImageRequestHandler alloc], "initWithCVPixelBuffer:options:session:", [v64 objectAtIndex:v46], v47, *(v62 + 8));
        v67 = v45;
        v49 = [(VNImageRequestHandler *)v48 performRequests:v42 error:&v67];
        v50 = v67;

        if (!v49)
        {

          v39 = 0;
          goto LABEL_35;
        }

        v65 = v50;
        v51 = [v61 VNImageProcessingSessionPrintAndReturnError:&v65];
        v45 = v65;

        if (!v51)
        {
          break;
        }

        [v44 addObject:v51];

        if (v43 == ++v46)
        {
          goto LABEL_31;
        }
      }

      v39 = 0;
    }

    else
    {
LABEL_31:
      v39 = v44;
    }

    v50 = v45;
LABEL_35:

    objc_autoreleasePoolPop(contexta);
    if (a5 && v50)
    {
      v52 = v50;
      *a5 = v50;
    }

    if (v39)
    {
      v53 = v39;
    }
  }

  v8 = v57;

LABEL_42:

  return v39;
}

- (VNImageProcessingSession)init
{
  v6.receiver = self;
  v6.super_class = VNImageProcessingSession;
  v2 = [(VNImageProcessingSession *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(VNSession);
    session = v2->_session;
    v2->_session = v3;
  }

  return v2;
}

@end