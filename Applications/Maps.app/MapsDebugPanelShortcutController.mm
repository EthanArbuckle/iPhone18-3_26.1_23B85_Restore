@interface MapsDebugPanelShortcutController
+ (MapsDebugPanelShortcutController)sharedInstance;
- (NSArray)shortcuts;
- (void)addShortcut:(id)shortcut completion:(id)completion;
- (void)addUpdateCompletionHandler:(id)handler;
- (void)removeShortcut:(id)shortcut completion:(id)completion;
- (void)setShortcuts:(id)shortcuts;
@end

@implementation MapsDebugPanelShortcutController

- (void)addUpdateCompletionHandler:(id)handler
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100815F14;
  v12 = sub_100815F24;
  v13 = 0;
  handlerCopy = handler;
  v4 = _GEOConfigAddBlockListenerForKey();
  v5 = v9[5];
  v9[5] = v4;

  v6 = [(MapsDebugPanelShortcutController *)self shortcuts:_NSConcreteStackBlock];
  GEOConfigSetArray();

  _Block_object_dispose(&v8, 8);
}

- (void)removeShortcut:(id)shortcut completion:(id)completion
{
  completionCopy = completion;
  shortcutCopy = shortcut;
  shortcuts = [(MapsDebugPanelShortcutController *)self shortcuts];
  v8 = [shortcuts mutableCopy];

  [v8 removeObject:shortcutCopy];
  if (completionCopy)
  {
    [(MapsDebugPanelShortcutController *)self addUpdateCompletionHandler:completionCopy];
  }

  [(MapsDebugPanelShortcutController *)self setShortcuts:v8];
}

- (void)addShortcut:(id)shortcut completion:(id)completion
{
  completionCopy = completion;
  shortcutCopy = shortcut;
  shortcuts = [(MapsDebugPanelShortcutController *)self shortcuts];
  v8 = [shortcuts mutableCopy];

  [v8 addObject:shortcutCopy];
  if (completionCopy)
  {
    [(MapsDebugPanelShortcutController *)self addUpdateCompletionHandler:completionCopy];
  }

  [(MapsDebugPanelShortcutController *)self setShortcuts:v8];
}

- (void)setShortcuts:(id)shortcuts
{
  v3 = sub_100021DB0(shortcuts, &stru_10162B480);
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