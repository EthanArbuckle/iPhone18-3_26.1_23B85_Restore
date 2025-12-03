@interface IMCoverUtilities
+ (BOOL)isUndesirableImageData:(id)data error:(id *)error;
@end

@implementation IMCoverUtilities

+ (BOOL)isUndesirableImageData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [dataCopy hash];
  v7 = v6 == 254731557 || v6 == 153495661;
  if (v6 == 254731557 || v6 == 153495661)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:@"kIMCoverUtilitiesErrorDomain" code:-1000 userInfo:0];
    }
  }

  else
  {
    v8 = CGImageSourceCreateWithData(dataCopy, 0);
    if (v8)
    {
      v9 = v8;
      if (BKGenericBookCoverIsLegacyGenericBookCoverImageSource(v8))
      {
        if (error)
        {
          *error = [NSError errorWithDomain:@"kIMCoverUtilitiesErrorDomain" code:-1001 userInfo:0];
        }

        v7 = 1;
      }

      CFRelease(v9);
    }
  }

  return v7;
}

@end