@interface UIImage(Conversion)
+ (CGImageSource)avt_animatedImageWithDataRepresentation:()Conversion ofType:;
+ (id)animatedImageWithAPNGRepresentation:()Conversion;
+ (id)animatedImageWithHEICRepresentation:()Conversion;
- (__CFData)avt_dataRepresentationForTypeIdentifier:()Conversion;
- (float)frameDelayInSeconds;
- (id)APNGRepresentation;
- (id)HEICRepresentation;
- (uint64_t)copyByReorderingImagesWithFirstImageAtTime:()Conversion;
@end

@implementation UIImage(Conversion)

+ (id)animatedImageWithHEICRepresentation:()Conversion
{
  v4 = *MEMORY[0x1E6982E00];
  v5 = a3;
  identifier = [v4 identifier];
  v7 = [self avt_animatedImageWithDataRepresentation:v5 ofType:identifier];

  return v7;
}

+ (id)animatedImageWithAPNGRepresentation:()Conversion
{
  v4 = *MEMORY[0x1E6982F28];
  v5 = a3;
  identifier = [v4 identifier];
  v7 = [self avt_animatedImageWithDataRepresentation:v5 ofType:identifier];

  return v7;
}

+ (CGImageSource)avt_animatedImageWithDataRepresentation:()Conversion ofType:
{
  v5 = a4;
  v6 = CGImageSourceCreateWithData(a3, 0);
  v7 = v6;
  if (v6)
  {
    Count = CGImageSourceGetCount(v6);
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, i, 0);
        if (ImageAtIndex)
        {
          v12 = ImageAtIndex;
          v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:ImageAtIndex];
          [v9 addObject:v13];

          CGImageRelease(v12);
        }

        else
        {
          NSLog(&cfstr_AvatarkitAnima.isa, i);
        }
      }
    }

    valuePtr = 0.016667;
    v14 = CGImageSourceCopyPropertiesAtIndex(v7, 0, 0);
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = v14;
    identifier = [*MEMORY[0x1E6982F28] identifier];
    v17 = [v5 isEqualToString:identifier];

    if (v17)
    {
      Value = CFDictionaryGetValue(v15, *MEMORY[0x1E696DEB0]);
      v19 = *MEMORY[0x1E696D3D0];
      goto LABEL_11;
    }

    identifier2 = [*MEMORY[0x1E6982E00] identifier];
    v22 = [v5 isEqualToString:identifier2];

    if (v22)
    {
      valuePtr = 0.066667;
    }

    else if ([v5 isEqualToString:@"public.heics"])
    {
      v23 = CGImageSourceCopyProperties(v7, 0);
      v24 = CFDictionaryGetValue(v23, *MEMORY[0x1E696DD20]);
      CFRelease(v23);
      v19 = *MEMORY[0x1E696DD30];
      Value = v24;
LABEL_11:
      v20 = CFDictionaryGetValue(Value, v19);
      if (v20)
      {
        CFNumberGetValue(v20, kCFNumberFloatType, &valuePtr);
      }
    }

    CFRelease(v15);
LABEL_18:
    CFRelease(v7);
    v25 = 1.0 / valuePtr;
    v26 = [v9 count];
    v7 = [MEMORY[0x1E69DCAB8] animatedImageWithImages:v9 duration:v26 / v25];
  }

  return v7;
}

- (float)frameDelayInSeconds
{
  images = [self images];
  v3 = [images count];
  [self duration];
  v5 = v3 / v4;

  return 1.0 / v5;
}

- (id)HEICRepresentation
{
  identifier = [*MEMORY[0x1E6982E00] identifier];
  v3 = [self avt_dataRepresentationForTypeIdentifier:identifier];

  return v3;
}

- (id)APNGRepresentation
{
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v3 = [self avt_dataRepresentationForTypeIdentifier:identifier];

  return v3;
}

