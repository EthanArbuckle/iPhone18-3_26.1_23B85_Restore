@interface _EXExtensionApplicationDelegate
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)applicationDidFinishLaunching:(id)launching;
@end

@implementation _EXExtensionApplicationDelegate

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1D29EACB0(&qword_1EC700A88, type metadata accessor for LaunchOptionsKey);
    optionsCopy = sub_1D2A003A8();
  }

  type metadata accessor for _EXRunningUIExtension(0);
  applicationCopy = application;
  v7 = sub_1D29FFCC8();
  if (optionsCopy)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1D29EACB0(&qword_1EC700A88, type metadata accessor for LaunchOptionsKey);
    v8 = sub_1D2A00398();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 application:applicationCopy willFinishLaunchingWithOptions:v8];

  return v9;
}

- (void)applicationDidFinishLaunching:(id)launching
{
  type metadata accessor for _EXRunningUIExtension(0);
  launchingCopy = launching;
  v4 = sub_1D29FFCC8();
  [v4 applicationDidFinishLaunching_];
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  type metadata accessor for _EXRunningUIExtension(0);
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  v11 = sub_1D29FFCC8();
  v12 = [v11 application:applicationCopy configurationForConnectingSceneSession:sessionCopy options:optionsCopy];

  return v12;
}

@end