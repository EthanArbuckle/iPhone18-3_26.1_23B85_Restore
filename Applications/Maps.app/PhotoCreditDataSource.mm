@interface PhotoCreditDataSource
+ (void)registerCellsInCollectionView:(id)view;
- (PhotoCreditChangesDelegate)photoCreditChangesDelegate;
- (PhotoCreditDataSource)init;
- (SupplementaryElementsDataSourceDelegate)privacyDelegate;
- (double)footerHeightForCollectionView:(id)view;
- (id)_footerLinkText;
- (id)_footerText;
- (id)_photoCreditNameValidationErrorMessage;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)_photoCreditDidUpdate;
- (void)fetchPhotoCreditPreferences;
- (void)prepareContent;
- (void)privacyTextTapped;
- (void)updatePhotoCreditPreferencesWithCompletion:(id)completion;
@end

@implementation PhotoCreditDataSource

+ (void)registerCellsInCollectionView:(id)view
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___PhotoCreditDataSource;
  viewCopy = view;
  objc_msgSendSuper2(&v7, "registerCellsInCollectionView:", viewCopy);
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [viewCopy registerClass:v4 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:{v6, v7.receiver, v7.super_class}];
}

- (SupplementaryElementsDataSourceDelegate)privacyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_privacyDelegate);

  return WeakRetained;
}

- (PhotoCreditChangesDelegate)photoCreditChangesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photoCreditChangesDelegate);

  return WeakRetained;
}

- (id)_footerLinkText
{
  v2 = [NSString alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Photo Credit] Terms" value:@"localized string not found" table:0];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (id)_footerText
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Photo Credit] Footer string." value:@"localized string not found" table:0];
  _footerLinkText = [(PhotoCreditDataSource *)self _footerLinkText];
  v6 = [NSString stringWithFormat:v4, _footerLinkText];

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = PhotoCreditDataSource;
  v4 = [(PreferenceValuesDataSource *)&v8 collectionView:view cellForItemAtIndexPath:path];
  v5 = +[UIBackgroundConfiguration listCellConfiguration];
  backgroundColor = [v5 backgroundColor];
  [v4 setBackgroundColor:backgroundColor];

  return v4;
}

- (void)_photoCreditDidUpdate
{
  photoCreditTextFieldDoesContainText = [(PhotoCreditDataSource *)self photoCreditTextFieldDoesContainText];
  photoCreditChangesDelegate = [(PhotoCreditDataSource *)self photoCreditChangesDelegate];
  [photoCreditChangesDelegate updateAppearanceForPhotoCredit:self->_photoCredit photoCreditNameExists:photoCreditTextFieldDoesContainText];
}

- (void)privacyTextTapped
{
  privacyDelegate = [(PhotoCreditDataSource *)self privacyDelegate];
  [privacyDelegate didTapOnPrivacyText];
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100762C4C;
  v31[3] = &unk_1016285B8;
  v10 = viewCopy;
  v32 = v10;
  v11 = pathCopy;
  v33 = v11;
  selfCopy = self;
  kindCopy = kind;
  v13 = objc_retainBlock(v31);
  v14 = [kindCopy isEqualToString:UICollectionElementKindSectionFooter];

  if (v14)
  {
    v15 = objc_alloc_init(NSMutableParagraphStyle);
    [v15 setLineBreakMode:0];
    v35[0] = NSParagraphStyleAttributeName;
    v35[1] = NSForegroundColorAttributeName;
    v36[0] = v15;
    v16 = +[UIColor secondaryLabelColor];
    v36[1] = v16;
    v30 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

    v17 = [NSMutableAttributedString alloc];
    _footerText = [(PhotoCreditDataSource *)self _footerText];
    v19 = [v17 initWithString:_footerText attributes:v30];

    _footerText2 = [(PhotoCreditDataSource *)self _footerText];
    _footerLinkText = [(PhotoCreditDataSource *)self _footerLinkText];
    v22 = [_footerText2 rangeOfString:_footerLinkText];
    v23 = v10;
    v25 = v24;

    v26 = +[UIColor systemBlueColor];
    v27 = v25;
    v10 = v23;
    [v19 addAttribute:NSForegroundColorAttributeName value:v26 range:{v22, v27}];

    v28 = (v13[2])(v13, v19, 1);
  }

  else
  {
    v28 = (v13[2])(v13, 0, 0);
  }

  return v28;
}

