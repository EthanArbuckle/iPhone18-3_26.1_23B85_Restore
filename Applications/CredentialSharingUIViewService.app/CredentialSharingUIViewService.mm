void sub_100001198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000011BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setMessage:v3];

  v5 = *(a1 + 32);
  v6 = objc_loadWeakRetained((a1 + 40));
  [v5 presentViewController:v6 animated:1 completion:0];
}

void sub_100001350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001374(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setMessage:v3];

  v5 = *(a1 + 32);
  v6 = objc_loadWeakRetained((a1 + 40));
  [v5 presentViewController:v6 animated:1 completion:0];
}

void sub_1000018AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000018D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _placeholderActivityItem];
    [v6 setValue:v3];
    v7 = v5[1];
    v10 = v6;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [v7 setItems:v8];

    v9 = [v5[1] view];
    [v9 setUserInteractionEnabled:1];

    [v5[1] handleInterceptedShareActivity];
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  LODWORD(argv) = UIApplicationMain(argc, argv, v7, v9);

  objc_autoreleasePoolPop(v5);
  return argv;
}