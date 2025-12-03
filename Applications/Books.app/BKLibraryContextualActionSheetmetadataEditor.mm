@interface BKLibraryContextualActionSheetmetadataEditor
- (BKLibraryContextualActionSheetmetadataEditor)initWithLibraryAsset:(id)asset;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (CGSize)coverSize;
- (CGSize)preferredContentSize;
- (id)_makeAndAddLabel:(id)label style:(unsigned int)style;
- (id)_makeAndAddSystemButton:(int64_t)button action:(SEL)action text:(id)text;
- (id)_makeAndAddTextField:(id)field;
- (id)_trimString:(id)string;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)keyCommands;
- (void)_coverButtonPressed:(id)pressed;
- (void)_dismiss;
- (void)_handleCoverUpdateRequest:(id)request;
- (void)_okButtonPressed:(id)pressed;
- (void)_updateCoverView:(id)view;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason;
- (void)vendedLayerDidUpdate:(id)update;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation BKLibraryContextualActionSheetmetadataEditor

- (BKLibraryContextualActionSheetmetadataEditor)initWithLibraryAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = BKLibraryContextualActionSheetmetadataEditor;
  v6 = [(BKLibraryContextualActionSheetmetadataEditor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryAsset, asset);
  }

  return v7;
}

- (CGSize)preferredContentSize
{
  libraryAsset = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
  v3 = [libraryAsset contentType] == 3;

  v4 = dbl_10080B550[v3];
  v5 = 438.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v207.receiver = self;
  v207.super_class = BKLibraryContextualActionSheetmetadataEditor;
  [(BKLibraryContextualActionSheetmetadataEditor *)&v207 viewDidLoad];
  view = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = +[UIColor secondarySystemBackgroundColor];
  view2 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
  [view2 setBackgroundColor:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Book Info" value:&stru_100A30A68 table:0];
  v8 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy _makeAndAddLabel:v7 style:208];

  v9 = objc_alloc_init(UIView);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = +[UIColor separatorColor];
  cGColor = [v10 CGColor];
  layer = [v9 layer];
  [layer setBackgroundColor:cGColor];

  view3 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
  [view3 addSubview:v9];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Title" value:&stru_100A30A68 table:0];
  v205 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy _makeAndAddLabel:v15 style:55];

  libraryAsset = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy libraryAsset];
  title = [libraryAsset title];
  v18 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy _trimString:title];

  if (![v18 length])
  {
    v19 = +[BKLibraryAsset unknownTitle];

    v18 = v19;
  }

  v204 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy _makeAndAddTextField:v18];
  [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy setTitleTextField:?];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Author" value:&stru_100A30A68 table:0];
  v203 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy _makeAndAddLabel:v21 style:55];

  libraryAsset2 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy libraryAsset];
  displayAuthor = [libraryAsset2 displayAuthor];
  v24 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy _trimString:displayAuthor];

  v194 = v18;
  if (![v24 length])
  {
    v25 = +[BKLibraryAsset unknownAuthor];

    v24 = v25;
  }

  v193 = v24;
  v26 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy _makeAndAddTextField:v24];
  [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy setAuthorTextField:v26];
  v27 = +[NSBundle mainBundle];
  v28 = [v27 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
  v202 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy _makeAndAddSystemButton:1 action:"_okButtonPressed:" text:v28];

  v29 = +[NSBundle mainBundle];
  v30 = [v29 localizedStringForKey:@"Cancel" value:&stru_100A30A68 table:0];
  v201 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy _makeAndAddSystemButton:2 action:"_cancelButtonPressed:" text:v30];

  libraryAsset3 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy libraryAsset];
  LODWORD(v29) = [libraryAsset3 contentType];

  v32 = 0;
  v196 = 0;
  v200 = 0;
  v197 = 0;
  v198 = v8;
  v206 = v26;
  if (v29 != 3)
  {
    v33 = +[NSBundle mainBundle];
    v34 = [v33 localizedStringForKey:@"Cover" value:&stru_100A30A68 table:0];
    v35 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy _makeAndAddLabel:v34 style:55];

    v36 = objc_alloc_init(UIView);
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    view4 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
    [view4 addSubview:v36];

    [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy setCoverContainer:v36];
    layer2 = [v36 layer];
    [layer2 setCornerRadius:6.0];

    v200 = v36;
    layer3 = [v36 layer];
    [layer3 setMasksToBounds:1];

    v40 = objc_alloc_init(UIView);
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = +[BCCacheManager defaultCacheManager];
    libraryAsset4 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy libraryAsset];
    assetID = [libraryAsset4 assetID];
    v44 = [v41 metadataForIdentifier:assetID];

    v45 = 35.8974359;
    v197 = v35;
    if (v44)
    {
      intrinsicAspectRatio = [v44 intrinsicAspectRatio];
      [intrinsicAspectRatio floatValue];
      v48 = v47;

      if (v48 > 0.0)
      {
        intrinsicAspectRatio2 = [v44 intrinsicAspectRatio];
        [intrinsicAspectRatio2 floatValue];
        v45 = 56.0 / v50;
      }
    }

    [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy setCoverSize:v45, 56.0];
    v51 = +[BCCacheManager defaultCacheManager];
    libraryAsset5 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy libraryAsset];
    assetID2 = [libraryAsset5 assetID];
    [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy coverSize];
    v54 = [v51 fetchLayerForAssetID:assetID2 size:0 options:?];

    [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy coverSize];
    v56 = v55 * 0.5;
    [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy coverSize];
    [v54 setPosition:{v56, v57 * 0.5}];
    layer4 = [v40 layer];
    [layer4 addSublayer:v54];

    objc_opt_class();
    v59 = BUDynamicCast();
    [v59 setVendedLayerDelegate:selfCopy];
    v60 = objc_alloc_init(BKLibrarymetadataEditorCoverBorderView);
    [(BKLibrarymetadataEditorCoverBorderView *)v60 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKLibrarymetadataEditorCoverBorderView *)v60 setOpaque:0];
    [v200 addSubview:v60];
    v196 = v60;
    [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy setCoverBorderView:v60];
    [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy _updateCoverView:v40];
    v32 = [UIButton buttonWithType:0];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v32 addTarget:selfCopy action:"_coverButtonPressed:" forControlEvents:64];
    v61 = +[NSBundle mainBundle];
    [v61 localizedStringForKey:@"Choose Cover" value:&stru_100A30A68 table:0];
    v63 = v62 = selfCopy;
    [v32 setAccessibilityLabel:v63];

    selfCopy = v62;
    v64 = +[NSBundle mainBundle];
    v65 = [v64 localizedStringForKey:@"Choose an image to use as a book cover" value:&stru_100A30A68 table:0];
    [v32 setAccessibilityHint:v65];

    view5 = [(BKLibraryContextualActionSheetmetadataEditor *)v62 view];
    [view5 addSubview:v32];

    v67 = [[UIDropInteraction alloc] initWithDelegate:v62];
    view6 = [(BKLibraryContextualActionSheetmetadataEditor *)v62 view];
    [view6 addInteraction:v67];

    v26 = v206;
    v8 = v198;
  }

  v199 = v32;
  centerXAnchor = [v8 centerXAnchor];
  view7 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
  centerXAnchor2 = [view7 centerXAnchor];
  v185 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v209[0] = v185;
  centerYAnchor = [v8 centerYAnchor];
  view8 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
  topAnchor = [view8 topAnchor];
  v177 = [centerYAnchor constraintEqualToAnchor:topAnchor constant:28.0];
  v209[1] = v177;
  leadingAnchor = [v9 leadingAnchor];
  view9 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
  leadingAnchor2 = [view9 leadingAnchor];
  v169 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v209[2] = v169;
  trailingAnchor = [v9 trailingAnchor];
  view10 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
  trailingAnchor2 = [view10 trailingAnchor];
  v161 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v209[3] = v161;
  topAnchor2 = [v9 topAnchor];
  view11 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
  topAnchor3 = [view11 topAnchor];
  v154 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:55.0];
  v209[4] = v154;
  heightAnchor = [v9 heightAnchor];
  v150 = [heightAnchor constraintEqualToConstant:1.0];
  v209[5] = v150;
  topAnchor4 = [v204 topAnchor];
  v195 = v9;
  bottomAnchor = [v9 bottomAnchor];
  v144 = [topAnchor4 constraintEqualToAnchor:bottomAnchor constant:20.0];
  v209[6] = v144;
  trailingAnchor3 = [v204 trailingAnchor];
  view12 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
  trailingAnchor4 = [view12 trailingAnchor];
  v136 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-20.0];
  v209[7] = v136;
  widthAnchor = [v204 widthAnchor];
  v131 = [widthAnchor constraintEqualToConstant:298.0];
  v209[8] = v131;
  heightAnchor2 = [v204 heightAnchor];
  v127 = [heightAnchor2 constraintEqualToConstant:29.0];
  v209[9] = v127;
  firstBaselineAnchor = [v205 firstBaselineAnchor];
  firstBaselineAnchor2 = [v204 firstBaselineAnchor];
  v123 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v209[10] = v123;
  trailingAnchor5 = [v205 trailingAnchor];
  leadingAnchor3 = [v204 leadingAnchor];
  v120 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor3 constant:-12.0];
  v209[11] = v120;
  topAnchor5 = [v26 topAnchor];
  bottomAnchor2 = [v204 bottomAnchor];
  v117 = [topAnchor5 constraintEqualToAnchor:bottomAnchor2 constant:9.0];
  v209[12] = v117;
  trailingAnchor6 = [v26 trailingAnchor];
  view13 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
  trailingAnchor7 = [view13 trailingAnchor];
  v113 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-20.0];
  v209[13] = v113;
  widthAnchor2 = [v26 widthAnchor];
  v111 = [widthAnchor2 constraintEqualToConstant:298.0];
  v209[14] = v111;
  heightAnchor3 = [v26 heightAnchor];
  v109 = [heightAnchor3 constraintEqualToConstant:29.0];
  v209[15] = v109;
  firstBaselineAnchor3 = [v203 firstBaselineAnchor];
  firstBaselineAnchor4 = [v26 firstBaselineAnchor];
  v106 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4];
  v209[16] = v106;
  trailingAnchor8 = [v203 trailingAnchor];
  leadingAnchor4 = [v26 leadingAnchor];
  v103 = [trailingAnchor8 constraintEqualToAnchor:leadingAnchor4 constant:-12.0];
  v209[17] = v103;
  bottomAnchor3 = [v202 bottomAnchor];
  view14 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
  bottomAnchor4 = [view14 bottomAnchor];
  v99 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-20.0];
  v209[18] = v99;
  trailingAnchor9 = [v202 trailingAnchor];
  view15 = [(BKLibraryContextualActionSheetmetadataEditor *)selfCopy view];
  trailingAnchor10 = [view15 trailingAnchor];
  v95 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-20.0];
  v209[19] = v95;
  widthAnchor3 = [v202 widthAnchor];
  v69 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:74.0];
  v209[20] = v69;
  bottomAnchor5 = [v201 bottomAnchor];
  bottomAnchor6 = [v202 bottomAnchor];
  v72 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v209[21] = v72;
  trailingAnchor11 = [v201 trailingAnchor];
  leadingAnchor5 = [v202 leadingAnchor];
  v75 = [trailingAnchor11 constraintEqualToAnchor:leadingAnchor5 constant:-8.0];
  v209[22] = v75;
  widthAnchor4 = [v201 widthAnchor];
  v77 = [widthAnchor4 constraintGreaterThanOrEqualToConstant:74.0];
  v209[23] = v77;
  v78 = [NSArray arrayWithObjects:v209 count:24];
  [NSLayoutConstraint activateConstraints:v78];

  v79 = v197;
  v80 = v200;
  v81 = v196;
  if (v200)
  {
    widthAnchor5 = [v200 widthAnchor];
    v83 = [widthAnchor5 constraintEqualToConstant:40.0];
    [v93 setCoverWidthConstraint:v83];

    heightAnchor4 = [v200 heightAnchor];
    v85 = [heightAnchor4 constraintEqualToConstant:56.0];
    [v93 setCoverHeightConstraint:v85];

    topAnchor6 = [v200 topAnchor];
    bottomAnchor7 = [v206 bottomAnchor];
    v188 = [topAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:10.0];
    v208[0] = v188;
    leadingAnchor6 = [v200 leadingAnchor];
    leadingAnchor7 = [v206 leadingAnchor];
    v182 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v208[1] = v182;
    coverHeightConstraint = [v93 coverHeightConstraint];
    v208[2] = coverHeightConstraint;
    coverWidthConstraint = [v93 coverWidthConstraint];
    v208[3] = coverWidthConstraint;
    topAnchor7 = [(BKLibrarymetadataEditorCoverBorderView *)v196 topAnchor];
    topAnchor8 = [v200 topAnchor];
    v172 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v208[4] = v172;
    bottomAnchor8 = [(BKLibrarymetadataEditorCoverBorderView *)v196 bottomAnchor];
    bottomAnchor9 = [v200 bottomAnchor];
    v166 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    v208[5] = v166;
    leadingAnchor8 = [(BKLibrarymetadataEditorCoverBorderView *)v196 leadingAnchor];
    leadingAnchor9 = [v200 leadingAnchor];
    v160 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v208[6] = v160;
    trailingAnchor12 = [(BKLibrarymetadataEditorCoverBorderView *)v196 trailingAnchor];
    trailingAnchor13 = [v200 trailingAnchor];
    v153 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
    v208[7] = v153;
    topAnchor9 = [v197 topAnchor];
    topAnchor10 = [v200 topAnchor];
    v147 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v208[8] = v147;
    heightAnchor5 = [v197 heightAnchor];
    v143 = [heightAnchor5 constraintEqualToConstant:29.0];
    v208[9] = v143;
    trailingAnchor14 = [v197 trailingAnchor];
    leadingAnchor10 = [v200 leadingAnchor];
    v137 = [trailingAnchor14 constraintEqualToAnchor:leadingAnchor10 constant:-12.0];
    v208[10] = v137;
    topAnchor11 = [v199 topAnchor];
    topAnchor12 = [v200 topAnchor];
    v132 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
    v208[11] = v132;
    bottomAnchor10 = [v199 bottomAnchor];
    bottomAnchor11 = [v200 bottomAnchor];
    v126 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
    v208[12] = v126;
    leadingAnchor11 = [v199 leadingAnchor];
    leadingAnchor12 = [v200 leadingAnchor];
    v88 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v208[13] = v88;
    trailingAnchor15 = [v199 trailingAnchor];
    trailingAnchor16 = [v200 trailingAnchor];
    v91 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16];
    v208[14] = v91;
    v92 = [NSArray arrayWithObjects:v208 count:15];
    [NSLayoutConstraint activateConstraints:v92];

    v80 = v200;
    v79 = v197;
    v81 = v196;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKLibraryContextualActionSheetmetadataEditor;
  [(BKLibraryContextualActionSheetmetadataEditor *)&v4 viewDidAppear:appear];
  [(BKLibraryContextualActionSheetmetadataEditor *)self setAppearedFirstTime:1];
}

