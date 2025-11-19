@interface MapsRecordAnIssuePanView
- (MapsRecordAnIssueDebugController)parentController;
- (MapsRecordAnIssuePanView)initWithParent:(id)a3;
- (id)convertImageToGrayScale:(id)a3;
- (void)changeColor;
- (void)endRecording;
- (void)mapsRecordAnIssueEndViewPan:(id)a3;
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
  v4 = [WeakRetained view];
  v5 = [v4 window];

  v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  v7 = +[UIColor grayColor];
  [v6 setColor:v7];

  [v5 frame];
  v9 = v8 * 0.5;
  [v5 frame];
  [v6 setCenter:{v9, v10 * 0.5}];
  [v5 addSubview:v6];
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

- (void)mapsRecordAnIssueEndViewPan:(id)a3
{
  v28 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  v5 = [WeakRetained view];
  v6 = [v5 window];

  [v6 frame];
  v8 = v7;
  [v6 frame];
  v10 = v9;
  v11 = [v28 view];
  [v11 frame];
  v13 = v12;
  [v11 frame];
  v15 = v14;
  [v28 translationInView:v6];
  v17 = v16;
  v19 = v18;
  [v11 center];
  v21 = v20 + v17;
  [v11 center];
  v23 = v22 + v19;
  if (v21 < v13 * 0.5 || v21 + v13 * 0.5 > v8)
  {
    [v11 center];
    v21 = v25;
  }

  if (v23 < v15 * 0.5 || v23 + v15 * 0.5 > v10)
  {
    [v11 center];
    v23 = v27;
  }

  [v11 setCenter:{v21, v23}];
  [v28 setTranslation:v11 inView:{CGPointZero.x, CGPointZero.y}];
  [v6 bringSubviewToFront:v11];
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
  v4 = [(MapsRecordAnIssuePanView *)self redView];
  [v4 setBackgroundColor:v3];

  v5 = [(MapsRecordAnIssuePanView *)self red]^ 1;

  [(MapsRecordAnIssuePanView *)self setRed:v5];
}

- (id)convertImageToGrayScale:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = v4;
  [v3 size];
  v7 = v6;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  [v3 size];
  v10 = v9;
  [v3 size];
  v12 = CGBitmapContextCreate(0, v10, v11, 8uLL, 0, DeviceGray, 0);
  v13 = [v3 CGImage];

  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v5;
  v18.size.height = v7;
  CGContextDrawImage(v12, v18, v13);
  Image = CGBitmapContextCreateImage(v12);
  v15 = [UIImage imageWithCGImage:Image];
  CGColorSpaceRelease(DeviceGray);
  CGContextRelease(v12);
  CFRelease(Image);

  return v15;
}

- (MapsRecordAnIssuePanView)initWithParent:(id)a3
{
  v4 = a3;
  v58.receiver = self;
  v58.super_class = MapsRecordAnIssuePanView;
  v5 = [(MapsRecordAnIssuePanView *)&v58 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(MapsRecordAnIssuePanView *)v5 setParentController:v4];
    v7 = [v4 view];
    v8 = [v7 window];

    [v8 frame];
    v10 = v9 * 0.5;
    [v8 frame];
    v12 = v11 + -100.0;
    [(MapsRecordAnIssuePanView *)v6 setFrame:v10, v11 + -100.0, 40.0, 40.0];
    [(MapsRecordAnIssuePanView *)v6 setCenter:v10, v12];
    v13 = [UIBlurEffect effectWithStyle:2];
    [(MapsRecordAnIssuePanView *)v6 setEffect:v13];

    [(MapsRecordAnIssuePanView *)v6 setAlpha:0.5];
    v14 = [(MapsRecordAnIssuePanView *)v6 layer];
    [v14 setCornerRadius:20.0];

    v15 = [(MapsRecordAnIssuePanView *)v6 layer];
    [v15 setMasksToBounds:1];

    v53 = [UIImage imageNamed:@"RAPMapIcon"];
    v16 = [UIImageView alloc];
    v17 = [(MapsRecordAnIssuePanView *)v6 convertImageToGrayScale:v53];
    v18 = [v16 initWithImage:v17];

    [v18 setContentMode:1];
    [v18 setFrame:{20.0, 0.0, 25.0, 25.0}];
    [v18 center];
    [v18 setCenter:?];
    v19 = [v18 layer];
    [v19 setCornerRadius:8.0];

    v20 = [v18 layer];
    [v20 setMasksToBounds:1];

    [v18 setAlpha:0.5];
    [(MapsRecordAnIssuePanView *)v6 setMapIcon:v18];
    [(MapsRecordAnIssuePanView *)v6 addSubview:v18];
    v21 = [UIFont systemFontOfSize:11.5];
    v22 = [[UILabel alloc] initWithFrame:{60.0, 0.0, 125.0, 40.0}];
    [(MapsRecordAnIssuePanView *)v6 setEndLabel:v22];

    v23 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [v23 setText:@"End Recording"];

    v24 = +[UIColor whiteColor];
    v25 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [v25 setTextColor:v24];

    v26 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [v26 setFont:v21];

    v27 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [v27 sizeToFit];

    v28 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [v28 center];
    v30 = v29;
    v31 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [v31 setCenter:{v30, 20.0}];

    v32 = [(MapsRecordAnIssuePanView *)v6 endLabel];
    [(MapsRecordAnIssuePanView *)v6 addSubview:v32];

    v33 = [[UIView alloc] initWithFrame:{0.0, 0.0, 12.0, 12.0}];
    [(MapsRecordAnIssuePanView *)v6 setRedView:v33];

    [v18 center];
    v35 = v34;
    [v18 center];
    v37 = v36;
    v38 = [(MapsRecordAnIssuePanView *)v6 redView];
    [v38 setCenter:{v35, v37}];

    v39 = [(MapsRecordAnIssuePanView *)v6 redView];
    [v39 frame];
    v41 = v40 * 0.5;
    v42 = [(MapsRecordAnIssuePanView *)v6 redView];
    v43 = [v42 layer];
    [v43 setCornerRadius:v41];

    v44 = [(MapsRecordAnIssuePanView *)v6 redView];
    v45 = [v44 layer];
    [v45 setMasksToBounds:1];

    v46 = +[UIColor redColor];
    v47 = [(MapsRecordAnIssuePanView *)v6 redView];
    [v47 setBackgroundColor:v46];

    v48 = [(MapsRecordAnIssuePanView *)v6 redView];
    [(MapsRecordAnIssuePanView *)v6 addSubview:v48];

    v49 = [(MapsRecordAnIssuePanView *)v6 redView];
    [(MapsRecordAnIssuePanView *)v6 bringSubviewToFront:v49];

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