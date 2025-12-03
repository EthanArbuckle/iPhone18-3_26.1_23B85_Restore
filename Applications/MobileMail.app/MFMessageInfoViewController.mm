@interface MFMessageInfoViewController
+ (id)log;
- (BOOL)_shouldDisplayContact;
- (MFMessageInfoViewController)initWithCoder:(id)coder;
- (MFMessageInfoViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MFMessageInfoViewController)initWithViewModel:(id)model contactsStore:(id)store;
- (MFMessageInfoViewController)initWithViewModel:(id)model contactsStore:(id)store attachmentURLs:(id)ls richLinkURLs:(id)rLs numberOfMessagesInConversation:(int64_t)conversation;
- (MFMessageInfoViewControllerDelegate)delegate;
- (id)_URLForAttachmentURL:(id)l;
- (id)_attachmentSectionLayout;
- (id)_contactToDisplayForRichLink:(id)link;
- (id)_contactToDisplayForURL:(id)l;
- (id)_contactViewControllerForAddress:(id)address;
- (id)_dateToDisplayForURL:(id)l;
- (id)_linkSectionLayout;
- (id)_photoSectionLayout;
- (id)_subjectToDisplay;
- (id)createCollectionViewLayout;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (unint64_t)_atomTypeForEmailAddress:(id)address;
- (void)_generateQuickLookThumbnail:(id)thumbnail indexPath:(id)path item:(id)item;
- (void)_generateRichLink:(id)link item:(id)item;
- (void)_openAttachmentWithPreview:(id)preview;
- (void)_openContactCard:(id)card;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)messageViewControllerDidChooseAddress:(id)address contactViewController:(id)controller;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation MFMessageInfoViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EB1F8;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD5B0 != -1)
  {
    dispatch_once(&qword_1006DD5B0, block);
  }

  v2 = qword_1006DD5A8;

  return v2;
}

