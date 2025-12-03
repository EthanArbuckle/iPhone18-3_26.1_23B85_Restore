@interface CRLIngestionTypes
+ (BOOL)isValidFileType:(id)type;
+ (BOOL)isValidPlainTextUTI:(id)i;
+ (NSArray)highEfficiencyImageTypes;
+ (NSArray)highEfficiencyImageUTTypes;
+ (NSArray)nativeTypes;
+ (NSArray)supported3DFileTypes;
+ (NSArray)supported3DFileUTTypes;
+ (NSArray)supportedGenericFileTypes;
+ (NSArray)supportedGenericFileUTTypes;
+ (NSArray)supportedImageTypes;
+ (NSArray)supportedImageUTTypes;
+ (NSArray)supportedMovieAnimatedImageTypes;
+ (NSArray)supportedMovieAnimatedImageUTTypes;
+ (NSArray)supportedMovieTypes;
+ (NSArray)supportedMovieUTTypes;
+ (NSArray)supportedRichTextTypes;
+ (NSArray)supportedRichTextUTTypes;
+ (NSArray)unsupportedImageTypes;
+ (id)p_supportedPlainTextTypes;
+ (id)p_unsupportedPlainTextTypes;
@end

@implementation CRLIngestionTypes

+ (NSArray)nativeTypes
{
  if (qword_101A34590 != -1)
  {
    sub_101311DEC();
  }

  v3 = qword_101A34588;

  return v3;
}

+ (NSArray)supportedImageTypes
{
  if (qword_101A345A0 != -1)
  {
    sub_101311E00();
  }

  v3 = qword_101A34598;

  return v3;
}

+ (NSArray)supportedImageUTTypes
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EDBD4;
  block[3] = &unk_10183B690;
  block[4] = self;
  if (qword_101A345B0 != -1)
  {
    dispatch_once(&qword_101A345B0, block);
  }

  v2 = qword_101A345A8;

  return v2;
}

+ (NSArray)unsupportedImageTypes
{
  if (qword_101A345C0 != -1)
  {
    sub_101311E14();
  }

  v3 = qword_101A345B8;

  return v3;
}

+ (NSArray)supportedMovieTypes
{
  identifier = [UTTypeMovie identifier];
  v9[0] = identifier;
  identifier2 = [UTTypeAudio identifier];
  v9[1] = identifier2;
  v5 = [NSArray arrayWithObjects:v9 count:2];
  supportedMovieAnimatedImageTypes = [self supportedMovieAnimatedImageTypes];
  v7 = [v5 arrayByAddingObjectsFromArray:supportedMovieAnimatedImageTypes];

  return v7;
}

+ (NSArray)supportedMovieAnimatedImageTypes
{
  identifier = [UTTypeGIF identifier];
  v9[0] = identifier;
  identifier2 = [UTTypePNG identifier];
  v9[1] = identifier2;
  v5 = [NSArray arrayWithObjects:v9 count:2];
  highEfficiencyImageTypes = [self highEfficiencyImageTypes];
  v7 = [v5 arrayByAddingObjectsFromArray:highEfficiencyImageTypes];

  return v7;
}

+ (NSArray)supportedMovieUTTypes
{
  v7[0] = UTTypeMovie;
  v7[1] = UTTypeAudio;
  v3 = [NSArray arrayWithObjects:v7 count:2];
  supportedMovieAnimatedImageUTTypes = [self supportedMovieAnimatedImageUTTypes];
  v5 = [v3 arrayByAddingObjectsFromArray:supportedMovieAnimatedImageUTTypes];

  return v5;
}

+ (NSArray)supportedMovieAnimatedImageUTTypes
{
  v7[0] = UTTypeGIF;
  v7[1] = UTTypePNG;
  v3 = [NSArray arrayWithObjects:v7 count:2];
  highEfficiencyImageUTTypes = [self highEfficiencyImageUTTypes];
  v5 = [v3 arrayByAddingObjectsFromArray:highEfficiencyImageUTTypes];

  return v5;
}

