uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = _SFSafariContainerPath();
  v6 = [v5 fileSystemRepresentation];
  setenv("HOME", v6, 1);
  setenv("CFFIXED_USER_HOME", v6, 1);
  v7 = _SFSafariTemporaryDirectoryPath();
  setenv("TMPDIR", [v7 fileSystemRepresentation], 1);

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);

  objc_autoreleasePoolPop(v4);
  v10 = UIApplicationMain(a1, a2, v9, v9);

  return v10;
}