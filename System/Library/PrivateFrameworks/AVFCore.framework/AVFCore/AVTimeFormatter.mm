@interface AVTimeFormatter
- (AVTimeFormatter)init;
- (AVTimeFormatter)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringForObjectValue:(id)a3;
- (id)stringFromTimeInterval:(double)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setCachedDateFormatterFormat:(id)a3;
- (void)setCachedDateFormatterTemplate:(id)a3;
- (void)setLocale:(id)a3;
- (void)setNumberFormatterWithOneMinimumIntegerDigits:(id)a3;
- (void)setNumberFormatterWithTwoMinimumIntegerDigits:(id)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation AVTimeFormatter

- (AVTimeFormatter)init
{
  v5.receiver = self;
  v5.super_class = AVTimeFormatter;
  v2 = [(AVTimeFormatter *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVTimeFormatterInternal);
    v2->_internal = v3;
    if (v3)
    {
      CFRetain(v3);
      v2->_internal->style = 0;
      v2->_internal->isFullWidth = 0;
      v2->_internal->formatTemplate = 0.0;
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (AVTimeFormatter)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVTimeFormatter;
  v4 = [(AVTimeFormatter *)&v7 initWithCoder:?];
  if (v4)
  {
    v4->_internal->style = [a3 decodeIntegerForKey:@"MediaUIStyle"];
    v4->_internal->isFullWidth = [a3 decodeBoolForKey:@"MediaUIFullWidth"];
    [a3 decodeDoubleForKey:@"MediaUIFormatTemplate"];
    v4->_internal->formatTemplate = v5;
  }

  return v4;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {

    CFRelease(self->_internal);
  }

  v4.receiver = self;
  v4.super_class = AVTimeFormatter;
  [(AVTimeFormatter *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVTimeFormatter;
  [(AVTimeFormatter *)&v5 encodeWithCoder:?];
  [a3 encodeInteger:self->_internal->style forKey:@"MediaUIStyle"];
  [a3 encodeBool:self->_internal->isFullWidth forKey:@"MediaUIFullWidth"];
  [a3 encodeDouble:@"MediaUIFormatTemplate" forKey:self->_internal->formatTemplate];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AVTimeFormatter);
  [(AVTimeFormatter *)v4 setStyle:self->_internal->style];
  [(AVTimeFormatter *)v4 setFullWidth:self->_internal->isFullWidth];
  [(AVTimeFormatter *)v4 setFormatTemplate:self->_internal->formatTemplate];
  return v4;
}

- (id)stringFromTimeInterval:(double)a3
{
  v61 = *&a3;
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  if (([(NSLocale *)self->_internal->locale isEqual:v5]& 1) == 0)
  {
    [(AVTimeFormatter *)self setLocale:v5];
    [(AVTimeFormatter *)self setCachedDateFormatterFormat:0];
    [(AVTimeFormatter *)self setCachedDateFormatterTemplate:0];
    [(AVTimeFormatter *)self setNumberFormatterWithOneMinimumIntegerDigits:objc_alloc_init(MEMORY[0x1E696ADA0])];
    [(NSNumberFormatter *)self->_internal->numberFormatterWithOneMinimumIntegerDigits setLocale:self->_internal->locale];
    [(NSNumberFormatter *)self->_internal->numberFormatterWithOneMinimumIntegerDigits setMinimumIntegerDigits:1];
    [(NSNumberFormatter *)self->_internal->numberFormatterWithOneMinimumIntegerDigits setNumberStyle:0];
    [(AVTimeFormatter *)self setNumberFormatterWithTwoMinimumIntegerDigits:objc_alloc_init(MEMORY[0x1E696ADA0])];
    [(NSNumberFormatter *)self->_internal->numberFormatterWithTwoMinimumIntegerDigits setLocale:self->_internal->locale];
    [(NSNumberFormatter *)self->_internal->numberFormatterWithTwoMinimumIntegerDigits setMinimumIntegerDigits:2];
    [(NSNumberFormatter *)self->_internal->numberFormatterWithTwoMinimumIntegerDigits setNumberStyle:0];
    self->_internal->isRightToLeft = 0;
    [v5 localeIdentifier];
    v6 = _CFLocaleCopyNumberingSystemForLocaleIdentifier();
    if (v6)
    {
      v7 = v6;
      self->_internal->isRightToLeft = [v6 isEqualToString:@"arab"];
      CFRelease(v7);
    }
  }

  [(AVTimeFormatter *)self formatTemplate];
  v60 = v8;
  v9 = [(AVTimeFormatter *)self style];
  if (v9 <= 1)
  {
    v16 = v61;
    if (v9 <= 1)
    {
      *v15.i64 = ceil(fabs(*v61.i64) + -0.5);
LABEL_11:
      v18.f64[0] = NAN;
      v18.f64[1] = NAN;
      v16.i64[0] = vbslq_s8(vnegq_f64(v18), v15, v16).u64[0];
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v16 = v61;
  if (v9 == 2)
  {
    *v15.i64 = floor(fabs(*v61.i64) + 0.5);
    goto LABEL_11;
  }

  if (v9 != 3)
  {
LABEL_9:
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"-[AVTimeFormatter stringFromTimeInterval:]: unsupported style", v10, v11, v12, v13, v14, v59), 0}];
    objc_exception_throw(v17);
  }

LABEL_12:
  v19 = ceil(fabs(v60) + -0.5);
  v62 = *v16.i64;
  v20 = fabs(*v16.i64);
  if (v20 <= 4294967300.0 && (v21 = v20, v20 >> 5 <= 0x464))
  {
    if (v21 <= 0xE0F)
    {
      if (v21 <= 0x257)
      {
        v57 = 3;
        if (v21 <= 9)
        {
          v57 = 1;
        }

        if (v21 <= 0x3B)
        {
          v22 = v57;
        }

        else
        {
          v22 = 7;
        }
      }

      else
      {
        v22 = 15;
      }
    }

    else
    {
      v22 = 31;
    }
  }

  else
  {
    v22 = 63;
  }

  v23 = fabs(v19);
  if (v23 <= 4294967300.0 && (v24 = v23, v23 >> 5 <= 0x464))
  {
    if (v24 <= 0xE0F)
    {
      if (v24 <= 0x257)
      {
        if (v24 <= 0x3B)
        {
          v58 = v24 > 9;
          v25 = 3;
          if (!v58)
          {
            v25 = 1;
          }
        }

        else
        {
          v25 = 7;
        }
      }

      else
      {
        v25 = 15;
      }
    }

    else
    {
      v25 = 31;
    }
  }

  else
  {
    v25 = 63;
  }

  v26 = v25 | v22;
  v27 = [(AVTimeFormatter *)self style];
  v28 = 7;
  if (v27 == 3)
  {
    v28 = 71;
  }

  v29 = v28 | v26;
  v30 = [(AVTimeFormatter *)self isFullWidth];
  v31 = 2 * v29;
  if (!v30)
  {
    v31 = 0;
  }

  v32 = v31 | v29;
  v33 = &stru_1F0A8E470;
  if ((v26 & 0x10) != 0)
  {
    v34 = @"H";
    if ((v32 & 0x20) == 0)
    {
      v34 = &stru_1F0A8E470;
    }

    v33 = [&stru_1F0A8E470 stringByAppendingFormat:@"%@H", v34];
  }

  v35 = @"m";
  if ((v32 & 8) == 0)
  {
    v35 = &stru_1F0A8E470;
  }

  v36 = [-[__CFString stringByAppendingFormat:](v33 stringByAppendingFormat:@"%@m", v35), "stringByAppendingFormat:", @"%@s", @"s"];
  v37 = v36;
  if (v27 == 3)
  {
    v37 = [v36 stringByAppendingString:@"SS"];
  }

  if (([(NSString *)self->_internal->cachedDateFormatterTemplate isEqual:v37]& 1) == 0)
  {
    -[AVTimeFormatter setCachedDateFormatterFormat:](self, "setCachedDateFormatterFormat:", [MEMORY[0x1E696AB78] dateFormatFromTemplate:v37 options:0 locale:self->_internal->locale]);
    [(AVTimeFormatter *)self setCachedDateFormatterTemplate:v37];
  }

  cachedDateFormatterFormat = self->_internal->cachedDateFormatterFormat;
  v39 = v62;
  if ((v62 >= 0.0 || (v40 = [(AVTimeFormatter *)self style], v39 = v62, v40 == 2)) && (v39 < 0.0 || (v41 = [(AVTimeFormatter *)self style], v39 = v62, v41 != 2)))
  {
    if (v39 >= 0.0 || [(AVTimeFormatter *)self style]!= 2)
    {
      goto LABEL_44;
    }

    v42 = @"%@+%@";
  }

  else
  {
    v42 = @"%@−%@";
  }

  if (self->_internal->isRightToLeft)
  {
    v43 = @"\u200F";
  }

  else
  {
    v43 = @"\u200E";
  }

  cachedDateFormatterFormat = [MEMORY[0x1E696AEC0] stringWithFormat:v42, v39, v43, cachedDateFormatterFormat];
LABEL_44:
  v44 = [[[(NSString *)cachedDateFormatterFormat stringByReplacingOccurrencesOfString:@"a" withString:&stru_1F0A8E470] stringByReplacingOccurrencesOfString:@"b" withString:&stru_1F0A8E470] stringByReplacingOccurrencesOfString:@"B" withString:&stru_1F0A8E470];
  v45 = -[NSString stringByTrimmingCharactersInSet:](v44, "stringByTrimmingCharactersInSet:", [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet]);
  v46 = v45;
  if (v20 <= 4294967300.0)
  {
    if ((v26 & 0x10) != 0)
    {
      v50 = 72;
      if ((v32 & 0x20) == 0)
      {
        v50 = 64;
      }

      v51 = [*(&self->_internal->super.isa + v50) stringFromNumber:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:")}];
      if (v51)
      {
        v46 = [[[[[[[[(NSString *)v46 stringByReplacingOccurrencesOfString:@"j" withString:@"H"] stringByReplacingOccurrencesOfString:@"J" withString:@"H"] stringByReplacingOccurrencesOfString:@"C" withString:@"H"] stringByReplacingOccurrencesOfString:@"k" withString:@"H"] stringByReplacingOccurrencesOfString:@"K" withString:@"H"] stringByReplacingOccurrencesOfString:@"h" withString:@"H"] stringByReplacingOccurrencesOfString:@"HH" withString:v51] stringByReplacingOccurrencesOfString:@"H" withString:v51];
      }
    }

    v52 = [*(&self->_internal->numberFormatterWithOneMinimumIntegerDigits + (v32 & 8)) stringFromNumber:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v20 % 0xE10 / 0x3C)}];
    if (v52)
    {
      v46 = [[(NSString *)v46 stringByReplacingOccurrencesOfString:@"mm" withString:v52] stringByReplacingOccurrencesOfString:@"m" withString:v52];
    }

    v53 = -[NSNumberFormatter stringFromNumber:](self->_internal->numberFormatterWithTwoMinimumIntegerDigits, "stringFromNumber:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20 % 0x3C]);
    if (v53)
    {
      v46 = [[(NSString *)v46 stringByReplacingOccurrencesOfString:@"ss" withString:v53] stringByReplacingOccurrencesOfString:@"s" withString:v53];
    }

    if (v27 != 3)
    {
      return v46;
    }

    LODWORD(v54) = vcvtmd_u64_f64((v20 - floor(v20)) * 100.0);
    v55 = -[NSNumberFormatter stringFromNumber:](self->_internal->numberFormatterWithTwoMinimumIntegerDigits, "stringFromNumber:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v54]);
    if (!v55)
    {
      return v46;
    }

    v49 = v55;
    v48 = @"SS";
    v47 = v46;
  }

  else
  {
    v47 = [[[[[[[[[(NSString *)v45 stringByReplacingOccurrencesOfString:@"j" withString:@"−"] stringByReplacingOccurrencesOfString:@"J" withString:@"−"] stringByReplacingOccurrencesOfString:@"C" withString:@"−"] stringByReplacingOccurrencesOfString:@"k" withString:@"−"] stringByReplacingOccurrencesOfString:@"K" withString:@"−"] stringByReplacingOccurrencesOfString:@"h" withString:@"−"] stringByReplacingOccurrencesOfString:@"H" withString:@"−"] stringByReplacingOccurrencesOfString:@"m" withString:@"−"] stringByReplacingOccurrencesOfString:@"s" withString:@"−"];
    v48 = @"S";
    v49 = @"−";
  }

  return [(NSString *)v47 stringByReplacingOccurrencesOfString:v48 withString:v49];
}

- (id)stringForObjectValue:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [a3 doubleValue];
  }

  else
  {
    v5 = NAN;
  }

  return [(AVTimeFormatter *)self stringFromTimeInterval:v5];
}

- (void)setStyle:(int64_t)a3
{
  if (a3 > 3)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"-[AVTimeFormatter setStyle:]: unsupported style", v3, v4, v5, v6, v7, v8), 0}];
    objc_exception_throw(v9);
  }

  self->_internal->style = a3;
}

