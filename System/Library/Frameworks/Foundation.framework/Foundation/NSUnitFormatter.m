@interface NSUnitFormatter
- (NSLocale)locale;
- (NSNumberFormatter)numberFormatter;
- (NSUnitFormatter)init;
- (NSUnitFormatter)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringForObjectValue:(id)a3;
- (id)stringForValue1:(double)a3 unit1:(unint64_t)a4 value2:(double)a5 unit2:(unint64_t)a6;
- (id)stringForValue:(double)a3 unit:(unint64_t)a4;
- (id)stringFromUnit:(id)a3;
- (id)unitStringFromValue:(double)a3 unit:(unint64_t)a4;
- (int)_determineUnitsToFormat:(int *)a3 fromMeasurement:(id)a4;
- (void)checkIfModified;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setLocale:(id)a3;
- (void)setNumberFormatter:(id)a3;
- (void)setUnitOptions:(unint64_t)a3;
- (void)setUnitStyle:(int64_t)a3;
@end

@implementation NSUnitFormatter

- (NSUnitFormatter)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSUnitFormatter;
  result = [(NSUnitFormatter *)&v3 init];
  if (result)
  {
    result->_unitStyle = 2;
    result->_unitOptions = 0;
    result->_modified = 0;
  }

  return result;
}

- (NSNumberFormatter)numberFormatter
{
  numberFormatter = self->_numberFormatter;
  if (!numberFormatter)
  {
    v4 = objc_alloc_init(NSNumberFormatter);
    self->_numberFormatter = v4;
    [(NSNumberFormatter *)v4 setNumberStyle:1];
    [(NSNumberFormatter *)self->_numberFormatter setPropertyBit];
    [(NSNumberFormatter *)self->_numberFormatter setLocale:self->_locale];
    numberFormatter = self->_numberFormatter;
  }

  v5 = numberFormatter;

  return v5;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(NSUnitFormatter *)self setNumberFormatter:0];
  if (self->_formatter)
  {
    uameasfmt_close();
  }

  if (self->_prules)
  {
    uplrules_close();
  }

  locale = self->_locale;
  if (locale)
  {
  }

  v4.receiver = self;
  v4.super_class = NSUnitFormatter;
  [(NSUnitFormatter *)&v4 dealloc];
}

- (void)checkIfModified
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_modified || [(NSNumberFormatter *)[(NSUnitFormatter *)self numberFormatter] checkModify]|| !self->_formatter)
  {
    if (self->_formatter)
    {
      uameasfmt_close();
    }

    v3 = [(NSUnitFormatter *)self numberFormatter];
    if (![(NSNumberFormatter *)v3 getFormatter]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = 0;
      _os_log_impl(&dword_18075C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "*** [nf getFormatter] failed in NSUnitFormatter: %p", buf, 0xCu);
    }

    v4 = unum_clone();
    if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v5 = u_errorName(U_ZERO_ERROR);
      *buf = 136315394;
      v22 = v5;
      v23 = 2048;
      v24 = v4;
      _os_log_impl(&dword_18075C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "*** unum_clone() failed in NSUnitFormatter: %s, icuNF: %p", buf, 0x16u);
    }

    [(NSString *)[(NSLocale *)[(NSNumberFormatter *)v3 locale] localeIdentifier] getCString:buf maxLength:100 encoding:4];
    unitStyle = self->_unitStyle;
    if (unitStyle == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = unitStyle == 2;
    }

    v8 = uameasfmt_open();
    self->_formatter = v8;
    if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v9 = u_errorName(U_ZERO_ERROR);
      formatter = self->_formatter;
      *v11 = 136316162;
      v12 = v9;
      v13 = 2048;
      v14 = formatter;
      v15 = 2080;
      v16 = buf;
      v17 = 1024;
      v18 = v7;
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&dword_18075C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "*** uameasfmt_open() failed in NSUnitFormatter: %s, _formatter: %p, localeID: %s, width: %u, icuNF: %p", v11, 0x30u);
    }

    self->_modified = 0;
    [(NSNumberFormatter *)[(NSUnitFormatter *)self numberFormatter] resetCheckModify];
  }
}

