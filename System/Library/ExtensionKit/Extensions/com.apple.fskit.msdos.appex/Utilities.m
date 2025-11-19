@interface Utilities
+ (BOOL)containsReadOnlyAttributes:(id)a3;
+ (BOOL)isDotOrDotDot:(char *)a3 length:(unint64_t)a4;
+ (BOOL)isLabelLegal:(char *)a3;
+ (id)generateVolumeUuid:(bootsector *)a3 uuid:(char *)a4;
+ (id)getMD5Digest:(unsigned int)a3 forData:(const char *)a4 length:(unsigned int)a5;
+ (id)getVolumeLabelFromBootSector:(char *)a3;
+ (id)getVolumeName:(id)a3 bps:(unsigned __int16)a4 spc:(unsigned __int8)a5 bootsector:(bootsector *)a6 flags:(unsigned __int8)a7;
+ (id)metaWriteToDevice:(id)a3 from:(void *)a4 startingAt:(int64_t)a5 length:(unint64_t)a6 forceSyncWrite:(BOOL)a7;
+ (id)sharedUtilities;
+ (id)syncMetaClearToDevice:(id)a3 rangesToClear:(id)a4;
+ (id)syncMetaPurgeToDevice:(id)a3 rangesToPurge:(id)a4;
+ (id)syncMetaReadFromDevice:(id)a3 into:(void *)a4 startingAt:(int64_t)a5 length:(unint64_t)a6;
+ (id)syncReadFromDevice:(id)a3 into:(void *)a4 startingAt:(int64_t)a5 length:(unint64_t)a6;
+ (unsigned)getDefaultDOSEncoding;
+ (unsigned)parseCharacterOfLongNameEntry:(winentry *)a3 charIdxInEntry:(unsigned int)a4 charIdxInName:(unsigned int)a5 unistrName:(unistr255 *)a6 isFirstLongEntryInSet:(BOOL)a7;
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
  block[4] = a1;
  if (qword_10005A3E8 != -1)
  {
    dispatch_once(&qword_10005A3E8, block);
  }

  v2 = qword_10005A3F0;

  return v2;
}

