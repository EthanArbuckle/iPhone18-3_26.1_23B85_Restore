id sub_1BF8(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_396C(id a1, BOOL a2)
{
  if (!a2)
  {
    NSLog(@"Failed to open the contact");
  }
}

void sub_3FF4(void *a1)
{
  v1 = [a1 object];
  v3 = 138412290;
  v4 = objc_opt_class();
  v2 = v4;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Cannot disambiguate %@", &v3, 0xCu);
}