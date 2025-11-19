@interface AURightEdgeControlsBaseViewController
- (void)auParameterValueChangedWithNotification:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AURightEdgeControlsBaseViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_23714B3DC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = objc_opt_self();
  v7 = self;
  v5 = [v4 defaultCenter];
  v6 = sub_23719653C();
  [v5 addObserver:v7 selector:sel_auParameterValueChangedWithNotification_ name:v6 object:0];
}

- (void)auParameterValueChangedWithNotification:(id)a3
{
  v4 = sub_23719631C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  v9 = self;
  sub_23714ACBC();

  (*(v5 + 8))(v8, v4);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_23714CA98();
}

@end