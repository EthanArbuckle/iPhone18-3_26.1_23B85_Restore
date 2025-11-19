@interface MPArtworkResizeOperation
- (CGSize)_resizedScaledSizeForScaledImageSize:(CGSize)a3 scaledFittingSize:(CGSize)a4;
- (CGSize)scaledFittingSize;
- (MPArtworkResizeOperation)initWithImage:(id)a3 scaledFittingSize:(CGSize)a4 useExactFittingSizeAsDestinationSize:(BOOL)a5 destinationURL:(id)a6;
- (void)main;
@end

@implementation MPArtworkResizeOperation

- (CGSize)scaledFittingSize
{
  width = self->_scaledFittingSize.width;
  height = self->_scaledFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_resizedScaledSizeForScaledImageSize:(CGSize)a3 scaledFittingSize:(CGSize)a4
{
  if (a3.width <= a4.width)
  {
    a4.width = a3.width;
    height = a3.height;
  }

  else
  {
    height = floor(a3.height * a4.width / a3.width);
  }

  if (height > a4.height)
  {
    a4.width = floor(a3.width * a4.height / a3.height);
    height = a4.height;
  }

  width = a4.width;
  v6 = height;
  result.height = v6;
  result.width = width;
  return result;
}

- (void)main
{
  v60[1] = *MEMORY[0x1E69E9840];
  v3 = [(MPArtworkResizeOperation *)self destinationURL];
  v4 = [v3 path];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4 options:2 error:0];
    v6 = [MEMORY[0x1E69DCAB8] imageWithData:v5];
    resizedImage = self->_resizedImage;
    self->_resizedImage = v6;
  }

  if (!self->_resizedImage)
  {
    v8 = [(MPArtworkResizeOperation *)self image];
    [v8 size];
    v10 = v9;
    v12 = v11;

    v13 = [(MPArtworkResizeOperation *)self image];
    [v13 scale];
    v15 = v14;

    [(MPArtworkResizeOperation *)self scaledFittingSize];
    v17 = v16;
    v19 = v18;
    v20 = [(MPArtworkResizeOperation *)self image];

    if (!v20)
    {
      v21 = @"Failed to resize nil image.";
LABEL_15:
      v22 = MEMORY[0x1E696ABC0];
      v59 = *MEMORY[0x1E696A278];
      v60[0] = v21;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
      v24 = [v22 errorWithDomain:@"MPArtworkResizeErrorDomain" code:0 userInfo:v23];
      error = self->_error;
      self->_error = v24;

LABEL_34:
      goto LABEL_35;
    }

    if (v10 <= 0.00000011920929 || v12 <= 0.00000011920929)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Input image has invalid size: {%f, %f}.", *&v10, *&v12];
    }

    else if (v15 <= 0.00000011920929)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Input image has invalid scale: %f.", *&v15, v49];
    }

    else
    {
      if (v17 > 0.00000011920929 && v19 > 0.00000011920929)
      {
        goto LABEL_16;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to resize image with invalid scaled fitting size: {%f, %f}.", *&v17, *&v19];
    }
    v21 = ;
    if (v21)
    {
      goto LABEL_15;
    }

LABEL_16:
    [(MPArtworkResizeOperation *)self _resizedScaledSizeForScaledImageSize:v10 * v15 scaledFittingSize:v12 * v15, v17, v19];
    v27 = v26;
    v29 = v28;
    v30 = [(MPArtworkResizeOperation *)self usesExactFittingSizeAsDestinationSize];
    if (v30)
    {
      v31 = v17;
    }

    else
    {
      v31 = v27;
    }

    if (v30)
    {
      v32 = v19;
    }

    else
    {
      v32 = v29;
    }

    v33 = v32 > v29 + 0.00000011920929 || v31 > v27 + 0.00000011920929;
    v34 = v27 / v15;
    v35 = v29 / v15;
    v36 = v31 / v15;
    v37 = round((v31 / v15 - v34) * 0.5);
    v38 = v32 / v15;
    v39 = round((v32 / v15 - v35) * 0.5);
    v21 = [MEMORY[0x1E69DCA80] preferredFormat];
    [(__CFString *)v21 setOpaque:!v33];
    [(__CFString *)v21 setScale:v15];
    v23 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v21 format:{v36, v38}];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __32__MPArtworkResizeOperation_main__block_invoke;
    v54[3] = &unk_1E7675DA0;
    v54[4] = self;
    *&v54[5] = v37;
    *&v54[6] = v39;
    *&v54[7] = v34;
    *&v54[8] = v35;
    v40 = [v23 imageWithActions:v54];
    v41 = self->_resizedImage;
    self->_resizedImage = v40;

    v42 = [(UIImage *)self->_resizedImage CGImage];
    if (v42)
    {
      v43 = CGImageRetain(v42);
      v44 = v43;
      if (v3 && self->_resizedImage && v43)
      {
        v45 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __32__MPArtworkResizeOperation_main__block_invoke_20;
        block[3] = &unk_1E7682320;
        v53 = v33;
        v51 = v3;
        v52 = v44;
        dispatch_async(v45, block);

        goto LABEL_34;
      }
    }

    else
    {
      v46 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = self->_resizedImage;
        v48 = [(MPArtworkResizeOperation *)self image];
        *buf = 138543618;
        v56 = v47;
        v57 = 2114;
        v58 = v48;
        _os_log_impl(&dword_1A238D000, v46, OS_LOG_TYPE_ERROR, "[MPArtwork] failed to create scaled image for resized image: %{public}@ from image: %{public}@", buf, 0x16u);
      }

      v44 = 0;
    }

    CGImageRelease(v44);
    goto LABEL_34;
  }

