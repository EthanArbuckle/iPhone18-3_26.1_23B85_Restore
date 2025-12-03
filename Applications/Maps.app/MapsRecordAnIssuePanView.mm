@interface MapsRecordAnIssuePanView
- (MapsRecordAnIssueDebugController)parentController;
- (MapsRecordAnIssuePanView)initWithParent:(id)parent;
- (id)convertImageToGrayScale:(id)scale;
- (void)changeColor;
- (void)endRecording;
- (void)mapsRecordAnIssueEndViewPan:(id)pan;
@end

@implementation MapsRecordAnIssuePanView

- (MapsRecordAnIssueDebugController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

- (void)endRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  view = [WeakRetained view];
  window = [view window];

  v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  v7 = +[UIColor grayColor];
  [v6 setColor:v7];

  [window frame];
  v9 = v8 * 0.5;
  [window frame];
  [v6 setCenter:{v9, v10 * 0.5}];
  [window addSubview:v6];
  [v6 startAnimating];
  +[MapsEventRecorder defaultRecorder];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100CF2CDC;
  v13[3] = &unk_101661A40;
  v13[4] = self;
  v15 = v14 = v6;
  v11 = v15;
  v12 = v6;
  [v11 endRecordingWithCompletion:v13];
}

- (void)mapsRecordAnIssueEndViewPan:(id)pan
{
  panCopy = pan;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  view = [WeakRetained view];
  window = [view window];

  [window frame];
  v8 = v7;
  [window frame];
  v10 = v9;
  view2 = [panCopy view];
  [view2 frame];
  v13 = v12;
  [view2 frame];
  v15 = v14;
  [panCopy translationInView:window];
  v17 = v16;
  v19 = v18;
  [view2 center];
  v21 = v20 + v17;
  [view2 center];
  v23 = v22 + v19;
  if (v21 < v13 * 0.5 || v21 + v13 * 0.5 > v8)
  {
    [view2 center];
    v21 = v25;
  }

  if (v23 < v15 * 0.5 || v23 + v15 * 0.5 > v10)
  {
    [view2 center];
    v23 = v27;
  }

  [view2 setCenter:{v21, v23}];
  [panCopy setTranslation:view2 inView:{CGPointZero.x, CGPointZero.y}];
  [window bringSubviewToFront:view2];
}

- (void)changeColor
{
  if ([(MapsRecordAnIssuePanView *)self red])
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor redColor];
  }
  v3 = ;
  redView = [(MapsRecordAnIssuePanView *)self redView];
  [redView setBackgroundColor:v3];

  v5 = [(MapsRecordAnIssuePanView *)self red]^ 1;

  [(MapsRecordAnIssuePanView *)self setRed:v5];
}

- (id)convertImageToGrayScale:(id)scale
{
  scaleCopy = scale;
  [scaleCopy size];
  v5 = v4;
  [scaleCopy size];
  v7 = v6;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  [scaleCopy size];
  v10 = v9;
  [scaleCopy size];
  v12 = CGBitmapContextCreate(0, v10, v11, 8uLL, 0, DeviceGray, 0);
  cGImage = [scaleCopy CGImage];

  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v5;
  v18.size.height = v7;
  CGContextDrawImage(v12, v18, cGImage);
  Image = CGBitmapContextCreateImage(v12);
  v15 = [UIImage imageWithCGImage:Image];
  CGColorSpaceRelease(DeviceGray);
  CGContextRelease(v12);
  CFRelease(Image);

  return v15;
}

