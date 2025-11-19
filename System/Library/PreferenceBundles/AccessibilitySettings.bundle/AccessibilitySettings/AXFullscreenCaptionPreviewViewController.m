@interface AXFullscreenCaptionPreviewViewController
- (AXFullscreenCaptionPreviewViewController)init;
- (id)_nextCludImage;
- (int64_t)_nextCloudImageIndex;
- (void)_handlePreviewTapped:(id)a3;
- (void)_transitionToNextCloudImage;
- (void)dealloc;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation AXFullscreenCaptionPreviewViewController

- (AXFullscreenCaptionPreviewViewController)init
{
  v3.receiver = self;
  v3.super_class = AXFullscreenCaptionPreviewViewController;
  result = [(AXFullscreenCaptionPreviewViewController *)&v3 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_visibleCloudImageIndex = -1;
  }

  return result;
}

- (void)dealloc
{
  [(NSTimer *)self->_cloudTimer invalidate];
  cloudTimer = self->_cloudTimer;
  self->_cloudTimer = 0;

  v4.receiver = self;
  v4.super_class = AXFullscreenCaptionPreviewViewController;
  [(AXFullscreenCaptionPreviewViewController *)&v4 dealloc];
}

- (void)_handlePreviewTapped:(id)a3
{
  [(NSTimer *)self->_cloudTimer invalidate];
  cloudTimer = self->_cloudTimer;
  self->_cloudTimer = 0;

  v5 = [(AXFullscreenCaptionPreviewViewController *)self presentingViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (int64_t)_nextCloudImageIndex
{
  if (self->_visibleCloudImageIndex == -1)
  {
    return 0;
  }

  v3 = +[AXCaptionPreviewView cloudImages];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  else
  {
    return (self->_visibleCloudImageIndex + 1) % v4;
  }
}

- (id)_nextCludImage
{
  v3 = [(AXFullscreenCaptionPreviewViewController *)self _nextCloudImageIndex];
  ++self->_visibleCloudImageIndex;
  v4 = +[AXCaptionPreviewView cloudImages];
  v5 = v4;
  if (v3)
  {
    [v4 objectAtIndex:v3];
  }

  else
  {
    [v4 firstObject];
  }
  v6 = ;

  return v6;
}

- (void)_transitionToNextCloudImage
{
  v3 = [(AXFullscreenCaptionPreviewViewController *)self _previewView];
  v4 = [(AXFullscreenCaptionPreviewViewController *)self _previewView];
  v5 = [v4 cloudsView1];
  [v5 alpha];
  v7 = v6;

  v8 = [(AXFullscreenCaptionPreviewViewController *)self _previewView];
  v9 = v8;
  if (v7 == 1.0)
  {
    v10 = [v8 cloudsView2];

    v11 = [(AXFullscreenCaptionPreviewViewController *)self _previewView];
    [v11 cloudsView1];
  }

  else
  {
    v10 = [v8 cloudsView1];

    v11 = [(AXFullscreenCaptionPreviewViewController *)self _previewView];
    [v11 cloudsView2];
  }
  v12 = ;

  v13 = [(AXFullscreenCaptionPreviewViewController *)self _nextCludImage];
  [v10 setImage:v13];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __71__AXFullscreenCaptionPreviewViewController__transitionToNextCloudImage__block_invoke;
  v21[3] = &unk_2553B0;
  v22 = v10;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __71__AXFullscreenCaptionPreviewViewController__transitionToNextCloudImage__block_invoke_2;
  v17[3] = &unk_257818;
  v18 = v12;
  v19 = v3;
  v20 = v22;
  v14 = v22;
  v15 = v3;
  v16 = v12;
  [UIView animateWithDuration:v21 animations:v17 completion:2.0];
}

void __71__AXFullscreenCaptionPreviewViewController__transitionToNextCloudImage__block_invoke_2(id *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __71__AXFullscreenCaptionPreviewViewController__transitionToNextCloudImage__block_invoke_3;
  v2[3] = &unk_2561D8;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  [UIView performWithoutAnimation:v2];
}

id __71__AXFullscreenCaptionPreviewViewController__transitionToNextCloudImage__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 sendSubviewToBack:v3];
}

- (void)loadView
{
  v3 = objc_alloc_init(_AXFullscreenCaptionPreviewView);
  [(AXFullscreenCaptionPreviewViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = AXFullscreenCaptionPreviewViewController;
  [(AXFullscreenCaptionPreviewViewController *)&v8 viewDidLoad];
  [(AXFullscreenCaptionPreviewViewController *)self setModalPresentationCapturesStatusBarAppearance:1];
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handlePreviewTapped:"];
  v4 = [(AXFullscreenCaptionPreviewViewController *)self view];
  [v4 addGestureRecognizer:v3];

  v5 = [(AXFullscreenCaptionPreviewViewController *)self _previewView];
  v6 = [v5 cloudsView1];
  v7 = [(AXFullscreenCaptionPreviewViewController *)self _nextCludImage];
  [v6 setImage:v7];
}

- (void)viewDidAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = AXFullscreenCaptionPreviewViewController;
  [(AXFullscreenCaptionPreviewViewController *)&v14 viewDidAppear:a3];
  objc_initWeak(&location, self);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __58__AXFullscreenCaptionPreviewViewController_viewDidAppear___block_invoke;
  v11 = &unk_258F70;
  objc_copyWeak(&v12, &location);
  v4 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:&v8 block:3.5];
  cloudTimer = self->_cloudTimer;
  self->_cloudTimer = v4;

  v6 = [(AXFullscreenCaptionPreviewViewController *)self view:v8];
  v7 = [v6 captionSubtitlePreviewView];
  [v7 update];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __58__AXFullscreenCaptionPreviewViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transitionToNextCloudImage];
}

@end