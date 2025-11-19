int main(int argc, const char **argv, const char **envp)
{
  v5 = objc_autoreleasePoolPush();
  LODWORD(argv) = UIApplicationMain(argc, argv, 0, 0);
  objc_autoreleasePoolPop(v5);
  return argv;
}

void sub_1000011B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000011E0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] setMotion:v5];
    if ([v4[1] circleIsCompleted])
    {
      [v4 finishedCalibrating];
    }
  }
}