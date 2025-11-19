@interface _EXExtensionApplicationDelegate
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)applicationDidFinishLaunching:(id)a3;
@end

@implementation _EXExtensionApplicationDelegate

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v4 = a4;
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1D29EACB0(&qword_1EC700A88, type metadata accessor for LaunchOptionsKey);
    v4 = sub_1D2A003A8();
  }

  type metadata accessor for _EXRunningUIExtension(0);
  v6 = a3;
  v7 = sub_1D29FFCC8();
  if (v4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1D29EACB0(&qword_1EC700A88, type metadata accessor for LaunchOptionsKey);
    v8 = sub_1D2A00398();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 application:v6 willFinishLaunchingWithOptions:v8];

  return v9;
}

- (void)applicationDidFinishLaunching:(id)a3
{
  type metadata accessor for _EXRunningUIExtension(0);
  v5 = a3;
  v4 = sub_1D29FFCC8();
  [v4 applicationDidFinishLaunching_];
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  type metadata accessor for _EXRunningUIExtension(0);
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1D29FFCC8();
  v12 = [v11 application:v8 configurationForConnectingSceneSession:v9 options:v10];

  return v12;
}

@end