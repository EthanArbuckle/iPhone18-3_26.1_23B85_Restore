@interface UIEvent(PKAdditions)
- (const)PK_isEventFromCrayon;
- (const)PK_isEventFromPencil;
- (uint64_t)PK_activeInputPropertiesForTouch:()PKAdditions;
@end

@implementation UIEvent(PKAdditions)

- (const)PK_isEventFromPencil
{
  result = [self _hidEvent];
  if (result)
  {
    result = IOHIDEventGetChildren();
    if (result)
    {
      v2 = result;
      if (CFArrayGetCount(result) && (CFArrayGetValueAtIndex(v2, 0), IOHIDEventGetType() == 11))
      {
        return (IOHIDEventGetIntegerValue() == 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (const)PK_isEventFromCrayon
{
  result = [self _hidEvent];
  if (result)
  {
    result = [self PK_isEventFromPencil];
    if (result)
    {
      result = IOHIDEventGetChildren();
      if (result)
      {
        v3 = result;
        if (CFArrayGetCount(result) && (CFArrayGetValueAtIndex(v3, 0), IOHIDEventGetType() == 11))
        {
          return (IOHIDEventGetIntegerValue() == 11);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (uint64_t)PK_activeInputPropertiesForTouch:()PKAdditions
{
  v4 = a3;
  if ([self PK_isEventFromPencil])
  {
    if ([v4 estimatedProperties])
    {
      estimationUpdateIndex = [v4 estimationUpdateIndex];

      if (estimationUpdateIndex)
      {
        v5 = 23;
      }

      else
      {
        v5 = 19;
      }
    }

    else
    {
      v5 = 23;
    }
  }

  else
  {
    v5 = 8;
  }

  return v5;
}

@end