- (void)setNumberFormatter:(id)a3
{
  numberFormatter = self->_numberFormatter;
  if (numberFormatter != a3)
  {
    [(NSNumberFormatter *)numberFormatter clearPropertyBit];

    v6 = [a3 copyWithZone:0];
    self->_numberFormatter = v6;
    [(NSNumberFormatter *)v6 setPropertyBit];
    self->_modified = 1;
  }
}

- (void)setUnitOptions:(unint64_t)a3
{
  if (self->_unitOptions != a3)
  {
    self->_unitOptions = a3;
    self->_modified = 1;
  }
}

- (void)setUnitStyle:(int64_t)a3
{
  if (self->_unitStyle != a3)
  {
    self->_unitStyle = a3;
    self->_modified = 1;
  }
}

- (void)setLocale:(id)a3
{
  v3 = a3;
  if (!a3)
  {
    v3 = [MEMORY[0x1E695DF58] currentLocale];
  }

  if (([(NSLocale *)self->_locale isEqual:v3]& 1) == 0)
  {
    locale = self->_locale;
    self->_locale = v3;

    [(NSUnitFormatter *)self setNumberFormatter:0];
    self->_modified = 1;
  }
}

- (NSLocale)locale
{
  locale = self->_locale;
  if (!locale)
  {
    locale = [MEMORY[0x1E695DF58] currentLocale];
    self->_locale = locale;
  }

  v4 = locale;

  return v4;
}

- (int)_determineUnitsToFormat:(int *)a3 fromMeasurement:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  unitOptions = self->_unitOptions;
  if (!_unitHasSpecifierAndIsDimensional([a4 unit]))
  {
    return 0;
  }

  v8 = [objc_msgSend(a4 "unit")];
  v9 = [MEMORY[0x1E695DF58] _preferredTemperatureUnit];
  if ((v8 - 2560) > 2)
  {
    if (unitOptions)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v10 = self->_unitOptions;
    if (v10 & 4 | unitOptions & 1)
    {
      if ((v10 & 4) != 0)
      {
        v11 = 2563;
LABEL_25:
        *a3 = v11;
        return 1;
      }

LABEL_38:
      *a3 = v8;
      return 1;
    }

    if (v9 == *MEMORY[0x1E695D9F8])
    {
      v11 = 2560;
      goto LABEL_25;
    }

    if (v9 == *MEMORY[0x1E695DA00])
    {
      v11 = 2561;
      goto LABEL_25;
    }
  }

  if (!CFStringGetCString([(NSLocale *)self->_locale localeIdentifier], buffer, 257, 0x600u))
  {
    return 0;
  }

  v12 = [objc_opt_class() icuType];
  if (![v12 length] || (v13 = v19, (objc_msgSend(v12, "getCString:maxLength:encoding:", v19, 100, 4) & 1) == 0))
  {
    v13 = 0;
  }

  if (((v8 - 4609) > 8 || ((1 << (v8 - 1)) & 0x103) == 0) && (v8 & 0xFFFFFFFFFFFFFFFCLL) != 0xD00 && (v8 - 1024) >= 0xA && (v8 - 3072) >= 6 && (v8 - 1280) >= 0x13 && (v8 - 1536) >= 0xB && ((v8 - 2048) >= 0xA || ((0x2DFu >> v8) & 1) == 0) && (v8 & 0xFFFFFFFFFFFFFFFCLL) != 0x900 && (v8 - 2560) >= 3 && ((v8 - 2816) >= 0x19 || ((0x17FFFBFu >> v8) & 1) == 0) || !v13)
  {
    goto LABEL_38;
  }

  UnitsForUsage = uameasfmt_getUnitsForUsage();
  v15 = UnitsForUsage;
  if (UnitsForUsage < 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = u_errorName(U_ZERO_ERROR);
      _os_log_impl(&dword_18075C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "*** uameasfmt_getUnitsForUsage() failed in NSUnitFormatter: %s", buf, 0xCu);
    }

    a3[v15++] = v8;
  }

  else
  {
    memcpy(a3, __src, 4 * UnitsForUsage);
  }

  return v15;
}