+ (NSArray)supported3DFileUTTypes
{
  v4[0] = UTTypeUSDZ;
  v4[1] = UTTypeRealityFile;
  v4[2] = UTTypeUSD;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

+ (NSArray)supported3DFileTypes
{
  identifier = [UTTypeUSDZ identifier];
  identifier2 = [UTTypeRealityFile identifier];
  v7[1] = identifier2;
  identifier3 = [UTTypeUSD identifier];
  v7[2] = identifier3;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

+ (NSArray)supportedGenericFileUTTypes
{
  v4[0] = UTTypeContent;
  v4[1] = UTTypeEmailMessage;
  v4[2] = UTTypeArchive;
  v4[3] = UTTypeZIP;
  v4[4] = UTTypeExecutable;
  v4[5] = UTTypeDatabase;
  v4[6] = UTTypeDiskImage;
  v2 = [NSArray arrayWithObjects:v4 count:7];

  return v2;
}

+ (NSArray)supportedGenericFileTypes
{
  identifier = [UTTypeContent identifier];
  identifier2 = [UTTypeEmailMessage identifier];
  v11[1] = identifier2;
  identifier3 = [UTTypeArchive identifier];
  v11[2] = identifier3;
  identifier4 = [UTTypeZIP identifier];
  v11[3] = identifier4;
  identifier5 = [UTTypeExecutable identifier];
  v11[4] = identifier5;
  identifier6 = [UTTypeDatabase identifier];
  v11[5] = identifier6;
  identifier7 = [UTTypeDiskImage identifier];
  v11[6] = identifier7;
  v9 = [NSArray arrayWithObjects:v11 count:7];

  return v9;
}

+ (NSArray)supportedRichTextTypes
{
  identifier = [UTTypeRTF identifier];
  identifier2 = [UTTypeFlatRTFD identifier];
  v7[1] = identifier2;
  identifier3 = [UTTypeRTFD identifier];
  v7[2] = identifier3;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

+ (NSArray)supportedRichTextUTTypes
{
  v4[0] = UTTypeRTF;
  v4[1] = UTTypeFlatRTFD;
  v4[2] = UTTypeRTFD;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

+ (BOOL)isValidFileType:(id)type
{
  typeCopy = type;
  v4 = +[CRLIngestionTypes supportedGenericFileUTTypes];
  if ([typeCopy crl_conformsToAnyUTType:v4])
  {
    v5 = +[CRLInfoImporterBoardItemProvider disallowedTypes];
    if ([v5 containsObject:typeCopy])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = +[CRLIngestionTypes supportedRichTextUTTypes];
      if ([typeCopy crl_conformsToAnyUTType:v7])
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        identifier = [typeCopy identifier];
        if (+[CRLIngestionTypes isValidPlainTextUTI:](CRLIngestionTypes, "isValidPlainTextUTI:", identifier) || ([typeCopy isEqual:UTTypeHTML] & 1) != 0)
        {
          LOBYTE(v6) = 0;
        }

        else
        {
          v6 = [typeCopy isEqual:UTTypeWebArchive] ^ 1;
        }
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (BOOL)isValidPlainTextUTI:(id)i
{
  iCopy = i;
  p_unsupportedPlainTextTypes = [self p_unsupportedPlainTextTypes];
  if ([p_unsupportedPlainTextTypes containsObject:iCopy])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    p_supportedPlainTextTypes = [self p_supportedPlainTextTypes];
    if ([iCopy crl_conformsToAnyUTI:p_supportedPlainTextTypes])
    {
      supportedRichTextTypes = [self supportedRichTextTypes];
      v6 = [supportedRichTextTypes containsObject:iCopy] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

+ (id)p_supportedPlainTextTypes
{
  v2 = +[NSString readableTypeIdentifiersForItemProvider];
  identifier = [UTTypePlainText identifier];
  v10[0] = identifier;
  identifier2 = [UTTypeText identifier];
  v10[1] = identifier2;
  v5 = [NSArray arrayWithObjects:v10 count:2];
  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  v7 = +[NSURL readableTypeIdentifiersForItemProvider];
  v8 = [v6 arrayByAddingObjectsFromArray:v7];

  return v8;
}

+ (id)p_unsupportedPlainTextTypes
{
  identifier = [UTTypeVCard identifier];
  v3 = sub_1000ED728();
  identifier2 = [v3 identifier];
  v8[1] = identifier2;
  identifier3 = [UTTypeSVG identifier];
  v8[2] = identifier3;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

+ (NSArray)highEfficiencyImageTypes
{
  identifier = [UTTypeHEIC identifier];
  identifier2 = [UTTypeHEIF identifier];
  v8[1] = identifier2;
  v4 = sub_1000EED64();
  identifier3 = [v4 identifier];
  v8[2] = identifier3;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

+ (NSArray)highEfficiencyImageUTTypes
{
  v5[0] = UTTypeHEIC;
  v5[1] = UTTypeHEIF;
  v2 = sub_1000EED64();
  v5[2] = v2;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

@end