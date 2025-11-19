@interface ICSetPreferredAttachmentSizeActivity
- (ICSetPreferredAttachmentSizeActivity)initWithNote:(id)a3;
- (id)activityTitle;
- (id)menuWithCompletion:(id)a3;
@end

@implementation ICSetPreferredAttachmentSizeActivity

- (ICSetPreferredAttachmentSizeActivity)initWithNote:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSetPreferredAttachmentSizeActivity;
  v6 = [(ICSetPreferredAttachmentSizeActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_note, a3);
  }

  return v7;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Attachment View" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)menuWithCompletion:(id)a3
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100108374;
  v12[3] = &unk_10064A210;
  v12[4] = self;
  v4 = objc_retainBlock(v12);
  v5 = [ICAttachmentSizeMenu alloc];
  v6 = [(ICSetPreferredAttachmentSizeActivity *)self activityTitle];
  v7 = [(ICSetPreferredAttachmentSizeActivity *)self activityImage];
  v8 = [(ICSetPreferredAttachmentSizeActivity *)self note];
  v9 = [v5 initWithTitle:v6 image:v7 preferredViewSize:objc_msgSend(v8 supportedSizes:"attachmentViewType") supportsPlainLink:&off_10066E338 isOverrideVariant:0 selectedSizeHandler:1 plainLinkHandler:{v4, 0}];

  v10 = [v9 createMenu];

  return v10;
}

@end