- (id)stringForObjectValue:(id)a3
{
  v34[92] = *MEMORY[0x1E69E9840];
  [a3 doubleValue];
  v6 = v5;
  v7 = [a3 unit];
  if (_unitHasSpecifierAndIsDimensional(v7))
  {
    *&v8 = -1;
    *(&v8 + 1) = -1;
    v32[0] = v8;
    v32[1] = v8;
    if ([(NSUnitFormatter *)self _determineUnitsToFormat:v32 fromMeasurement:a3]!= 1)
    {
      v18 = [(NSUnitFormatter *)self numberFormatter];
      [a3 doubleValue];
      return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@", -[NSNumberFormatter stringFromNumber:](v18, "stringFromNumber:", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:")), [objc_msgSend(a3 "unit")]);
    }

    v9 = LODWORD(v32[0]);
    if (LODWORD(v32[0]) != -1)
    {
      if (LODWORD(v32[0]) == 2563)
      {
        v10 = [v7 specifier];
        if ((self->_unitOptions & 1) == 0)
        {
          v11 = v10;
          v12 = [MEMORY[0x1E695DF58] _preferredTemperatureUnit];
          if (v11 == 2561 && v12 == *MEMORY[0x1E695D9F8])
          {
            v13 = 2560;
          }

          else
          {
            if (v11 != 2560 || v12 != *MEMORY[0x1E695DA00])
            {
              return [(NSUnitFormatter *)self stringForValue:2563 unit:v6];
            }

            v13 = 2561;
          }

          [objc_msgSend(a3 measurementByConvertingToUnit:{getDimensionUnitFromUnitSpecifier(v13)), "doubleValue"}];
          v6 = v27;
        }

        return [(NSUnitFormatter *)self stringForValue:2563 unit:v6];
      }

      v21 = [[NSMeasurement alloc] initWithDoubleValue:v7 unit:v6];
      unitOptions = self->_unitOptions;
      DimensionUnitFromUnitSpecifier = getDimensionUnitFromUnitSpecifier(v9);
      v24 = v21;
      if (DimensionUnitFromUnitSpecifier)
      {
        v24 = [(NSMeasurement *)v21 measurementByConvertingToUnit:DimensionUnitFromUnitSpecifier];
      }

      if ((unitOptions & 2) != 0)
      {
        v33[0] = &off_1EEF57410;
        v33[1] = &off_1EEF57440;
        v34[0] = &off_1EEF57428;
        v34[1] = &off_1EEF57428;
        v33[2] = &off_1EEF57458;
        v33[3] = &off_1EEF57470;
        v34[2] = &off_1EEF57428;
        v34[3] = &off_1EEF57488;
        v33[4] = &off_1EEF574A0;
        v33[5] = &off_1EEF574B8;
        v34[4] = &off_1EEF57488;
        v34[5] = &off_1EEF57488;
        v33[6] = &off_1EEF574D0;
        v33[7] = &off_1EEF574E8;
        v34[6] = &off_1EEF57428;
        v34[7] = &off_1EEF57488;
        v33[8] = &off_1EEF57500;
        v33[9] = &off_1EEF57518;
        v34[8] = &off_1EEF57488;
        v34[9] = &off_1EEF57428;
        v33[10] = &off_1EEF57530;
        v33[11] = &off_1EEF57548;
        v34[10] = &off_1EEF57428;
        v34[11] = &off_1EEF57428;
        v33[12] = &off_1EEF57560;
        v33[13] = &off_1EEF57578;
        v34[12] = &off_1EEF57428;
        v34[13] = &off_1EEF57428;
        v33[14] = &off_1EEF57590;
        v33[15] = &off_1EEF575A8;
        v34[14] = &off_1EEF57428;
        v34[15] = &off_1EEF57428;
        v33[16] = &off_1EEF575C0;
        v33[17] = &off_1EEF575D8;
        v34[16] = &off_1EEF57428;
        v34[17] = &off_1EEF57488;
        v33[18] = &off_1EEF575F0;
        v33[19] = &off_1EEF57608;
        v34[18] = &off_1EEF57488;
        v34[19] = &off_1EEF57488;
        v33[20] = &off_1EEF57620;
        v33[21] = &off_1EEF57638;
        v34[20] = &off_1EEF57488;
        v34[21] = &off_1EEF57488;
        v33[22] = &off_1EEF57650;
        v33[23] = &off_1EEF57668;
        v34[22] = &off_1EEF57488;
        v34[23] = &off_1EEF57488;
        v33[24] = &off_1EEF57680;
        v33[25] = &off_1EEF57698;
        v34[24] = &off_1EEF57428;
        v34[25] = &off_1EEF57428;
        v33[26] = &off_1EEF576B0;
        v33[27] = &off_1EEF576C8;
        v34[26] = &off_1EEF57488;
        v34[27] = &off_1EEF57488;
        v33[28] = &off_1EEF576E0;
        v33[29] = &off_1EEF57710;
        v34[28] = &off_1EEF576F8;
        v34[29] = &off_1EEF57428;
        v33[30] = &off_1EEF57728;
        v33[31] = &off_1EEF57740;
        v34[30] = &off_1EEF57428;
        v34[31] = &off_1EEF57428;
        v33[32] = &off_1EEF57758;
        v33[33] = &off_1EEF57770;
        v34[32] = &off_1EEF57488;
        v34[33] = &off_1EEF57428;
        v33[34] = &off_1EEF57788;
        v33[35] = &off_1EEF577A0;
        v34[34] = &off_1EEF576F8;
        v34[35] = &off_1EEF57428;
        v33[36] = &off_1EEF577B8;
        v33[37] = &off_1EEF577D0;
        v34[36] = &off_1EEF57428;
        v34[37] = &off_1EEF57488;
        v33[38] = &off_1EEF577E8;
        v33[39] = &off_1EEF57800;
        v34[38] = &off_1EEF57428;
        v34[39] = &off_1EEF57428;
        v33[40] = &off_1EEF57818;
        v33[41] = &off_1EEF57830;
        v34[40] = &off_1EEF57428;
        v34[41] = &off_1EEF57428;
        v33[42] = &off_1EEF57848;
        v33[43] = &off_1EEF57860;
        v34[42] = &off_1EEF57428;
        v34[43] = &off_1EEF57488;
        v33[44] = &off_1EEF57878;
        v33[45] = &off_1EEF57890;
        v34[44] = &off_1EEF57428;
        v34[45] = &off_1EEF57428;
        v33[46] = &off_1EEF578A8;
        v33[47] = &off_1EEF578C0;
        v34[46] = &off_1EEF57428;
        v34[47] = &off_1EEF57488;
        v33[48] = &off_1EEF578D8;
        v33[49] = &off_1EEF578F0;
        v34[48] = &off_1EEF57428;
        v34[49] = &off_1EEF57428;
        v33[50] = &off_1EEF57908;
        v33[51] = &off_1EEF57920;
        v34[50] = &off_1EEF57488;
        v34[51] = &off_1EEF57428;
        v33[52] = &off_1EEF57938;
        v33[53] = &off_1EEF57950;
        v34[52] = &off_1EEF57428;
        v34[53] = &off_1EEF57428;
        v33[54] = &off_1EEF57968;
        v33[55] = &off_1EEF57980;
        v34[54] = &off_1EEF57428;
        v34[55] = &off_1EEF57428;
        v33[56] = &off_1EEF57998;
        v33[57] = &off_1EEF579B0;
        v34[56] = &off_1EEF57428;
        v34[57] = &off_1EEF57428;
        v33[58] = &off_1EEF579C8;
        v33[59] = &off_1EEF579E0;
        v34[58] = &off_1EEF57428;
        v34[59] = &off_1EEF57428;
        v33[60] = &off_1EEF579F8;
        v33[61] = &off_1EEF57A10;
        v34[60] = &off_1EEF57428;
        v34[61] = &off_1EEF57488;
        v33[62] = &off_1EEF57A28;
        v33[63] = &off_1EEF57A40;
        v34[62] = &off_1EEF57488;
        v34[63] = &off_1EEF57488;
        v33[64] = &off_1EEF57A58;
        v34[64] = &off_1EEF57488;
        v33[65] = &off_1EEF57A70;
        v34[65] = &off_1EEF57488;
        v33[66] = &off_1EEF57A88;
        v34[66] = &off_1EEF57488;
        v33[67] = &off_1EEF57AA0;
        v34[67] = &off_1EEF57488;
        v33[68] = &off_1EEF57AB8;
        v34[68] = &off_1EEF57488;
        v33[69] = &off_1EEF57AD0;
        v34[69] = &off_1EEF57488;
        v33[70] = &off_1EEF57AE8;
        v34[70] = &off_1EEF57488;
        v33[71] = &off_1EEF57B00;
        v34[71] = &off_1EEF57488;
        v33[72] = &off_1EEF57B18;
        v34[72] = &off_1EEF57488;
        v33[73] = &off_1EEF57B30;
        v34[73] = &off_1EEF576F8;
        v33[74] = &off_1EEF57B48;
        v34[74] = &off_1EEF57428;
        v33[75] = &off_1EEF57B60;
        v34[75] = &off_1EEF57428;
        v33[76] = &off_1EEF57B78;
        v34[76] = &off_1EEF57488;
        v33[77] = &off_1EEF57B90;
        v34[77] = &off_1EEF57488;
        v33[78] = &off_1EEF57BA8;
        v34[78] = &off_1EEF57488;
        v33[79] = &off_1EEF57BC0;
        v34[79] = &off_1EEF57428;
        v33[80] = &off_1EEF57BD8;
        v34[80] = &off_1EEF57488;
        v33[81] = &off_1EEF57BF0;
        v34[81] = &off_1EEF576F8;
        v33[82] = &off_1EEF57C08;
        v34[82] = &off_1EEF57428;
        v33[83] = &off_1EEF57C20;
        v34[83] = &off_1EEF57428;
        v33[84] = &off_1EEF57C38;
        v34[84] = &off_1EEF57428;
        v33[85] = &off_1EEF57C50;
        v34[85] = &off_1EEF57428;
        v33[86] = &off_1EEF57C68;
        v34[86] = &off_1EEF57428;
        v33[87] = &off_1EEF57C80;
        v34[87] = &off_1EEF57428;
        v33[88] = &off_1EEF57C98;
        v34[88] = &off_1EEF57428;
        v33[89] = &off_1EEF57CB0;
        v34[89] = &off_1EEF57428;
        v33[90] = &off_1EEF57CC8;
        v34[90] = &off_1EEF57428;
        v33[91] = &off_1EEF57CE0;
        v34[91] = &off_1EEF57428;
        v25 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:{92), "objectForKeyedSubscript:", +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v9)}];
        if (v25)
        {
          v26 = [v25 unsignedIntegerValue];
        }

        else
        {
          v26 = 3;
        }

        [(NSMeasurement *)v24 unit];
        if (objc_opt_isKindOfClass())
        {
          v24 = [objc_opt_class() _measurementWithNaturalScale:v24 system:v26];
        }
      }

      if (_unitHasSpecifierAndIsDimensional([(NSMeasurement *)v24 unit]))
      {
        v28 = [-[NSMeasurement unit](v24 "unit")];
        if (v28 == -1)
        {
          v20 = 0;
          goto LABEL_38;
        }

        v29 = v28;
        [(NSMeasurement *)v24 doubleValue];
        v30 = [(NSUnitFormatter *)self stringForValue:v29 unit:?];
      }

      else
      {
        v31 = [(NSUnitFormatter *)self numberFormatter];
        [(NSMeasurement *)v24 doubleValue];
        v30 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@", -[NSNumberFormatter stringFromNumber:](v31, "stringFromNumber:", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:")), [-[NSMeasurement unit](v24 "unit")]);
      }

      v20 = v30;
