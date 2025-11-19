@interface MFMessageInfoViewController
+ (id)log;
- (BOOL)_shouldDisplayContact;
- (MFMessageInfoViewController)initWithCoder:(id)a3;
- (MFMessageInfoViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MFMessageInfoViewController)initWithViewModel:(id)a3 contactsStore:(id)a4;
- (MFMessageInfoViewController)initWithViewModel:(id)a3 contactsStore:(id)a4 attachmentURLs:(id)a5 richLinkURLs:(id)a6 numberOfMessagesInConversation:(int64_t)a7;
- (MFMessageInfoViewControllerDelegate)delegate;
- (id)_URLForAttachmentURL:(id)a3;
- (id)_attachmentSectionLayout;
- (id)_contactToDisplayForRichLink:(id)a3;
- (id)_contactToDisplayForURL:(id)a3;
- (id)_contactViewControllerForAddress:(id)a3;
- (id)_dateToDisplayForURL:(id)a3;
- (id)_linkSectionLayout;
- (id)_photoSectionLayout;
- (id)_subjectToDisplay;
- (id)createCollectionViewLayout;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (unint64_t)_atomTypeForEmailAddress:(id)a3;
- (void)_generateQuickLookThumbnail:(id)a3 indexPath:(id)a4 item:(id)a5;
- (void)_generateRichLink:(id)a3 item:(id)a4;
- (void)_openAttachmentWithPreview:(id)a3;
- (void)_openContactCard:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)messageViewControllerDidChooseAddress:(id)a3 contactViewController:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MFMessageInfoViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001228C;
  block[3] = &unk_1000389B8;
  block[4] = a1;
  if (qword_1000425D0 != -1)
  {
    dispatch_once(&qword_1000425D0, block);
  }

  v2 = qword_1000425C8;

  return v2;
}

- (MFMessageInfoViewController)initWithCoder:(id)a3
{
  v5 = a3;
  [(MFMessageInfoViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMessageInfoViewController initWithCoder:]", "MFMessageInfoViewController.m", 104, "0");
}

- (MFMessageInfoViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(MFMessageInfoViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMessageInfoViewController initWithNibName:bundle:]", "MFMessageInfoViewController.m", 105, "0");
}

- (MFMessageInfoViewController)initWithViewModel:(id)a3 contactsStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MFMessageInfoViewController;
  v9 = [(MFMessageInfoViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, a3);
    objc_storeStrong(&v10->_contactStore, a4);
  }

  return v10;
}

- (MFMessageInfoViewController)initWithViewModel:(id)a3 contactsStore:(id)a4 attachmentURLs:(id)a5 richLinkURLs:(id)a6 numberOfMessagesInConversation:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = MFMessageInfoViewController;
  v17 = [(MFMessageInfoViewController *)&v20 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_viewModel, a3);
    objc_storeStrong(&v18->_contactStore, a4);
    v18->_numberOfMessagesInConversation = a7;
    objc_storeStrong(&v18->_conversationAttachmentURLs, a5);
    objc_storeStrong(&v18->_richLinkURLs, a6);
  }

  return v18;
}

