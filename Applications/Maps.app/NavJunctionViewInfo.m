@interface NavJunctionViewInfo
- (BOOL)isEqual:(id)a3;
- (NavJunctionViewInfo)initWithGuidanceJunctionViewInfo:(id)a3;
- (UIImage)junctionViewDarkenedImage;
- (UIImage)junctionViewImage;
- (id)compositeImages:(id)a3;
- (id)description;
- (id)images;
@end

@implementation NavJunctionViewInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(NavJunctionViewInfo *)self junctionViewId];
    v6 = [v4 junctionViewId];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = NavJunctionViewInfo;
  v3 = [(NavJunctionViewInfo *)&v9 description];
  v4 = [NSMutableString stringWithFormat:@"%@\n", v3];

  v5 = [(NavJunctionViewInfo *)self junctionViewId];
  [v4 appendFormat:@"ID: [%@]\n", v5];

  v6 = [(NavJunctionViewInfo *)self junctionViewImage];
  [v4 appendFormat:@"image: %@", v6];

  v7 = [v4 copy];

  return v7;
}

- (id)compositeImages:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    [v4 size];
    v6 = v5;
    v8 = v7;

    v23.width = v6;
    v23.height = v8;
    UIGraphicsBeginImageContextWithOptions(v23, 0, 1.0);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      y = CGPointZero.y;
      v13 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v17 + 1) + 8 * i) drawInRect:{CGPointZero.x, y, v6, v8, v17}];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v15 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)images
{
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NavJunctionViewInfo *)self imagesData];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [UIImage imageWithData:*(*(&v11 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (UIImage)junctionViewDarkenedImage
{
  junctionViewDarkenedImage = self->_junctionViewDarkenedImage;
  if (!junctionViewDarkenedImage)
  {
    v4 = [(NavJunctionViewInfo *)self images];
    v5 = [v4 firstObject];
    v6 = +[UIColor blackColor];
    v7 = [v6 colorWithAlphaComponent:0.300000012];
    v8 = [v5 _maps_colorizedImageWithColor:v7];

    if (v8)
    {
      [v4 setObject:v8 atIndexedSubscript:0];
    }

    v9 = [(NavJunctionViewInfo *)self compositeImages:v4];
    v10 = self->_junctionViewDarkenedImage;
    self->_junctionViewDarkenedImage = v9;

    junctionViewDarkenedImage = self->_junctionViewDarkenedImage;
  }

  return junctionViewDarkenedImage;
}

- (UIImage)junctionViewImage
{
  junctionViewImage = self->_junctionViewImage;
  if (!junctionViewImage)
  {
    v4 = [(NavJunctionViewInfo *)self images];
    v5 = [(NavJunctionViewInfo *)self compositeImages:v4];
    v6 = self->_junctionViewImage;
    self->_junctionViewImage = v5;

    junctionViewImage = self->_junctionViewImage;
  }

  return junctionViewImage;
}

- (NavJunctionViewInfo)initWithGuidanceJunctionViewInfo:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NavJunctionViewInfo;
  v5 = [(NavJunctionViewInfo *)&v23 init];
  if (v5)
  {
    v6 = [v4 uniqueID];
    v7 = [v6 copy];
    junctionViewId = v5->_junctionViewId;
    v5->_junctionViewId = v7;

    v9 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v4 images];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v19 + 1) + 8 * v14) imageData];
          if (v15)
          {
            [v9 addObject:v15];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    v16 = [v9 copy];
    imagesData = v5->_imagesData;
    v5->_imagesData = v16;
  }

  return v5;
}

@end