LABEL_38:

      return v20;
    }

    return 0;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if (([(NSUnitFormatter *)self unitOptions]& 1) != 0 || (isKindOfClass & 1) == 0)
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@", -[NSNumberFormatter stringFromNumber:](-[NSUnitFormatter numberFormatter](self, "numberFormatter"), "stringFromNumber:", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v6)), [v7 symbol]);
  }

  v15 = [objc_opt_class() baseUnit];
  if (!_unitHasSpecifierAndIsDimensional(v15))
  {
    return 0;
  }

  v16 = [a3 measurementByConvertingToUnit:v15];

  return [(NSUnitFormatter *)self stringForObjectValue:v16];
}

- (id)stringForValue:(double)a3 unit:(unint64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  [(NSUnitFormatter *)self checkIfModified];
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  if (!self->_formatter && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18075C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "*** [NSUnitFormatter stringForValue:unit:] _formatter is nil", buf, 2u);
  }

  v7 = uameasfmt_format();
  v8 = v7;
  if (v7 >= 1)
  {
    if (v7 < 0x65)
    {
      return [NSString stringWithCharacters:v25 length:v7];
    }

    v14 = malloc_type_malloc(2 * v7, 0x2675F537uLL);
    if (v14)
    {
      v15 = v14;
      uameasfmt_format();
      v13 = [NSString stringWithCharacters:v15 length:v8];
      free(v15);
      return v13;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = 2 * v8;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "*** malloc returned NULL in NSUnitFormatter! Tried to allocate %zu bytes";
      v12 = 12;
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v9 = u_errorName(U_ZERO_ERROR);
    *buf = 136315906;
    v18 = v9;
    v19 = 1024;
    v20 = v8;
    v21 = 2048;
    v22 = a3;
    v23 = 2048;
    v24 = a4;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "*** uameasfmt_format() failed in NSUnitFormatter: %s, len = %d, value = %f, unit = %lu";
    v12 = 38;
LABEL_7:
    _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, v12);
  }

  return 0;
}

