@interface ICSendNoteActivityViewController
+ (id)fallbackImageWithNote:(id)a3;
- (ICSendNoteActivityViewController)initWithNote:(id)a3 presentingViewController:(id)a4 eventReporter:(id)a5;
- (id)excludedActivityTypes;
@end

@implementation ICSendNoteActivityViewController

- (ICSendNoteActivityViewController)initWithNote:(id)a3 presentingViewController:(id)a4 eventReporter:(id)a5
{
  obj = a3;
  v8 = a3;
  v9 = a4;
  v35 = a5;
  v39 = a5;
  v10 = +[NSMutableArray array];
  v41 = +[NSMutableArray array];
  if ([v8 canBeSharedViaICloud] && (objc_msgSend(v8, "isSharedThroughParent", obj, a5) & 1) == 0 && objc_msgSend(v8, "canCurrentUserShare"))
  {
    v11 = objc_alloc_init(NSItemProvider);
    v12 = +[ICCollaborationController sharedInstance];
    [v12 registerShareForObject:v8 itemProvider:v11 generateThumbnails:1];

    [v10 addObject:v11];
  }

  if (+[_TtC11MobileNotes14ICFeatureFlags pagesHandoffEnabled]&& [ICPagesHandoffManager canLaunchPagesForNote:v8])
  {
    v13 = [[ICPagesHandoffActivity alloc] initWithNote:v8 viewController:v9];
    [v41 addObject:v13];
  }

  if (+[_TtC11MobileNotes14ICFeatureFlags markdownExportEnabled])
  {
    v14 = [ICExportMarkdownActivity alloc];
    v44 = v8;
    v15 = [NSArray arrayWithObjects:&v44 count:1];
    v16 = [(ICExportMarkdownActivity *)v14 initWithObjects:v15 presentingViewController:v9];

    [v41 addObject:v16];
  }

  v38 = objc_alloc_init(ICShareNoteExporter);
  v37 = [v8 noteActivityItemsForSharingWithNoteExporter:?];
  [v10 addObjectsFromArray:?];
  v36 = [v8 airDropActivityItemSource];
  [v10 ic_addNonNilObject:?];
  v17 = +[ICCollaborationController shareSheetNoteThumbnailImage];
  if (!v17)
  {
    v17 = [objc_opt_class() fallbackImageWithNote:v8];
  }

  v18 = [ICLinkPresentationMetadata alloc];
  v19 = [v8 title];
  v20 = [(ICLinkPresentationMetadata *)v18 initWithTitle:v19 image:v17];

  [v10 addObject:v20];
  v21 = [ICNotePrintActivityItemSource alloc];
  v40 = v9;
  v22 = [v9 view];
  [v22 bounds];
  v25 = [(ICNotePrintActivityItemSource *)v21 initWithNote:v8 size:v23, v24];

  v26 = +[UIPrintInfo printInfo];
  v27 = [v8 title];
  [v26 setJobName:v27];

  v43[0] = v26;
  v43[1] = v25;
  v28 = [NSArray arrayWithObjects:v43 count:2];
  [v10 addObjectsFromArray:v28];

  v29 = [v10 copy];
  v30 = [v41 copy];
  v42.receiver = self;
  v42.super_class = ICSendNoteActivityViewController;
  v31 = [(ICSendNoteActivityViewController *)&v42 initWithActivityItems:v29 applicationActivities:v30];

  if (v31)
  {
    objc_storeStrong(&v31->_note, obja);
    objc_storeStrong(&v31->_noteExporter, v38);
    objc_storeStrong(&v31->_eventReporter, v35);
  }

  return v31;
}

- (id)excludedActivityTypes
{
  v3 = [NSMutableArray alloc];
  v10[0] = ICActivityTypeShareToNote;
  v10[1] = UIActivityTypeOpenInIBooks;
  v10[2] = UIActivityTypeSharePlay;
  v4 = [NSArray arrayWithObjects:v10 count:3];
  v5 = [v3 initWithArray:v4];

  v6 = [(ICSendNoteActivityViewController *)self additionalExcludedTypes];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(ICSendNoteActivityViewController *)self additionalExcludedTypes];
    [v5 addObjectsFromArray:v8];
  }

  return v5;
}

+ (id)fallbackImageWithNote:(id)a3
{
  v3 = a3;
  v4 = [[ICThumbnailConfiguration alloc] initForNoteNavigationBarIconWithNote:v3 preferredSize:{90.0, 72.0}];

  v5 = +[ICThumbnailService sharedThumbnailService];
  v6 = [v5 thumbnailWithConfiguration:v4];
  v7 = [v6 image];

  return v7;
}

@end