@interface MKVKImageSourceKeyImageBuilder
+ (id)calculateImagesForParameters:(id)parameters;
+ (void)_recursivelyGetImages:(id)images accumulator:(id)accumulator;
@end

@implementation MKVKImageSourceKeyImageBuilder

+ (void)_recursivelyGetImages:(id)images accumulator:(id)accumulator
{
  selfCopy = self;
  v54 = *MEMORY[0x1E69E9840];
  imagesCopy = images;
  accumulatorCopy = accumulator;
  v7 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = imagesCopy;
  v41 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v41)
  {
    v8 = *v49;
    v9 = 0x1E76C4000uLL;
    v38 = *v49;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        sharedInstance = [*(v9 + 2832) sharedInstance];
        parameters = [accumulatorCopy parameters];
        [parameters scale];
        v47 = 0;
        v14 = [sharedInstance transitArtworkImageWithDataSource:v11 size:8 featureType:2 scale:0 nightMode:&v47 withWidthPaddingMultiple:? fullBleedColor:?];
        clearColor = v47;

        if (!v14)
        {
          sharedInstance2 = [*(v9 + 2832) sharedInstance];
          parameters2 = [accumulatorCopy parameters];
          [parameters2 scale];
          v46 = clearColor;
          v14 = [sharedInstance2 transitArtworkImageWithDataSource:v11 size:7 featureType:2 scale:0 nightMode:&v46 withWidthPaddingMultiple:? fullBleedColor:?];
          v18 = v46;
          v19 = clearColor;
          clearColor = v18;
        }

        triedKeys = [accumulatorCopy triedKeys];
        [triedKeys addObject:v11];

        if (!v14)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          fallbackImageKeys = [v11 fallbackImageKeys];
          v28 = [fallbackImageKeys countByEnumeratingWithState:&v42 objects:v52 count:16];
          if (v28)
          {
            v29 = v28;
            v39 = clearColor;
            v30 = *v43;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v43 != v30)
                {
                  objc_enumerationMutation(fallbackImageKeys);
                }

                v32 = *(*(&v42 + 1) + 8 * j);
                triedKeys2 = [accumulatorCopy triedKeys];
                if (containsKey(triedKeys2, v32))
                {
                }

                else
                {
                  v34 = containsKey(v7, v32);

                  if ((v34 & 1) == 0)
                  {
                    [v7 addObject:v32];
                  }
                }
              }

              v29 = [fallbackImageKeys countByEnumeratingWithState:&v42 objects:v52 count:16];
            }

            while (v29);
            v8 = v38;
            clearColor = v39;
            v9 = 0x1E76C4000;
          }

          v14 = 0;
LABEL_28:

          goto LABEL_29;
        }

        fallbackImageKeys = UIImagePNGRepresentation(v14);
        if (!fallbackImageKeys)
        {
          goto LABEL_28;
        }

        imageDatas = [accumulatorCopy imageDatas];
        v23 = [imageDatas containsObject:fallbackImageKeys];

        if (v23)
        {
          goto LABEL_28;
        }

        if (!clearColor)
        {
          clearColor = [MEMORY[0x1E69DC888] clearColor];
        }

        imageDatas2 = [accumulatorCopy imageDatas];
        [imageDatas2 addObject:fallbackImageKeys];

        mutableImages = [accumulatorCopy mutableImages];
        [mutableImages addObject:v14];

        [accumulatorCopy addFullBleedColor:clearColor];
        mutableImages2 = [accumulatorCopy mutableImages];
        v27 = [mutableImages2 count];

        if (v27 >= 5)
        {

          goto LABEL_31;
        }

LABEL_29:
      }

      v41 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v41);
  }

LABEL_31:

  if ([v7 count])
  {
    mutableImages3 = [accumulatorCopy mutableImages];
    v36 = [mutableImages3 count];

    if (v36 <= 4)
    {
      [v7 sortUsingComparator:&__block_literal_global_43673];
      [selfCopy _recursivelyGetImages:v7 accumulator:accumulatorCopy];
    }
  }
}

uint64_t __68__MKVKImageSourceKeyImageBuilder__recursivelyGetImages_accumulator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 keyType];
  if (v6 < [v5 keyType])
  {
    goto LABEL_2;
  }

  v8 = [v4 keyType];
  if (v8 > [v5 keyType])
  {
LABEL_4:
    v7 = 1;
    goto LABEL_16;
  }

  v9 = [v4 keyType];
  if ((v9 - 4) < 2)
  {
    v12 = [v4 imageName];
    v13 = [v5 imageName];
    goto LABEL_12;
  }

  if (v9 == 2)
  {
    v15 = [v4 iconAttributeKey];
    if (v15 >= [v5 iconAttributeKey])
    {
      v16 = [v4 iconAttributeKey];
      v7 = v16 > [v5 iconAttributeKey];
      goto LABEL_16;
    }

    goto LABEL_2;
  }

  if (v9 != 1)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v10 = [v4 shieldType];
  if (v10 >= [v5 shieldType])
  {
    v11 = [v4 shieldType];
    if (v11 > [v5 shieldType])
    {
      goto LABEL_4;
    }

    v12 = [v4 shieldText];
    v13 = [v5 shieldText];
LABEL_12:
    v14 = v13;
    v7 = [v12 compare:v13];

    goto LABEL_16;
  }

LABEL_2:
  v7 = -1;
LABEL_16:

  return v7;
}

+ (id)calculateImagesForParameters:(id)parameters
{
  v21 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v5 = [[MKVKImageSourceKeyImageResult alloc] initWithParameters:parametersCopy];
  imageSourceKeys = [parametersCopy imageSourceKeys];

  v7 = imageSourceKeys;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ((containsKey(v8, v14) & 1) == 0)
        {
          [v8 addObject:{v14, v16}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [self _recursivelyGetImages:v8 accumulator:v5];

  return v5;
}

@end