- (MFMessageInfoViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  [(MFMessageInfoViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMessageInfoViewController initWithCoder:]", "MFMessageInfoViewController.m", 104, "0");
}

- (MFMessageInfoViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  [(MFMessageInfoViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMessageInfoViewController initWithNibName:bundle:]", "MFMessageInfoViewController.m", 105, "0");
}

- (MFMessageInfoViewController)initWithViewModel:(id)model contactsStore:(id)store
{
  modelCopy = model;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = MFMessageInfoViewController;
  v9 = [(MFMessageInfoViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, model);
    objc_storeStrong(&v10->_contactStore, store);
  }

  return v10;
}

- (MFMessageInfoViewController)initWithViewModel:(id)model contactsStore:(id)store attachmentURLs:(id)ls richLinkURLs:(id)rLs numberOfMessagesInConversation:(int64_t)conversation
{
  modelCopy = model;
  storeCopy = store;
  lsCopy = ls;
  rLsCopy = rLs;
  v20.receiver = self;
  v20.super_class = MFMessageInfoViewController;
  v17 = [(MFMessageInfoViewController *)&v20 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_viewModel, model);
    objc_storeStrong(&v18->_contactStore, store);
    v18->_numberOfMessagesInConversation = conversation;
    objc_storeStrong(&v18->_conversationAttachmentURLs, ls);
    objc_storeStrong(&v18->_richLinkURLs, rLs);
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

  navigationItem = [(MFMessageInfoViewController *)self navigationItem];
  [navigationItem setStyle:0];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_close:"];
  navigationItem2 = [(MFMessageInfoViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v5];

  v7 = objc_alloc_init(NSCache);
  [(MFMessageInfoViewController *)self setImageCache:v7];

  v8 = objc_alloc_init(NSCache);
  [(MFMessageInfoViewController *)self setRichLinkCache:v8];

  v9 = objc_alloc_init(NSDateFormatter);
  [(MFMessageInfoViewController *)self setDateFormatter:v9];

  dateFormatter = [(MFMessageInfoViewController *)self dateFormatter];
  [dateFormatter setDateStyle:1];

  v11 = [UICollectionView alloc];
  createCollectionViewLayout = [(MFMessageInfoViewController *)self createCollectionViewLayout];
  v13 = [v11 initWithFrame:createCollectionViewLayout collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = +[UIColor systemGroupedBackgroundColor];
  [v13 setBackgroundColor:v14];

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1001EBFFC;
  v66[3] = &unk_100654BB8;
  v66[4] = self;
  v45 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v66];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1001EC1F8;
  v65[3] = &unk_100654BE0;
  v65[4] = self;
  v44 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v65];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1001EC284;
  v64[3] = &unk_100654C08;
  v64[4] = self;
  v43 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v64];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1001EC5E8;
  v63[3] = &unk_100654C30;
  v63[4] = self;
  v42 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v63];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1001EC808;
  v62[3] = &unk_100654C58;
  v62[4] = self;
  v41 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v62];
  v15 = [UICollectionViewDiffableDataSource alloc];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1001EC8D8;
  v56[3] = &unk_100654C80;
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
  v53[2] = sub_1001ECB70;
  v53[3] = &unk_10064D888;
  objc_copyWeak(&v54, &location);
  v40 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:v16 elementKind:UICollectionElementKindSectionHeader configurationHandler:v53];
  v17 = objc_opt_class();
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1001ECCE0;
  v51[3] = &unk_10064D888;
  objc_copyWeak(&v52, &location);
  v18 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:v17 elementKind:UICollectionElementKindSectionHeader configurationHandler:v51];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1001ECE70;
  v47[3] = &unk_100654CA8;
  v47[4] = self;
  v19 = v13;
  v48 = v19;
  v39 = v18;
  v49 = v39;
  v38 = v40;
  v50 = v38;
  [v46 setSupplementaryViewProvider:v47];
  v20 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  sub_1001ED0AC(self);
  for (i = 0; ; ++i)
  {
    sections = [(MFMessageInfoViewController *)self sections];
    v23 = i < [sections count];

    if (!v23)
    {
      break;
    }

    sections2 = [(MFMessageInfoViewController *)self sections];
    v25 = [sections2 objectAtIndexedSubscript:i];
    v68 = v25;
    v26 = [NSArray arrayWithObjects:&v68 count:1];
    [v20 appendSectionsWithIdentifiers:v26];

    items = [(MFMessageInfoViewController *)self items];
    v28 = [items objectAtIndexedSubscript:i];
    sections3 = [(MFMessageInfoViewController *)self sections];
    v30 = [sections3 objectAtIndexedSubscript:i];
    [v20 appendItemsWithIdentifiers:v28 intoSectionWithIdentifier:v30];
  }

  [v46 applySnapshotUsingReloadData:v20];
  [v19 setDataSource:v46];
  [v19 setDelegate:self];
  view = [(MFMessageInfoViewController *)self view];
  [view addSubview:v19];

  view2 = [(MFMessageInfoViewController *)self view];
  [v19 mf_pinToView:view2 usingLayoutMargins:0];

  [(MFMessageInfoViewController *)self setCollectionView:v19];
  [(MFMessageInfoViewController *)self setDataSource:v46];

  objc_destroyWeak(&v52);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MFMessageInfoViewController;
  [(MFMessageInfoViewController *)&v6 viewDidDisappear:disappear];
  viewDidDisappearBlock = [(MFMessageInfoViewController *)self viewDidDisappearBlock];
  v5 = viewDidDisappearBlock;
  if (viewDidDisappearBlock)
  {
    (*(viewDidDisappearBlock + 16))(viewDidDisappearBlock);
  }
}

