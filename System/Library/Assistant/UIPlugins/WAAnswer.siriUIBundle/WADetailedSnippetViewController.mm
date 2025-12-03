@interface WADetailedSnippetViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (WADetailedSnippetViewController)initWithAnswerSnippet:(id)snippet;
- (double)desiredHeightForWidth:(double)width;
- (id)_blendedImageFromImage:(id)image;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)sashItem;
- (void)attributionViewTapped:(id)tapped;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
- (void)wasAddedToTranscript;
@end

@implementation WADetailedSnippetViewController

- (WADetailedSnippetViewController)initWithAnswerSnippet:(id)snippet
{
  snippetCopy = snippet;
  v10.receiver = self;
  v10.super_class = WADetailedSnippetViewController;
  v5 = [(WADetailedSnippetViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(WADetailedSnippetViewController *)v5 setSnippet:snippetCopy];
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
  delegate = [(WADetailedSnippetViewController *)self delegate];
  v4 = [delegate persistentDataStoreForSiriViewController:self];

  group = dispatch_group_create();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  snippet = [(WADetailedSnippetViewController *)self snippet];
  answers = [snippet answers];

  obj = answers;
  v32 = [answers countByEnumeratingWithState:&v52 objects:v58 count:16];
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
        title = [v9 title];
        [(WATextHeaderView *)v10 setText:title];

        v33 = v10;
        [(NSMutableArray *)self->_answerViews addObject:v10];
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        lines = [v9 lines];
        v39 = [lines countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v39)
        {
          v38 = *v49;
          do
          {
            for (i = 0; i != v39; i = i + 1)
            {
              if (*v49 != v38)
              {
                objc_enumerationMutation(lines);
              }

              v13 = *(*(&v48 + 1) + 8 * i);
              v14 = objc_alloc_init((v7 + 141));
              [(NSMutableArray *)self->_answerViews addObject:v14];
              imageInverted = [v13 imageInverted];
              if (imageInverted)
              {
                imageInverted2 = [v13 imageInverted];
                [v14 setShouldInvert:{objc_msgSend(imageInverted2, "BOOLValue") ^ 1}];
              }

              else
              {
                [v14 setShouldInvert:0];
              }

              imageResource = [v13 imageResource];
              imageData = [imageResource imageData];
              v19 = [NSData dataWithData:imageData];
              v20 = [UIImage imageWithData:v19];

              imageResource2 = [v13 imageResource];
              resourceUrl = [imageResource2 resourceUrl];

              if (v20)
              {
                [v14 setImage:v20];
                traitCollection = [(WADetailedSnippetViewController *)self traitCollection];
                if ([traitCollection userInterfaceStyle] == &dword_0 + 2)
                {
                  shouldInvert = [v14 shouldInvert];

                  if (shouldInvert)
                  {
                    [v14 invertImage];
                  }
                }

                else
                {
                }
              }

              else if (resourceUrl)
              {
                absoluteString = [resourceUrl absoluteString];
                v26 = [v40 imageForKey:absoluteString];
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
                  v27 = resourceUrl;
                  v43 = v27;
                  v44 = v40;
                  v45 = absoluteString;
                  v46 = v14;
                  v47 = group;
                  v28 = [v36 imageTaskWithHTTPGetRequest:v27 client:self completionHandler:v42];
                }

                v7 = &selRef__canShowWhileLocked;
              }

              v4 = v40;
            }

            v39 = [lines countByEnumeratingWithState:&v48 objects:v57 count:16];
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
  collectionView = [(WADetailedSnippetViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[WATextHeaderView reuseIdentifier];
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[WAImageView reuseIdentifier];
  [collectionView registerClass:v6 forCellWithReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = +[WAAttributionView reuseIdentifier];
  [collectionView registerClass:v8 forCellWithReuseIdentifier:v9];
}

- (double)desiredHeightForWidth:(double)width
{
  if (([(WADetailedSnippetViewController *)self isViewLoaded]& 1) == 0)
  {
    [(WADetailedSnippetViewController *)self loadView];
  }

  collectionView = [(WADetailedSnippetViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
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

- (void)attributionViewTapped:(id)tapped
{
  delegate = [(WADetailedSnippetViewController *)self delegate];
  snippet = [(WADetailedSnippetViewController *)self snippet];
  answerPunchOut = [snippet answerPunchOut];
  v8 = answerPunchOut;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [delegate siriViewController:self performAceCommands:v7];
}

- (id)_blendedImageFromImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v5 = v4;
  [imageCopy size];
  v7 = v6;
  [imageCopy size];
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [imageCopy size];
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
  cGImage = [imageCopy CGImage];

  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v5;
  v22.size.height = v7;
  CGContextDrawImage(v15, v22, cGImage);
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  answerViews = self->_answerViews;
  pathCopy = path;
  v7 = -[NSMutableArray objectAtIndex:](answerViews, "objectAtIndex:", [pathCopy item]);
  collectionView = [(WADetailedSnippetViewController *)self collectionView];
  reuseIdentifier = [objc_opt_class() reuseIdentifier];
  v10 = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [v7 text];
    [v10 setText:text];
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [v7 image];
    [v10 setImage:text];
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

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(NSMutableArray *)self->_answerViews count];
  if (v7 <= [pathCopy item])
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    v8 = -[NSMutableArray objectAtIndex:](self->_answerViews, "objectAtIndex:", [pathCopy item]);
    delegate = [(WADetailedSnippetViewController *)self delegate];
    [delegate siriViewControllerExpectedWidth:self];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v19.receiver = self;
  v19.super_class = WADetailedSnippetViewController;
  [(WADetailedSnippetViewController *)&v19 traitCollectionDidChange:changeCopy];
  traitCollection = [(WADetailedSnippetViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != [changeCopy userInterfaceStyle])
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

    view = [(WADetailedSnippetViewController *)self view];
    [view reloadData];
  }
}

@end