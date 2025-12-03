@interface MFCategoryTriageInteraction
+ (OS_os_log)log;
- (id)cardActionWithCompletion:(id)completion;
- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion;
@end

@implementation MFCategoryTriageInteraction

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001ADC78;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD420 != -1)
  {
    dispatch_once(&qword_1006DD420, block);
  }

  v2 = qword_1006DD418;

  return v2;
}

- (id)cardActionWithCompletion:(id)completion
{
  completionCopy = completion;
  title = [(MFTriageInteraction *)self title];
  _iconImageName = [(MFTriageInteraction *)self _iconImageName];
  v7 = [MFRecategorizationHeaderCardAction cardActionWithTitle:title shortTitle:0 imageName:_iconImageName tintColor:0 handler:&stru_1006535F8];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001ADF14;
  v14[3] = &unk_100653648;
  v14[4] = self;
  v8 = completionCopy;
  v15 = v8;
  v9 = objc_retainBlock(v14);
  v10 = +[NSMutableArray array];
  v13 = v9;
  v12 = v10;
  MUIBucketEnumerateAllBuckets();
  [v7 setChildren:{v12, _NSConcreteStackBlock, 3221225472, sub_1001AE09C, &unk_100650D78}];

  return v7;
}

- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion
{
  v31.receiver = self;
  v31.super_class = MFCategoryTriageInteraction;
  [(MFTriageInteraction *)&v31 _performInteractionAfterPreparation:preparation completion:completion];
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  v7 = [messageListItems count];

  if (v7)
  {
    bucket = [(MFCategoryTriageInteraction *)self bucket];
    isRecategorizationAction = [(MFCategoryTriageInteraction *)self isRecategorizationAction];
    v10 = @"message feedback";
    if (isRecategorizationAction)
    {
      v10 = @"sender recategorization";
    }

    v11 = v10;
    messageListItemSelection2 = [(MFTriageInteraction *)self messageListItemSelection];
    messageListItems2 = [messageListItemSelection2 messageListItems];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001AE470;
    v27[3] = &unk_100653670;
    v14 = v11;
    selfCopy = self;
    v30 = bucket;
    v28 = v14;
    [messageListItems2 enumerateObjectsUsingBlock:v27];

    if ([(MFCategoryTriageInteraction *)self shouldFileRadar])
    {
      radarContent = [(MFCategoryTriageInteraction *)self radarContent];
      first = [radarContent first];

      radarContent2 = [(MFCategoryTriageInteraction *)self radarContent];
      second = [radarContent2 second];
      v19 = [NSString stringWithFormat:@"%@\n\n NOTE: The full content of the message you acted on will be included in this radar.", second];

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1001AE67C;
      v24[3] = &unk_100651F98;
      v20 = first;
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