+ (id)getVolumeName:(id)a3 bps:(unsigned __int16)a4 spc:(unsigned __int8)a5 bootsector:(bootsector *)a6 flags:(unsigned __int8)a7
{
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = [a1 sharedUtilities];
  if (![v13 useMetaRW])
  {
    memset(__dst, 0, 11);
    if (a7)
    {
      v15 = (32 * *&a6->var2.var2[6] + (v10 - 1)) / v10;
      v16 = v15;
      if (v15)
      {
        v17 = 0;
        v18 = *&a6->var2.var2[3] + *&a6->var2.var2[11] * a6->var0.var2[5];
        while (1)
        {
          v19 = [a1 syncReadFromDevice:v12 into:__src startingAt:(v18 + v17) * v10 length:v10];
          if (v19)
          {

            goto LABEL_4;
          }

          if (v10)
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
          if (v20 >= v10)
          {
            goto LABEL_19;
          }
        }

        strncpy(__dst, v21, 0xBuLL);
      }

      else
      {
        v41 = a7;
        v24 = v9 * v10;
        v42 = [[NSMutableData alloc] initWithLength:v24];
        v25 = *&a6->var2.var2[33];
        if (v25 + 10 >= 0xC)
        {
          v40 = v13;
          while (1)
          {
            v26 = v42;
            v27 = [a1 syncReadFromDevice:v12 into:objc_msgSend(v42 startingAt:"mutableBytes") length:{(*&a6->var2.var2[3] + *&a6->var2.var2[25] * a6->var0.var2[5] + (v25 - 2) * v9) * v10, v24}];
            if (v27)
            {
              v39 = v27;
LABEL_65:

              goto LABEL_4;
            }

            v28 = [v42 bytes];
            if (v24)
            {
              break;
            }

LABEL_34:
            v33 = 4 * v25;
            v34 = [a1 syncReadFromDevice:v12 into:objc_msgSend(v26 startingAt:"mutableBytes") length:{(v33 / v10 + *&a6->var2.var2[3]) * v10, v10}];
            if (v34)
            {
              v39 = v34;
              v13 = v40;
              goto LABEL_65;
            }

            v25 = *([v26 bytes] + v33 % v10) & 0xFFFFFFF;
            v13 = v40;
            if (v25 <= 1)
            {
              goto LABEL_38;
            }
          }

          v29 = v28;
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

        a7 = v41;
      }
    }

LABEL_39:
    v35 = __dst[0];
    if ((a7 & 2) == 0 || __dst[0])
    {
      goto LABEL_51;
    }

    if (!a6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100035208();
    }

    if (*&a6->var2.var2[6])
    {
      if (a6->var0.var4[7] == 41)
      {
        v36 = 43;
LABEL_49:
        strncpy(__dst, &a6->var0.var0[v36], 0xBuLL);
      }
    }

    else if (a6->var0.var4[35] == 41)
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

    if (([a1 isLabelLegal:{__dst, v40}] & 1) == 0)
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

    v14 = [[NSString alloc] initWithBytes:__dst length:11 encoding:{CFStringConvertEncodingToNSStringEncoding(objc_msgSend(a1, "getDefaultDOSEncoding"))}];
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

+ (BOOL)isLabelLegal:(char *)a3
{
  v4 = 0;
  while (1)
  {
    v5 = a3[v4];
    v6 = v4 ? 32 : 33;
    if (v6 > v5 || memchr("*+,./:;<=>?[\\]|", a3[v4], 0x11uLL))
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

+ (id)generateVolumeUuid:(bootsector *)a3 uuid:(char *)a4
{
  v5 = 36;
  if (!*&a3->var2.var2[6])
  {
    v5 = 64;
  }

  v6 = &a3->var0.var0[v5];
  if (v6[2] == 41)
  {
    v7 = v6 + 3;
    if (v6[3] || v6[4] || v6[5] || v6[6])
    {
      v8 = *&a3->var2.var2[8];
      if (!*&a3->var2.var2[8])
      {
        v8 = *&a3->var2.var2[21];
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

+ (id)getVolumeLabelFromBootSector:(char *)a3
{
  v3 = 0;
  memset(v9, 0, sizeof(v9));
  do
  {
    v4 = a3[v3];
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

+ (unsigned)parseCharacterOfLongNameEntry:(winentry *)a3 charIdxInEntry:(unsigned int)a4 charIdxInName:(unsigned int)a5 unistrName:(unistr255 *)a6 isFirstLongEntryInSet:(BOOL)a7
{
  if (a4 > 0xC)
  {
    return 0;
  }

  v8 = *(&a3->var0 + puLongNameOffset[a4]);
  if ((v8 + 1) <= 1u)
  {
    if (a7)
    {
      a6->var0 = a5 + a4;
      return 1;
    }

    return 0;
  }

  if (a5 + a4 > 0xFF)
  {
    return 0;
  }

  a6->var1[a5 + a4] = v8;
  return 2;
}

+ (BOOL)isDotOrDotDot:(char *)a3 length:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = *a3;
  if (a4 == 1 && v4 == 46)
  {
    return 1;
  }

  v6 = v4 == 46 && a3[1] == 46;
  return a4 == 2 && v6;
}

+ (id)syncReadFromDevice:(id)a3 into:(void *)a4 startingAt:(int64_t)a5 length:(unint64_t)a6
{
  v11 = 0;
  v7 = [a3 readInto:a4 startingAt:a5 length:a6 error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100035310();
    }
  }

  else if (v7 == a6)
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

+ (id)syncMetaReadFromDevice:(id)a3 into:(void *)a4 startingAt:(int64_t)a5 length:(unint64_t)a6
{
  v10 = a3;
  v11 = [a1 sharedUtilities];
  if ([v11 useMetaRW])
  {
    v14 = 0;
    [v10 metadataReadInto:a4 startingAt:a5 length:a6 error:&v14];

    v12 = v14;
    if (v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10003549C();
    }
  }

  else
  {
    v12 = [Utilities syncReadFromDevice:v10 into:a4 startingAt:a5 length:a6];

    if (v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100035418();
    }
  }

  return v12;
}

+ (id)metaWriteToDevice:(id)a3 from:(void *)a4 startingAt:(int64_t)a5 length:(unint64_t)a6 forceSyncWrite:(BOOL)a7
{
  v11 = a3;
  v19 = 0;
  [v11 metadataWriteFrom:a4 startingAt:a5 length:a6 error:&v19];
  v12 = v19;
  if (v12)
  {
    v13 = v12;
    v14 = [a1 sharedUtilities];
    if ([v14 useMetaRW])
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
      v16 = [v11 writeFrom:a4 startingAt:a5 length:a6 error:&v18];
      v15 = v18;

      if (v15)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100035520();
        }
      }

      else if (v16 == a6)
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

+ (id)syncMetaClearToDevice:(id)a3 rangesToClear:(id)a4
{
  v6 = 0;
  [a3 metadataClear:a4 withDelayedWrites:0 error:&v6];
  v4 = v6;
  if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000356CC();
  }

  return v4;
}

+ (id)syncMetaPurgeToDevice:(id)a3 rangesToPurge:(id)a4
{
  v6 = 0;
  [a3 metadataPurge:a4 error:&v6];
  v4 = v6;
  if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100035750();
  }

  return v4;
}

+ (id)getMD5Digest:(unsigned int)a3 forData:(const char *)a4 length:(unsigned int)a5
{
  v8 = a3 >> 1;
  v9 = &c - (((a3 >> 1) + 15) & 0xFFFFFFF0);
  bzero(v9, a3 >> 1);
  v10 = [NSMutableData dataWithLength:a3 + 1];
  v11 = [v10 mutableBytes];
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, a4, a5);
  CC_MD5_Final(v9, &c);
  if (a3 >= 2)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      snprintf(&v11[2 * v12], 3uLL, "%02x", v9[v13++]);
      v12 = v13;
    }

    while (v8 > v13);
  }

  return v10;
}

+ (BOOL)containsReadOnlyAttributes:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isValid:1] & 1) == 0)
  {
    if ([v3 isValid:4] & 1) != 0 || (objc_msgSend(v3, "isValid:", 128) & 1) != 0 || (objc_msgSend(v3, "isValid:", 256) & 1) != 0 || (objc_msgSend(v3, "isValid:", 512))
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isValid:4096];
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