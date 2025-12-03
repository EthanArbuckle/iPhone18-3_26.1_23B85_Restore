@interface COSRFExposurePane
- (id)markupString;
- (id)title;
@end

@implementation COSRFExposurePane

- (id)title
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"RF_EXPOSURE" value:&stru_10026E598 table:@"Legal"];

  return v3;
}

- (id)markupString
{
  [UIApp activeWatch];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002BD70;
  v2 = v13[3] = &unk_1002689A8;
  v14 = v2;
  v3 = objc_retainBlock(v13);
  WeakRetained = objc_loadWeakRetained(&qword_1002BD2D0);
  rfExposureMarkup = [WeakRetained rfExposureMarkup];

  v6 = objc_loadWeakRetained(&qword_1002BD2D0);
  LOBYTE(WeakRetained) = [v6 sarURLAdded];

  if ((WeakRetained & 1) == 0)
  {
    v7 = (v3[2])(v3);
    v8 = [rfExposureMarkup stringByAppendingString:v7];

    rfExposureMarkup = v8;
  }

  if (BPSDeviceHasCellularDataCapability())
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"CELLULAR_INFO" value:&stru_10026E598 table:@"About"];
    v11 = [rfExposureMarkup stringByAppendingString:v10];

    rfExposureMarkup = v11;
  }

  return rfExposureMarkup;
}

@end