@interface BKAudioController
- (BKAudioController)initWithNibName:(id)a3 bundle:(id)a4;
- (BKAudioControllerDelegate)delegate;
- (double)desiredPopoverWidth;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)volumeSlider;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_soundTrackChanged:(id)a3;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)onReadButton:(id)a3;
- (void)onTrackSwitch:(id)a3;
- (void)onTurnSwitch:(id)a3;
- (void)onVolume:(id)a3;
- (void)releaseViews;
- (void)updateControlStates;
- (void)updatePopoverSize;
- (void)updateRowHeight;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BKAudioController

- (BKAudioController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = BKAudioController;
  return [(BKViewController *)&v5 initWithNibName:a3 bundle:a4];
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
  v6 = [(BKAudioController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = +[UIColor systemBackgroundColor];
  v8 = [(BKAudioController *)self navigationController];
  v9 = [v8 navigationBar];
  [v9 setBarTintColor:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BKAudioController;
  [(BKAudioController *)&v6 viewWillAppear:a3];
  [(BKAudioController *)self updateControlStates];
  [(BKAudioController *)self updateRowHeight];
  [(BKAudioController *)self desiredPopoverWidth];
  [(BKAudioController *)self setPreferredContentSize:?];
  v4 = [(BKAudioController *)self view];
  [v4 layoutIfNeeded];

  [(BKAudioController *)self updatePopoverSize];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  [v5 addObserver:self selector:"_soundTrackChanged:" name:@"BKHTMLContentSoundTrackChangedNotification" object:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BKAudioController;
  [(BKAudioController *)&v5 viewDidDisappear:a3];
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
  v3 = [(BKAudioController *)self delegate];
  v4 = [v3 readAloudState];

  v5 = [(BKAudioController *)self delegate];
  [v5 volume];
  v7 = v6;
  v8 = [(BKAudioController *)self volumeSlider];
  LODWORD(v9) = v7;
  [v8 setValue:v9];

  [(UITableView *)self->_tableView reloadData];
  readButton = self->_readButton;
  if ((v4 & 0x80000000) != 0)
  {

    [(UIButton *)readButton setHidden:1];
  }

  else
  {
    [(UIButton *)readButton setHidden:0];
    v11 = self->_readButton;
    v12 = AEBundle();
    v15 = v12;
    if (v4)
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

- (void)_soundTrackChanged:(id)a3
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
    v10 = [(UISlider *)self->_volumeSlider _minValueView];
    [v10 setTintColor:v6];

    v11 = [UIImage systemImageNamed:@"speaker.3.fill"];
    v12 = [v11 imageWithConfiguration:v7];

    [(UISlider *)self->_volumeSlider setMaximumValueImage:v12];
    v13 = [(UISlider *)self->_volumeSlider _maxValueView];
    [v13 setTintColor:v6];

    [(UISlider *)self->_volumeSlider addTarget:self action:"onVolume:" forControlEvents:4096];
    volumeSlider = self->_volumeSlider;
  }

  return volumeSlider;
}

- (void)onReadButton:(id)a3
{
  v4 = [(BKAudioController *)self delegate];
  v5 = [v4 readAloudState] == 0;

  v6 = [(BKAudioController *)self delegate];
  [v6 setReadAloudState:v5];

  [(BKAudioController *)self updateControlStates];
}

- (void)onTrackSwitch:(id)a3
{
  v4 = a3;
  v6 = [(BKAudioController *)self delegate];
  v5 = [v4 isOn];

  [v6 setTrackState:v5];
}

- (void)onTurnSwitch:(id)a3
{
  v4 = a3;
  v6 = [(BKAudioController *)self delegate];
  v5 = [v4 isOn];

  [v6 setTurnState:v5];
}

- (void)onVolume:(id)a3
{
  v4 = [(BKAudioController *)self delegate];
  [(UISlider *)self->_volumeSlider value];
  [v4 setVolume:?];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"BKAudioController"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"BKAudioController"];
  }

  if ([v6 row])
  {
    if ([v6 row] != &dword_0 + 1 || (-[BKAudioController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "readAloudState"), v8, (v9 & 0x80000000) != 0))
    {
      v16 = AEBundle();
      v17 = [v16 localizedStringForKey:@"Soundtrack" value:&stru_1E7188 table:0];
      v18 = [v7 textLabel];
      [v18 setText:v17];

      v13 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v13 setPreferredStyle:2];
      [v13 addTarget:self action:"onTrackSwitch:" forControlEvents:4096];
      [v13 sizeToFit];
      v14 = [(BKAudioController *)self delegate];
      v15 = [v14 trackState] == 1;
    }

    else
    {
      v10 = AEBundle();
      v11 = [v10 localizedStringForKey:@"Turn My Pages" value:&stru_1E7188 table:0];
      v12 = [v7 textLabel];
      [v12 setText:v11];

      v13 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v13 setPreferredStyle:2];
      [v13 addTarget:self action:"onTurnSwitch:" forControlEvents:4096];
      [v13 sizeToFit];
      v14 = [(BKAudioController *)self delegate];
      v15 = [v14 turnState];
    }

    [v13 setOn:v15];

    [v7 setAccessoryView:v13];
  }

  else
  {
    v13 = [(BKAudioController *)self volumeSlider];
    [v13 setNeedsLayout];
    v19 = [v7 contentView];
    [v19 addSubview:v13];

    [v7 setAccessoryView:0];
    v20 = [v7 textLabel];
    [v20 setText:0];
  }

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(BKAudioController *)self delegate:a3];
  v6 = [v5 trackState];

  v7 = [(BKAudioController *)self delegate];
  LODWORD(v5) = [v7 readAloudState];

  if ((v6 | v5) < 0)
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