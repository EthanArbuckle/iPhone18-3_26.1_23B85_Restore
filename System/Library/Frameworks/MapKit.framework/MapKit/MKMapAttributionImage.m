@interface MKMapAttributionImage
+ (id)badgeImageForView:(id)a3;
- (MKMapAttributionImage)initWithAttributions:(id)a3 type:(int64_t)a4;
- (id)imageNameForScale:(double)a3;
@end

@implementation MKMapAttributionImage

- (id)imageNameForScale:(double)a3
{
  imageNameForScale = self->_imageNameForScale;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:vcvtpd_u64_f64(a3)];
  v5 = [(NSDictionary *)imageNameForScale objectForKeyedSubscript:v4];

  return v5;
}

- (MKMapAttributionImage)initWithAttributions:(id)a3 type:(int64_t)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v63.receiver = self;
  v63.super_class = MKMapAttributionImage;
  v6 = [(MKMapAttributionImage *)&v63 init];
  if (!v6)
  {
    v41 = 0;
    goto LABEL_49;
  }

  v7 = [MEMORY[0x1E695DF90] dictionary];
  if (![v5 count])
  {
    goto LABEL_44;
  }

  v46 = [v5 objectAtIndex:0];
  v8 = _attributionImagesForType(v46, a4);
  if (![v8 count])
  {
    goto LABEL_43;
  }

  v44 = v6;
  v54 = [v8 firstObject];
  v9 = [v54 stringByDeletingPathExtension];
  v10 = 3;
  v11 = 0x1E696A000uLL;
  v12 = @"@%lux";
  while (1)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@%lux", v10];
    v14 = [v9 rangeOfString:v13];

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v15 = v10-- > 2;
    if (!v15)
    {
      v10 = 1;
      break;
    }
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v10];
  v49 = v7;
  [v7 setObject:v54 forKeyedSubscript:v16];

  v43 = v8;
  v47 = [v8 mutableCopy];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v45 = v5;
  obj = v5;
  v17 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
  v18 = v46;
  if (!v17)
  {
    goto LABEL_29;
  }

  v19 = v17;
  v20 = *v60;
  do
  {
    v21 = 0;
    v48 = v19;
    do
    {
      if (*v60 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v59 + 1) + 8 * v21);
      if (v22 != v18)
      {
        v23 = [*(*(&v59 + 1) + 8 * v21) name];
        if (v23)
        {
          v12 = [v22 name];
          v16 = [v18 name];
          if (([(__CFString *)v12 isEqualToString:v16]& 1) == 0)
          {

            goto LABEL_25;
          }
        }

        v24 = v12;
        v25 = [v22 url];
        if (!v25)
        {
          if (v23)
          {
          }

LABEL_24:
          v23 = _attributionImagesForType(v22, a4);
          [v47 addObjectsFromArray:v23];
          v11 = 0x1E696A000;
LABEL_25:

          goto LABEL_27;
        }

        v26 = v25;
        v27 = v20;
        v28 = [v22 url];
        v29 = [v18 url];
        v30 = [v28 isEqualToString:v29];

        if (v23)
        {

          v12 = v24;
          v18 = v46;
          v20 = v27;
          v19 = v48;
          if (v30)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v18 = v46;
          v20 = v27;
          v19 = v48;
          v12 = v24;
          if (v30)
          {
            goto LABEL_24;
          }
        }

        v11 = 0x1E696A000uLL;
      }

LABEL_27:
      ++v21;
    }

    while (v19 != v21);
    v19 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
  }

  while (v19);
LABEL_29:

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obja = v47;
  v31 = [obja countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v56;
    do
    {
      v34 = 0;
      v51 = v32;
      do
      {
        if (*v56 != v33)
        {
          objc_enumerationMutation(obja);
        }

        v35 = *(*(&v55 + 1) + 8 * v34);
        if (([v35 isEqualToString:v54] & 1) == 0)
        {
          v36 = [v35 stringByDeletingPathExtension];
          v37 = 3;
          while (1)
          {
            v38 = [*(v11 + 3776) stringWithFormat:@"@%lux", v37];
            v39 = [v36 rangeOfString:v38];

            if (v39 != 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            v15 = v37-- > 2;
            if (!v15)
            {
              v37 = 1;
              break;
            }
          }

          v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v37];
          [v49 setObject:v35 forKeyedSubscript:v40];

          v32 = v51;
        }

        ++v34;
      }

      while (v34 != v32);
      v32 = [obja countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v32);
  }

  v6 = v44;
  v5 = v45;
  v7 = v49;
  v8 = v43;
LABEL_43:

LABEL_44:
  if ([v7 count])
  {
    objc_storeStrong(&v6->_imageNameForScale, v7);
    v41 = v6;
  }

  else
  {
    v41 = 0;
  }

LABEL_49:
  return v41;
}

+ (id)badgeImageForView:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A2478] modernManager];
  v5 = [v4 activeTileGroup];
  v6 = [v5 attributionsCount];

  if (v6)
  {
    v7 = [MKMapAttributionImage alloc];
    v8 = [MEMORY[0x1E69A2478] modernManager];
    v9 = [v8 activeTileGroup];
    v10 = [v9 attributions];
    v11 = [(MKMapAttributionImage *)v7 initWithAttributions:v10 type:1];

    [v3 _mapkit_currentScreenScale];
    v13 = v12;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __43__MKMapAttributionImage_badgeImageForView___block_invoke;
    v19[3] = &unk_1E76C9058;
    v14 = v11;
    v20 = v14;
    v15 = MEMORY[0x1A58E9F30](v19);
    v16 = vcvtpd_u64_f64(v13);
    if (v16)
    {
      while (1)
      {
        v17 = v15[2](v15, v16);
        if (v17)
        {
          break;
        }

        if (!--v16)
        {
          goto LABEL_5;
        }
      }

      v6 = v17;
    }

    else
    {
LABEL_5:
      v6 = 0;
    }
  }

  return v6;
}

id __43__MKMapAttributionImage_badgeImageForView___block_invoke(uint64_t a1, double a2)
{
  v3 = [*(a1 + 32) imageNameForScale:?];
  if (v3)
  {
    v4 = [MEMORY[0x1E69A2468] sharedManager];
    v5 = [v4 dataForResourceWithName:v3 fallbackBundle:0];

    v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) _initWithData:v5 scale:a2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end