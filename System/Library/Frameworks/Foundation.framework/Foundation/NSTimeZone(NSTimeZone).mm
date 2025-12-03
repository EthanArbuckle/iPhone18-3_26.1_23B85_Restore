@interface NSTimeZone(NSTimeZone)
- (uint64_t)encodeWithCoder:()NSTimeZone;
- (uint64_t)initWithCoder:()NSTimeZone;
@end

@implementation NSTimeZone(NSTimeZone)

- (uint64_t)encodeWithCoder:()NSTimeZone
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeObject:objc_msgSend(self forKey:{"name"), @"NS.name"}];
    data = [self data];

    return [a3 encodeObject:data forKey:@"NS.data"];
  }

  else
  {
    v7[0] = [self name];
    return [a3 encodeValueOfObjCType:"@" at:v7];
  }
}

- (uint64_t)initWithCoder:()NSTimeZone
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    if ([a3 versionForClassName:@"NSTimeZone"])
    {
      v12 = 0;
      v13[0] = 0;
      [a3 decodeValueOfObjCType:"@" at:v13 size:8];
      [a3 decodeValueOfObjCType:"@" at:&v12 size:8];
      if (_NSIsNSString())
      {
        if (!v12)
        {
          v8 = 0;
          goto LABEL_18;
        }

        if (_NSIsNSData())
        {
          v8 = v12;
LABEL_18:
          v10 = [self initWithName:v13[0] data:v8];

          v11 = v12;
LABEL_21:

          return v10;
        }
      }
    }

    else
    {
      v13[0] = 0;
      [a3 decodeValueOfObjCType:"@" at:v13 size:8];
      if (_NSIsNSString())
      {
        v9 = [objc_opt_class() timeZoneWithAbbreviation:v13[0]];
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = [self initWithName:v13[0]];
        }

        v11 = v13[0];
        goto LABEL_21;
      }
    }

LABEL_16:
    [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, 0)}];

    return 0;
  }

  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.name"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.data"];
  if (!_NSIsNSString() || v6 && (_NSIsNSData() & 1) == 0)
  {
    goto LABEL_16;
  }

  return [self initWithName:v5 data:v6];
}

@end