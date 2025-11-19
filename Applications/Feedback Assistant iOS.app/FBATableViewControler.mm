@interface FBATableViewControler
- (void)dealloc;
- (void)reloadView;
- (void)viewDidLoad;
@end

@implementation FBATableViewControler

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = FBATableViewControler;
  [(FBATableViewControler *)&v4 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"reloadView" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FBATableViewControler;
  [(FBATableViewControler *)&v4 dealloc];
}

- (void)reloadView
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Subclasses must override %@", v2];
}

@end