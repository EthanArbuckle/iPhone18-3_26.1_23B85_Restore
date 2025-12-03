@interface BKAudioController
- (BKAudioController)initWithNibName:(id)name bundle:(id)bundle;
- (BKAudioControllerDelegate)delegate;
- (double)desiredPopoverWidth;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)volumeSlider;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_soundTrackChanged:(id)changed;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)onReadButton:(id)button;
- (void)onTrackSwitch:(id)switch;
- (void)onTurnSwitch:(id)switch;
- (void)onVolume:(id)volume;
- (void)releaseViews;
- (void)updateControlStates;
- (void)updatePopoverSize;
- (void)updateRowHeight;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BKAudioController

- (BKAudioController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = BKAudioController;
  return [(BKViewController *)&v5 initWithNibName:name bundle:bundle];
}

- (void)dealloc
{
  [(BKAudioController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKAudioController;
  [(BKViewController *)&v3 dealloc];
}

- (void)releaseViews
{
  v6.receiver = self;
  v6.super_class = BKAudioController;
  [(BKViewController *)&v6 releaseViews];
  volumeSlider = self->_volumeSlider;
  self->_volumeSlider = 0;

  readButton = self->_readButton;
  self->_readButton = 0;

  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];
  tableView = self->_tableView;
  self->_tableView = 0;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = BKAudioController;
  [(BKAudioController *)&v10 viewDidLoad];
  v3 = AEBundle();
  v4 = [v3 localizedStringForKey:@"Read Aloud" value:&stru_1E7188 table:0];
  [(BKAudioController *)self setTitle:v4];

  [(UITableView *)self->_tableView setEstimatedSectionHeaderHeight:0.0];
  [(UITableView *)self->_tableView setEstimatedSectionFooterHeight:0.0];
  [(UITableView *)self->_tableView setSeparatorInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(BKAudioController *)self updateControlStates];
  v5 = +[UIColor systemBackgroundColor];
  view = [(BKAudioController *)self view];
  [view setBackgroundColor:v5];

  v7 = +[UIColor systemBackgroundColor];
  navigationController = [(BKAudioController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setBarTintColor:v7];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = BKAudioController;
  [(BKAudioController *)&v6 viewWillAppear:appear];
  [(BKAudioController *)self updateControlStates];
  [(BKAudioController *)self updateRowHeight];
  [(BKAudioController *)self desiredPopoverWidth];
  [(BKAudioController *)self setPreferredContentSize:?];
  view = [(BKAudioController *)self view];
  [view layoutIfNeeded];

  [(BKAudioController *)self updatePopoverSize];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  [v5 addObserver:self selector:"_soundTrackChanged:" name:@"BKHTMLContentSoundTrackChangedNotification" object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = BKAudioController;
  [(BKAudioController *)&v5 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];
  [v4 removeObserver:self name:@"BKHTMLContentSoundTrackChangedNotification" object:0];
}

- (void)contentSizeCategoryDidChange
{
  [(BKAudioController *)self updateRowHeight];

  [(BKAudioController *)self updatePopoverSize];
}

- (void)updateControlStates
{
  delegate = [(BKAudioController *)self delegate];
  readAloudState = [delegate readAloudState];

  delegate2 = [(BKAudioController *)self delegate];
  [delegate2 volume];
  v7 = v6;
  volumeSlider = [(BKAudioController *)self volumeSlider];
  LODWORD(v9) = v7;
  [volumeSlider setValue:v9];

  [(UITableView *)self->_tableView reloadData];
  readButton = self->_readButton;
  if ((readAloudState & 0x80000000) != 0)
  {

    [(UIButton *)readButton setHidden:1];
  }

  else
  {
    [(UIButton *)readButton setHidden:0];
    v11 = self->_readButton;
    v12 = AEBundle();
    v15 = v12;
    if (readAloudState)
    {
      v13 = @"Stop Reading";
    }

    else
    {
      v13 = @"Start Reading";
    }

    v14 = [v12 localizedStringForKey:v13 value:&stru_1E7188 table:0];
    [(UIButton *)v11 setTitle:v14 forState:0];
  }
}

- (void)updateRowHeight
{
  [(UITableView *)self->_tableView setEstimatedRowHeight:44.0];
  v3 = +[UIFont bc_accessibilityFontSizesEnabled];
  v4 = UITableViewAutomaticDimension;
  if (!v3)
  {
    v4 = 44.0;
  }

  tableView = self->_tableView;

  [(UITableView *)tableView setRowHeight:v4];
}

- (double)desiredPopoverWidth
{
  v2 = [UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityExtraLarge];
  result = 274.0;
  if (v2)
  {
    return 290.0;
  }

  return result;
}

- (void)updatePopoverSize
{
  [(UITableView *)self->_tableView contentSize];
  v4 = v3;
  [(BKAudioController *)self desiredPopoverWidth];
  v6 = v5;
  [(UIButton *)self->_readButton bounds];
  v7 = ceil(v4) + CGRectGetHeight(v9);

  [(BKAudioController *)self setPreferredContentSize:v6, v7];
}

- (void)_soundTrackChanged:(id)changed
{
  [(BKAudioController *)self updateControlStates];

  [(BKAudioController *)self updatePopoverSize];
}

- (id)volumeSlider
{
  volumeSlider = self->_volumeSlider;
  if (!volumeSlider)
  {
    v4 = [[UISlider alloc] initWithFrame:{15.0, 5.0, 246.0, 33.0}];
    v5 = self->_volumeSlider;
    self->_volumeSlider = v4;

    v6 = +[UIColor bc_booksSecondaryLabelColor];
    v7 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:1 scale:18.0];
    v8 = [UIImage systemImageNamed:@"speaker.fill"];
    v9 = [v8 imageWithConfiguration:v7];

    [(UISlider *)self->_volumeSlider setMinimumValueImage:v9];
    _minValueView = [(UISlider *)self->_volumeSlider _minValueView];
    [_minValueView setTintColor:v6];

    v11 = [UIImage systemImageNamed:@"speaker.3.fill"];
    v12 = [v11 imageWithConfiguration:v7];

    [(UISlider *)self->_volumeSlider setMaximumValueImage:v12];
    _maxValueView = [(UISlider *)self->_volumeSlider _maxValueView];
    [_maxValueView setTintColor:v6];

    [(UISlider *)self->_volumeSlider addTarget:self action:"onVolume:" forControlEvents:4096];
    volumeSlider = self->_volumeSlider;
  }

  return volumeSlider;
}

- (void)onReadButton:(id)button
{
  delegate = [(BKAudioController *)self delegate];
  v5 = [delegate readAloudState] == 0;

  delegate2 = [(BKAudioController *)self delegate];
  [delegate2 setReadAloudState:v5];

  [(BKAudioController *)self updateControlStates];
}

- (void)onTrackSwitch:(id)switch
{
  switchCopy = switch;
  delegate = [(BKAudioController *)self delegate];
  isOn = [switchCopy isOn];

  [delegate setTrackState:isOn];
}

- (void)onTurnSwitch:(id)switch
{
  switchCopy = switch;
  delegate = [(BKAudioController *)self delegate];
  isOn = [switchCopy isOn];

  [delegate setTurnState:isOn];
}

- (void)onVolume:(id)volume
{
  delegate = [(BKAudioController *)self delegate];
  [(UISlider *)self->_volumeSlider value];
  [delegate setVolume:?];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"BKAudioController"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"BKAudioController"];
  }

  if ([pathCopy row])
  {
    if ([pathCopy row] != &dword_0 + 1 || (-[BKAudioController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "readAloudState"), v8, (v9 & 0x80000000) != 0))
    {
      v16 = AEBundle();
      v17 = [v16 localizedStringForKey:@"Soundtrack" value:&stru_1E7188 table:0];
      textLabel = [v7 textLabel];
      [textLabel setText:v17];

      volumeSlider = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [volumeSlider setPreferredStyle:2];
      [volumeSlider addTarget:self action:"onTrackSwitch:" forControlEvents:4096];
      [volumeSlider sizeToFit];
      delegate = [(BKAudioController *)self delegate];
      turnState = [delegate trackState] == 1;
    }

    else
    {
      v10 = AEBundle();
      v11 = [v10 localizedStringForKey:@"Turn My Pages" value:&stru_1E7188 table:0];
      textLabel2 = [v7 textLabel];
      [textLabel2 setText:v11];

      volumeSlider = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [volumeSlider setPreferredStyle:2];
      [volumeSlider addTarget:self action:"onTurnSwitch:" forControlEvents:4096];
      [volumeSlider sizeToFit];
      delegate = [(BKAudioController *)self delegate];
      turnState = [delegate turnState];
    }

    [volumeSlider setOn:turnState];

    [v7 setAccessoryView:volumeSlider];
  }

  else
  {
    volumeSlider = [(BKAudioController *)self volumeSlider];
    [volumeSlider setNeedsLayout];
    contentView = [v7 contentView];
    [contentView addSubview:volumeSlider];

    [v7 setAccessoryView:0];
    textLabel3 = [v7 textLabel];
    [textLabel3 setText:0];
  }

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(BKAudioController *)self delegate:view];
  trackState = [v5 trackState];

  delegate = [(BKAudioController *)self delegate];
  LODWORD(v5) = [delegate readAloudState];

  if ((trackState | v5) < 0)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (BKAudioControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end