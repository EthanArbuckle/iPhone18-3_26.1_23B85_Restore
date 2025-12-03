@interface BKAudioTurnModeViewController
- (BKAudioControllerDelegate)delegate;
- (BKAudioTurnModeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)releaseViews;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BKAudioTurnModeViewController

- (BKAudioTurnModeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = BKAudioTurnModeViewController;
  return [(BKViewController *)&v5 initWithNibName:name bundle:bundle];
}

- (void)dealloc
{
  [(BKAudioTurnModeViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKAudioTurnModeViewController;
  [(BKViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BKAudioTurnModeViewController;
  [(BKAudioTurnModeViewController *)&v5 viewDidLoad];
  v3 = AEBundle();
  v4 = [v3 localizedStringForKey:@"Turn Pages" value:&stru_1E7188 table:0];
  [(BKAudioTurnModeViewController *)self setTitle:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKAudioTurnModeViewController;
  [(BKAudioTurnModeViewController *)&v4 viewWillAppear:appear];
  [(UITableView *)self->_tableView reloadData];
}

- (void)releaseViews
{
  v4.receiver = self;
  v4.super_class = BKAudioTurnModeViewController;
  [(BKViewController *)&v4 releaseViews];
  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];
  tableView = self->_tableView;
  self->_tableView = 0;
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = BKAudioTurnModeViewController;
  [(BKAudioTurnModeViewController *)&v2 didReceiveMemoryWarning];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"BKAudioController"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"BKAudioController"];
  }

  delegate = [(BKAudioTurnModeViewController *)self delegate];
  turnState = [delegate turnState];

  v10 = [pathCopy row];
  v11 = AEBundle();
  v12 = v11;
  if (v10)
  {
    v13 = [v11 localizedStringForKey:@"Manually" value:&stru_1E7188 table:0];
    textLabel = [v7 textLabel];
    [textLabel setText:v13];

    if (turnState)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = [v11 localizedStringForKey:@"Automatically" value:&stru_1E7188 table:0];
  textLabel2 = [v7 textLabel];
  [textLabel2 setText:v17];

  if (turnState)
  {
LABEL_5:
    [v7 setAccessoryType:3];
  }

LABEL_6:
  v15 = +[UIColor whiteColor];
  [v7 setBackgroundColor:v15];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [path row] == 0;
  delegate = [(BKAudioTurnModeViewController *)self delegate];
  [delegate setTurnState:v5];

  delegate2 = [(BKAudioTurnModeViewController *)self delegate];
  LODWORD(delegate) = [delegate2 readAloudState];

  if (delegate)
  {
    delegate3 = [(BKAudioTurnModeViewController *)self delegate];
    [delegate3 dismissPopover];
  }

  else
  {
    delegate3 = [(BKAudioTurnModeViewController *)self navigationController];
    v8 = [delegate3 popViewControllerAnimated:1];
  }
}

- (BKAudioControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end