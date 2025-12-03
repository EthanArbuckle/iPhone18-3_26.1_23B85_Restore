@interface Utilities
+ (BOOL)containsReadOnlyAttributes:(id)attributes;
+ (BOOL)isDotOrDotDot:(char *)dot length:(unint64_t)length;
+ (BOOL)isLabelLegal:(char *)legal;
+ (id)generateVolumeUuid:(bootsector *)uuid uuid:(char *)a4;
+ (id)getMD5Digest:(unsigned int)digest forData:(const char *)data length:(unsigned int)length;
+ (id)getVolumeLabelFromBootSector:(char *)sector;
+ (id)getVolumeName:(id)name bps:(unsigned __int16)bps spc:(unsigned __int8)spc bootsector:(bootsector *)bootsector flags:(unsigned __int8)flags;
+ (id)metaWriteToDevice:(id)device from:(void *)from startingAt:(int64_t)at length:(unint64_t)length forceSyncWrite:(BOOL)write;
+ (id)sharedUtilities;
+ (id)syncMetaClearToDevice:(id)device rangesToClear:(id)clear;
+ (id)syncMetaPurgeToDevice:(id)device rangesToPurge:(id)purge;
+ (id)syncMetaReadFromDevice:(id)device into:(void *)into startingAt:(int64_t)at length:(unint64_t)length;
+ (id)syncReadFromDevice:(id)device into:(void *)into startingAt:(int64_t)at length:(unint64_t)length;
+ (unsigned)getDefaultDOSEncoding;
+ (unsigned)parseCharacterOfLongNameEntry:(winentry *)entry charIdxInEntry:(unsigned int)inEntry charIdxInName:(unsigned int)name unistrName:(unistr255 *)unistrName isFirstLongEntryInSet:(BOOL)set;
+ (void)enableMetaRW;
+ (void)setGMTDiffOffset;
@end

@implementation Utilities

+ (id)sharedUtilities
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C190;
  block[3] = &unk_100051598;
  block[4] = self;
  if (qword_10005A3E8 != -1)
  {
    dispatch_once(&qword_10005A3E8, block);
  }

  v2 = qword_10005A3F0;

  return v2;
}

