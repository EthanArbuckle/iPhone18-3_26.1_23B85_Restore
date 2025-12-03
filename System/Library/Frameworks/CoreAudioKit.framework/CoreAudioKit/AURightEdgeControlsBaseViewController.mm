@interface AURightEdgeControlsBaseViewController
- (void)auParameterValueChangedWithNotification:(id)notification;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AURightEdgeControlsBaseViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_23714B3DC();
}

- (void)viewWillAppear:(BOOL)appear
{
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  v6 = sub_23719653C();
  [defaultCenter addObserver:selfCopy selector:sel_auParameterValueChangedWithNotification_ name:v6 object:0];
}

- (void)auParameterValueChangedWithNotification:(id)notification
{
  v4 = sub_23719631C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  selfCopy = self;
  sub_23714ACBC();

  (*(v5 + 8))(v8, v4);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_23714CA98();
}

@end