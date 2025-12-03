@interface ENMIMEUtils
+ (id)determineMIMETypeForFile:(id)file;
+ (id)fileExtensionForMIMEType:(id)type;
+ (id)mimeTypeForUTI:(id)i;
@end

@implementation ENMIMEUtils

+ (id)mimeTypeForUTI:(id)i
{
  iCopy = i;
  v4 = UTTypeCopyPreferredTagWithClass(iCopy, *MEMORY[0x277CC1F60]);
  if (v4)
  {
    v5 = v4;
    if (CFStringGetLength(v4) > 0)
    {
      goto LABEL_9;
    }

    CFRelease(v5);
  }

  if (([(__CFString *)iCopy isEqualToString:@"public.jpeg"]& 1) != 0)
  {
    v5 = @"image/jpeg";
  }

  else if ([(__CFString *)iCopy isEqualToString:@"public.png"])
  {
    v5 = @"image/png";
  }

  else
  {
    v5 = 0;
  }

LABEL_9:

  return v5;
}

+ (id)determineMIMETypeForFile:(id)file
{
  pathExtension = [file pathExtension];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], pathExtension, 0);
  if (PreferredIdentifierForTag)
  {
    v5 = PreferredIdentifierForTag;
    v6 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, *MEMORY[0x277CC1F60]);
    v7 = v6;
    if (v6 && CFStringGetLength(v6) <= 0)
    {
      CFRelease(v7);
      v7 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = +[EDAMLimitsConstants EDAM_MIME_TYPE_GIF];
  if ([v7 isEqualToString:v8])
  {
  }

  else
  {
    v9 = [(__CFString *)pathExtension isEqualToString:@"gif"];

    if (v9)
    {
      v10 = +[EDAMLimitsConstants EDAM_MIME_TYPE_GIF];
LABEL_38:
      v23 = v7;
      v7 = v10;
      goto LABEL_39;
    }
  }

  v11 = +[EDAMLimitsConstants EDAM_MIME_TYPE_JPEG];
  if ([v7 isEqualToString:v11])
  {

    goto LABEL_15;
  }

  v12 = [(__CFString *)pathExtension isEqualToString:@"jpg"];

  if (v12)
  {
    v10 = +[EDAMLimitsConstants EDAM_MIME_TYPE_JPEG];
    goto LABEL_38;
  }

LABEL_15:
  v13 = +[EDAMLimitsConstants EDAM_MIME_TYPE_PNG];
  if ([v7 isEqualToString:v13])
  {

    goto LABEL_19;
  }

  v14 = [(__CFString *)pathExtension isEqualToString:@"png"];

  if (v14)
  {
    v10 = +[EDAMLimitsConstants EDAM_MIME_TYPE_PNG];
    goto LABEL_38;
  }

LABEL_19:
  v15 = +[EDAMLimitsConstants EDAM_MIME_TYPE_WAV];
  if ([v7 isEqualToString:v15])
  {

    goto LABEL_23;
  }

  v16 = [(__CFString *)pathExtension isEqualToString:@"wav"];

  if (v16)
  {
    v10 = +[EDAMLimitsConstants EDAM_MIME_TYPE_WAV];
    goto LABEL_38;
  }

LABEL_23:
  v17 = +[EDAMLimitsConstants EDAM_MIME_TYPE_MP3];
  if ([v7 isEqualToString:v17])
  {

    goto LABEL_27;
  }

  v18 = [(__CFString *)pathExtension isEqualToString:@"mp3"];

  if (v18)
  {
    v10 = +[EDAMLimitsConstants EDAM_MIME_TYPE_MP3];
    goto LABEL_38;
  }

LABEL_27:
  v19 = +[EDAMLimitsConstants EDAM_MIME_TYPE_AMR];
  if ([v7 isEqualToString:v19])
  {

    goto LABEL_31;
  }

  v20 = [(__CFString *)pathExtension isEqualToString:@"amr"];

  if (v20)
  {
    v10 = +[EDAMLimitsConstants EDAM_MIME_TYPE_AMR];
    goto LABEL_38;
  }

LABEL_31:
  v21 = +[EDAMLimitsConstants EDAM_MIME_TYPE_MP4_VIDEO];
  if ([v7 isEqualToString:v21])
  {

    goto LABEL_35;
  }

  v22 = [(__CFString *)pathExtension isEqualToString:@"mp4"];

  if (v22)
  {
    v10 = +[EDAMLimitsConstants EDAM_MIME_TYPE_MP4_VIDEO];
    goto LABEL_38;
  }

LABEL_35:
  v23 = +[EDAMLimitsConstants EDAM_MIME_TYPE_PDF];
  if (([v7 isEqualToString:v23] & 1) == 0)
  {
    v24 = [(__CFString *)pathExtension isEqualToString:@"pdf"];

    if (!v24)
    {
      goto LABEL_40;
    }

    v10 = +[EDAMLimitsConstants EDAM_MIME_TYPE_PDF];
    goto LABEL_38;
  }

LABEL_39:

LABEL_40:

  return v7;
}