- (MapsRecordAnIssuePanView)initWithParent:(id)parent
{
  parentCopy = parent;
  v58.receiver = self;
  v58.super_class = MapsRecordAnIssuePanView;
  v5 = [(MapsRecordAnIssuePanView *)&v58 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(MapsRecordAnIssuePanView *)v5 setParentController:parentCopy];
    view = [parentCopy view];
    window = [view window];

    [window frame];
    v10 = v9 * 0.5;
    [window frame];
    v12 = v11 + -100.0;
    [(MapsRecordAnIssuePanView *)v6 setFrame:v10, v11 + -100.0, 40.0, 40.0];
    [(MapsRecordAnIssuePanView *)v6 setCenter:v10, v12];
    v13 = [UIBlurEffect effectWithStyle:2];
    [(MapsRecordAnIssuePanView *)v6 setEffect:v13];

    [(MapsRecordAnIssuePanView *)v6 setAlpha:0.5];
    layer = [(MapsRecordAnIssuePanView *)v6 layer];
    [layer setCornerRadius:20.0];

    layer2 = [(MapsRecordAnIssuePanView *)v6 layer];
    [layer2 setMasksToBounds:1];

    v53 = [UIImage imageNamed:@"RAPMapIcon"];
    v16 = [UIImageView alloc];
    v17 = [(MapsRecordAnIssuePanView *)v6 convertImageToGrayScale:v53];
    v18 = [v16 initWithImage:v17];

    [v18 setContentMode:1];
    [v18 setFrame:{20.0, 0.0, 25.0, 25.0}];
    [v18 center];
    [v18 setCenter:?];
    layer3 = [v18 layer];
    [layer3 setCornerRadius:8.0];

    layer4 = [v18 layer];
    [layer4 setMasksToBounds:1];

    [v18 setAlpha:0.5];
    [(MapsRecordAnIssuePanView *)v6 setMapIcon:v18];
    [(MapsRecordAnIssuePanView *)v6 addSubview:v18];
    v21 = [UIFont systemFontOfSize:11.5];
    v22 = [[UILabel alloc] initWithFrame:{60.0, 0.0, 125.0, 40.0}];
    [(MapsRecordAnIssuePanView *)v6 setEndLabel:v22];

    endLabel = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [endLabel setText:@"End Recording"];

    v24 = +[UIColor whiteColor];
    endLabel2 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [endLabel2 setTextColor:v24];

    endLabel3 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [endLabel3 setFont:v21];

    endLabel4 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [endLabel4 sizeToFit];

    endLabel5 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [endLabel5 center];
    v30 = v29;
    endLabel6 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [endLabel6 setCenter:{v30, 20.0}];

    endLabel7 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [(MapsRecordAnIssuePanView *)v6 addSubview:endLabel7];

    v33 = [[UIView alloc] initWithFrame:{0.0, 0.0, 12.0, 12.0}];
    [(MapsRecordAnIssuePanView *)v6 setRedView:v33];

    [v18 center];
    v35 = v34;
    [v18 center];
    v37 = v36;
    redView = [(MapsRecordAnIssuePanView *)v6 redView];
    [redView setCenter:{v35, v37}];

    redView2 = [(MapsRecordAnIssuePanView *)v6 redView];
    [redView2 frame];
    v41 = v40 * 0.5;
    redView3 = [(MapsRecordAnIssuePanView *)v6 redView];
    layer5 = [redView3 layer];
    [layer5 setCornerRadius:v41];

    redView4 = [(MapsRecordAnIssuePanView *)v6 redView];
    layer6 = [redView4 layer];
    [layer6 setMasksToBounds:1];

    v46 = +[UIColor redColor];
    redView5 = [(MapsRecordAnIssuePanView *)v6 redView];
    [redView5 setBackgroundColor:v46];

    redView6 = [(MapsRecordAnIssuePanView *)v6 redView];
    [(MapsRecordAnIssuePanView *)v6 addSubview:redView6];

    redView7 = [(MapsRecordAnIssuePanView *)v6 redView];
    [(MapsRecordAnIssuePanView *)v6 bringSubviewToFront:redView7];

    v50 = [NSTimer scheduledTimerWithTimeInterval:v6 target:"changeColor" selector:0 userInfo:1 repeats:0.5];
    [(MapsRecordAnIssuePanView *)v6 setRecordTimer:v50];

    [(MapsRecordAnIssuePanView *)v6 setRed:1];
    v51 = [[UITapGestureRecognizer alloc] initWithTarget:v6 action:"endRecording"];
    [(MapsRecordAnIssuePanView *)v6 addGestureRecognizer:v51];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100CF37D4;
    v54[3] = &unk_1016575B0;
    v55 = v6;
    v56 = v10;
    v57 = v12;
    [UIView animateWithDuration:v54 animations:0.3];
  }

  return v6;
}

@end