- (id)createCollectionViewLayout
{
  v3 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:2];
  [v3 setHeaderMode:1];
  v4 = [UICollectionViewCompositionalLayout alloc];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1001EE048;
  v11 = &unk_100654CD0;
  selfCopy = self;
  v5 = v3;
  v13 = v5;
  v6 = [v4 initWithSectionProvider:&v8];
  if (_os_feature_enabled_impl())
  {
    [v6 registerClass:objc_opt_class() forDecorationViewOfKind:{@"section-background-element-kind", v8, v9, v10, v11, selfCopy}];
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
  view = [(MFMessageInfoViewController *)self view];
  [view frame];
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
  view = [(MFMessageInfoViewController *)self view];
  [view frame];
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(MFMessageInfoViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v7 = [v6 isEqual:@"Subject"];

  if ((v7 & 1) == 0)
  {
    sections2 = [(MFMessageInfoViewController *)self sections];
    v9 = [sections2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    if ([v9 isEqual:@"Documents"])
    {
    }

    else
    {
      sections3 = [(MFMessageInfoViewController *)self sections];
      v11 = [sections3 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
      v12 = [v11 isEqual:@"Photos"];

      if (!v12)
      {
        sections4 = [(MFMessageInfoViewController *)self sections];
        v19 = [sections4 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
        v20 = [v19 isEqual:@"Links"];

        if (v20)
        {
          items = [(MFMessageInfoViewController *)self items];
          v22 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
          v23 = [v22 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
          richLink = [v23 richLink];

          delegate = +[UIApplication sharedApplication];
          [delegate openURL:richLink options:&__NSDictionary0__struct completionHandler:0];
        }

        else
        {
          items2 = [(MFMessageInfoViewController *)self items];
          v25 = [items2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
          v26 = [v25 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
          richLink = [v26 emailAddress];

          v27 = [(MFMessageInfoViewController *)self _atomTypeForEmailAddress:richLink];
          delegate = [(MFMessageInfoViewController *)self delegate];
          if (objc_opt_respondsToSelector())
          {
            [delegate messageInfoViewController:self didSelectAddress:richLink forAtomType:v27];
          }
        }

        goto LABEL_6;
      }
    }

    richLink = [(MFMessageInfoViewController *)self items];
    delegate = [richLink objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    v15 = [delegate objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    attachment = [v15 attachment];
    [(MFMessageInfoViewController *)self _openAttachmentWithPreview:attachment];

LABEL_6:
    collectionView = [(MFMessageInfoViewController *)self collectionView];
    [collectionView deselectItemAtIndexPath:pathCopy animated:0];
  }
}

- (unint64_t)_atomTypeForEmailAddress:(id)address
{
  addressCopy = address;
  viewModel = [(MFMessageInfoViewController *)self viewModel];
  senderList = [viewModel senderList];
  v7 = [senderList containsObject:addressCopy];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    viewModel2 = [(MFMessageInfoViewController *)self viewModel];
    replyToList = [viewModel2 replyToList];
    v11 = [replyToList containsObject:addressCopy];

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

- (void)_generateQuickLookThumbnail:(id)thumbnail indexPath:(id)path item:(id)item
{
  thumbnailCopy = thumbnail;
  itemCopy = item;
  v9 = +[QLThumbnailGenerator sharedGenerator];
  v10 = [QLThumbnailGenerationRequest alloc];
  attachment = [itemCopy attachment];
  v12 = [attachment url];
  v13 = +[UIScreen mainScreen];
  [v13 scale];
  v15 = [v10 initWithFileAtURL:v12 size:-1 scale:100.0 representationTypes:{100.0, v14}];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001EF660;
  v18[3] = &unk_100654CF8;
  v18[4] = self;
  v16 = itemCopy;
  v19 = v16;
  v17 = thumbnailCopy;
  v20 = v17;
  [v9 generateBestRepresentationForRequest:v15 completionHandler:v18];
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  v5 = [AttachmentPreviewItem alloc];
  fileURL = [(MFMessageInfoViewController *)self fileURL];
  fileTitle = [(MFMessageInfoViewController *)self fileTitle];
  v8 = [(AttachmentPreviewItem *)v5 initWithUrl:fileURL title:fileTitle];

  return v8;
}

- (void)_openAttachmentWithPreview:(id)preview
{
  previewCopy = preview;
  v4 = objc_alloc_init(QLPreviewController);
  [v4 setDataSource:self];
  v5 = [previewCopy url];
  [(MFMessageInfoViewController *)self setFileURL:v5];

  displayName = [previewCopy displayName];
  [(MFMessageInfoViewController *)self setFileTitle:displayName];

  [(MFMessageInfoViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_openContactCard:(id)card
{
  v11 = [(MFMessageInfoViewController *)self _contactViewControllerForAddress:card];
  if (v11)
  {
    view = [(MFMessageInfoViewController *)self view];
    [view frame];
    v6 = v5;
    navigationController = [(MFMessageInfoViewController *)self navigationController];
    [navigationController setPreferredContentSize:{320.0, v6}];

    view2 = [(MFMessageInfoViewController *)self view];
    [view2 frame];
    [v11 setPreferredContentSize:{320.0, v9}];

    navigationController2 = [(MFMessageInfoViewController *)self navigationController];
    [navigationController2 pushViewController:v11 animated:1];
  }
}

- (id)_contactViewControllerForAddress:(id)address
{
  addressCopy = address;
  contactStore = [(MFMessageInfoViewController *)self contactStore];
  v6 = +[CNContactViewController descriptorForRequiredKeys];
  v7 = +[MFMessageInfoViewController log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Load contact view controller using key descriptors: %@", buf, 0xCu);
  }

  stringValue = [addressCopy stringValue];
  v24 = v6;
  v9 = [NSArray arrayWithObjects:&v24 count:1];
  v10 = [contactStore em_fetchContactForEmailAddress:stringValue keysToFetch:v9 createIfNeeded:1];

  if (v10)
  {
    if ([v10 hasBeenPersisted] && +[MFContactsManager isAuthorizedToUseContacts](MFContactsManager, "isAuthorizedToUseContacts"))
    {
      v11 = [CNContactViewController viewControllerForContact:v10];
      emailAddressValue = [addressCopy emailAddressValue];
      if (emailAddressValue)
      {
        emailAddresses = [v10 emailAddresses];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1001F0068;
        v20[3] = &unk_100654D20;
        v21 = emailAddressValue;
        v14 = [emailAddresses ef_firstObjectPassingTest:v20];

        identifier = [v14 identifier];
      }

      else
      {
        identifier = 0;
      }

      [v11 highlightPropertyWithKey:CNContactEmailAddressesKey identifier:identifier];

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

    [v16 setContactStore:contactStore];
  }

  else
  {
    v17 = +[MFMessageInfoViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      stringValue2 = [addressCopy stringValue];
      sub_10048BC4C(stringValue2, v6, buf, v17);
    }

    v16 = 0;
  }

  return v16;
}

- (void)_generateRichLink:(id)link item:(id)item
{
  linkCopy = link;
  itemCopy = item;
  richLinkCache = [(MFMessageInfoViewController *)self richLinkCache];
  richLink = [itemCopy richLink];
  v9 = [richLinkCache objectForKey:richLink];

  if (!v9)
  {
    v10 = objc_alloc_init(LPLinkMetadata);
    richLink2 = [itemCopy richLink];
    absoluteString = [richLink2 absoluteString];
    [v10 setTitle:absoluteString];

    richLink3 = [itemCopy richLink];
    [v10 setURL:richLink3];

    v14 = [UIImage systemImageNamed:MFImageGlyphSearchDefaultLink];
    v15 = [[LPImage alloc] initWithPlatformImage:v14];
    [v10 setImage:v15];

    richLinkCache2 = [(MFMessageInfoViewController *)self richLinkCache];
    richLink4 = [itemCopy richLink];
    [richLinkCache2 setObject:v10 forKey:richLink4];
  }

  v18 = [LPLinkView alloc];
  richLink5 = [itemCopy richLink];
  v20 = [v18 initWithURL:richLink5];

  richLinkCache3 = [(MFMessageInfoViewController *)self richLinkCache];
  richLink6 = [itemCopy richLink];
  v23 = [richLinkCache3 objectForKey:richLink6];
  [v20 setMetadata:v23];

  [v20 _setApplyCornerRadius:1];
  [v20 _setPreferredSizeClass:5];
  v24 = +[UIColor tertiarySystemBackgroundColor];
  [v20 _setOverrideBackgroundColor:v24];

  [v20 _setDisableTapGesture:1];
  [linkCopy setLinkView:v20];
  contentView = [linkCopy contentView];
  [contentView addSubview:v20];

  if ([(MFMessageInfoViewController *)self _shouldDisplayContact])
  {
    avatarView = [linkCopy avatarView];
    richLink7 = [itemCopy richLink];
    v28 = [(MFMessageInfoViewController *)self _contactToDisplayForRichLink:richLink7];
    contactStore = [(MFMessageInfoViewController *)self contactStore];
    v30 = [avatarView displayPersonForEmailAddress:v28 usingContactStore:contactStore];
  }

  else
  {
    avatarView = [linkCopy avatarView];
    [avatarView setHidden:1];
  }

  [linkCopy setNeedsLayout];
}

- (void)messageViewControllerDidChooseAddress:(id)address contactViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    view = [(MFMessageInfoViewController *)self view];
    [view frame];
    v7 = v6;
    navigationController = [(MFMessageInfoViewController *)self navigationController];
    [navigationController setPreferredContentSize:{320.0, v7}];

    view2 = [(MFMessageInfoViewController *)self view];
    [view2 frame];
    [controllerCopy setPreferredContentSize:{320.0, v10}];

    navigationController2 = [(MFMessageInfoViewController *)self navigationController];
    [navigationController2 pushViewController:controllerCopy animated:1];

    [(MFMessageInfoViewController *)self setContactViewController:controllerCopy];
  }
}

- (BOOL)_shouldDisplayContact
{
  if (![(MFMessageInfoViewController *)self _isConversation])
  {
    return 0;
  }

  participants = [(MFMessageInfoViewController *)self participants];
  v4 = [participants count] > 2;

  return v4;
}

- (id)_contactToDisplayForURL:(id)l
{
  v3 = [SYDocumentAttributes documentAttributesForFileAtURL:l];
  sender = [v3 sender];
  handle = [sender handle];

  return handle;
}

- (id)_contactToDisplayForRichLink:(id)link
{
  v3 = [SYDocumentAttributes documentAttributesForFileAtURL:link];
  sender = [v3 sender];
  handle = [sender handle];

  return handle;
}

- (id)_dateToDisplayForURL:(id)l
{
  v3 = [SYDocumentAttributes documentAttributesForFileAtURL:l];
  receivedDate = [v3 receivedDate];

  return receivedDate;
}

- (id)_URLForAttachmentURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v5 = [absoluteString rangeOfString:@"Mail/"];
  v7 = v6;

  absoluteString2 = [lCopy absoluteString];
  v9 = [absoluteString2 substringToIndex:&v5[v7]];

  absoluteString3 = [lCopy absoluteString];
  v11 = [absoluteString3 rangeOfString:@"AttachmentData/"];

  absoluteString4 = [lCopy absoluteString];
  v13 = [absoluteString4 substringFromIndex:v11];

  v14 = [v9 stringByAppendingString:v13];
  v15 = [NSURL fileURLWithPath:v14];
  v16 = [[EFSandboxedURLWrapper alloc] initWithFileURL:v15 readOnly:1];
  v17 = [v16 url];

  return v17;
}

- (id)_subjectToDisplay
{
  viewModel = [(MFMessageInfoViewController *)self viewModel];
  subject = [viewModel subject];
  subjectWithoutPrefix = [subject subjectWithoutPrefix];

  return subjectWithoutPrefix;
}

- (MFMessageInfoViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end