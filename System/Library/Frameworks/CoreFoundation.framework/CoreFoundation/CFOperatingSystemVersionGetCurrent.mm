@interface CFOperatingSystemVersionGetCurrent
@end

@implementation CFOperatingSystemVersionGetCurrent

void ___CFOperatingSystemVersionGetCurrent_block_invoke()
{
  v0 = _CFCopySystemVersionDictionaryValue(@"ProductVersion");
  if (v0)
  {
    v1 = v0;
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v0, @".");
    if (ArrayBySeparatingStrings)
    {
      v3 = ArrayBySeparatingStrings;
      Count = CFArrayGetCount(ArrayBySeparatingStrings);
      if (Count < 1)
      {
        v8 = 0;
        v9 = 0;
        IntValue = -1;
      }

      else
      {
        v5 = Count;
        ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
        IntValue = CFStringGetIntValue(ValueAtIndex);
        if (v5 == 1)
        {
          v8 = 0;
          v9 = 0;
        }

        else
        {
          v10 = CFArrayGetValueAtIndex(v3, 1);
          v9 = CFStringGetIntValue(v10);
          if (v5 < 3)
          {
            v8 = 0;
          }

          else
          {
            v11 = CFArrayGetValueAtIndex(v3, 2);
            v8 = CFStringGetIntValue(v11);
          }
        }
      }

      CFRelease(v3);
    }

    else
    {
      v8 = 0;
      v9 = 0;
      IntValue = -1;
    }

    CFRelease(v1);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    IntValue = -1;
  }

  *&_CFOperatingSystemVersionGetCurrent_version = IntValue;
  *(&_CFOperatingSystemVersionGetCurrent_version + 1) = v9;
  qword_1ED40B788 = v8;
}

@end