LABEL_35:
}

void __32__MPArtworkResizeOperation_main__block_invoke(uint64_t a1, void *a2)
{
  CGContextSetInterpolationQuality([a2 CGContext], kCGInterpolationHigh);
  v3 = [*(a1 + 32) image];
  [v3 drawInRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

void __32__MPArtworkResizeOperation_main__block_invoke_20(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) URLByDeletingLastPathComponent];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = 0;
  v4 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v13];
  v5 = v13;

  if (v4)
  {
    v6 = [MEMORY[0x1E69B34E0] devicePreferredImageFormat];
    if (*(a1 + 48))
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    FileImageDestination = MSVImageUtilitiesCreateFileImageDestination();
    if (FileImageDestination)
    {
      v9 = FileImageDestination;
      if (v7)
      {
        MSVImageUtilitiesAddImageToDestination();
      }

      else
      {
        MSVImageUtilitiesAddJPEGToDestination();
      }

      if (!CGImageDestinationFinalize(v9))
      {
        v11 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = [*(a1 + 32) path];
          *buf = 138543362;
          v15 = v12;
          _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "[MPArtwork] Could not write resized image to %{public}@: Failed to finalize CGImageDestination", buf, 0xCu);
        }
      }

      CFRelease(v9);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v2;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, "[MPArtwork] Failed to create directory at '%{public}@' with error: %{public}@", buf, 0x16u);
    }
  }

  CGImageRelease(*(a1 + 40));
}

- (MPArtworkResizeOperation)initWithImage:(id)a3 scaledFittingSize:(CGSize)a4 useExactFittingSizeAsDestinationSize:(BOOL)a5 destinationURL:(id)a6
{
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = MPArtworkResizeOperation;
  v14 = [(MPArtworkResizeOperation *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_destinationURL, a6);
    v15->_scaledFittingSize.width = width;
    v15->_scaledFittingSize.height = height;
    objc_storeStrong(&v15->_image, a3);
    v16 = dispatch_group_create();
    operationGroup = v15->_operationGroup;
    v15->_operationGroup = v16;

    v15->_usesExactFittingSizeAsDestinationSize = a5;
  }

  return v15;
}

@end