- (void)viewDidLoad
{
  v67.receiver = self;
  v67.super_class = MFMessageInfoViewController;
  [(MFMessageInfoViewController *)&v67 viewDidLoad];
  v3 = _EFLocalizedString();
  [(MFMessageInfoViewController *)self setTitle:v3];

  v4 = [(MFMessageInfoViewController *)self navigationItem];
  [v4 setStyle:0];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_close:"];
  v6 = [(MFMessageInfoViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:v5];

  v7 = objc_alloc_init(NSCache);
  [(MFMessageInfoViewController *)self setImageCache:v7];

  v8 = objc_alloc_init(NSCache);
  [(MFMessageInfoViewController *)self setRichLinkCache:v8];

  v9 = objc_alloc_init(NSDateFormatter);
  [(MFMessageInfoViewController *)self setDateFormatter:v9];

  v10 = [(MFMessageInfoViewController *)self dateFormatter];
  [v10 setDateStyle:1];

  v11 = [UICollectionView alloc];
  v12 = [(MFMessageInfoViewController *)self createCollectionViewLayout];
  v13 = [v11 initWithFrame:v12 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = +[UIColor systemGroupedBackgroundColor];
  [v13 setBackgroundColor:v14];

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_100013090;
  v66[3] = &unk_100038DD0;
  v66[4] = self;
  v45 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v66];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10001328C;
  v65[3] = &unk_100038DF8;
  v65[4] = self;
  v44 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v65];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_100013318;
  v64[3] = &unk_100038E20;
  v64[4] = self;
  v43 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v64];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_10001367C;
  v63[3] = &unk_100038E48;
  v63[4] = self;
  v42 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v63];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10001389C;
  v62[3] = &unk_100038E70;
  v62[4] = self;
  v41 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v62];
  v15 = [UICollectionViewDiffableDataSource alloc];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10001396C;
  v56[3] = &unk_100038E98;
  v34 = v44;
  v57 = v34;
  v36 = v42;
  v58 = v36;
  v35 = v43;
  v59 = v35;
  v37 = v41;
  v60 = v37;
  v33 = v45;
  v61 = v33;
  v46 = [v15 initWithCollectionView:v13 cellProvider:v56];
  objc_initWeak(&location, self);
  v16 = objc_opt_class();
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100013C04;
  v53[3] = &unk_100038EC0;
  objc_copyWeak(&v54, &location);
  v40 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:v16 elementKind:UICollectionElementKindSectionHeader configurationHandler:v53];
  v17 = objc_opt_class();
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100013D74;
  v51[3] = &unk_100038EC0;
  objc_copyWeak(&v52, &location);
  v18 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:v17 elementKind:UICollectionElementKindSectionHeader configurationHandler:v51];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100013F04;
  v47[3] = &unk_100038EE8;
  v47[4] = self;
  v19 = v13;
  v48 = v19;
  v39 = v18;
  v49 = v39;
  v38 = v40;
  v50 = v38;
  [v46 setSupplementaryViewProvider:v47];
  v20 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  sub_100014140(self);
  for (i = 0; ; ++i)
  {
    v22 = [(MFMessageInfoViewController *)self sections];
    v23 = i < [v22 count];

    if (!v23)
    {
      break;
    }

    v24 = [(MFMessageInfoViewController *)self sections];
    v25 = [v24 objectAtIndexedSubscript:i];
    v68 = v25;
    v26 = [NSArray arrayWithObjects:&v68 count:1];
    [v20 appendSectionsWithIdentifiers:v26];

    v27 = [(MFMessageInfoViewController *)self items];
    v28 = [v27 objectAtIndexedSubscript:i];
    v29 = [(MFMessageInfoViewController *)self sections];
    v30 = [v29 objectAtIndexedSubscript:i];
    [v20 appendItemsWithIdentifiers:v28 intoSectionWithIdentifier:v30];
  }

  [v46 applySnapshotUsingReloadData:v20];
  [v19 setDataSource:v46];
  [v19 setDelegate:self];
  v31 = [(MFMessageInfoViewController *)self view];
  [v31 addSubview:v19];

  v32 = [(MFMessageInfoViewController *)self view];
  [v19 mf_pinToView:v32 usingLayoutMargins:0];

  [(MFMessageInfoViewController *)self setCollectionView:v19];
  [(MFMessageInfoViewController *)self setDataSource:v46];

  objc_destroyWeak(&v52);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MFMessageInfoViewController;
  [(MFMessageInfoViewController *)&v6 viewDidDisappear:a3];
  v4 = [(MFMessageInfoViewController *)self viewDidDisappearBlock];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }
}

- (id)createCollectionViewLayout
{
  v3 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:2];
  [v3 setHeaderMode:1];
  v4 = [UICollectionViewCompositionalLayout alloc];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000150DC;
  v11 = &unk_100038F10;
  v12 = self;
  v5 = v3;
  v13 = v5;
  v6 = [v4 initWithSectionProvider:&v8];
  if (_os_feature_enabled_impl())
  {
    [v6 registerClass:objc_opt_class() forDecorationViewOfKind:{@"section-background-element-kind", v8, v9, v10, v11, v12}];
  }

  return v6;
}