- (id)stringForValue1:(double)a3 unit1:(unint64_t)a4 value2:(double)a5 unit2:(unint64_t)a6
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSUnitFormatter *)self checkIfModified];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v6 = uameasfmt_formatMultiple();
  v7 = v6;
  if (v6 >= 1)
  {
    if (v6 < 0x65)
    {
      return [NSString stringWithCharacters:v19 length:v6];
    }

    v12 = malloc_type_malloc(2 * v6, 0xCB2AED6EuLL);
    if (v12)
    {
      v13 = v12;
      uameasfmt_formatMultiple();
      v11 = [NSString stringWithCharacters:v13 length:v7];
      free(v13);
      return v11;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = (2 * v7);
      v8 = MEMORY[0x1E69E9C10];
      v9 = "*** malloc returned NULL in NSUnitFormatter! Tried to allocate %zu bytes";
      v10 = 12;
      goto LABEL_4;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = u_errorName(U_ZERO_ERROR);
    v17 = 1024;
    v18 = v7;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "*** uameasfmt_formatMultiple() failed in NSUnitFormatter: %s, len = %d";
    v10 = 18;
LABEL_4:
    _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
  }

  return 0;
}

- (id)unitStringFromValue:(double)a3 unit:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EA7C44C0 != -1)
  {
    dispatch_once(&qword_1EA7C44C0, &__block_literal_global_72);
  }

  v6 = [(NSUnitFormatter *)self numberFormatter];
  v7 = [(NSLocale *)self->_locale localeIdentifier];
  if (self->_prules)
  {
    v8 = v7;
    if (![(NSNumberFormatter *)v6 checkLocaleChange]&& [(NSString *)v8 isEqualToString:[(NSLocale *)[(NSNumberFormatter *)v6 locale] localeIdentifier]])
    {
      goto LABEL_9;
    }

    if (self->_prules)
    {
      uplrules_close();
    }
  }

  [(NSString *)[(NSLocale *)[(NSNumberFormatter *)[(NSUnitFormatter *)self numberFormatter] locale] localeIdentifier] getCString:v22 maxLength:100 encoding:4];
  self->_prules = uplrules_open();
  [(NSNumberFormatter *)[(NSUnitFormatter *)self numberFormatter] resetCheckLocaleChange];
