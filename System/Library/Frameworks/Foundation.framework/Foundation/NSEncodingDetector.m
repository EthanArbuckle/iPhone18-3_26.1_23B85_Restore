@interface NSEncodingDetector
+ (id)detectorForCFStringEncoding:(unsigned int)a3 allowBackupDetectors:(BOOL)a4;
+ (void)recognizeFuncForCFStringEncoding:(unsigned int)a3;
- (NSEncodingDetector)initWithNSStringEncoding:(unint64_t)a3 CFStringEncoding:(unsigned int)a4 recognizeFunc:(void *)a5;
- (double)_singleByte_confidence;
- (double)bytesRatio;
- (double)confidence;
- (double)confidenceWith2Chars;
- (double)multiBytesRatio;
- (void)reset;
- (void)softReset;
@end

@implementation NSEncodingDetector

- (void)reset
{
  *&self->_hasBase64 = 0;
  self->_hasBOM = 0;
  *&self->_givenNumBytes = 0u;
  *&self->_numMultiByteChars = 0u;
  *&self->_skipBytes = 0u;
  *&self->_mostFrqChars = 0u;
  *&self->_numRep = 0u;
  *&self->_numBase64 = 0u;
  *&self->_numTrigram = 0u;
  self->_numHigher = 0;
  self->_weight = 1.0;
  self->_tag = 0;
}

- (void)softReset
{
  weight = self->_weight;
  tag = self->_tag;
  [(NSEncodingDetector *)self reset];
  self->_tag = tag;
  self->_weight = weight;
}

- (double)bytesRatio
{
  givenNumBytes = self->_givenNumBytes;
  result = 0.0;
  v4 = givenNumBytes - self->_skipBytes;
  if (v4)
  {
    return v4 / givenNumBytes;
  }

  return result;
}

- (NSEncodingDetector)initWithNSStringEncoding:(unint64_t)a3 CFStringEncoding:(unsigned int)a4 recognizeFunc:(void *)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSEncodingDetector;
  v8 = [(NSEncodingDetector *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_recognizeFunc = a5;
    v8->_nsEncoding = a3;
    v8->_cfEncoding = a4;
    [(NSEncodingDetector *)v8 reset];
  }

  return v9;
}

- (double)confidence
{
  cfEncoding = self->_cfEncoding;
  if (cfEncoding > 1052)
  {
    if ((cfEncoding - 1280) < 9 || cfEncoding == 1053)
    {
LABEL_9:
      [(NSEncodingDetector *)self _singleByte_confidence];
      return result;
    }

    if (cfEncoding == 1536)
    {
      [(NSEncodingDetector *)self _ASCII_confidence];
      return result;
    }
  }

  else
  {
    v3 = cfEncoding - 513;
    if (v3 <= 0xF && v3 != 11)
    {
      goto LABEL_9;
    }
  }

  skipBytes = self->_skipBytes;
  if (skipBytes)
  {
    v7 = 1.0 / (skipBytes + 1);
  }

  else
  {
    v7 = 1.0;
  }

  numChars = self->_numChars;
  if (!numChars)
  {
    return 0.0;
  }

  v9 = self->_numBigrams + self->_mostFrqChars + 1;
  return self->_weight * (v7 * v7 * (v9 / numChars * v9 / (self->_numMultiByteChars + 1)));
}

- (double)confidenceWith2Chars
{
  skipBytes = self->_skipBytes;
  if (skipBytes)
  {
    v3 = 1.0 / (skipBytes + 1);
  }

  else
  {
    v3 = 1.0;
  }

  numChars = self->_numChars;
  if (numChars)
  {
    return v3 * (self->_mostFrqChars / numChars * self->_numBigrams);
  }

  else
  {
    return 0.0;
  }
}

- (double)_singleByte_confidence
{
  skipBytes = self->_skipBytes;
  if (skipBytes)
  {
    v3 = 1.0 / (skipBytes + 1);
  }

  else
  {
    v3 = 1.0;
  }

  numChars = self->_numChars;
  if (!numChars)
  {
    return 0.0;
  }

  v5 = self->_numTrigram + self->_mostFrqChars + 1;
  return self->_weight * (v3 * v3 * (v5 / numChars * v5 / (self->_numHigher + 1)));
}

- (double)multiBytesRatio
{
  numMultiByteChars = self->_numMultiByteChars;
  result = 0.0;
  if (numMultiByteChars)
  {
    numChars = self->_numChars;
    if (numChars)
    {
      return numMultiByteChars / numChars * (self->_givenNumBytes - self->_skipBytes) / self->_givenNumBytes;
    }
  }

  return result;
}

