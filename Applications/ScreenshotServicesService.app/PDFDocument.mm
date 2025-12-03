@interface PDFDocument
- (id)_stitchPageImages:(id)images;
- (id)asImage;
@end

@implementation PDFDocument

- (id)asImage
{
  if ([(PDFDocument *)self pageCount])
  {
    v3 = +[NSMutableArray array];
    pageCount = [(PDFDocument *)self pageCount];
    if (pageCount)
    {
      v5 = pageCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDFDocument *)self pageAtIndex:i];
        v8 = [v7 imageWithBox:1];
        [v3 addObject:v8];
      }
    }

    v9 = [(PDFDocument *)self _stitchPageImages:v3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_stitchPageImages:(id)images
{
  imagesCopy = images;
  if ([imagesCopy count])
  {
    if ([imagesCopy count] == 1)
    {
      firstObject = [imagesCopy firstObject];
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v5 = imagesCopy;
      v6 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v38;
        v9 = 0.0;
        v10 = 0.0;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v38 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v12 = *(*(&v37 + 1) + 8 * i);
            [v12 size];
            v14 = v13;
            [v12 scale];
            v16 = v14 * v15;
            [v12 size];
            v18 = v17;
            [v12 scale];
            v20 = v18 * v19;
            if (v16 > v10)
            {
              v10 = v16;
            }

            v9 = v9 + v20;
          }

          v7 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v7);
      }

      else
      {
        v9 = 0.0;
        v10 = 0.0;
      }

      v44.width = v10;
      v44.height = v9;
      UIGraphicsBeginImageContext(v44);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v21 = v5;
      v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v34;
        v25 = 0.0;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v27 = *(*(&v33 + 1) + 8 * j);
            [v27 size];
            [v27 scale];
            [v27 size];
            v29 = v28;
            [v27 scale];
            v31 = v29 * v30;
            [v27 drawInRect:{0.0, v25, v10, v31}];
            v25 = v25 + v31;
          }

          v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v23);
      }

      firstObject = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end