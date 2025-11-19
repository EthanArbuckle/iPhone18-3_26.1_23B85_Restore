@interface MFCategoryTriageInteraction
+ (OS_os_log)log;
- (id)cardActionWithCompletion:(id)a3;
- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4;
@end

@implementation MFCategoryTriageInteraction

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001ADC78;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD420 != -1)
  {
    dispatch_once(&qword_1006DD420, block);
  }

  v2 = qword_1006DD418;

  return v2;
}

- (id)cardActionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MFTriageInteraction *)self title];
  v6 = [(MFTriageInteraction *)self _iconImageName];
  v7 = [MFRecategorizationHeaderCardAction cardActionWithTitle:v5 shortTitle:0 imageName:v6 tintColor:0 handler:&stru_1006535F8];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001ADF14;
  v14[3] = &unk_100653648;
  v14[4] = self;
  v8 = v4;
  v15 = v8;
  v9 = objc_retainBlock(v14);
  v10 = +[NSMutableArray array];
  v13 = v9;
  v12 = v10;
  MUIBucketEnumerateAllBuckets();
  [v7 setChildren:{v12, _NSConcreteStackBlock, 3221225472, sub_1001AE09C, &unk_100650D78}];

  return v7;
}

- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4
{
  v31.receiver = self;
  v31.super_class = MFCategoryTriageInteraction;
  [(MFTriageInteraction *)&v31 _performInteractionAfterPreparation:a3 completion:a4];
  v5 = [(MFTriageInteraction *)self messageListItemSelection];
  v6 = [v5 messageListItems];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(MFCategoryTriageInteraction *)self bucket];
    v9 = [(MFCategoryTriageInteraction *)self isRecategorizationAction];
    v10 = @"message feedback";
    if (v9)
    {
      v10 = @"sender recategorization";
    }

    v11 = v10;
    v12 = [(MFTriageInteraction *)self messageListItemSelection];
    v13 = [v12 messageListItems];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001AE470;
    v27[3] = &unk_100653670;
    v14 = v11;
    v29 = self;
    v30 = v8;
    v28 = v14;
    [v13 enumerateObjectsUsingBlock:v27];

    if ([(MFCategoryTriageInteraction *)self shouldFileRadar])
    {
      v15 = [(MFCategoryTriageInteraction *)self radarContent];
      v16 = [v15 first];

      v17 = [(MFCategoryTriageInteraction *)self radarContent];
      v18 = [v17 second];
      v19 = [NSString stringWithFormat:@"%@\n\n NOTE: The full content of the message you acted on will be included in this radar.", v18];

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1001AE67C;
      v24[3] = &unk_100651F98;
      v20 = v16;
      v25 = v20;
      v21 = v19;
      v26 = v21;
      v22 = [MSRadarURLBuilder radarURLWithBuilder:v24];
      v23 = [[MSRadarInteraction alloc] initWithTitle:&stru_100662A88 message:&stru_100662A88 radarURL:v22];
      [v23 openTapToRadar];
    }
  }

  else
  {
    v14 = +[MFCategoryTriageInteraction log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10048B17C(v14);
    }
  }
}

@end