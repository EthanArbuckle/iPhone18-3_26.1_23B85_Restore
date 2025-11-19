uint64_t start(int a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  openlog("MIDIServer", 9, 8);
  if (dladdr(start, &v11))
  {
    if (a1 >= 2)
    {
      v5 = a1;
      v6 = (a2 + 8);
      v7 = v5 - 1;
      do
      {
        v8 = *v6;
        if (**v6 != 45 || v8[1] != 110 || v8[2])
        {
          fprintf(__stderrp, "unknown argument: %s\n", *v6);
        }

        ++v6;
        --v7;
      }

      while (v7);
    }

    MIDIServerRun();
    v9 = 0;
  }

  else
  {
    v9 = 1;
    fwrite("dladdr(main) failed\n", 0x14uLL, 1uLL, __stderrp);
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}