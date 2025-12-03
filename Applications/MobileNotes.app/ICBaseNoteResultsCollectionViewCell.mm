@interface ICBaseNoteResultsCollectionViewCell
- (CGRect)estimatedBoundsForLabel:(id)label;
- (CGRect)estimatedSummaryLabelFrame;
- (CGRect)estimatedTitleLabelFrame;
- (ICBaseNoteResultsCollectionViewCell)initWithCoder:(id)coder;
- (ICBaseNoteResultsCollectionViewCell)initWithFrame:(CGRect)frame;
- (ICNoteResultsCollaboratorsBadgeView)collaboratorsBadgeView;
- (NSArray)cloudSharingParticipantNames;
- (void)layoutSubviews;
- (void)loadConfigurationDataAndUpdate;
- (void)registerForTraitChanges;
- (void)setConfiguration:(id)configuration synchronously:(BOOL)synchronously;
- (void)setEstimatedSummaryLabelFrame:(CGRect)frame;
- (void)setEstimatedTitleLabelFrame:(CGRect)frame;
- (void)synchronouslyLoadConfigurationDataAndUpdate;
- (void)updateConfigurationAttributes;
- (void)updateEstimatedLabelFrames;
- (void)updateViewStateProperties;
@end

@implementation ICBaseNoteResultsCollectionViewCell

- (ICBaseNoteResultsCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICBaseNoteResultsCollectionViewCell;
  v3 = [(ICBaseNoteResultsCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICBaseNoteResultsCollectionViewCell *)v3 commonInit];
  }

  return v4;
}

- (ICBaseNoteResultsCollectionViewCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICBaseNoteResultsCollectionViewCell;
  v3 = [(ICBaseNoteResultsCollectionViewCell *)&v6 initWithCoder:coder];
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
  collaboratorsBadgeView = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
  share = [collaboratorsBadgeView share];
  participants = [share participants];
  collaboratorsBadgeView2 = [(ICBaseNoteResultsCollectionViewCell *)self collaboratorsBadgeView];
  v7 = +[CKShareParticipant ic_displayableNames:maximumNamesCount:](CKShareParticipant, "ic_displayableNames:maximumNamesCount:", participants, [collaboratorsBadgeView2 displayedAvatarCount]);

  return v7;
}

- (void)setConfiguration:(id)configuration synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  configurationCopy = configuration;
  objc_storeStrong(&self->_configuration, configuration);
  [(ICBaseNoteResultsCollectionViewCell *)self updateConfigurationAttributes];
  note = [configurationCopy note];
  objc_opt_class();
  v8 = ICClassAndProtocolCast();
  [(ICBaseNoteResultsCollectionViewCell *)self ic_annotateWithNote:v8, &OBJC_PROTOCOL___ICSearchIndexableNote];

  if ([configurationCopy isDataLoaded])
  {
    [(ICBaseNoteResultsCollectionViewCell *)self updateFromConfiguration];
  }

  else if (synchronouslyCopy)
  {
    searchResult = [configurationCopy searchResult];

    if (searchResult)
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
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  searchResult = [configuration searchResult];

  if (searchResult)
  {

    [(ICBaseNoteResultsCollectionViewCell *)self synchronouslyLoadConfigurationDataAndUpdate];
  }

  else
  {
    configuration2 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100137078;
    v6[3] = &unk_100645E30;
    v6[4] = self;
    [configuration2 loadDataWithCompletion:v6];
  }
}

- (void)synchronouslyLoadConfigurationDataAndUpdate
{
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  [configuration synchronouslyLoadData];

  [(ICBaseNoteResultsCollectionViewCell *)self updateFromConfiguration];
}