- (id)_attachmentSectionLayout
{
  v2 = [NSCollectionLayoutDimension fractionalWidthDimension:0.333333333];
  v3 = [NSCollectionLayoutDimension fractionalHeightDimension:0.55];
  v4 = [NSCollectionLayoutSize sizeWithWidthDimension:v2 heightDimension:v3];

  v5 = [NSCollectionLayoutItem itemWithLayoutSize:v4];
  [v5 setContentInsets:{5.0, 5.0, 5.0, 5.0}];
  v6 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v7 = [NSCollectionLayoutDimension estimatedDimension:275.0];
  v8 = [NSCollectionLayoutSize sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v8 repeatingSubitem:v5 count:3];
  v10 = [NSCollectionLayoutSpacing fixedSpacing:2.0];
  [v9 setInterItemSpacing:v10];

  v11 = [NSCollectionLayoutSection sectionWithGroup:v9];
  [v11 setContentInsets:{0.0, 20.0, 0.0, 20.0}];
  v12 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v13 = [NSCollectionLayoutDimension estimatedDimension:275.0];
  v14 = [NSCollectionLayoutSize sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v14 elementKind:UICollectionElementKindSectionHeader alignment:1];
  v21 = v15;
  v16 = [NSArray arrayWithObjects:&v21 count:1];
  [v11 setBoundarySupplementaryItems:v16];

  v17 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:@"section-background-element-kind"];
  [v17 setContentInsets:{0.0, 20.0, 0.0, 20.0}];
  v20 = v17;
  v18 = [NSArray arrayWithObjects:&v20 count:1];
  [v11 setDecorationItems:v18];

  [v11 _setPostBoundaryPadding:20.0];

  return v11;
}

- (id)_photoSectionLayout
{
  v3 = [NSCollectionLayoutDimension fractionalWidthDimension:0.333333333];
  v4 = [(MFMessageInfoViewController *)self view];
  [v4 frame];
  v6 = [NSCollectionLayoutDimension fractionalHeightDimension:v5 * 0.4 / 400.0];
  v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v3 heightDimension:v6];

  v8 = [NSCollectionLayoutItem itemWithLayoutSize:v7];
  [v8 setContentInsets:{1.0, 1.0, 1.0, 1.0}];
  v9 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v10 = [NSCollectionLayoutDimension estimatedDimension:275.0];
  v11 = [NSCollectionLayoutSize sizeWithWidthDimension:v9 heightDimension:v10];

  v12 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v11 repeatingSubitem:v8 count:3];
  v13 = [NSCollectionLayoutSpacing fixedSpacing:1.0];
  [v12 setInterItemSpacing:v13];

  v14 = [NSCollectionLayoutSection sectionWithGroup:v12];
  [v14 setContentInsets:{0.0, 35.0, 0.0, 35.0}];
  v15 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v16 = [NSCollectionLayoutDimension estimatedDimension:275.0];
  v17 = [NSCollectionLayoutSize sizeWithWidthDimension:v15 heightDimension:v16];

  v18 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v17 elementKind:UICollectionElementKindSectionHeader alignment:1];
  [v18 setContentInsets:{0.0, -15.0, 0.0, -15.0}];
  v24 = v18;
  v19 = [NSArray arrayWithObjects:&v24 count:1];
  [v14 setBoundarySupplementaryItems:v19];

  v20 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:@"section-background-element-kind"];
  [v20 setContentInsets:{0.0, 20.0, -10.0, 20.0}];
  v23 = v20;
  v21 = [NSArray arrayWithObjects:&v23 count:1];
  [v14 setDecorationItems:v21];

  [v14 _setPostBoundaryPadding:20.0];

  return v14;
}

