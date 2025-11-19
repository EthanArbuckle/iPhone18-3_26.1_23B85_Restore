void sub_BD0(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (qword_84B0 != -1)
  {
    sub_15C4();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_D50;
  v10[3] = &unk_4170;
  v10[4] = &v12;
  v11 = a1;
  dispatch_sync(qword_84A8, v10);
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *a5 = v13[3];
  *(a5 + 16) = a3;
  *(a5 + 20) = a4;
  _Block_object_dispose(&v12, 8);
}

void sub_CC8(id a1)
{
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("create-log-section", v1);

  v3 = qword_84A8;
  qword_84A8 = v2;
}

uint64_t sub_D50(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = qword_84A0 + 1;
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 24);
  if ((*(v1 + 24) & 1) == *(result + 40))
  {
    *(v1 + 24) = v2 + 1;
    v2 = *(*(*(result + 32) + 8) + 24);
  }

  qword_84A0 = v2;
  return result;
}

void sub_DA0(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *(a1 + 16);
      v5 = brc_bread_crumbs();
      v6 = *(a1 + 20);
      v7 = brc_default_log();
      v8 = v7;
      if (v2)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_15D8(v5, v2, v8);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 134218242;
        v10 = v2;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "[INFO] ┗%llx %@", &v9, 0x16u);
      }
    }
  }
}

void sub_15D8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┗%llx %@", &v3, 0x16u);
}

void sub_1660(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "[DEBUG] there are containers needing upload: %@%@", &v3, 0x16u);
}

void sub_16E8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] everything is in sync%@", &v2, 0xCu);
}