+ (id)fileExtensionForMIMEType:(id)type
{
  typeCopy = type;
  v4 = +[EDAMLimitsConstants EDAM_MIME_TYPE_INK];
  v5 = [(__CFString *)typeCopy isEqualToString:v4];

  if (v5)
  {
    v6 = @"png";
    goto LABEL_42;
  }

  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F60], typeCopy, 0);
  if (PreferredIdentifierForTag)
  {
    v8 = PreferredIdentifierForTag;
    v9 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, *MEMORY[0x277CC1F58]);
    v6 = v9;
    if (v9 && CFStringGetLength(v9) <= 0)
    {
      CFRelease(v6);
      v6 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v6 = 0;
  }

  v10 = +[EDAMLimitsConstants EDAM_MIME_TYPE_GIF];
  if ([(__CFString *)typeCopy isEqualToString:v10])
  {
    v11 = @"gif";
    v12 = [(__CFString *)v6 isEqualToString:@"gif"];

    if ((v12 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v13 = +[EDAMLimitsConstants EDAM_MIME_TYPE_JPEG];
  if ([(__CFString *)typeCopy isEqualToString:v13])
  {
    v11 = @"jpg";
    v14 = [(__CFString *)v6 isEqualToString:@"jpg"];

    if ((v14 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v15 = +[EDAMLimitsConstants EDAM_MIME_TYPE_PNG];
  if (([(__CFString *)typeCopy isEqualToString:v15]& 1) != 0 || [(__CFString *)typeCopy isEqualToString:@"image/x-png"])
  {
    v11 = @"png";
    v16 = [(__CFString *)v6 isEqualToString:@"png"];

    if ((v16 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v17 = +[EDAMLimitsConstants EDAM_MIME_TYPE_WAV];
  if ([(__CFString *)typeCopy isEqualToString:v17])
  {
    v11 = @"wav";
    v18 = [(__CFString *)v6 isEqualToString:@"wav"];

    if ((v18 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v19 = +[EDAMLimitsConstants EDAM_MIME_TYPE_MP3];
  if ([(__CFString *)typeCopy isEqualToString:v19])
  {
    v11 = @"mp3";
    v20 = [(__CFString *)v6 isEqualToString:@"mp3"];

    if ((v20 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v21 = +[EDAMLimitsConstants EDAM_MIME_TYPE_AMR];
  if ([(__CFString *)typeCopy isEqualToString:v21])
  {
    v11 = @"amr";
    v22 = [(__CFString *)v6 isEqualToString:@"amr"];

    if ((v22 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v23 = +[EDAMLimitsConstants EDAM_MIME_TYPE_MP4_VIDEO];
  if ([(__CFString *)typeCopy isEqualToString:v23])
  {
    v11 = @"mp4";
    v24 = [(__CFString *)v6 isEqualToString:@"mp4"];

    if ((v24 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v25 = +[EDAMLimitsConstants EDAM_MIME_TYPE_INK];
  if ([(__CFString *)typeCopy isEqualToString:v25])
  {
    v11 = @"png";
    v26 = [(__CFString *)v6 isEqualToString:@"png"];

    if ((v26 & 1) == 0)
    {
LABEL_40:
      v27 = v6;
      goto LABEL_41;
    }
  }

  else
  {
  }

  v27 = +[EDAMLimitsConstants EDAM_MIME_TYPE_PDF];
  if (![(__CFString *)typeCopy isEqualToString:v27])
  {
    v11 = v6;
    goto LABEL_41;
  }

  v11 = @"pdf";
  v29 = [(__CFString *)v6 isEqualToString:@"pdf"];

  v27 = v6;
  if ((v29 & 1) == 0)
  {
LABEL_41:

    v6 = v11;
  }

LABEL_42:

  return v6;
}

@end