- (double)footerHeightForCollectionView:(id)view
{
  [view frame];
  v5 = v4 + -32.0;
  height = UILayoutFittingExpandedSize.height;
  v7 = [(MapsThemeCollectionReusableView *)[UserProfileSectionFooterView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v8 = [UserProfileSectionFooterViewModel alloc];
  v9 = [NSAttributedString alloc];
  _footerText = [(PhotoCreditDataSource *)self _footerText];
  v11 = [v9 initWithString:_footerText];
  v12 = [(UserProfileSectionFooterViewModel *)v8 initWithContentString:v11];

  [(UserProfileSectionFooterView *)v7 configureWithViewModel:v12];
  LODWORD(v13) = 1148846080;
  LODWORD(v14) = 1132068864;
  [(UserProfileSectionFooterView *)v7 systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:height verticalFittingPriority:v13, v14];
  v16 = v15;

  return v16;
}

- (void)prepareContent
{
  v6.receiver = self;
  v6.super_class = PhotoCreditDataSource;
  [(PreferenceValuesDataSource *)&v6 prepareContent];
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100762F6C;
  v3[3] = &unk_10165E0A8;
  objc_copyWeak(&v4, &location);
  [(PreferenceValuesDataSource *)self addSectionWithTitle:0 content:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)_photoCreditNameValidationErrorMessage
{
  Integer = GEOConfigGetInteger();
  v4 = GEOConfigGetInteger();
  if ([(NSString *)self->_photoCreditName length]>= Integer && [(NSString *)self->_photoCreditName length]<= v4)
  {
    v11 = 0;
  }

  else
  {
    v5 = [NSNumber numberWithInteger:Integer];
    v6 = [NSNumberFormatter localizedStringFromNumber:v5 numberStyle:0];

    v7 = [NSNumber numberWithInteger:v4];
    v8 = [NSNumberFormatter localizedStringFromNumber:v7 numberStyle:0];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[Photo Credit] Photo Credit name too short or long" value:@"localized string not found" table:0];

    v11 = [NSString stringWithFormat:v10, v6, v8];
  }

  return v11;
}

- (void)updatePhotoCreditPreferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_didChangeAttributionPreferences)
  {
    _photoCreditNameValidationErrorMessage = [(PhotoCreditDataSource *)self _photoCreditNameValidationErrorMessage];
    v7 = _photoCreditNameValidationErrorMessage;
    if (!self->_photoCredit || _photoCreditNameValidationErrorMessage == 0)
    {
      v9 = +[UGCPhotoAttributionPreferencesManager sharedManager];
      photoCredit = self->_photoCredit;
      photoCreditName = self->_photoCreditName;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100763890;
      v12[3] = &unk_101628510;
      v13 = v5;
      [v9 updatePhotoAttributionPreferencesAttributePhotos:photoCredit attributionName:photoCreditName completion:v12];
    }

    else
    {
      v5[2](v5, _photoCreditNameValidationErrorMessage);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)fetchPhotoCreditPreferences
{
  objc_initWeak(&location, self);
  v2 = +[UGCPhotoAttributionPreferencesManager sharedManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100763B0C;
  v3[3] = &unk_10163B510;
  objc_copyWeak(&v4, &location);
  [v2 photoAttributionPreferencesWithCompletion:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (PhotoCreditDataSource)init
{
  v5.receiver = self;
  v5.super_class = PhotoCreditDataSource;
  v2 = [(PhotoCreditDataSource *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PhotoCreditDataSource *)v2 fetchPhotoCreditPreferences];
  }

  return v3;
}

@end