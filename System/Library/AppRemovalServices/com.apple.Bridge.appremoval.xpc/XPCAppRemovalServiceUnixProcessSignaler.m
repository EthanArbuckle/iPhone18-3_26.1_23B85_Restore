@interface XPCAppRemovalServiceUnixProcessSignaler
+ (BOOL)signalProcessNamed:(id)a3 withSignal:(int)a4;
+ (int)_findProcessNamed:(id)a3;
+ (int)findProcessNamed:(id)a3;
@end

@implementation XPCAppRemovalServiceUnixProcessSignaler

+ (int)_findProcessNamed:(id)a3
{
  v3 = a3;
  for (i = 0; ; i = 0)
  {
    size = 0;
    v5 = sysctl(dword_1000024BC, 3u, 0, &size, 0, 0);
    if (v5 == -1)
    {
      v5 = *__error();
    }

    if (v5)
    {
      break;
    }

    i = malloc_type_malloc(size, 0xA1F87153uLL);
    if (!i)
    {
      v5 = 12;
      break;
    }

    v5 = sysctl(dword_1000024BC, 3u, i, &size, 0, 0);
    if (v5 == -1)
    {
      v5 = *__error();
    }

    if (v5 != 12)
    {
      if (v5)
      {
        v6 = 1;
        goto LABEL_14;
      }

      break;
    }

    free(i);
  }

  v6 = v5 != 0;
LABEL_14:
  if (v6 && i != 0)
  {
    free(i);
    i = 0;
  }

  if (v6)
  {
    if (v5 || !i)
    {
LABEL_31:
      NSLog(@"XPCAppRemovalServiceUnixProcessSignaler: Error %d getting process info", v5);
      goto LABEL_32;
    }
  }

  else
  {
    if (v5 || !i)
    {
      goto LABEL_31;
    }

    if (size >= 0x288)
    {
      v8 = size / 0x288;
      v9 = i + 243;
      while (1)
      {
        v10 = *(v9 - 203);
        if (!strcmp(v9, [v3 UTF8String]))
        {
          break;
        }

        v9 += 648;
        if (!--v8)
        {
          goto LABEL_29;
        }
      }

      free(i);
      if (v10 != -1)
      {
        NSLog(@"XPCAppRemovalServiceUnixProcessSignaler: Found process %@ PID %ld", v3, v10);
        goto LABEL_33;
      }

      goto LABEL_30;
    }
  }

LABEL_29:
  free(i);
LABEL_30:
  NSLog(@"XPCAppRemovalServiceUnixProcessSignaler: Did not find process %@", v3);
LABEL_32:
  v10 = -1;
LABEL_33:

  return v10;
}

+ (int)findProcessNamed:(id)a3
{
  v5 = 0;
  do
  {
    result = [a1 _findProcessNamed:a3];
    if (v5 > 3)
    {
      break;
    }

    ++v5;
  }

  while (result == -1);
  return result;
}

+ (BOOL)signalProcessNamed:(id)a3 withSignal:(int)a4
{
  v6 = a3;
  v7 = [a1 findProcessNamed:v6];
  if (v7 == -1)
  {
    NSLog(@"XPCAppRemovalServiceUnixProcessSignaler: Did not find process named %@", v6);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = v7;
  if (kill(v7, a4) == -1)
  {
    v11 = *__error();
    NSLog(@"XPCAppRemovalServiceUnixProcessSignaler: Failed to kill pid %lu for process named %@, error %d", v8, v6, v11);
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

@end