- (__CFData)avt_dataRepresentationForTypeIdentifier:()Conversion
{
  v84[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  Mutable = CFDataCreateMutable(0, 0);
  [self frameDelayInSeconds];
  v7 = v6;
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v9 = [(__CFString *)v4 isEqualToString:identifier];

  if (v9)
  {
    v57 = Mutable;
    v83[0] = *MEMORY[0x1E696DEB0];
    v11 = v83[0];
    v12 = *MEMORY[0x1E696D3D0];
    v81[0] = *MEMORY[0x1E696D3C8];
    v81[1] = v12;
    v82[0] = &unk_1F39D9368;
    LODWORD(v10) = v7;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    v82[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
    v84[0] = v14;
    v83[1] = *MEMORY[0x1E696D888];
    v15 = MEMORY[0x1E696AD98];
    [self scale];
    v17 = [v15 numberWithDouble:v16 * 72.0];
    v84[1] = v17;
    v83[2] = *MEMORY[0x1E696D880];
    v18 = MEMORY[0x1E696AD98];
    [self scale];
    v20 = [v18 numberWithDouble:v19 * 72.0];
    v84[2] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:3];

    v79 = v11;
    v77[0] = *MEMORY[0x1E696D3C0];
    LODWORD(v22) = v7;
    v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
    v78[0] = v23;
    v77[1] = *MEMORY[0x1E696D338];
    LODWORD(v24) = 1.0;
    v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
    v78[1] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];
    v80 = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];

LABEL_5:
    Mutable = v57;
    goto LABEL_7;
  }

  if ([(__CFString *)v4 isEqualToString:@"public.heics"])
  {
    v57 = Mutable;
    [self size];
    v29 = v28;
    v31 = v30;
    v75[0] = *MEMORY[0x1E696DD20];
    v32 = v75[0];
    v73 = *MEMORY[0x1E696DD30];
    LODWORD(v28) = v7;
    v33 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
    v74 = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v76[0] = v34;
    v75[1] = *MEMORY[0x1E696DD10];
    v35 = MEMORY[0x1E696AD98];
    [self scale];
    v37 = [v35 numberWithDouble:v29 * v36];
    v76[1] = v37;
    v75[2] = *MEMORY[0x1E696DD08];
    v38 = MEMORY[0x1E696AD98];
    [self scale];
    v40 = [v38 numberWithDouble:v31 * v39];
    v76[2] = v40;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:3];

    v71 = v32;
    v69 = *MEMORY[0x1E696DD18];
    LODWORD(v41) = v7;
    v23 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
    v70 = v23;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    v72 = v25;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    goto LABEL_5;
  }

  v27 = MEMORY[0x1E695E0F8];
  v21 = MEMORY[0x1E695E0F8];
LABEL_7:
  images = [self images];
  v43 = [images count];
  v44 = v43;
  if (v43 <= 1)
  {
    v45 = 1;
  }

  else
  {
    v45 = v43;
  }

  v46 = CGImageDestinationCreateWithData(Mutable, v4, v45, 0);
  CGImageDestinationSetProperties(v46, v21);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v64 = __63__UIImage_Conversion__avt_dataRepresentationForTypeIdentifier___block_invoke;
  v65 = &unk_1E7F484C0;
  v67 = v46;
  v47 = v27;
  v66 = v47;
  if (v44)
  {
    v58 = v21;
    v48 = v4;
    v49 = Mutable;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v50 = images;
    v51 = [v50 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v60;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v60 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v64(v63, *(*(&v59 + 1) + 8 * i));
        }

        v52 = [v50 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v52);
    }

    Mutable = v49;
    v4 = v48;
    v21 = v58;
  }

  else
  {
    v64(v63, self);
  }

  CGImageDestinationFinalize(v46);
  if (v46)
  {
    CFRelease(v46);
  }

  v55 = *MEMORY[0x1E69E9840];

  return Mutable;
}

- (uint64_t)copyByReorderingImagesWithFirstImageAtTime:()Conversion
{
  images = [self images];
  if (a2 > 0.0)
  {
    [self frameDelayInSeconds];
    v6 = vcvtmd_s64_f64(a2 / v5);
    v7 = [images subarrayWithRange:{0, v6}];
    v8 = [images subarrayWithRange:{v6, objc_msgSend(images, "count") - v6}];
    v9 = [v8 arrayByAddingObjectsFromArray:v7];

    images = v9;
  }

  v10 = MEMORY[0x1E69DCAB8];
  [self duration];
  v11 = [v10 animatedImageWithImages:images duration:?];

  return v11;
}

@end