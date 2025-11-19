void sub_100001370()
{
  v0 = objc_opt_class();
  ClassMethod = class_getClassMethod(v0, "defaultSessionConfiguration");
  if (ClassMethod)
  {
    v2 = ClassMethod;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000146C;
    v5[3] = &unk_1000040D8;
    v5[4] = method_getImplementation(ClassMethod);
    v5[5] = "defaultSessionConfiguration";
    v3 = objc_retainBlock(v5);
    v4 = imp_implementationWithBlock(v3);

    method_setImplementation(v2, v4);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100001558();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000015A0("defaultSessionConfiguration");
  }
}

id sub_10000146C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 32))(a2, *(a1 + 40));
  [v2 set_sourceApplicationBundleIdentifier:@"com.apple.AppStore"];

  return v2;
}

uint64_t sub_1000014C0()
{
  result = _set_user_dir_suffix();
  if ((result & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100001624();
    }

    exit(1);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000014C0();
  v3 = objc_autoreleasePoolPush();
  type metadata accessor for Daemon();
  v4 = static Daemon.shared.getter();
  objc_autoreleasePoolPop(v3);
  qword_100008010 = v4;
  Daemon.run()();
  return 0;
}

void sub_1000015A0(const char *a1)
{
  v1 = 136315138;
  Name = sel_getName(a1);
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Could not get +[NSURLSessionConfiguration %s], appstorecomponentsd will not attribute network traffic to App Store", &v1, 0xCu);
}

void sub_100001624()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not initialize temporary directory, reason: %{darwin.errno}d", v1, 8u);
}