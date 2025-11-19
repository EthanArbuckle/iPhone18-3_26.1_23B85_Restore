@interface NSNumber(ASDTNumeric)
+ (id)asdtNumberFromData:()ASDTNumeric withNumericType:;
+ (uint64_t)asdtDataSizeForNumericType:()ASDTNumeric;
- (uint64_t)asdtNumberToData:()ASDTNumeric withNumericType:andSize:;
@end

@implementation NSNumber(ASDTNumeric)

+ (uint64_t)asdtDataSizeForNumericType:()ASDTNumeric
{
  if (a3 > 0xA)
  {
    return 0;
  }

  else
  {
    return byte_2416A49F8[a3];
  }
}

+ (id)asdtNumberFromData:()ASDTNumeric withNumericType:
{
  v5 = 0;
  if (a5 <= 4)
  {
    if (a5 <= 1)
    {
      if (a5)
      {
        if (a5 == 1)
        {
          LODWORD(a1) = *a4;
          v5 = [MEMORY[0x277CCABB0] numberWithFloat:a1];
        }
      }

      else
      {
        v5 = [MEMORY[0x277CCABB0] numberWithBool:*a4 & 1];
      }
    }

    else
    {
      if (a5 != 2)
      {
        if (a5 == 3)
        {
          [MEMORY[0x277CCABB0] numberWithChar:*a4];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithShort:*a4];
        }

        goto LABEL_6;
      }

      v5 = [MEMORY[0x277CCABB0] numberWithDouble:*a4];
    }
  }

  else if (a5 > 7)
  {
    switch(a5)
    {
      case 8:
        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*a4];
        break;
      case 9:
        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a4];
        break;
      case 10:
        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a4];
        break;
    }
  }

  else
  {
    if (a5 != 5)
    {
      if (a5 == 6)
      {
        [MEMORY[0x277CCABB0] numberWithLongLong:*a4];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithUnsignedChar:*a4];
      }

      v5 = LABEL_6:;
      goto LABEL_25;
    }

    v5 = [MEMORY[0x277CCABB0] numberWithInt:*a4];
  }

LABEL_25:

  return v5;
}

- (uint64_t)asdtNumberToData:()ASDTNumeric withNumericType:andSize:
{
  if (a4 <= 4)
  {
    if (a4 <= 1)
    {
      if (!a4)
      {
        goto LABEL_21;
      }

      if (a4 != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_18;
    }

    if (a4 == 2)
    {
      goto LABEL_13;
    }

    if (a4 == 3)
    {
      goto LABEL_21;
    }

LABEL_24:
    if (a5 <= 1)
    {
      v7 = ASDTBaseLogType();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [NSNumber(ASDTNumeric) asdtNumberToData:withNumericType:andSize:];
      }

      goto LABEL_43;
    }

    goto LABEL_27;
  }

  if (a4 > 7)
  {
    if (a4 != 8)
    {
      if (a4 != 9)
      {
        if (a4 == 10)
        {
          goto LABEL_13;
        }

LABEL_41:
        v7 = ASDTBaseLogType();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [NSNumber(ASDTNumeric) asdtNumberToData:a4 withNumericType:v7 andSize:?];
        }

        goto LABEL_43;
      }

LABEL_18:
      if (a5 <= 3)
      {
        v7 = ASDTBaseLogType();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [NSNumber(ASDTNumeric) asdtNumberToData:withNumericType:andSize:];
        }

        goto LABEL_43;
      }

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (a4 == 5)
  {
    goto LABEL_18;
  }

  if (a4 != 6)
  {
LABEL_21:
    if (!a5)
    {
      v7 = ASDTBaseLogType();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [NSNumber(ASDTNumeric) asdtNumberToData:withNumericType:andSize:];
      }

LABEL_43:

      return 0;
    }

    goto LABEL_27;
  }

LABEL_13:
  if (a5 <= 7)
  {
    v7 = ASDTBaseLogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NSNumber(ASDTNumeric) asdtNumberToData:withNumericType:andSize:];
    }

    goto LABEL_43;
  }

LABEL_27:
  if (a4 > 4)
  {
    if (a4 <= 7)
    {
      if (a4 != 5)
      {
        if (a4 == 6)
        {
          v8 = [a1 longLongValue];
LABEL_54:
          *a3 = v8;
          return 1;
        }

        v9 = [a1 unsignedCharValue];
        goto LABEL_52;
      }

      v10 = [a1 intValue];
      goto LABEL_46;
    }

    if (a4 != 8)
    {
      if (a4 != 9)
      {
        v8 = [a1 unsignedLongLongValue];
        goto LABEL_54;
      }

      v10 = [a1 unsignedIntValue];
LABEL_46:
      *a3 = v10;
      return 1;
    }

    v13 = [a1 unsignedShortValue];
LABEL_49:
    *a3 = v13;
    return 1;
  }

  if (a4 <= 1)
  {
    if (a4)
    {
      [a1 floatValue];
      *a3 = v14;
      return 1;
    }

    v9 = [a1 BOOLValue];
    goto LABEL_52;
  }

  if (a4 != 2)
  {
    if (a4 != 3)
    {
      v13 = [a1 shortValue];
      goto LABEL_49;
    }

    v9 = [a1 charValue];
LABEL_52:
    *a3 = v9;
    return 1;
  }

  [a1 doubleValue];
  *a3 = v12;
  return 1;
}

- (void)asdtNumberToData:()ASDTNumeric withNumericType:andSize:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1(&dword_241659000, v0, v1, "Bad size for %d-bit numeric type: %zu", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtNumberToData:()ASDTNumeric withNumericType:andSize:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1(&dword_241659000, v0, v1, "Bad size for %d-bit numeric type: %zu", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtNumberToData:()ASDTNumeric withNumericType:andSize:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1(&dword_241659000, v0, v1, "Bad size for %d-bit numeric type: %zu", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtNumberToData:()ASDTNumeric withNumericType:andSize:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1(&dword_241659000, v0, v1, "Bad size for %d-bit numeric type: %zu", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtNumberToData:()ASDTNumeric withNumericType:andSize:.cold.5(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "Bad numeric type: %u", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end