+ (id)getVolumeName:(id)name bps:(unsigned __int16)bps spc:(unsigned __int8)spc bootsector:(bootsector *)bootsector flags:(unsigned __int8)flags
{
  spcCopy = spc;
  bpsCopy = bps;
  nameCopy = name;
  sharedUtilities = [self sharedUtilities];
  if (![sharedUtilities useMetaRW])
  {
    memset(__dst, 0, 11);
    if (flags)
    {
      v15 = (32 * *&bootsector->var2.var2[6] + (bpsCopy - 1)) / bpsCopy;
      v16 = v15;
      if (v15)
      {
        v17 = 0;
        v18 = *&bootsector->var2.var2[3] + *&bootsector->var2.var2[11] * bootsector->var0.var2[5];
        while (1)
        {
          v19 = [self syncReadFromDevice:nameCopy into:__src startingAt:(v18 + v17) * bpsCopy length:bpsCopy];
          if (v19)
          {

            goto LABEL_4;
          }

          if (bpsCopy)
          {
            break;
          }

LABEL_19:
          if (++v17 >= v16)
          {
            goto LABEL_39;
          }
        }

        v20 = 0;
        v21 = __src;
        while (1)
        {
          if (*v21 != 229)
          {
            if (!*v21)
            {
              goto LABEL_39;
            }

            v22 = v21[11];
            if (v22 != 15 && (v22 & 8) != 0)
            {
              break;
            }
          }

          v20 += 32;
          v21 += 32;
          if (v20 >= bpsCopy)
          {
            goto LABEL_19;
          }
        }

        strncpy(__dst, v21, 0xBuLL);
      }

      else
      {
        flagsCopy = flags;
        v24 = spcCopy * bpsCopy;
        v42 = [[NSMutableData alloc] initWithLength:v24];
        v25 = *&bootsector->var2.var2[33];
        if (v25 + 10 >= 0xC)
        {
          v40 = sharedUtilities;
          while (1)
          {
            v26 = v42;
            v27 = [self syncReadFromDevice:nameCopy into:objc_msgSend(v42 startingAt:"mutableBytes") length:{(*&bootsector->var2.var2[3] + *&bootsector->var2.var2[25] * bootsector->var0.var2[5] + (v25 - 2) * spcCopy) * bpsCopy, v24}];
            if (v27)
            {
              v39 = v27;
LABEL_65:

              goto LABEL_4;
            }

            bytes = [v42 bytes];
            if (v24)
            {
              break;
            }

LABEL_34:
            v33 = 4 * v25;
            v34 = [self syncReadFromDevice:nameCopy into:objc_msgSend(v26 startingAt:"mutableBytes") length:{(v33 / bpsCopy + *&bootsector->var2.var2[3]) * bpsCopy, bpsCopy}];
            if (v34)
            {
              v39 = v34;
              sharedUtilities = v40;
              goto LABEL_65;
            }

            v25 = *([v26 bytes] + v33 % bpsCopy) & 0xFFFFFFF;
            sharedUtilities = v40;
            if (v25 <= 1)
            {
              goto LABEL_38;
            }
          }

          v29 = bytes;
          v30 = 0;
          while (1)
          {
            if (*v29 != 229)
            {
              if (!*v29)
              {
                goto LABEL_38;
              }

              v31 = *(v29 + 11);
              v32 = v31 == 15 || (v31 & 8) == 0;
              v26 = v42;
              if (!v32)
              {
                break;
              }
            }

            v30 += 32;
            v29 += 32;
            if (v30 >= v24)
            {
              goto LABEL_34;
            }
          }

          strncpy(__dst, v29, 0xBuLL);
        }

LABEL_38:

        flags = flagsCopy;
      }
    }

LABEL_39:
    v35 = __dst[0];
    if ((flags & 2) == 0 || __dst[0])
    {
      goto LABEL_51;
    }

    if (!bootsector && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100035208();
    }

    if (*&bootsector->var2.var2[6])
    {
      if (bootsector->var0.var4[7] == 41)
      {
        v36 = 43;
LABEL_49:
        strncpy(__dst, &bootsector->var0.var0[v36], 0xBuLL);
      }
    }

    else if (bootsector->var0.var4[35] == 41)
    {
      v36 = 71;
      goto LABEL_49;
    }

    v35 = __dst[0];
LABEL_51:
    if (v35 == 5)
    {
      __dst[0] = -27;
    }

    if (([self isLabelLegal:{__dst, v40}] & 1) == 0)
    {
      __dst[0] = 0;
    }

    for (i = 10; i != -1; --i)
    {
      if (__dst[i] != 32)
      {
        break;
      }

      __dst[i] = 0;
    }

    v14 = [[NSString alloc] initWithBytes:__dst length:11 encoding:{CFStringConvertEncodingToNSStringEncoding(objc_msgSend(self, "getDefaultDOSEncoding"))}];
    goto LABEL_59;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10003528C();
  }

LABEL_4:
  v14 = 0;
LABEL_59:

  return v14;
}

+ (BOOL)isLabelLegal:(char *)legal
{
  v4 = 0;
  while (1)
  {
    v5 = legal[v4];
    v6 = v4 ? 32 : 33;
    if (v6 > v5 || memchr("*+,./:;<=>?[\\]|", legal[v4], 0x11uLL))
    {
      break;
    }

    if (++v4 == 11)
    {
      goto LABEL_14;
    }
  }

  if (v5)
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (!v7)
    {
      return v7;
    }

    v11 = 136315394;
    v12 = "+[Utilities isLabelLegal:]";
    v13 = 1024;
    v14 = v5;
    v8 = "%s: Illegal character: %c";
    v9 = 18;
    goto LABEL_12;
  }

  if (v4)
  {
LABEL_14:
    LOBYTE(v7) = 1;
  }

  else
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      v11 = 136315138;
      v12 = "+[Utilities isLabelLegal:]";
      v8 = "%s: empty label";
      v9 = 12;
LABEL_12:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, &v11, v9);
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

