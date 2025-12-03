@interface AAAssetHelper
+ (BOOL)_productColorAssetExists:(unsigned int)exists withColor:(unsigned __int8)color;
+ (id)bluetoothProductIDToAsset:(unsigned int)asset withColor:(unsigned __int8)color isCase:(BOOL)case;
+ (unsigned)_getDefaultColorCode:(unsigned int)code;
@end

@implementation AAAssetHelper

+ (id)bluetoothProductIDToAsset:(unsigned int)asset withColor:(unsigned __int8)color isCase:(BOOL)case
{
  if (case)
  {
    [self _bluetoothProductIDToCaseAsset:? withColor:?];
  }

  else
  {
    [self _bluetoothProductIDToAsset:? withColor:?];
  }
  v5 = ;
  if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v5;
}

+ (unsigned)_getDefaultColorCode:(unsigned int)code
{
  result = -1;
  if (code > 8220)
  {
    if (code <= 8228)
    {
      if (code != 8221)
      {
        v4 = code == 8223;
        v5 = 19;
LABEL_16:
        if (v4)
        {
          return v5;
        }

        else
        {
          return -1;
        }
      }

      return 1;
    }

    if (code == 8239)
    {
      return 10;
    }

    if (code == 8230)
    {
      return 1;
    }

    if (code != 8229)
    {
      return result;
    }

    return 0;
  }

  if (code <= 8213)
  {
    if (code - 8209 >= 2)
    {
      v4 = code == 8202;
      v5 = 16;
      goto LABEL_16;
    }

    return 1;
  }

  if (code == 8214)
  {
    return 0;
  }

  if (code == 8215 || code == 8218)
  {
    return 1;
  }

  return result;
}

+ (BOOL)_productColorAssetExists:(unsigned int)exists withColor:(unsigned __int8)color
{
  if (exists <= 8217)
  {
    if (exists > 8209)
    {
      if (exists == 8210)
      {
        if (color < 0xAu)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (exists != 8214)
        {
          if (exists != 8215 || color >= 0xEu)
          {
            goto LABEL_38;
          }

          v4 = 13050;
          goto LABEL_37;
        }

        if (color < 5u)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_38;
    }

    if (exists != 8202)
    {
      if (exists != 8209 || color != 1)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    if (color >= 0x12u)
    {
      goto LABEL_38;
    }

    v4 = 229388;
    goto LABEL_37;
  }

  if (exists > 8228)
  {
    if (exists == 8229)
    {
      if (color < 7u)
      {
        v4 = 103;
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (exists != 8230)
    {
      if (exists == 8239)
      {
        v5 = color - 10;
        goto LABEL_27;
      }

      goto LABEL_38;
    }

    if (color >= 7u)
    {
      goto LABEL_38;
    }

    v4 = 94;
LABEL_37:
    v6 = v4 >> color;
    return v6 & 1;
  }

  if (exists == 8218)
  {
    if (color < 0xAu)
    {
      v4 = 982;
      goto LABEL_37;
    }

LABEL_38:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (exists != 8221)
  {
    if (exists != 8223 || (color - 18) >= 5)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v5 = color - 1;
LABEL_27:
  if (v5 >= 4u)
  {
    goto LABEL_38;
  }

LABEL_32:
  LOBYTE(v6) = 1;
  return v6 & 1;
}

@end