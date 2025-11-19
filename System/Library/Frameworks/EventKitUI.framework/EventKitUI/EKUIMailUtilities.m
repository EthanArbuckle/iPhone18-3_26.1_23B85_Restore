@interface EKUIMailUtilities
+ (id)_stringForIsolatedAtomPresentationOption:(unint64_t)a3;
+ (id)atomPresentationOptionsAsString:(unint64_t)a3;
@end

@implementation EKUIMailUtilities

+ (id)atomPresentationOptionsAsString:(unint64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{"];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __53__EKUIMailUtilities_atomPresentationOptionsAsString___block_invoke;
  v13 = &unk_1E84415B8;
  v15 = a1;
  v6 = v5;
  v14 = v6;
  v7 = _Block_copy(&v10);
  v7[2](v7, a3, 0);
  v7[2](v7, a3, 1);
  v7[2](v7, a3, 2);
  v7[2](v7, a3, 4);
  v7[2](v7, a3, 8);
  v7[2](v7, a3, 16);
  v7[2](v7, a3, 32);
  v7[2](v7, a3, 64);
  v7[2](v7, a3, 128);
  v7[2](v7, a3, 256);
  v7[2](v7, a3, 512);
  v7[2](v7, a3, 1024);
  v7[2](v7, a3, 2048);
  v7[2](v7, a3, 4096);
  v7[2](v7, a3, 0x2000);
  v7[2](v7, a3, 0x4000);
  v7[2](v7, a3, 0x8000);
  v7[2](v7, a3, 0x10000);
  v7[2](v7, a3, 0x20000);
  v7[2](v7, a3, 0x100000);
  [v6 appendString:{@"}", v10, v11, v12, v13}];
  v8 = v6;

  return v6;
}

void __53__EKUIMailUtilities_atomPresentationOptionsAsString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 == 0;
  if (a3)
  {
    v4 = (a3 & ~a2) == 0;
  }

  if (v4)
  {
    v6 = [objc_opt_class() _stringForIsolatedAtomPresentationOption:a3];
    [*(a1 + 32) appendFormat:@"(%@)", v6];
  }
}

+ (id)_stringForIsolatedAtomPresentationOption:(unint64_t)a3
{
  if (a3 > 511)
  {
    if (a3 >= 0x4000)
    {
      if (a3 < 0x10000)
      {
        if (a3 == 0x4000)
        {
          return @"DisplayBackgroundOnHover";
        }

        if (a3 == 0x8000)
        {
          return @"IsFaceTimeReachable";
        }
      }

      else
      {
        switch(a3)
        {
          case 0x10000uLL:
            return @"FaceTimeUnresolved";
          case 0x20000uLL:
            return @"Invalid Address";
          case 0x100000uLL:
            return @"Static Identity Verified";
        }
      }
    }

    else if (a3 <= 2047)
    {
      if (a3 == 512)
      {
        return @"PendingLeading";
      }

      if (a3 == 1024)
      {
        return @"AvailableIcon";
      }
    }

    else
    {
      if (a3 == 2048)
      {
        return @"UnavailableIcon";
      }

      if (a3 == 4096 || a3 == 0x2000)
      {
        return @"UnknownCircleIcon";
      }
    }
  }

  else if (a3 > 15)
  {
    if (a3 <= 63)
    {
      if (a3 == 16)
      {
        return @"VIPIcon";
      }

      if (a3 == 32)
      {
        return @"SignedIcon";
      }
    }

    else
    {
      switch(a3)
      {
        case 0x40uLL:
          return @"InsecureIcon";
        case 0x80uLL:
          return @"SecureIcon";
        case 0x100uLL:
          return @"UnverifiedIcon";
      }
    }
  }

  else if (a3 <= 1)
  {
    if (!a3)
    {
      return @"None";
    }

    if (a3 == 1)
    {
      return @"FailureColor";
    }
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        return @"IsSMS";
      case 4uLL:
        return @"Pending|PendingTrailing";
      case 8uLL:
        return @"Disabled";
    }
  }

  return @"Unknown Presentation Option";
}

@end