- (id)_linkSectionLayout
{
  v3 = [NSCollectionLayoutDimension fractionalWidthDimension:0.5];
  v4 = [(MFMessageInfoViewController *)self view];
  [v4 frame];
  v6 = [NSCollectionLayoutDimension fractionalHeightDimension:v5 * 0.5 / 400.0];
  v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v3 heightDimension:v6];

  v8 = [NSCollectionLayoutItem itemWithLayoutSize:v7];
  [v8 setContentInsets:{1.0, 1.0, 1.0, 1.0}];
  v9 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v10 = [NSCollectionLayoutDimension estimatedDimension:275.0];
  v11 = [NSCollectionLayoutSize sizeWithWidthDimension:v9 heightDimension:v10];

  v12 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v11 repeatingSubitem:v8 count:2];
  v13 = [NSCollectionLayoutSpacing fixedSpacing:5.0];
  [v12 setInterItemSpacing:v13];

  v14 = [NSCollectionLayoutSection sectionWithGroup:v12];
  [v14 setContentInsets:{0.0, 35.0, 0.0, 35.0}];
  [v14 setInterGroupSpacing:5.0];
  v15 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v16 = [NSCollectionLayoutDimension estimatedDimension:275.0];
  v17 = [NSCollectionLayoutSize sizeWithWidthDimension:v15 heightDimension:v16];

  v18 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v17 elementKind:UICollectionElementKindSectionHeader alignment:1];
  [v18 setContentInsets:{0.0, -15.0, 0.0, -15.0}];
  v24 = v18;
  v19 = [NSArray arrayWithObjects:&v24 count:1];
  [v14 setBoundarySupplementaryItems:v19];

  v20 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:@"section-background-element-kind"];
  [v20 setContentInsets:{0.0, 20.0, -10.0, 20.0}];
  v23 = v20;
  v21 = [NSArray arrayWithObjects:&v23 count:1];
  [v14 setDecorationItems:v21];

  [v14 _setPostBoundaryPadding:20.0];

  return v14;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v28 = a4;
  v5 = [(MFMessageInfoViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v28, "section")}];
  v7 = [v6 isEqual:@"Subject"];

  if ((v7 & 1) == 0)
  {
    v8 = [(MFMessageInfoViewController *)self sections];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v28, "section")}];
    if ([v9 isEqual:@"Documents"])
    {
    }

    else
    {
      v10 = [(MFMessageInfoViewController *)self sections];
      v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v28, "section")}];
      v12 = [v11 isEqual:@"Photos"];

      if (!v12)
      {
        v18 = [(MFMessageInfoViewController *)self sections];
        v19 = [v18 objectAtIndexedSubscript:{objc_msgSend(v28, "section")}];
        v20 = [v19 isEqual:@"Links"];

        if (v20)
        {
          v21 = [(MFMessageInfoViewController *)self items];
          v22 = [v21 objectAtIndexedSubscript:{objc_msgSend(v28, "section")}];
          v23 = [v22 objectAtIndexedSubscript:{objc_msgSend(v28, "item")}];
          v13 = [v23 richLink];

          v14 = +[UIApplication sharedApplication];
          [v14 openURL:v13 options:&__NSDictionary0__struct completionHandler:0];
        }

        else
        {
          v24 = [(MFMessageInfoViewController *)self items];
          v25 = [v24 objectAtIndexedSubscript:{objc_msgSend(v28, "section")}];
          v26 = [v25 objectAtIndexedSubscript:{objc_msgSend(v28, "item")}];
          v13 = [v26 emailAddress];

          v27 = [(MFMessageInfoViewController *)self _atomTypeForEmailAddress:v13];
          v14 = [(MFMessageInfoViewController *)self delegate];
          if (objc_opt_respondsToSelector())
          {
            [v14 messageInfoViewController:self didSelectAddress:v13 forAtomType:v27];
          }
        }

        goto LABEL_6;
      }
    }

    v13 = [(MFMessageInfoViewController *)self items];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v28, "section")}];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v28, "item")}];
    v16 = [v15 attachment];
    [(MFMessageInfoViewController *)self _openAttachmentWithPreview:v16];

LABEL_6:
    v17 = [(MFMessageInfoViewController *)self collectionView];
    [v17 deselectItemAtIndexPath:v28 animated:0];
  }
}