LABEL_9:
  v9 = [_MergedGlobals_8 objectForKey:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", a4)}];
  v10 = self->_unitStyle - 1;
  if (v10 > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E69F76F0[v10];
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v12 = uplrules_select();
  if (v12 < 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v16 = u_errorName(U_ZERO_ERROR);
      *buf = 136315394;
      v19 = v16;
      v20 = 1024;
      v21 = v12;
      _os_log_impl(&dword_18075C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "*** uplrules_select() failed in NSUnitFormatter: %s, len = %d", buf, 0x12u);
    }

    return 0;
  }

  else
  {
    v13 = [+[NSString stringWithCharacters:length:](NSString uppercaseString:v22];
    v14 = [(NSNumberFormatter *)[(NSUnitFormatter *)self numberFormatter] formattingContext];
    if (v14 > NSFormattingContextMiddleOfSentence)
    {
      v15 = 0;
    }

    else
    {
      v15 = off_1E69F7708[v14];
    }

    return [_NSFoundationBundle() localizedStringForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" table:{@"%@_%@_%@_%@", v9, v11, v13, v15), &stru_1EEEFDF90, @"UnitFormatting"}];
  }
}

- (id)stringFromUnit:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (_unitHasSpecifierAndIsDimensional(a3))
  {
    [(NSUnitFormatter *)self checkIfModified];
    [a3 specifier];
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    UnitName = uameasfmt_getUnitName();
    v6 = UnitName;
    if (UnitName >= 1)
    {
      if (UnitName < 0x65)
      {
        return [NSString stringWithCharacters:v19 length:UnitName];
      }

      v12 = malloc_type_malloc((2 * UnitName), 0x8B390965uLL);
      if (v12)
      {
        v13 = v12;
        v14 = uameasfmt_getUnitName();
        if (v14 >= 1)
        {
          v10 = [NSString stringWithCharacters:v13 length:v14];
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            HIDWORD(size) = 136315394;
            v16 = u_errorName(U_ZERO_ERROR);
            v17 = 1024;
            v18 = v14;
            _os_log_impl(&dword_18075C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "*** uameasfmt_getUnitName() failed in NSUnitFormatter: %s, len = %d", &size + 4, 0x12u);
          }

          v10 = 0;
        }

        free(v13);
        return v10;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        HIDWORD(size) = 134217984;
        v16 = (2 * v6);
        v7 = MEMORY[0x1E69E9C10];
        v8 = "*** malloc returned NULL in NSUnitFormatter! Tried to allocate %zu bytes";
        v9 = 12;
        goto LABEL_5;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      HIDWORD(size) = 136315394;
      v16 = u_errorName(U_ZERO_ERROR);
      v17 = 1024;
      v18 = v6;
      v7 = MEMORY[0x1E69E9C10];
      v8 = "*** uameasfmt_getUnitName() failed in NSUnitFormatter: %s, len = %d";
      v9 = 18;
LABEL_5:
      _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEFAULT, v8, &size + 4, v9);
    }

    return 0;
  }

  return [a3 symbol];
}