+ (id)detectorForCFStringEncoding:(unsigned int)a3 allowBackupDetectors:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v6 = [a1 recognizeFuncForCFStringEncoding:?];
  v7 = v6;
  if (v6 || !v4)
  {
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == 2561)
  {
    v7 = _SHIFTJISX0213_recognize;
LABEL_6:
    v8 = [[NSEncodingDetector alloc] initWithNSStringEncoding:CFStringConvertEncodingToNSStringEncoding(v5) CFStringEncoding:v5 recognizeFunc:v7];
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (void)recognizeFuncForCFStringEncoding:(unsigned int)a3
{
  v3 = _ASCII_recognize;
  if (a3 <= 1284)
  {
    if (a3 <= 1052)
    {
      v3 = (a3 - 513);
      switch(a3)
      {
        case 0x201u:
          return _ISOLATIN1_recognize;
        case 0x202u:
          return _ISOLATIN2_recognize;
        case 0x203u:
          return _ISOLATIN3_recognize;
        case 0x204u:
          return _ISOLATIN4_recognize;
        case 0x205u:
          return _ISO88595_recognize;
        case 0x206u:
          return _ISO88596_recognize;
        case 0x207u:
          return _ISO88597_recognize;
        case 0x208u:
          return _ISO88598_recognize;
        case 0x209u:
          return _ISOLATIN5_recognize;
        case 0x20Au:
          return _ISOLATIN6_recognize;
        case 0x20Bu:
          return _ISO885911_recognize;
        case 0x20Cu:
          return 0;
        case 0x20Du:
          return _ISOLATIN7_recognize;
        case 0x20Eu:
          return _ISOLATIN8_recognize;
        case 0x20Fu:
          return _ISOLATIN9_recognize;
        case 0x210u:
          return _ISOLATIN10_recognize;
        default:
          if (!a3)
          {
            return v3;
          }

          if (a3 != 256)
          {
            return 0;
          }

          v3 = _UTF16_recognize;
          break;
      }

      return v3;
    }

    if (a3 > 1279)
    {
      if (a3 <= 1281)
      {
        if (a3 == 1280)
        {
          return _WINDOWS1252_recognize;
        }

        else
        {
          return _WINDOWS1250_recognize;
        }
      }

      else if (a3 == 1282)
      {
        return _WINDOWS1251_recognize;
      }

      else if (a3 == 1283)
      {
        return _WINDOWS1253_recognize;
      }

      else
      {
        return _WINDOWS1254_recognize;
      }
    }

    if (a3 <= 1056)
    {
      if (a3 == 1053)
      {
        return _WINDOWS874_recognize;
      }

      if (a3 == 1056)
      {
        return _WINDOWS932_recognize;
      }
    }

    else
    {
      switch(a3)
      {
        case 0x421u:
          return _WINDOWS936_recognize;
        case 0x422u:
          return _WINDOWS949_recognize;
        case 0x423u:
          return _WINDOWS950_recognize;
      }
    }

    return 0;
  }

  if (a3 > 2351)
  {
    if (a3 > 67109119)
    {
      if (a3 <= 268435711)
      {
        switch(a3)
        {
          case 0x4000100u:
            return _UTF7_recognize;
          case 0x8000100u:
            return _UTF8_recognize;
          case 0xC000100u:
            return _UTF32_recognize;
        }
      }

      else if (a3 > 402653439)
      {
        if (a3 == 402653440)
        {
          return _UTF32BE_recognize;
        }

        if (a3 == 469762304)
        {
          return _UTF32LE_recognize;
        }
      }

      else
      {
        if (a3 == 268435712)
        {
          return _UTF16BE_recognize;
        }

        if (a3 == 335544576)
        {
          return _UTF16LE_recognize;
        }
      }
    }

    else if (a3 <= 2562)
    {
      switch(a3)
      {
        case 0x930u:
          return _EUCGB2312_recognize;
        case 0x931u:
          return _EUCTW_recognize;
        case 0x940u:
          return _EUCKR_recognize;
      }
    }

    else if (a3 > 2565)
    {
      if (a3 == 2566)
      {
        return _Big5HKSCS_recognize;
      }

      if (a3 == 2569)
      {
        return _BigE_recognize;
      }
    }

    else
    {
      if (a3 == 2563)
      {
        return _Big5_recognize;
      }

      if (a3 == 2565)
      {
        return _HZGB2312_recognize;
      }
    }

    return 0;
  }

  if (a3 > 1585)
  {
    if (a3 <= 2081)
    {
      switch(a3)
      {
        case 0x632u:
          return _GB18030_recognize;
        case 0x820u:
          return _ISO2022JP_recognize;
        case 0x821u:
          return _ISO2022JP2_recognize;
      }
    }

    else if (a3 > 2111)
    {
      if (a3 == 2112)
      {
        return _ISO2022KR_recognize;
      }

      if (a3 == 2336)
      {
        return _EUCJP_recognize;
      }
    }

    else
    {
      if (a3 == 2082)
      {
        return _ISO2022JP1_recognize;
      }

      if (a3 == 2096)
      {
        return _ISO2022CN_recognize;
      }
    }

    return 0;
  }

  if (a3 <= 1287)
  {
    if (a3 == 1285)
    {
      return _WINDOWS1255_recognize;
    }

    if (a3 == 1286)
    {
      return _WINDOWS1256_recognize;
    }

    return _WINDOWS1257_recognize;
  }

  if (a3 > 1575)
  {
    if (a3 == 1576)
    {
      return _SHIFTJISX0213_recognize;
    }

    if (a3 == 1585)
    {
      return _GBK_recognize;
    }

    return 0;
  }

  if (a3 == 1288)
  {
    return _WINDOWS1258_recognize;
  }

  if (a3 != 1536)
  {
    return 0;
  }

  return v3;
}

@end