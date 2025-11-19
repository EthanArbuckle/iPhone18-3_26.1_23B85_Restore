id applicationDisplayNameForExecutable(void *a1)
{
  v1 = a1;
  v2 = CFURLCopyAbsoluteURL(v1);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v3 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
  v4 = v3;
  if (!v3)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v5 = CFBundleCopyExecutableURL(v3);
  v6 = v5;
  if (!v5)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v7 = CFURLCopyAbsoluteURL(v5);
  if (v7 && CFEqual(v2, v7))
  {
    v8 = CFBundleCopyBundleURL(v4);

    v9 = v6;
    v6 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v8 = 0;
  v9 = v1;
LABEL_11:
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [(__CFURL *)v9 path];
  v12 = [v10 displayNameAtPath:v11];

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v12;
}