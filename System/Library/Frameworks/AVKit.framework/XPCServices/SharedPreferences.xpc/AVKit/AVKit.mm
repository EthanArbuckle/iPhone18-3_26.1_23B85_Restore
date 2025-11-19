uint64_t start()
{
  v0 = objc_opt_new();
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}

void sub_100000E48(uint64_t a1, void *a2)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  v5 = v4;
  if (v4)
  {
    v6 = *v11;
    v7 = v4;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v10 + 1) + 8 * i) isMirrored])
        {
          LODWORD(v7) = 1;
          goto LABEL_12;
        }
      }

      v7 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

LABEL_12:

  if (v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v9);
}

id sub_1000010E8()
{
  if (qword_1000085E0 != -1)
  {
    dispatch_once(&qword_1000085E0, &stru_100004128);
  }

  v1 = qword_1000085D8;

  return v1;
}

void sub_10000113C(id a1)
{
  qword_1000085D8 = os_log_create("com.apple.avkit.SharedPreferences", "AVKitSharedPreferences");

  _objc_release_x1();
}