- (void)setLocale:(id)a3
{
  locale = self->_internal->locale;
  if (locale != a3)
  {

    self->_internal->locale = [a3 copy];
  }
}

- (void)setCachedDateFormatterFormat:(id)a3
{
  cachedDateFormatterFormat = self->_internal->cachedDateFormatterFormat;
  if (cachedDateFormatterFormat != a3)
  {

    self->_internal->cachedDateFormatterFormat = [a3 copy];
  }
}

- (void)setCachedDateFormatterTemplate:(id)a3
{
  cachedDateFormatterTemplate = self->_internal->cachedDateFormatterTemplate;
  if (cachedDateFormatterTemplate != a3)
  {

    self->_internal->cachedDateFormatterTemplate = [a3 copy];
  }
}

- (void)setNumberFormatterWithOneMinimumIntegerDigits:(id)a3
{
  numberFormatterWithOneMinimumIntegerDigits = self->_internal->numberFormatterWithOneMinimumIntegerDigits;
  if (numberFormatterWithOneMinimumIntegerDigits != a3)
  {

    self->_internal->numberFormatterWithOneMinimumIntegerDigits = [a3 copy];
  }
}

- (void)setNumberFormatterWithTwoMinimumIntegerDigits:(id)a3
{
  numberFormatterWithTwoMinimumIntegerDigits = self->_internal->numberFormatterWithTwoMinimumIntegerDigits;
  if (numberFormatterWithTwoMinimumIntegerDigits != a3)
  {

    self->_internal->numberFormatterWithTwoMinimumIntegerDigits = [a3 copy];
  }
}

@end