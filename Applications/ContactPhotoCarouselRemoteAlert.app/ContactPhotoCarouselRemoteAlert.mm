uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

uint64_t sub_100001628(uint64_t a1)
{
  [*(a1 + 32) _flowDidDismiss];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100001C8C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(NSError *)v2 localizedDescription];
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Remote view controller proxy error: %@", &v5, 0xCu);
  }
}