- (void)updateViewStateProperties
{
  titleLabelFont = [(ICBaseNoteResultsCollectionViewCell *)self titleLabelFont];
  titleLabel = [(ICBaseNoteResultsCollectionViewCell *)self titleLabel];
  [titleLabel setFont:titleLabelFont];

  v26 = NSFontAttributeName;
  titleLabel2 = [(ICBaseNoteResultsCollectionViewCell *)self titleLabel];
  font = [titleLabel2 font];
  v27 = font;
  v7 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [(ICBaseNoteResultsCollectionViewCell *)self setTitleLabelAttributes:v7];

  summaryLabelFont = [(ICBaseNoteResultsCollectionViewCell *)self summaryLabelFont];
  summaryLabel = [(ICBaseNoteResultsCollectionViewCell *)self summaryLabel];
  [summaryLabel setFont:summaryLabelFont];

  v24[0] = NSFontAttributeName;
  summaryLabel2 = [(ICBaseNoteResultsCollectionViewCell *)self summaryLabel];
  font2 = [summaryLabel2 font];
  v25[0] = font2;
  v24[1] = NSForegroundColorAttributeName;
  summaryLabel3 = [(ICBaseNoteResultsCollectionViewCell *)self summaryLabel];
  textColor = [summaryLabel3 textColor];
  v14 = textColor;
  if (!textColor)
  {
    v14 = +[UIColor tertiaryLabelColor];
  }

  v25[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  [(ICBaseNoteResultsCollectionViewCell *)self setSummaryLabelAttributes:v15];

  if (!textColor)
  {
  }

  if (objc_opt_respondsToSelector())
  {
    folderAndAccountLabelFont = [(ICBaseNoteResultsCollectionViewCell *)self folderAndAccountLabelFont];
    folderAndAccountLabel = [(ICBaseNoteResultsCollectionViewCell *)self folderAndAccountLabel];
    [folderAndAccountLabel setFont:folderAndAccountLabelFont];

    v22 = NSFontAttributeName;
    folderAndAccountLabel2 = [(ICBaseNoteResultsCollectionViewCell *)self folderAndAccountLabel];
    font3 = [folderAndAccountLabel2 font];
    v23 = font3;
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
  titleLabel = [(ICBaseNoteResultsCollectionViewCell *)self titleLabel];
  [(ICBaseNoteResultsCollectionViewCell *)self estimatedBoundsForLabel:titleLabel];
  [(ICBaseNoteResultsCollectionViewCell *)self setEstimatedTitleLabelFrame:?];

  summaryLabel = [(ICBaseNoteResultsCollectionViewCell *)self summaryLabel];
  [(ICBaseNoteResultsCollectionViewCell *)self estimatedBoundsForLabel:summaryLabel];
  [(ICBaseNoteResultsCollectionViewCell *)self setEstimatedSummaryLabelFrame:?];
}

- (void)setEstimatedTitleLabelFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  self->_estimatedTitleLabelFrame = frame;
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  [configuration setEstimatedTitleLabelFrame:{x, y, width, height}];
}

- (void)setEstimatedSummaryLabelFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  self->_estimatedSummaryLabelFrame = frame;
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  [configuration setEstimatedSummaryLabelFrame:{x, y, width, height}];
}

- (CGRect)estimatedBoundsForLabel:(id)label
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
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  titleLabelAttributes = [(ICBaseNoteResultsCollectionViewCell *)self titleLabelAttributes];
  summaryLabelAttributes = [(ICBaseNoteResultsCollectionViewCell *)self summaryLabelAttributes];
  folderAndAccountLabelAttributes = [(ICBaseNoteResultsCollectionViewCell *)self folderAndAccountLabelAttributes];
  [(ICBaseNoteResultsCollectionViewCell *)self estimatedTitleLabelFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(ICBaseNoteResultsCollectionViewCell *)self estimatedSummaryLabelFrame];
  [configuration updateTitleLabelAttributes:titleLabelAttributes summaryLabelAttributes:summaryLabelAttributes folderAndAccountLabelAttributes:folderAndAccountLabelAttributes estimatedTitleLabelFrame:v7 estimatedSummaryLabelFrame:{v9, v11, v13, v14, v15, v16, v17}];
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
  v6 = [(ICBaseNoteResultsCollectionViewCell *)self registerForTraitChanges:v5 withHandler:&stru_10064AD78];
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