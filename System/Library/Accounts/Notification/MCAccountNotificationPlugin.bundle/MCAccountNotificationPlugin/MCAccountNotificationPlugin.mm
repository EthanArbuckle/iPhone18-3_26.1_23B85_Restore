void sub_CC0(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [a2 username];
  v7 = [a2 accountType];
  v8 = [v7 accountTypeDescription];
  v9 = [a2 identifier];
  v10 = 138413058;
  v11 = a1;
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = v9;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "MCUserEnrollmentAccountNotificationPlugin: persona with identifier: %@ exists for account(%@, %@, %@)", &v10, 0x2Au);
}

void sub_DC8(void *a1, NSObject *a2)
{
  v4 = [a1 username];
  v5 = [a1 accountType];
  v6 = [v5 accountTypeDescription];
  v7 = [a1 identifier];
  v8 = 138412802;
  v9 = v4;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "MCUserEnrollmentAccountNotificationPlugin: account(%@, %@, %@) doesn'thave a persona ID.", &v8, 0x20u);
}