- (unint64_t)_atomTypeForEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageInfoViewController *)self viewModel];
  v6 = [v5 senderList];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(MFMessageInfoViewController *)self viewModel];
    v10 = [v9 replyToList];
    v11 = [v10 containsObject:v4];

    if (v11)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_generateQuickLookThumbnail:(id)a3 indexPath:(id)a4 item:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[QLThumbnailGenerator sharedGenerator];
  v10 = [QLThumbnailGenerationRequest alloc];
  v11 = [v8 attachment];
  v12 = [v11 url];
  v13 = +[UIScreen mainScreen];
  [v13 scale];
  v15 = [v10 initWithFileAtURL:v12 size:-1 scale:100.0 representationTypes:{100.0, v14}];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000166F4;
  v18[3] = &unk_100038F60;
  v18[4] = self;
  v16 = v8;
  v19 = v16;
  v17 = v7;
  v20 = v17;
  [v9 generateBestRepresentationForRequest:v15 completionHandler:v18];
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v5 = [AttachmentPreviewItem alloc];
  v6 = [(MFMessageInfoViewController *)self fileURL];
  v7 = [(MFMessageInfoViewController *)self fileTitle];
  v8 = [(AttachmentPreviewItem *)v5 initWithUrl:v6 title:v7];

  return v8;
}

- (void)_openAttachmentWithPreview:(id)a3
{
  v7 = a3;
  v4 = objc_alloc_init(QLPreviewController);
  [v4 setDataSource:self];
  v5 = [v7 url];
  [(MFMessageInfoViewController *)self setFileURL:v5];

  v6 = [v7 displayName];
  [(MFMessageInfoViewController *)self setFileTitle:v6];

  [(MFMessageInfoViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_openContactCard:(id)a3
{
  v11 = [(MFMessageInfoViewController *)self _contactViewControllerForAddress:a3];
  if (v11)
  {
    v4 = [(MFMessageInfoViewController *)self view];
    [v4 frame];
    v6 = v5;
    v7 = [(MFMessageInfoViewController *)self navigationController];
    [v7 setPreferredContentSize:{320.0, v6}];

    v8 = [(MFMessageInfoViewController *)self view];
    [v8 frame];
    [v11 setPreferredContentSize:{320.0, v9}];

    v10 = [(MFMessageInfoViewController *)self navigationController];
    [v10 pushViewController:v11 animated:1];
  }
}

- (id)_contactViewControllerForAddress:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageInfoViewController *)self contactStore];
  v6 = +[CNContactViewController descriptorForRequiredKeys];
  v7 = +[MFMessageInfoViewController log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Load contact view controller using key descriptors: %@", buf, 0xCu);
  }

  v8 = [v4 stringValue];
  v24 = v6;
  v9 = [NSArray arrayWithObjects:&v24 count:1];
  v10 = [v5 em_fetchContactForEmailAddress:v8 keysToFetch:v9 createIfNeeded:1];

  if (v10)
  {
    if ([v10 hasBeenPersisted] && +[MFContactsManager isAuthorizedToUseContacts](MFContactsManager, "isAuthorizedToUseContacts"))
    {
      v11 = [CNContactViewController viewControllerForContact:v10];
      v12 = [v4 emailAddressValue];
      if (v12)
      {
        v13 = [v10 emailAddresses];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000170FC;
        v20[3] = &unk_100038F88;
        v21 = v12;
        v14 = [v13 ef_firstObjectPassingTest:v20];

        v15 = [v14 identifier];
      }

      else
      {
        v15 = 0;
      }

      [v11 highlightPropertyWithKey:CNContactEmailAddressesKey identifier:v15];

      v16 = v11;
    }

    else
    {
      v16 = [CNContactViewController viewControllerForUnknownContact:v10];
    }

    if ((+[MFContactsManager isAuthorizedToUseContacts]& 1) == 0)
    {
      [v16 setActions:{objc_msgSend(v16, "actions") & 0xFFFFFFFFFFFFFFDFLL}];
    }

    [v16 setContactStore:v5];
  }

  else
  {
    v17 = +[MFMessageInfoViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v4 stringValue];
      sub_10001D5F0(v18, v6, buf, v17);
    }

    v16 = 0;
  }

  return v16;
}

