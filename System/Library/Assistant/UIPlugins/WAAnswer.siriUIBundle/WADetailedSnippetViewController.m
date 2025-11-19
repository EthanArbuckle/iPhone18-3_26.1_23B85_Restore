@interface WADetailedSnippetViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (WADetailedSnippetViewController)initWithAnswerSnippet:(id)a3;
- (double)desiredHeightForWidth:(double)a3;
- (id)_blendedImageFromImage:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)sashItem;
- (void)attributionViewTapped:(id)a3;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
- (void)wasAddedToTranscript;
@end

@implementation WADetailedSnippetViewController

- (WADetailedSnippetViewController)initWithAnswerSnippet:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WADetailedSnippetViewController;
  v5 = [(WADetailedSnippetViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(WADetailedSnippetViewController *)v5 setSnippet:v4];
    [(WADetailedSnippetViewController *)v6 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v7 = +[NSMutableArray array];
    answerViews = v6->_answerViews;
    v6->_answerViews = v7;

    [(WADetailedSnippetViewController *)v6 setLoading:1];
  }

  return v6;
}

- (void)wasAddedToTranscript
{
  v56.receiver = self;
  v56.super_class = WADetailedSnippetViewController;
  [(WADetailedSnippetViewController *)&v56 wasAddedToTranscript];
  v3 = [(WADetailedSnippetViewController *)self delegate];
  v4 = [v3 persistentDataStoreForSiriViewController:self];

  group = dispatch_group_create();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = [(WADetailedSnippetViewController *)self snippet];
  v6 = [v5 answers];

  obj = v6;
  v32 = [v6 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v32)
  {
    v31 = *v53;
    v7 = &selRef__canShowWhileLocked;
    v40 = v4;
    do
    {
      v8 = 0;
      do
      {
        if (*v53 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v8;
        v9 = *(*(&v52 + 1) + 8 * v8);
        v10 = objc_alloc_init(WATextHeaderView);
        v11 = [v9 title];
        [(WATextHeaderView *)v10 setText:v11];

        v33 = v10;
        [(NSMutableArray *)self->_answerViews addObject:v10];
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v37 = [v9 lines];
        v39 = [v37 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v39)
        {
          v38 = *v49;
          do
          {
            for (i = 0; i != v39; i = i + 1)
            {
              if (*v49 != v38)
              {
                objc_enumerationMutation(v37);
              }

              v13 = *(*(&v48 + 1) + 8 * i);
              v14 = objc_alloc_init((v7 + 141));
              [(NSMutableArray *)self->_answerViews addObject:v14];
              v15 = [v13 imageInverted];
              if (v15)
              {
                v16 = [v13 imageInverted];
                [v14 setShouldInvert:{objc_msgSend(v16, "BOOLValue") ^ 1}];
              }

              else
              {
                [v14 setShouldInvert:0];
              }

              v17 = [v13 imageResource];
              v18 = [v17 imageData];
              v19 = [NSData dataWithData:v18];
              v20 = [UIImage imageWithData:v19];

              v21 = [v13 imageResource];
              v22 = [v21 resourceUrl];

              if (v20)
              {
                [v14 setImage:v20];
                v23 = [(WADetailedSnippetViewController *)self traitCollection];
                if ([v23 userInterfaceStyle] == &dword_0 + 2)
                {
                  v24 = [v14 shouldInvert];

                  if (v24)
                  {
                    [v14 invertImage];
                  }
                }

                else
                {
                }
              }

              else if (v22)
              {
                v25 = [v22 absoluteString];
                v26 = [v40 imageForKey:v25];
                if (v26)
                {
                  [v14 setImage:v26];
                }

                else
                {
                  dispatch_group_enter(group);
                  v36 = +[SiriUIURLSession sharedURLSession];
                  v42[0] = _NSConcreteStackBlock;
                  v42[1] = 3221225472;
                  v42[2] = sub_1AC0;
                  v42[3] = &unk_82E0;
                  v42[4] = v13;
                  v42[5] = self;
                  v27 = v22;
                  v43 = v27;
                  v44 = v40;
                  v45 = v25;
                  v46 = v14;
                  v47 = group;
                  v28 = [v36 imageTaskWithHTTPGetRequest:v27 client:self completionHandler:v42];
                }

                v7 = &selRef__canShowWhileLocked;
              }

              v4 = v40;
            }

            v39 = [v37 countByEnumeratingWithState:&v48 objects:v57 count:16];
          }

          while (v39);
        }

        v8 = v34 + 1;
      }

      while ((v34 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v32);
  }

  v29 = [[WAAttributionView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(NSMutableArray *)self->_answerViews addObject:v29];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1D04;
  block[3] = &unk_8308;
  block[4] = self;
  dispatch_group_notify(group, &_dispatch_main_q, block);
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = WADetailedSnippetViewController;
  [(WADetailedSnippetViewController *)&v10 loadView];
  v3 = [(WADetailedSnippetViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[WATextHeaderView reuseIdentifier];
  [v3 registerClass:v4 forCellWithReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[WAImageView reuseIdentifier];
  [v3 registerClass:v6 forCellWithReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = +[WAAttributionView reuseIdentifier];
  [v3 registerClass:v8 forCellWithReuseIdentifier:v9];
}

- (double)desiredHeightForWidth:(double)a3
{
  if (([(WADetailedSnippetViewController *)self isViewLoaded]& 1) == 0)
  {
    [(WADetailedSnippetViewController *)self loadView];
  }

  v4 = [(WADetailedSnippetViewController *)self collectionView];
  v5 = [v4 collectionViewLayout];
  [v5 collectionViewContentSize];
  v7 = v6;

  return v7;
}

- (id)sashItem
{
  v2 = [[SiriUISashItem alloc] initWithApplicationBundleIdentifier:@"com.wolframalpha.wolframalpha"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [[SiriUISashItem alloc] initWithApplicationBundleIdentifier:@"com.apple.mobilesafari"];
  }

  v5 = v4;

  [v5 setTitle:@"Wolfram Alpha"];

  return v5;
}

- (void)attributionViewTapped:(id)a3
{
  v4 = [(WADetailedSnippetViewController *)self delegate];
  v5 = [(WADetailedSnippetViewController *)self snippet];
  v6 = [v5 answerPunchOut];
  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v4 siriViewController:self performAceCommands:v7];
}

- (id)_blendedImageFromImage:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = v4;
  [v3 size];
  v7 = v6;
  [v3 size];
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v3 size];
  CGContextTranslateCTM(CurrentContext, 0.0, v9);
  v10 = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(v10, 1.0, -1.0);
  v11 = UIGraphicsGetCurrentContext();
  v12 = [UIColor colorWithWhite:1.0 alpha:0.5];
  CGContextSetFillColorWithColor(v11, [v12 CGColor]);

  v13 = UIGraphicsGetCurrentContext();
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v5;
  v21.size.height = v7;
  CGContextFillRect(v13, v21);
  v14 = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(v14, kCGBlendModeScreen);
  v15 = UIGraphicsGetCurrentContext();
  v16 = [v3 CGImage];

  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v5;
  v22.size.height = v7;
  CGContextDrawImage(v15, v22, v16);
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  answerViews = self->_answerViews;
  v6 = a4;
  v7 = -[NSMutableArray objectAtIndex:](answerViews, "objectAtIndex:", [v6 item]);
  v8 = [(WADetailedSnippetViewController *)self collectionView];
  v9 = [objc_opt_class() reuseIdentifier];
  v10 = [v8 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v7 text];
    [v10 setText:v11];
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v7 image];
    [v10 setImage:v11];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setDelegate:self];
  }

LABEL_6:

  return v10;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(NSMutableArray *)self->_answerViews count];
  if (v7 <= [v6 item])
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    v8 = -[NSMutableArray objectAtIndex:](self->_answerViews, "objectAtIndex:", [v6 item]);
    v9 = [(WADetailedSnippetViewController *)self delegate];
    [v9 siriViewControllerExpectedWidth:self];
    v11 = v10;

    [v8 sizeThatFits:{v11, 1.79769313e308}];
    width = v12;
    height = v14;
  }

  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = WADetailedSnippetViewController;
  [(WADetailedSnippetViewController *)&v19 traitCollectionDidChange:v4];
  v5 = [(WADetailedSnippetViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 != [v4 userInterfaceStyle])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_answerViews;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            if ([v13 shouldInvert])
            {
              [v13 invertImage];
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    v14 = [(WADetailedSnippetViewController *)self view];
    [v14 reloadData];
  }
}

@end