- (id)keyCommands
{
  v2 = [NSString stringWithFormat:@"%c", 27];
  v3 = [UIKeyCommand keyCommandWithInput:v2 modifierFlags:0 action:"_escKeyPressed:"];

  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason
{
  editingCopy = editing;
  if (!reason)
  {
    v13 = editingCopy;
    text = [editingCopy text];
    v8 = [text length];

    editingCopy = v13;
    if (!v8)
    {
      titleTextField = [(BKLibraryContextualActionSheetmetadataEditor *)self titleTextField];

      if (titleTextField == v13)
      {
        libraryAsset = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
        title = [libraryAsset title];
      }

      else
      {
        authorTextField = [(BKLibraryContextualActionSheetmetadataEditor *)self authorTextField];

        editingCopy = v13;
        if (authorTextField != v13)
        {
          goto LABEL_3;
        }

        title = +[BKLibraryAsset unknownAuthor];
      }

      editingCopy = v13;
      if (title)
      {
        [v13 setText:title];

        editingCopy = v13;
      }
    }
  }

LABEL_3:
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  firstObject = [ls firstObject];
  v6 = [NSData dataWithContentsOfURL:firstObject];
  v7 = [UIImage imageWithData:v6];

  if (v7)
  {
    [(BKLibraryContextualActionSheetmetadataEditor *)self _handleCoverUpdateRequest:v7];
  }

  else
  {
    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100791FA0(firstObject, v8);
    }
  }
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  sessionCopy = session;
  identifier = [UTTypeImage identifier];
  v9 = identifier;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [sessionCopy hasItemsConformingToTypeIdentifiers:v6];

  return v7;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  updateCopy = update;
  identifier = [UTTypeImage identifier];
  v18 = identifier;
  v7 = [NSArray arrayWithObjects:&v18 count:1];
  v8 = [updateCopy hasItemsConformingToTypeIdentifiers:v7];

  if (v8)
  {
    coverContainer = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
    [updateCopy locationInView:coverContainer];
    v11 = v10;
    v13 = v12;

    coverContainer2 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
    [coverContainer2 bounds];
    v20.x = v11;
    v20.y = v13;
    LODWORD(coverContainer) = CGRectContainsPoint(v21, v20);

    if (coverContainer)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [[UIDropProposal alloc] initWithDropOperation:v15];

  return v16;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  items = [drop items];
  firstObject = [items firstObject];

  itemProvider = [firstObject itemProvider];
  identifier = [UTTypeImage identifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10017FD9C;
  v10[3] = &unk_100A09670;
  v10[4] = self;
  v9 = [itemProvider loadDataRepresentationForTypeIdentifier:identifier completionHandler:v10];
}

- (void)vendedLayerDidUpdate:(id)update
{
  updateCopy = update;
  [updateCopy bounds];
  v5 = v4;
  v7 = v6;
  [(BKLibraryContextualActionSheetmetadataEditor *)self coverSize];
  if (v5 != v9 || v7 != v8)
  {
    [(BKLibraryContextualActionSheetmetadataEditor *)self setCoverSize:v5, v7];
    coverWidthConstraint = [(BKLibraryContextualActionSheetmetadataEditor *)self coverWidthConstraint];
    [coverWidthConstraint setConstant:v5];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [updateCopy setPosition:{v5 * 0.5, v7 * 0.5}];
    +[CATransaction commit];
  }
}

- (void)_okButtonPressed:(id)pressed
{
  titleTextField = [(BKLibraryContextualActionSheetmetadataEditor *)self titleTextField];
  [titleTextField endEditing:1];

  authorTextField = [(BKLibraryContextualActionSheetmetadataEditor *)self authorTextField];
  [authorTextField endEditing:1];

  titleTextField2 = [(BKLibraryContextualActionSheetmetadataEditor *)self titleTextField];
  text = [titleTextField2 text];
  v8 = [(BKLibraryContextualActionSheetmetadataEditor *)self _trimString:text];

  libraryAsset = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
  title = [libraryAsset title];
  v11 = [v8 isEqualToString:title];

  authorTextField2 = [(BKLibraryContextualActionSheetmetadataEditor *)self authorTextField];
  text2 = [authorTextField2 text];
  v14 = [(BKLibraryContextualActionSheetmetadataEditor *)self _trimString:text2];

  v15 = +[BKLibraryAsset unknownAuthor];
  v16 = [v14 isEqualToString:v15];
  v17 = BKLibrarySortLastUnknownAuthorString;
  if (!v16)
  {
    v17 = v14;
  }

  v18 = v17;

  libraryAsset2 = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
  author = [libraryAsset2 author];
  v21 = [v18 isEqualToString:author];

  v22 = BKLibraryLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    libraryAsset3 = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
    assetID = [libraryAsset3 assetID];
    libraryAsset4 = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
    title2 = [libraryAsset4 title];
    [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
    v37 = v14;
    v27 = v26 = v8;
    [v27 author];
    v35 = v21;
    v29 = v28 = v11;
    *buf = 141559298;
    v45 = 1752392040;
    v46 = 2112;
    v47 = assetID;
    v48 = 2112;
    v49 = title2;
    v50 = 2112;
    v51 = v29;
    v52 = 2112;
    v53 = v26;
    v54 = 2112;
    v55 = v18;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MetadataEditor updateTitle] BEGIN assetID:%{mask.hash}@ (OLD title:%@ author:%@) to (NEW title:%@ author:%@)", buf, 0x3Eu);

    v11 = v28;
    v21 = v35;

    v8 = v26;
    v14 = v37;
  }

  updatedCoverImageData = [(BKLibraryContextualActionSheetmetadataEditor *)self updatedCoverImageData];
  if (((updatedCoverImageData == 0) & v11) == 1)
  {
    if (v21)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  libraryAsset5 = [(BKLibraryContextualActionSheetmetadataEditor *)self libraryAsset];
  assetID2 = [libraryAsset5 assetID];

  +[BKLibraryManager defaultManager];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100180354;
  v39 = v38[3] = &unk_100A096C0;
  v40 = assetID2;
  v41 = v8;
  v42 = v18;
  selfCopy = self;
  v33 = assetID2;
  v34 = v39;
  [v34 performBlockOnWorkerQueue:v38];

LABEL_10:
  [(BKLibraryContextualActionSheetmetadataEditor *)self _dismiss];
}

- (void)_coverButtonPressed:(id)pressed
{
  v4 = [UIDocumentPickerViewController alloc];
  v7 = UTTypeImage;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [v4 initForOpeningContentTypes:v5 asCopy:1];

  [v6 setAllowsMultipleSelection:0];
  [v6 setDelegate:self];
  [(BKLibraryContextualActionSheetmetadataEditor *)self presentViewController:v6 animated:1 completion:0];
}

- (id)_trimString:(id)string
{
  stringCopy = string;
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [stringCopy stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (void)_dismiss
{
  [(BKLibraryContextualActionSheetmetadataEditor *)self setAppearedFirstTime:0];

  [(BKLibraryContextualActionSheetmetadataEditor *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_updateCoverView:(id)view
{
  viewCopy = view;
  coverView = [(BKLibraryContextualActionSheetmetadataEditor *)self coverView];
  [coverView removeFromSuperview];

  coverContainer = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
  coverBorderView = [(BKLibraryContextualActionSheetmetadataEditor *)self coverBorderView];
  [coverContainer insertSubview:viewCopy belowSubview:coverBorderView];

  [(BKLibraryContextualActionSheetmetadataEditor *)self setCoverView:viewCopy];
  topAnchor = [viewCopy topAnchor];
  coverContainer2 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
  topAnchor2 = [coverContainer2 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[0] = v21;
  bottomAnchor = [viewCopy bottomAnchor];
  coverContainer3 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
  bottomAnchor2 = [coverContainer3 bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[1] = v8;
  leadingAnchor = [viewCopy leadingAnchor];
  coverContainer4 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
  leadingAnchor2 = [coverContainer4 leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[2] = v12;
  trailingAnchor = [viewCopy trailingAnchor];

  coverContainer5 = [(BKLibraryContextualActionSheetmetadataEditor *)self coverContainer];
  trailingAnchor2 = [coverContainer5 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[3] = v16;
  v17 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)_handleCoverUpdateRequest:(id)request
{
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100180D84;
  v24[3] = &unk_100A03440;
  requestCopy = request;
  v25 = requestCopy;
  selfCopy = self;
  v5 = objc_retainBlock(v24);
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"BKMetadatEditorSkipReplaceCoverConfirmation"];

  if (v7)
  {
    (v5[2])(v5);
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v21 = [v8 localizedStringForKey:@"Are you sure you want to change this book’s cover?" value:&stru_100A30A68 table:0];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"The original cover will be permanently removed." value:&stru_100A30A68 table:0];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Change Cover" value:&stru_100A30A68 table:0];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Cancel" value:&stru_100A30A68 table:0];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Don’t show me this again." value:&stru_100A30A68 table:0];

    v17 = +[BCAppKitBundleLoader appKitBundleClass];
    view = [(BKLibraryContextualActionSheetmetadataEditor *)self view];
    window = [view window];
    v27[0] = v12;
    v27[1] = v14;
    v20 = [NSArray arrayWithObjects:v27 count:2];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100180E90;
    v22[3] = &unk_100A096E8;
    v23 = v5;
    [v17 showWarningSheetAlertInWindow:window messageText:v21 informativeText:v10 buttonTitles:v20 suppressionTitle:v16 completion:v22];
  }
}

- (id)_makeAndAddLabel:(id)label style:(unsigned int)style
{
  labelCopy = label;
  v7 = objc_alloc_init(UILabel);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[UIColor labelColor];
  [v7 setTextColor:v8];

  [v7 setTextAlignment:4];
  [v7 setText:labelCopy];

  UIFontForLanguage = CTFontCreateUIFontForLanguage(style, 0.0, 0);
  [v7 setFont:UIFontForLanguage];

  view = [(BKLibraryContextualActionSheetmetadataEditor *)self view];
  [view addSubview:v7];

  return v7;
}

- (id)_makeAndAddTextField:(id)field
{
  fieldCopy = field;
  v5 = objc_alloc_init(UITextField);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setText:fieldCopy];

  v6 = +[UIColor labelColor];
  [v5 setTextColor:v6];

  [v5 setTextAlignment:4];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontControlContentFontType|kCTFontSmallSystemFontType|0x20, 0.0, 0);
  [v5 setFont:UIFontForLanguage];

  [v5 setBorderStyle:3];
  [v5 setAutocapitalizationType:1];
  [v5 setClearButtonMode:1];
  [v5 setDelegate:self];
  view = [(BKLibraryContextualActionSheetmetadataEditor *)self view];
  [view addSubview:v5];

  return v5;
}

- (id)_makeAndAddSystemButton:(int64_t)button action:(SEL)action text:(id)text
{
  textCopy = text;
  v9 = [UIButton buttonWithType:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setRole:button];
  [v9 addTarget:self action:action forControlEvents:64];
  [v9 setTitle:textCopy forState:0];

  [v9 sizeToFit];
  view = [(BKLibraryContextualActionSheetmetadataEditor *)self view];
  [view addSubview:v9];

  return v9;
}

- (CGSize)coverSize
{
  width = self->_coverSize.width;
  height = self->_coverSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end