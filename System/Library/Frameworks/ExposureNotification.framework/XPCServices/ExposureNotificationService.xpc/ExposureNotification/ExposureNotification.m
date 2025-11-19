uint64_t start()
{
  v0 = +[ENXPCServiceListener sharedServiceListener];
  [v0 main];

  return 0;
}