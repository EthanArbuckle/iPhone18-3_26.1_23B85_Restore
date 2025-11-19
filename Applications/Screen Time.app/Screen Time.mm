int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  UIApplicationMain(v3, v4, 0, 0);
  return 0;
}