void sub_FC4(void *a1)
{
  v1 = a1;
  v26 = 0;
  v2 = &_DMLogFunc_ptr;
  v3 = +[NSFileManager defaultManager];
  if ([v3 fileExistsAtPath:v1 isDirectory:&v26] && v26 == 1)
  {
    v4 = +[NSFileManager defaultManager];
    v25 = 0;
    v5 = [v4 attributesOfItemAtPath:v1 error:&v25];
    v6 = v25;

    if (!v6)
    {
      v7 = [v5 objectForKeyedSubscript:NSFileProtectionKey];

      if (v7 == NSFileProtectionNone)
      {
        goto LABEL_6;
      }

      v29 = NSFileProtectionKey;
      v30 = NSFileProtectionNone;
      v8 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v24 = 0;
      [v3 setAttributes:v8 ofItemAtPath:v1 error:&v24];
      v6 = v24;

      if (!v6)
      {
LABEL_6:
        v21 = [v3 enumeratorAtPath:{v1, v5}];
        v9 = [v21 nextObject];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          do
          {
            v12 = [v1 stringByAppendingPathComponent:v10];
            v13 = v2;
            v14 = [v2[46] defaultManager];
            v23 = v11;
            v15 = [v14 attributesOfItemAtPath:v12 error:&v23];
            v6 = v23;

            v16 = [v15 objectForKeyedSubscript:NSFileProtectionKey];

            if (v16 != NSFileProtectionNone)
            {
              v27 = NSFileProtectionKey;
              v28 = NSFileProtectionNone;
              v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
              v22 = v6;
              [v3 setAttributes:v17 ofItemAtPath:v12 error:&v22];
              v18 = v22;

              v6 = v18;
            }

            v19 = [v21 nextObject];

            v10 = v19;
            v11 = v6;
            v2 = v13;
          }

          while (v19);
        }

        else
        {
          v6 = 0;
        }

        v5 = v20;
      }
    }
  }
}

void sub_1288(uint64_t a1)
{
  v2 = *(a1 + 32);
  _DMLogFunc();
  v3 = +[MCProfileConnection sharedConnection];
  [v3 migrateWithContext:*(a1 + 48) passcodeWasSetInBackup:objc_msgSend(*(a1 + 40) completion:{"wasPasscodeSetInBackup"), 0}];
}

void sub_1A78(id a1, NSError *a2)
{

  _DMLogFunc();
}