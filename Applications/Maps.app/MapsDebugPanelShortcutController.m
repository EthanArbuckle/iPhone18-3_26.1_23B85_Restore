@interface MapsDebugPanelShortcutController
+ (MapsDebugPanelShortcutController)sharedInstance;
- (NSArray)shortcuts;
- (void)addShortcut:(id)a3 completion:(id)a4;
- (void)addUpdateCompletionHandler:(id)a3;
- (void)removeShortcut:(id)a3 completion:(id)a4;
- (void)setShortcuts:(id)a3;
@end

@implementation MapsDebugPanelShortcutController

- (void)addUpdateCompletionHandler:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100815F14;
  v12 = sub_100815F24;
  v13 = 0;
  v7 = a3;
  v4 = _GEOConfigAddBlockListenerForKey();
  v5 = v9[5];
  v9[5] = v4;

  v6 = [(MapsDebugPanelShortcutController *)self shortcuts:_NSConcreteStackBlock];
  GEOConfigSetArray();

  _Block_object_dispose(&v8, 8);
}

- (void)removeShortcut:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(MapsDebugPanelShortcutController *)self shortcuts];
  v8 = [v7 mutableCopy];

  [v8 removeObject:v6];
  if (v9)
  {
    [(MapsDebugPanelShortcutController *)self addUpdateCompletionHandler:v9];
  }

  [(MapsDebugPanelShortcutController *)self setShortcuts:v8];
}

- (void)addShortcut:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(MapsDebugPanelShortcutController *)self shortcuts];
  v8 = [v7 mutableCopy];

  [v8 addObject:v6];
  if (v9)
  {
    [(MapsDebugPanelShortcutController *)self addUpdateCompletionHandler:v9];
  }

  [(MapsDebugPanelShortcutController *)self setShortcuts:v8];
}

- (void)setShortcuts:(id)a3
{
  v3 = sub_100021DB0(a3, &stru_10162B480);
  GEOConfigSetArray();
}

- (NSArray)shortcuts
{
  v2 = GEOConfigGetArray();
  v3 = sub_100021DB0(v2, &stru_10162B440);

  return v3;
}

+ (MapsDebugPanelShortcutController)sharedInstance
{
  if (qword_10195D920 != -1)
  {
    dispatch_once(&qword_10195D920, &stru_10162B400);
  }

  v3 = qword_10195D918;

  return v3;
}

@end