- (NSUnitFormatter)initWithCoder:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSUnitFormatter cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [a3 decodeIntegerForKey:@"NS.unitOptions"];
  if ([a3 containsValueForKey:@"NS.unitStyle"])
  {
    v6 = [a3 decodeIntegerForKey:@"NS.unitStyle"];
  }

  else
  {
    v6 = 2;
  }

  if ([a3 containsValueForKey:@"NS.locale"])
  {
    v7 = [a3 decodeObjectOfClass:MEMORY[0x1E695DF58] forKey:@"NS.locale"];
    if (!v7)
    {

      v18 = @"NSLocalizedDescription";
      v19[0] = @"Locale has been corrupted!";
      v8 = MEMORY[0x1E695DF20];
      v9 = v19;
      v10 = &v18;
LABEL_18:
      [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(v8, "dictionaryWithObjects:forKeys:count:", v9, v10, 1))}];
      return 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if ([a3 containsValueForKey:@"NS.numberFormatter"])
  {
    v11 = [a3 decodeObjectOfClass:NSNumberFormatter forKey:@"NS.numberFormatter"];
    if (!v11)
    {

      v16 = @"NSLocalizedDescription";
      v17 = @"Number formatter has been corrupted!";
      v8 = MEMORY[0x1E695DF20];
      v9 = &v17;
      v10 = &v16;
      goto LABEL_18;
    }

    v12 = v11;
    [v11 setPropertyBit];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSUnitFormatter *)self init];
  v14 = v13;
  if (v13)
  {
    if (v6 != 2)
    {
      v13->_unitStyle = v6;
    }

    v13->_unitOptions = v5;
    v13->_locale = [v7 copy];
    v14->_numberFormatter = [v12 copy];
    v14->_modified = 1;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSUnitFormatter cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  [a3 encodeInteger:self->_unitOptions forKey:@"NS.unitOptions"];
  unitStyle = self->_unitStyle;
  if (unitStyle != 2)
  {
    [a3 encodeInteger:unitStyle forKey:@"NS.unitStyle"];
  }

  locale = self->_locale;
  if (locale)
  {
    [a3 encodeObject:locale forKey:@"NS.locale"];
  }

  if (self->_numberFormatter)
  {

    [a3 encodeObject:? forKey:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setUnitStyle:self->_unitStyle];
  [v4 setNumberFormatter:self->_numberFormatter];
  [v4 setLocale:self->_locale];
  return v4;
}

@end