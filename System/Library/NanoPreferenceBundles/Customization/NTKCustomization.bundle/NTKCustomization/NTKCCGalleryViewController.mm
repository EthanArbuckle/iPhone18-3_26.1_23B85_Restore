@interface NTKCCGalleryViewController
- (NTKCCGalleryViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)_faceAdded:(id)added;
- (void)_performFaceGalleryScrollTestNamed:(id)named iterations:(int)iterations;
- (void)_showInfoPopoverIfNecessaryForFace:(id)face;
- (void)viewDidLoad;
@end

@implementation NTKCCGalleryViewController

- (NTKCCGalleryViewController)init
{
  v9.receiver = self;
  v9.super_class = NTKCCGalleryViewController;
  v2 = [(NTKCCGalleryViewController *)&v9 initWithNibName:0 bundle:0];
  if (v2)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v3 = qword_27818;
    v14 = qword_27818;
    if (!qword_27818)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_16D8;
      v10[3] = &unk_20C88;
      v10[4] = &v11;
      sub_16D8(v10);
      v3 = v12[3];
    }

    v4 = v3;
    _Block_object_dispose(&v11, 8);
    v5 = [[v3 alloc] initWithNibName:0 bundle:0];
    superGalleryViewController = v2->_superGalleryViewController;
    v2->_superGalleryViewController = v5;

    v7 = NTKCCustomizationLocalizedString();
    [(UIViewController *)v2->_superGalleryViewController setTitle:v7];
  }

  return v2;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = NTKCCGalleryViewController;
  [(NTKCCGalleryViewController *)&v13 viewDidLoad];
  [(NTKCCGalleryViewController *)self addChildViewController:self->_superGalleryViewController];
  view = [(NTKCCGalleryViewController *)self view];
  view2 = [(UIViewController *)self->_superGalleryViewController view];
  [view addSubview:view2];
  widthAnchor = [view widthAnchor];
  widthAnchor2 = [view2 widthAnchor];
  v6 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v14[0] = v6;
  heightAnchor = [view heightAnchor];
  heightAnchor2 = [view2 heightAnchor];
  v9 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v14[1] = v9;
  v10 = [NSArray arrayWithObjects:v14 count:2];
  [NSLayoutConstraint activateConstraints:v10];

  [(UIViewController *)self->_superGalleryViewController didMoveToParentViewController:self];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_faceAdded:" name:NTKCFaceDetailViewControllerDidAddFace object:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (PSIsN56())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_performFaceGalleryScrollTestNamed:(id)named iterations:(int)iterations
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C604;
  block[3] = &unk_20890;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_faceAdded:(id)added
{
  object = [added object];
  [(NTKCCGalleryViewController *)self _showInfoPopoverIfNecessaryForFace:object];
}

- (void)_showInfoPopoverIfNecessaryForFace:(id)face
{
  faceCopy = face;
  if (+[NTKCCFaceAddedInfoViewController shouldShow])
  {
    customEditModes = [faceCopy customEditModes];
    v6 = [customEditModes count];

    if (v6)
    {
      v7 = objc_opt_new();
      [(NTKCCGalleryViewController *)self setInfoPopover:v7];

      [(NTKCCFaceAddedInfoViewController *)self->_infoPopover setModalPresentationStyle:7];
      popoverPresentationController = [(NTKCCFaceAddedInfoViewController *)self->_infoPopover popoverPresentationController];
      [popoverPresentationController setPermittedArrowDirections:2];
      v9 = +[NTKCCFaceAddedInfoViewController backgroundColor];
      [popoverPresentationController setBackgroundColor:v9];

      +[NTKCCFaceAddedInfoViewController layoutMargins];
      [popoverPresentationController setPopoverLayoutMargins:?];
      [popoverPresentationController setDelegate:self];
      view = [(NTKCCGalleryViewController *)self view];
      [popoverPresentationController setSourceView:view];
      IsRTL = CLKLayoutIsRTL();
      tabBarController = [(NTKCCGalleryViewController *)self tabBarController];
      tabBar = [tabBarController tabBar];

      if (tabBar)
      {
        v29 = tabBar;
        v14 = [NSArray arrayWithObjects:&v29 count:1];
        [popoverPresentationController setPassthroughViews:v14];

        [tabBar bounds];
        [tabBar convertRect:view toView:?];
        x = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
        v19 = CGRectGetWidth(v30);
        items = [tabBar items];
        v21 = v19 / [items count];

        v22 = x;
        v23 = y;
        v24 = width;
        v25 = height;
        if (IsRTL)
        {
          MinX = CGRectGetMaxX(*&v22) - v21;
        }

        else
        {
          MinX = CGRectGetMinX(*&v22);
        }

        v28 = y + -2.0;
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        v27 = CGRectGetHeight(v33) + 2.0;
      }

      else
      {
        v27 = 0.0;
        MinX = 0.0;
        if (IsRTL)
        {
          [view bounds];
          MinX = CGRectGetWidth(v31);
        }

        [view bounds];
        v28 = CGRectGetHeight(v32);
        v21 = 0.0;
      }

      [popoverPresentationController setSourceRect:{MinX, v28, v21, v27}];
      [(NTKCCGalleryViewController *)self presentViewController:self->_infoPopover animated:1 completion:0];
    }
  }
}

@end