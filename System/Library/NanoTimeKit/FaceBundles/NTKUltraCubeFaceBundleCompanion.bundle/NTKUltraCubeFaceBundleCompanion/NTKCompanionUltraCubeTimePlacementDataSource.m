@interface NTKCompanionUltraCubeTimePlacementDataSource
+ (id)_imageForOption:(int64_t)a3;
+ (id)_labelTextForOption:(int64_t)a3 disambiguateLayers:(BOOL)a4;
- (NTKCompanionUltraCubeTimePlacementDataSource)initWithOptions:(id)a3;
- (id)indexPathForOption:(int64_t)a3;
- (id)infoForItemAtIndexPath:(id)a3;
@end

@implementation NTKCompanionUltraCubeTimePlacementDataSource

- (NTKCompanionUltraCubeTimePlacementDataSource)initWithOptions:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NTKCompanionUltraCubeTimePlacementDataSource;
  v5 = [(NTKCompanionUltraCubeTimePlacementDataSource *)&v24 init];
  if (v5)
  {
    if ([v4 containsObject:&off_4B900])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v4 containsObject:&off_4B918];
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_27EF4;
    v22[3] = &unk_49540;
    v23 = v6;
    v7 = objc_retainBlock(v22);
    v8 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = (v7[2])(v7, *(*(&v18 + 1) + 8 * v13));
          if (v14)
          {
            [v8 addObject:{v14, v18}];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v11);
    }

    v15 = [v8 copy];
    infos = v5->_infos;
    v5->_infos = v15;
  }

  return v5;
}

- (id)indexPathForOption:(int64_t)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_infos;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      v7 += v6;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v13 + 1) + 8 * v9) ntk_option] == a3)
        {
          v11 = [NSIndexPath indexPathForItem:v10 inSection:0];
          goto LABEL_11;
        }

        ++v10;
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (id)_imageForOption:(int64_t)a3
{
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:1 scale:28.0];
  v5 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v6 = @"platter.top.applewatch.case";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_12;
      }

      v6 = @"platter.filled.top.applewatch.case";
    }

    goto LABEL_10;
  }

  if (a3 == 3)
  {
    v6 = @"platter.filled.bottom.applewatch.case";
LABEL_10:
    v5 = [UIImage systemImageNamed:v6 withConfiguration:v4];
    goto LABEL_11;
  }

  if (a3 == 4)
  {
LABEL_11:
    v7 = [v5 imageWithRenderingMode:2];

    v5 = v7;
  }

LABEL_12:

  return v5;
}

+ (id)_labelTextForOption:(int64_t)a3 disambiguateLayers:(BOOL)a4
{
  if (a4)
  {
    v4 = &stru_49630;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v5 = @"BOTTOM_FRONT";
        v6 = @"Bottom Front";
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_16;
        }

        v5 = @"BOTTOM_BEHIND";
        v6 = @"Bottom Behind";
      }
    }

    else if (a3 == 1)
    {
      v5 = @"TOP_BEHIND";
      v6 = @"Top Behind";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_16;
      }

      v5 = @"TOP_FRONT";
      v6 = @"Top Front";
    }

    goto LABEL_15;
  }

  if ((a3 - 3) < 2)
  {
    v5 = @"BOTTOM";
    v6 = @"Bottom";
    goto LABEL_15;
  }

  if ((a3 - 1) <= 1)
  {
    v5 = @"TOP";
    v6 = @"Top";
LABEL_15:
    v4 = [NTKUltraCubeFaceBundle localizedStringForKey:v5 comment:v6];
    goto LABEL_16;
  }

  v4 = &stru_49630;
LABEL_16:

  return v4;
}

- (id)infoForItemAtIndexPath:(id)a3
{
  v4 = [a3 item];
  if (v4 >= [(NSArray *)self->_infos count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_infos objectAtIndex:v4];
  }

  return v5;
}

@end