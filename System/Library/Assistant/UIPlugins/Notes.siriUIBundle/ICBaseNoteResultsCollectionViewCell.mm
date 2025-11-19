@interface ICBaseNoteResultsCollectionViewCell
- (CGRect)estimatedBoundsForLabel:(id)a3;
- (CGRect)estimatedSummaryLabelFrame;
- (CGRect)estimatedTitleLabelFrame;
- (ICBaseNoteResultsCollectionViewCell)initWithCoder:(id)a3;
- (ICBaseNoteResultsCollectionViewCell)initWithFrame:(CGRect)a3;
- (ICNoteResultsCollaboratorsBadgeView)collaboratorsBadgeView;
- (NSArray)cloudSharingParticipantNames;
- (void)layoutSubviews;
- (void)loadConfigurationDataAndUpdate;
- (void)registerForTraitChanges;
- (void)setConfiguration:(id)a3 synchronously:(BOOL)a4;
- (void)setEstimatedSummaryLabelFrame:(CGRect)a3;
- (void)setEstimatedTitleLabelFrame:(CGRect)a3;
- (void)synchronouslyLoadConfigurationDataAndUpdate;
- (void)updateConfigurationAttributes;
- (void)updateEstimatedLabelFrames;
- (void)updateViewStateProperties;
@end

@implementation ICBaseNoteResultsCollectionViewCell

- (ICBaseNoteResultsCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICBaseNoteResultsCollectionViewCell;
  v3 = [(ICBaseNoteResultsCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICBaseNoteResultsCollectionViewCell *)v3 commonInit];
  }

  return v4;
}

- (ICBaseNoteResultsCollectionViewCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICBaseNoteResultsCollectionViewCell;
  v3 = [(ICBaseNoteResultsCollectionViewCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICBaseNoteResultsCollectionViewCell *)v3 commonInit];
  }

  return v4;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = ICBaseNoteResultsCollectionViewCell;
  [(ICBaseNoteResultsCollectionViewCell *)&v7 layoutSubviews];
  [(ICBaseNoteResultsCollectionViewCell *)self currentWidth];
  v4 = v3;
  [(ICBaseNoteResultsCollectionViewCell *)self frame];
  if (v4 != v5)
  {
    [(ICBaseNoteResultsCollectionViewCell *)self updateEstimatedLabelFrames];
    [(ICBaseNoteResultsCollectionViewCell *)self loadConfigurationDataAndUpdate];
  }

  [(ICBaseNoteResultsCollectionViewCell *)self frame];
  [(ICBaseNoteResultsCollectionViewCell *)self setCurrentWidth:v6];
}

- (NSArray)cloudSharingParticipantNames
{
  v3 = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
  v4 = [v3 share];
  v5 = [v4 participants];
  v6 = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
  v7 = +[CKShareParticipant ic_displayableNames:maximumNamesCount:](CKShareParticipant, "ic_displayableNames:maximumNamesCount:", v5, [v6 displayedAvatarCount]);

  return v7;
}

- (void)setConfiguration:(id)a3 synchronously:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  objc_storeStrong(&self->_configuration, a3);
  [(ICBaseNoteResultsCollectionViewCell *)self updateConfigurationAttributes];
  if ([v8 isDataLoaded])
  {
    [(ICBaseNoteResultsCollectionViewCell *)self updateFromConfiguration];
  }

  else if (v4)
  {
    v7 = [v8 searchResult];

    if (v7)
    {
      [(ICBaseNoteResultsCollectionViewCell *)self setSettingConfigurationForSearchResult:1];
      [(ICBaseNoteResultsCollectionViewCell *)self configureColorsForSearchResult];
    }

    [(ICBaseNoteResultsCollectionViewCell *)self synchronouslyLoadConfigurationDataAndUpdate];
    [(ICBaseNoteResultsCollectionViewCell *)self setSettingConfigurationForSearchResult:0];
  }

  else
  {
    [(ICBaseNoteResultsCollectionViewCell *)self loadConfigurationDataAndUpdate];
  }

  [(ICBaseNoteResultsCollectionViewCell *)self updateFromConfiguration];
}

- (void)loadConfigurationDataAndUpdate
{
  v3 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v4 = [v3 searchResult];

  if (v4)
  {

    [(ICBaseNoteResultsCollectionViewCell *)self synchronouslyLoadConfigurationDataAndUpdate];
  }

  else
  {
    v5 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_97D8;
    v6[3] = &unk_18600;
    v6[4] = self;
    [v5 loadDataWithCompletion:v6];
  }
}

- (void)synchronouslyLoadConfigurationDataAndUpdate
{
  v3 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  [v3 synchronouslyLoadData];

  [(ICBaseNoteResultsCollectionViewCell *)self updateFromConfiguration];
}

