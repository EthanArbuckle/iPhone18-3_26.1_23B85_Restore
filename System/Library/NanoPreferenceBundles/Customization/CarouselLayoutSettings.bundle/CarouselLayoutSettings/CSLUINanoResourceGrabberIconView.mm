@interface CSLUINanoResourceGrabberIconView
- (CSLUINanoResourceGrabberIconView)initWithBundleID:(id)d;
- (void)setRawIcon:(id)icon;
@end

@implementation CSLUINanoResourceGrabberIconView

- (CSLUINanoResourceGrabberIconView)initWithBundleID:(id)d
{
  dCopy = d;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [UIImage imageNamed:@"Default_Icon@2x" inBundle:v5 compatibleWithTraitCollection:0];

  [v6 size];
  v8 = v7;
  v30.receiver = self;
  v30.super_class = CSLUINanoResourceGrabberIconView;
  v9 = [(CSLUINanoResourceGrabberIconView *)&v30 initWithFrame:0.0, 0.0, v8, v8];
  if (v9)
  {
    v10 = [dCopy copy];
    bundleID = v9->_bundleID;
    v9->_bundleID = v10;

    v12 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, v8, v8}];
    objc_storeWeak(&v9->_imageView, v12);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_8630;
    v27[3] = &unk_38A00;
    v28 = v9;
    v13 = v28;
    v29 = v13;
    v14 = objc_retainBlock(v27);
    v26 = 0;
    v15 = +[NanoResourceGrabber sharedInstance];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_875C;
    v24[3] = &unk_38A28;
    v16 = v14;
    v25 = v16;
    [v15 getCachedIconForBundleID:dCopy iconVariant:42 outIconImage:&v26 updateBlock:v24];
    if (v26)
    {
      [(CSLUINanoResourceGrabberIconView *)v13 setRawIcon:?];
    }

    else
    {
      [(CSLUINanoResourceGrabberIconView *)v13 setRawIcon:v6];
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_8774;
      v21 = &unk_38A50;
      v23 = v16;
      v22 = v13;
      [v15 getIconForBundleID:dCopy iconVariant:42 block:&v18 timeout:1000.0];
    }

    [(CSLUINanoResourceGrabberIconView *)v13 addSubview:v12, v18, v19, v20, v21];
  }

  return v9;
}

- (void)setRawIcon:(id)icon
{
  iconCopy = icon;
  WeakRetained = objc_loadWeakRetained(&self->_imageView);
  [WeakRetained setImage:iconCopy];
}

@end