- (void)_generateRichLink:(id)a3 item:(id)a4
{
  v31 = a3;
  v6 = a4;
  v7 = [(MFMessageInfoViewController *)self richLinkCache];
  v8 = [v6 richLink];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v10 = objc_alloc_init(LPLinkMetadata);
    v11 = [v6 richLink];
    v12 = [v11 absoluteString];
    [v10 setTitle:v12];

    v13 = [v6 richLink];
    [v10 setURL:v13];

    v14 = [UIImage systemImageNamed:MFImageGlyphSearchDefaultLink];
    v15 = [[LPImage alloc] initWithPlatformImage:v14];
    [v10 setImage:v15];

    v16 = [(MFMessageInfoViewController *)self richLinkCache];
    v17 = [v6 richLink];
    [v16 setObject:v10 forKey:v17];
  }

  v18 = [LPLinkView alloc];
  v19 = [v6 richLink];
  v20 = [v18 initWithURL:v19];

  v21 = [(MFMessageInfoViewController *)self richLinkCache];
  v22 = [v6 richLink];
  v23 = [v21 objectForKey:v22];
  [v20 setMetadata:v23];

  [v20 _setApplyCornerRadius:1];
  [v20 _setPreferredSizeClass:5];
  v24 = +[UIColor tertiarySystemBackgroundColor];
  [v20 _setOverrideBackgroundColor:v24];

  [v20 _setDisableTapGesture:1];
  [v31 setLinkView:v20];
  v25 = [v31 contentView];
  [v25 addSubview:v20];

  if ([(MFMessageInfoViewController *)self _shouldDisplayContact])
  {
    v26 = [v31 avatarView];
    v27 = [v6 richLink];
    v28 = [(MFMessageInfoViewController *)self _contactToDisplayForRichLink:v27];
    v29 = [(MFMessageInfoViewController *)self contactStore];
    v30 = [v26 displayPersonForEmailAddress:v28 usingContactStore:v29];
  }

  else
  {
    v26 = [v31 avatarView];
    [v26 setHidden:1];
  }

  [v31 setNeedsLayout];
}

- (void)messageViewControllerDidChooseAddress:(id)a3 contactViewController:(id)a4
{
  v12 = a4;
  if (v12)
  {
    v5 = [(MFMessageInfoViewController *)self view];
    [v5 frame];
    v7 = v6;
    v8 = [(MFMessageInfoViewController *)self navigationController];
    [v8 setPreferredContentSize:{320.0, v7}];

    v9 = [(MFMessageInfoViewController *)self view];
    [v9 frame];
    [v12 setPreferredContentSize:{320.0, v10}];

    v11 = [(MFMessageInfoViewController *)self navigationController];
    [v11 pushViewController:v12 animated:1];

    [(MFMessageInfoViewController *)self setContactViewController:v12];
  }
}

- (BOOL)_shouldDisplayContact
{
  if (![(MFMessageInfoViewController *)self _isConversation])
  {
    return 0;
  }

  v3 = [(MFMessageInfoViewController *)self participants];
  v4 = [v3 count] > 2;

  return v4;
}

- (id)_contactToDisplayForURL:(id)a3
{
  v3 = [SYDocumentAttributes documentAttributesForFileAtURL:a3];
  v4 = [v3 sender];
  v5 = [v4 handle];

  return v5;
}

- (id)_contactToDisplayForRichLink:(id)a3
{
  v3 = [SYDocumentAttributes documentAttributesForFileAtURL:a3];
  v4 = [v3 sender];
  v5 = [v4 handle];

  return v5;
}

- (id)_dateToDisplayForURL:(id)a3
{
  v3 = [SYDocumentAttributes documentAttributesForFileAtURL:a3];
  v4 = [v3 receivedDate];

  return v4;
}

- (id)_URLForAttachmentURL:(id)a3
{
  v3 = a3;
  v4 = [v3 absoluteString];
  v5 = [v4 rangeOfString:@"Mail/"];
  v7 = v6;

  v8 = [v3 absoluteString];
  v9 = [v8 substringToIndex:&v5[v7]];

  v10 = [v3 absoluteString];
  v11 = [v10 rangeOfString:@"AttachmentData/"];

  v12 = [v3 absoluteString];
  v13 = [v12 substringFromIndex:v11];

  v14 = [v9 stringByAppendingString:v13];
  v15 = [NSURL fileURLWithPath:v14];
  v16 = [[EFSandboxedURLWrapper alloc] initWithFileURL:v15 readOnly:1];
  v17 = [v16 url];

  return v17;
}

- (id)_subjectToDisplay
{
  v2 = [(MFMessageInfoViewController *)self viewModel];
  v3 = [v2 subject];
  v4 = [v3 subjectWithoutPrefix];

  return v4;
}

- (MFMessageInfoViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end