@interface RSPlaceholderViewController
- (void)viewDidLoad;
@end

@implementation RSPlaceholderViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = RSPlaceholderViewController;
  [(RSPlaceholderViewController *)&v10 viewDidLoad];
  v3 = +[UIContentUnavailableConfiguration emptyConfiguration];
  [v3 setText:@"AVKitRoutingService Successfully Installed!"];
  v4 = [UIImage systemImageNamed:@"checkmark.seal.fill"];
  [v3 setImage:v4];

  [v3 setSecondaryText:{@"Typically, apps acting as a view service (such as AVKitRoutingService) would be hidden from the home screen and would never have to deal with this case. I chose not to hide AVKitRoutingService from the home screen simply for demonstration purposes. For more details on why scene hosting clients do not support scenes vended from SpringBoard and other apps simultaneously, read through the repo's README."}];
  v5 = +[UIButtonConfiguration filledButtonConfiguration];
  [v5 setTitle:@"Kill AVKitRoutingService"];
  [v5 setButtonSize:3];
  [v3 setButton:v5];
  v6 = [v3 buttonProperties];
  v7 = [UIAction actionWithHandler:&stru_10007BD08];
  [v6 setPrimaryAction:v7];

  v8 = [[UIContentUnavailableView alloc] initWithConfiguration:v3];
  v9 = +[UIColor systemBackgroundColor];
  [v8 setBackgroundColor:v9];

  [(RSPlaceholderViewController *)self setView:v8];
}

@end