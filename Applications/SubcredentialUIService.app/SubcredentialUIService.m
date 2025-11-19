void sub_100000FD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Presenting compose view controller: %@ for message: %@", &v6, 0x16u);
  }

  [*(*(a1 + 32) + 8) setMessage:v3];
  [*(a1 + 32) presentViewController:*(*(a1 + 32) + 8) animated:1 completion:0];
  (*(*(a1 + 40) + 16))();
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