+ (id)generateVolumeUuid:(bootsector *)uuid uuid:(char *)a4
{
  v5 = 36;
  if (!*&uuid->var2.var2[6])
  {
    v5 = 64;
  }

  v6 = &uuid->var0.var0[v5];
  if (v6[2] == 41)
  {
    v7 = v6 + 3;
    if (v6[3] || v6[4] || v6[5] || v6[6])
    {
      v8 = *&uuid->var2.var2[8];
      if (!*&uuid->var2.var2[8])
      {
        v8 = *&uuid->var2.var2[21];
      }

      memset(&c, 0, sizeof(c));
      data = v8;
      CC_MD5_Init(&c);
      CC_MD5_Update(&c, &unk_100040A2D, 0x10u);
      CC_MD5_Update(&c, v7, 4u);
      CC_MD5_Update(&c, &data, 4u);
      CC_MD5_Final(a4, &c);
      a4[6] = a4[6] & 0xF | 0x30;
      a4[8] = a4[8] & 0x3F | 0x80;
    }
  }

  uuid_unparse(a4, &c);
  v9 = [NSUUID alloc];
  v10 = [[NSString alloc] initWithUTF8String:&c];
  v11 = [v9 initWithUUIDString:v10];

  return v11;
}

+ (id)getVolumeLabelFromBootSector:(char *)sector
{
  v3 = 0;
  memset(v9, 0, sizeof(v9));
  do
  {
    v4 = sector[v3];
    if (v4 == 5 && v3 == 0)
    {
      v4 = 229;
    }

    if ((v4 - 160) >= 0xFFFFFFE0)
    {
      LOWORD(v4) = dos2unicodeConv[v4 - 128];
    }

    *(v9 + v3++) = v4;
  }

  while (v3 != 11);
  for (i = 10; i != -1; --i)
  {
    if (*(v9 + i) != 32)
    {
      break;
    }
  }

  *(v9 + i + 1) = 0;
  v7 = [FSFileName nameWithCString:v9];

  return v7;
}

+ (unsigned)getDefaultDOSEncoding
{
  v2 = 1040;
  SystemEncoding = CFStringGetSystemEncoding();
  if (SystemEncoding <= 24)
  {
    if (SystemEncoding <= 4)
    {
      if (SystemEncoding == 4)
      {
        v4 = 1049;
      }

      else
      {
        v4 = 1040;
      }

      if (SystemEncoding == 3)
      {
        v5 = 1058;
      }

      else
      {
        v5 = v4;
      }

      if (SystemEncoding == 2)
      {
        v6 = 1059;
      }

      else
      {
        v6 = 1040;
      }

      if (SystemEncoding == 1)
      {
        v7 = 1056;
      }

      else
      {
        v7 = v6;
      }

      if (SystemEncoding <= 2)
      {
        return v7;
      }

      else
      {
        return v5;
      }
    }

    if (SystemEncoding <= 6)
    {
      if (SystemEncoding == 6)
      {
        v8 = 1029;
      }

      else
      {
        v8 = 1040;
      }

      if (SystemEncoding == 5)
      {
        return 1047;
      }

      else
      {
        return v8;
      }
    }

    if (SystemEncoding != 7)
    {
      if (SystemEncoding == 21)
      {
        return 1053;
      }

      else
      {
        return 1040;
      }
    }

    return 1043;
  }

  if (SystemEncoding <= 36)
  {
    if (SystemEncoding > 34)
    {
      if (SystemEncoding == 35)
      {
        return 1044;
      }
    }

    else
    {
      if (SystemEncoding == 25)
      {
        return 1057;
      }

      if (SystemEncoding != 29)
      {
        return v2;
      }
    }

    return 1042;
  }

  if (SystemEncoding <= 139)
  {
    if (SystemEncoding == 37)
    {
      return 1046;
    }

    if (SystemEncoding != 38)
    {
      return v2;
    }

    return 1042;
  }

  if (SystemEncoding == 140)
  {
    return 1049;
  }

  if (SystemEncoding == 152)
  {
    return 1043;
  }

  return v2;
}

+ (unsigned)parseCharacterOfLongNameEntry:(winentry *)entry charIdxInEntry:(unsigned int)inEntry charIdxInName:(unsigned int)name unistrName:(unistr255 *)unistrName isFirstLongEntryInSet:(BOOL)set
{
  if (inEntry > 0xC)
  {
    return 0;
  }

  v8 = *(&entry->var0 + puLongNameOffset[inEntry]);
  if ((v8 + 1) <= 1u)
  {
    if (set)
    {
      unistrName->var0 = name + inEntry;
      return 1;
    }

    return 0;
  }

  if (name + inEntry > 0xFF)
  {
    return 0;
  }

  unistrName->var1[name + inEntry] = v8;
  return 2;
}