- (void)updateViewStateProperties
{
  v3 = [(ICBaseNoteResultsCollectionViewCell *)self titleLabelFont];
  v4 = [(ICBaseNoteResultsCollectionViewCell *)self titleLabel];
  [v4 setFont:v3];

  v26 = NSFontAttributeName;
  v5 = [(ICBaseNoteResultsCollectionViewCell *)self titleLabel];
  v6 = [v5 font];
  v27 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [(ICBaseNoteResultsCollectionViewCell *)self setTitleLabelAttributes:v7];

  v8 = [(ICBaseNoteResultsCollectionViewCell *)self summaryLabelFont];
  v9 = [(ICBaseNoteResultsCollectionViewCell *)self summaryLabel];
  [v9 setFont:v8];

  v24[0] = NSFontAttributeName;
  v10 = [(ICBaseNoteResultsCollectionViewCell *)self summaryLabel];
  v11 = [v10 font];
  v25[0] = v11;
  v24[1] = NSForegroundColorAttributeName;
  v12 = [(ICBaseNoteResultsCollectionViewCell *)self summaryLabel];
  v13 = [v12 textColor];
  v14 = v13;
  if (!v13)
  {
    v14 = +[UIColor tertiaryLabelColor];
  }

  v25[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  [(ICBaseNoteResultsCollectionViewCell *)self setSummaryLabelAttributes:v15];

  if (!v13)
  {
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = [(ICBaseNoteResultsCollectionViewCell *)self folderAndAccountLabelFont];
    v17 = [(ICBaseNoteResultsCollectionViewCell *)self folderAndAccountLabel];
    [v17 setFont:v16];

    v22 = NSFontAttributeName;
    v18 = [(ICBaseNoteResultsCollectionViewCell *)self folderAndAccountLabel];
    v19 = [v18 font];
    v23 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [(ICBaseNoteResultsCollectionViewCell *)self setFolderAndAccountLabelAttributes:v20];
  }

  else
  {
    [(ICBaseNoteResultsCollectionViewCell *)self setFolderAndAccountLabelAttributes:&__NSDictionary0__struct];
  }

  [(ICBaseNoteResultsCollectionViewCell *)self frame];
  [(ICBaseNoteResultsCollectionViewCell *)self setCurrentWidth:v21];
  [(ICBaseNoteResultsCollectionViewCell *)self updateEstimatedLabelFrames];
  [(ICBaseNoteResultsCollectionViewCell *)self updateConfigurationAttributes];
}

- (void)updateEstimatedLabelFrames
{
  v3 = [(ICBaseNoteResultsCollectionViewCell *)self titleLabel];
  [(ICBaseNoteResultsCollectionViewCell *)self estimatedBoundsForLabel:v3];
  [(ICBaseNoteResultsCollectionViewCell *)self setEstimatedTitleLabelFrame:?];

  v4 = [(ICBaseNoteResultsCollectionViewCell *)self summaryLabel];
  [(ICBaseNoteResultsCollectionViewCell *)self estimatedBoundsForLabel:v4];
  [(ICBaseNoteResultsCollectionViewCell *)self setEstimatedSummaryLabelFrame:?];
}

- (void)setEstimatedTitleLabelFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_estimatedTitleLabelFrame = a3;
  v7 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  [v7 setEstimatedTitleLabelFrame:{x, y, width, height}];
}

- (void)setEstimatedSummaryLabelFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_estimatedSummaryLabelFrame = a3;
  v7 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  [v7 setEstimatedSummaryLabelFrame:{x, y, width, height}];
}

- (CGRect)estimatedBoundsForLabel:(id)a3
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)updateConfigurationAttributes
{
  v18 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v3 = [(ICBaseNoteResultsCollectionViewCell *)self titleLabelAttributes];
  v4 = [(ICBaseNoteResultsCollectionViewCell *)self summaryLabelAttributes];
  v5 = [(ICBaseNoteResultsCollectionViewCell *)self folderAndAccountLabelAttributes];
  [(ICBaseNoteResultsCollectionViewCell *)self estimatedTitleLabelFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(ICBaseNoteResultsCollectionViewCell *)self estimatedSummaryLabelFrame];
  [v18 updateTitleLabelAttributes:v3 summaryLabelAttributes:v4 folderAndAccountLabelAttributes:v5 estimatedTitleLabelFrame:v7 estimatedSummaryLabelFrame:{v9, v11, v13, v14, v15, v16, v17}];
}

- (void)registerForTraitChanges
{
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v7 count:4];
  v4 = +[UITraitCollection systemTraitsAffectingColorAppearance];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = [(ICBaseNoteResultsCollectionViewCell *)self registerForTraitChanges:v5 withHandler:&stru_18640];
}

- (ICNoteResultsCollaboratorsBadgeView)collaboratorsBadgeView
{
  WeakRetained = objc_loadWeakRetained(&self->_collaboratorsBadgeView);

  return WeakRetained;
}

- (CGRect)estimatedTitleLabelFrame
{
  x = self->_estimatedTitleLabelFrame.origin.x;
  y = self->_estimatedTitleLabelFrame.origin.y;
  width = self->_estimatedTitleLabelFrame.size.width;
  height = self->_estimatedTitleLabelFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)estimatedSummaryLabelFrame
{
  x = self->_estimatedSummaryLabelFrame.origin.x;
  y = self->_estimatedSummaryLabelFrame.origin.y;
  width = self->_estimatedSummaryLabelFrame.size.width;
  height = self->_estimatedSummaryLabelFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end