@interface MKMapAttributionImage
+ (id)badgeImageForView:(id)view;
- (MKMapAttributionImage)initWithAttributions:(id)attributions type:(int64_t)type;
- (id)imageNameForScale:(double)scale;
@end

@implementation MKMapAttributionImage

- (id)imageNameForScale:(double)scale
{
  imageNameForScale = self->_imageNameForScale;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:vcvtpd_u64_f64(scale)];
  v5 = [(NSDictionary *)imageNameForScale objectForKeyedSubscript:v4];

  return v5;
}

- (MKMapAttributionImage)initWithAttributions:(id)attributions type:(int64_t)type
{
  v66 = *MEMORY[0x1E69E9840];
  attributionsCopy = attributions;
  v63.receiver = self;
  v63.super_class = MKMapAttributionImage;
  v6 = [(MKMapAttributionImage *)&v63 init];
  if (!v6)
  {
    v41 = 0;
    goto LABEL_49;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (![attributionsCopy count])
  {
    goto LABEL_44;
  }

  v46 = [attributionsCopy objectAtIndex:0];
  v8 = _attributionImagesForType(v46, type);
  if (![v8 count])
  {
    goto LABEL_43;
  }

  v44 = v6;
  firstObject = [v8 firstObject];
  stringByDeletingPathExtension = [firstObject stringByDeletingPathExtension];
  v10 = 3;
  v11 = 0x1E696A000uLL;
  name2 = @"@%lux";
  while (1)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@%lux", v10];
    v14 = [stringByDeletingPathExtension rangeOfString:v13];

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

  name3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v10];
  v49 = dictionary;
  [dictionary setObject:firstObject forKeyedSubscript:name3];

  v43 = v8;
  v47 = [v8 mutableCopy];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v45 = attributionsCopy;
  obj = attributionsCopy;
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
        name = [*(*(&v59 + 1) + 8 * v21) name];
        if (name)
        {
          name2 = [v22 name];
          name3 = [v18 name];
          if (([(__CFString *)name2 isEqualToString:name3]& 1) == 0)
          {

            goto LABEL_25;
          }
        }

        v24 = name2;
        v25 = [v22 url];
        if (!v25)
        {
          if (name)
          {
          }

LABEL_24:
          name = _attributionImagesForType(v22, type);
          [v47 addObjectsFromArray:name];
          v11 = 0x1E696A000;
LABEL_25:

          goto LABEL_27;
        }

        v26 = v25;
        v27 = v20;
        v28 = [v22 url];
        v29 = [v18 url];
        v30 = [v28 isEqualToString:v29];

        if (name)
        {

          name2 = v24;
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
          name2 = v24;
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
        if (([v35 isEqualToString:firstObject] & 1) == 0)
        {
          stringByDeletingPathExtension2 = [v35 stringByDeletingPathExtension];
          v37 = 3;
          while (1)
          {
            v38 = [*(v11 + 3776) stringWithFormat:@"@%lux", v37];
            v39 = [stringByDeletingPathExtension2 rangeOfString:v38];

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
  attributionsCopy = v45;
  dictionary = v49;
  v8 = v43;
LABEL_43:

LABEL_44:
  if ([dictionary count])
  {
    objc_storeStrong(&v6->_imageNameForScale, dictionary);
    v41 = v6;
  }

  else
  {
    v41 = 0;
  }

LABEL_49:
  return v41;
}

+ (id)badgeImageForView:(id)view
{
  viewCopy = view;
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  activeTileGroup = [modernManager activeTileGroup];
  attributionsCount = [activeTileGroup attributionsCount];

  if (attributionsCount)
  {
    v7 = [MKMapAttributionImage alloc];
    modernManager2 = [MEMORY[0x1E69A2478] modernManager];
    activeTileGroup2 = [modernManager2 activeTileGroup];
    attributions = [activeTileGroup2 attributions];
    v11 = [(MKMapAttributionImage *)v7 initWithAttributions:attributions type:1];

    [viewCopy _mapkit_currentScreenScale];
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

      attributionsCount = v17;
    }

    else
    {
LABEL_5:
      attributionsCount = 0;
    }
  }

  return attributionsCount;
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