+ (BOOL)isDotOrDotDot:(char *)dot length:(unint64_t)length
{
  if (!dot)
  {
    return 0;
  }

  v4 = *dot;
  if (length == 1 && v4 == 46)
  {
    return 1;
  }

  v6 = v4 == 46 && dot[1] == 46;
  return length == 2 && v6;
}

+ (id)syncReadFromDevice:(id)device into:(void *)into startingAt:(int64_t)at length:(unint64_t)length
{
  v11 = 0;
  v7 = [device readInto:into startingAt:at length:length error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100035310();
    }
  }

  else if (v7 == length)
  {
    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100035394();
    }

    v9 = fs_errorForPOSIXError();
  }

  return v9;
}

+ (id)syncMetaReadFromDevice:(id)device into:(void *)into startingAt:(int64_t)at length:(unint64_t)length
{
  deviceCopy = device;
  sharedUtilities = [self sharedUtilities];
  if ([sharedUtilities useMetaRW])
  {
    v14 = 0;
    [deviceCopy metadataReadInto:into startingAt:at length:length error:&v14];

    v12 = v14;
    if (v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10003549C();
    }
  }

  else
  {
    v12 = [Utilities syncReadFromDevice:deviceCopy into:into startingAt:at length:length];

    if (v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100035418();
    }
  }

  return v12;
}

+ (id)metaWriteToDevice:(id)device from:(void *)from startingAt:(int64_t)at length:(unint64_t)length forceSyncWrite:(BOOL)write
{
  deviceCopy = device;
  v19 = 0;
  [deviceCopy metadataWriteFrom:from startingAt:at length:length error:&v19];
  v12 = v19;
  if (v12)
  {
    v13 = v12;
    sharedUtilities = [self sharedUtilities];
    if ([sharedUtilities useMetaRW])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100035628();
      }

      v15 = v13;
    }

    else
    {
      v18 = v13;
      v16 = [deviceCopy writeFrom:from startingAt:at length:length error:&v18];
      v15 = v18;

      if (v15)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100035520();
        }
      }

      else if (v16 == length)
      {
        v15 = 0;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000355A4();
        }

        v15 = fs_errorForPOSIXError();
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)syncMetaClearToDevice:(id)device rangesToClear:(id)clear
{
  v6 = 0;
  [device metadataClear:clear withDelayedWrites:0 error:&v6];
  v4 = v6;
  if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000356CC();
  }

  return v4;
}

+ (id)syncMetaPurgeToDevice:(id)device rangesToPurge:(id)purge
{
  v6 = 0;
  [device metadataPurge:purge error:&v6];
  v4 = v6;
  if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100035750();
  }

  return v4;
}

+ (id)getMD5Digest:(unsigned int)digest forData:(const char *)data length:(unsigned int)length
{
  v8 = digest >> 1;
  v9 = &c - (((digest >> 1) + 15) & 0xFFFFFFF0);
  bzero(v9, digest >> 1);
  v10 = [NSMutableData dataWithLength:digest + 1];
  mutableBytes = [v10 mutableBytes];
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, data, length);
  CC_MD5_Final(v9, &c);
  if (digest >= 2)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      snprintf(&mutableBytes[2 * v12], 3uLL, "%02x", v9[v13++]);
      v12 = v13;
    }

    while (v8 > v13);
  }

  return v10;
}

+ (BOOL)containsReadOnlyAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = 1;
  if (([attributesCopy isValid:1] & 1) == 0)
  {
    if ([attributesCopy isValid:4] & 1) != 0 || (objc_msgSend(attributesCopy, "isValid:", 128) & 1) != 0 || (objc_msgSend(attributesCopy, "isValid:", 256) & 1) != 0 || (objc_msgSend(attributesCopy, "isValid:", 512))
    {
      v4 = 1;
    }

    else
    {
      v4 = [attributesCopy isValid:4096];
    }
  }

  return v4;
}

+ (void)enableMetaRW
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000357D4();
  }

  v2 = +[Utilities sharedUtilities];
  [v2 setUseMetaRW:1];
}

+ (void)setGMTDiffOffset
{
  v4 = time(0);
  v2 = gmtime(&v4);
  v2->tm_isdst = -1;
  v3 = mktime(v2);
  dword_100059E80 = -difftime(v4, v3);
}

@end