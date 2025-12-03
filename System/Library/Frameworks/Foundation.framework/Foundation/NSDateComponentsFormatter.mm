@interface NSDateComponentsFormatter
+ (NSString)localizedStringFromDateComponents:(NSDateComponents *)components unitsStyle:(NSDateComponentsFormatterUnitsStyle)unitsStyle;
- (BOOL)_mayDecorateAttributedStringForObjectValue:(id)value;
- (BOOL)_updateFormatterCacheIfNeeded_locked:(id)needed_locked unitsStyle:(int64_t)style;
- (BOOL)allowsFractionalUnits;
- (BOOL)collapsesLargestUnit;
- (BOOL)getObjectValue:(id *)obj forString:(NSString *)string errorDescription:(NSString *)error;
- (BOOL)includesApproximationPhrase;
- (BOOL)includesTimeRemainingPhrase;
- (NSCalendar)calendar;
- (NSCalendarUnit)allowedUnits;
- (NSDate)referenceDate;
- (NSDateComponentsFormatter)init;
- (NSDateComponentsFormatter)initWithCoder:(id)coder;
- (NSDateComponentsFormatterUnitsStyle)unitsStyle;
- (NSDateComponentsFormatterZeroFormattingBehavior)zeroFormattingBehavior;
- (NSFormattingContext)formattingContext;
- (NSInteger)maximumUnitCount;
- (NSString)stringFromDate:(NSDate *)startDate toDate:(NSDate *)endDate;
- (NSString)stringFromDateComponents:(NSDateComponents *)components;
- (NSString)stringFromTimeInterval:(NSTimeInterval)ti;
- (id)_calendarFromDateComponents:(id)components;
- (id)_calendarOrCanonicalCalendar;
- (id)_canonicalizedDateComponents:(id)components withCalendar:(id)calendar usedUnits:(unint64_t *)units withReferenceDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringForObjectValue:(id)value withReferenceDate:(id)date;
- (void)_ensureUnitFormatterWithLocale:(id)locale;
- (void)_ensureUnitFormatterWithLocale_alreadyLocked:(id)locked;
- (void)_flushFormatterCache_locked;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)finalize;
- (void)receiveObservedValue:(id)value;
- (void)setAllowedUnits:(NSCalendarUnit)allowedUnits;
- (void)setAllowsFractionalUnits:(BOOL)allowsFractionalUnits;
- (void)setCalendar:(NSCalendar *)calendar;
- (void)setCollapsesLargestUnit:(BOOL)collapsesLargestUnit;
- (void)setFormattingContext:(NSFormattingContext)formattingContext;
- (void)setIncludesApproximationPhrase:(BOOL)includesApproximationPhrase;
- (void)setIncludesTimeRemainingPhrase:(BOOL)includesTimeRemainingPhrase;
- (void)setMaximumUnitCount:(NSInteger)maximumUnitCount;
- (void)setReferenceDate:(NSDate *)referenceDate;
- (void)setUnitsStyle:(NSDateComponentsFormatterUnitsStyle)unitsStyle;
- (void)setZeroFormattingBehavior:(NSDateComponentsFormatterZeroFormattingBehavior)zeroFormattingBehavior;
@end

@implementation NSDateComponentsFormatter

- (id)_calendarOrCanonicalCalendar
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_calendar;
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    if (qword_1ED43F168 != -1)
    {
      dispatch_once(&qword_1ED43F168, &__block_literal_global_32);
    }

    v3 = _MergedGlobals_5_0;
  }

  return v3;
}

- (NSDateComponentsFormatter)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSDateComponentsFormatter;
  v2 = [(NSDateComponentsFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NSDateComponentsFormatter *)v2 _NSDateComponentsFormatter_commonInit];
    v3->_zeroFormattingBehavior = 1;
  }

  return v3;
}

- (void)_flushFormatterCache_locked
{
  if (self->_fmt)
  {
    uatmufmt_close();
    self->_fmt = 0;
  }

  self->_fmtLocaleIdent = 0;
  self->_unitFormatter = 0;
}

- (NSCalendarUnit)allowedUnits
{
  os_unfair_lock_lock(&self->_lock);
  allowedUnits = self->_allowedUnits;
  os_unfair_lock_unlock(&self->_lock);
  return allowedUnits;
}

- (NSDateComponentsFormatterZeroFormattingBehavior)zeroFormattingBehavior
{
  os_unfair_lock_lock(&self->_lock);
  zeroFormattingBehavior = self->_zeroFormattingBehavior;
  os_unfair_lock_unlock(&self->_lock);
  return zeroFormattingBehavior;
}

- (NSDateComponentsFormatterUnitsStyle)unitsStyle
{
  os_unfair_lock_lock(&self->_lock);
  unitsStyle = self->_unitsStyle;
  os_unfair_lock_unlock(&self->_lock);
  return unitsStyle;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  os_unfair_lock_lock(&self->_lock);
  [(NSDateComponentsFormatter *)self _flushFormatterCache_locked];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = NSDateComponentsFormatter;
  [(NSDateComponentsFormatter *)&v3 dealloc];
}

- (void)finalize
{
  v4 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  [(NSDateComponentsFormatter *)self _flushFormatterCache_locked];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = NSDateComponentsFormatter;
  [(NSDateComponentsFormatter *)&v3 finalize];
}

- (BOOL)_updateFormatterCacheIfNeeded_locked:(id)needed_locked unitsStyle:(int64_t)style
{
  if (self->_fmt && [(NSString *)self->_fmtLocaleIdent isEqualToString:needed_locked])
  {
    return 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  [needed_locked UTF8String];
  if (style == 4)
  {
    unum_open();
    os_unfair_lock_lock(&self->_lock);
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
  }

  [(NSDateComponentsFormatter *)self _flushFormatterCache_locked];
  icuStyleFromNSStyle(style);
  self->_fmt = uatmufmt_openWithNumberFormat();
  self->_fmtLocaleIdent = [needed_locked copy];
  return 1;
}

- (id)_canonicalizedDateComponents:(id)components withCalendar:(id)calendar usedUnits:(unint64_t *)units withReferenceDate:(id)date
{
  calendarCopy2 = calendar;
  v80 = *MEMORY[0x1E69E9840];
  allowedUnits = self->_allowedUnits;
  if (!allowedUnits)
  {
    v13 = 4 * ([components year] != 0x7FFFFFFFFFFFFFFFLL);
    v14 = v13 | (8 * ([components month] != 0x7FFFFFFFFFFFFFFFLL));
    v15 = v14 | (([components weekOfMonth] != 0x7FFFFFFFFFFFFFFFLL) << 12);
    v16 = v15 | (16 * ([components day] != 0x7FFFFFFFFFFFFFFFLL));
    v17 = v16 | (32 * ([components hour] != 0x7FFFFFFFFFFFFFFFLL));
    v18 = v17 | (([components minute] != 0x7FFFFFFFFFFFFFFFLL) << 6);
    allowedUnits = v18 | (([components second] != 0x7FFFFFFFFFFFFFFFLL) << 7);
    calendarCopy2 = calendar;
  }

  unitsStyle = self->_unitsStyle;
  if (!unitsStyle)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      if ((*(&unk_1813F7B70 + unitsStyle) & ~allowedUnits) != 0)
      {
        v21 |= v20;
      }

      else
      {
        if (v20 & v21)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Specifying positional units with gaps is ambiguous userInfo:{and therefore unsupported", 0}]);
        }

        v20 = 1;
      }

      unitsStyle += 8;
    }

    while (unitsStyle != 56);
  }

  if (!date)
  {
    date = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  }

  v22 = [calendarCopy2 dateByAddingComponents:components toDate:date options:0];
  v23 = [calendarCopy2 components:allowedUnits fromDate:date toDate:v22 options:0];
  v24 = v23;
  if (self->_collapsesLargestUnit || self->_maximumUnitCount >= 1)
  {
    v79 = 0;
    memset(v78, 0, sizeof(v78));
    v77 = 0;
    memset(v76, 0, sizeof(v76));
    v74[0] = 0;
    v74[1] = v74;
    v74[2] = 0x2020000000;
    v75 = 0;
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __99__NSDateComponentsFormatter__canonicalizedDateComponents_withCalendar_usedUnits_withReferenceDate___block_invoke;
    v73[3] = &unk_1E69F5290;
    v73[4] = v23;
    v73[5] = v74;
    v73[6] = v76;
    v73[7] = v78;
    forEachUnit(allowedUnits, v73);
    selfCopy = self;
    if (self->_collapsesLargestUnit)
    {
      v25 = 0;
      v26 = v76 + 1;
      v27 = v78 + 1;
      v28 = -1;
      v29 = -6;
      do
      {
        if (!*(v27 - 1))
        {
          goto LABEL_28;
        }

        v30 = *(v26 - 1);
        if (!v30)
        {
          goto LABEL_28;
        }

        if (v30 == 1 && v28 == -1)
        {
          v32 = [calendarCopy2 rangeOfUnit:*v27 inUnit:? forDate:?];
          v34 = v33 * 0.1;
          if (v34 <= (*v26 - v32) && v34 <= (v32 + v33 - *v26))
          {
LABEL_27:
            v28 = v29 + 6;
            goto LABEL_28;
          }

          allowedUnits &= ~*(v27 - 1);
          v24 = [calendarCopy2 components:allowedUnits fromDate:date toDate:v22 options:0];
          *(v26 - 1) = 0;
          v35 = [v24 valueForComponent:*v27];
          v28 = v25 + 1;
          *v26 = v35;
        }

        else if (v28 == -1)
        {
          goto LABEL_27;
        }

LABEL_28:
        ++v25;
        ++v26;
        ++v27;
        v53 = __CFADD__(v29++, 1);
      }

      while (!v53);
    }

    maximumUnitCount = selfCopy->_maximumUnitCount;
    unitsCopy = units;
    if (maximumUnitCount >= 1)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      while (1)
      {
        if (!*(v78 + v37) || !*(v76 + v37))
        {
          v40 = v39;
          goto LABEL_37;
        }

        v40 = v39 + 1;
        if (v39 == maximumUnitCount)
        {
          break;
        }

        v38 = v37;
LABEL_37:
        ++v37;
        v39 = v40;
        if (v37 == 7)
        {
          goto LABEL_40;
        }
      }

      v38 = v37;
LABEL_40:
      if (v40 > maximumUnitCount)
      {
        v71 = calendarCopy2;
        v41 = v38 - 1;
        if (v38 >= 1)
        {
          v42 = v38;
          if (v38 <= 5)
          {
            bzero(v76 + 8 * v38 + 8, 48 - 8 * v38);
            v43 = v78 + v42 + 1;
            do
            {
              v44 = *v43++;
              allowedUnits &= ~v44;
              ++v41;
            }

            while (v41 < 5);
          }

          v45 = 0;
          v46 = v78 + v42;
          while (1)
          {
            if (v45)
            {
              v47 = *(v76 + v42);
              v48 = v45 + v47;
              if (v42)
              {
                v49 = [v71 rangeOfUnit:*v46 inUnit:*(v46 - 1) forDate:v22];
                v51 = v49 + v50 - 1;
                if (v47 < 1)
                {
                  v52 = -1;
                }

                else
                {
                  v52 = 1;
                }

                v53 = v51 >= v48;
                if (v51 >= v48)
                {
                  v54 = 0;
                }

                else
                {
                  v54 = v49 + v50;
                }

                if (v53)
                {
                  v45 = 0;
                }

                else
                {
                  v45 = v52;
                }

                v55 = v48 - v54;
              }

              else
              {
                v45 = 0;
                v55 = v48;
              }

              *(v76 + v42) = v55;
              v56 = v40 - (v55 == 0);
              if (v55)
              {
                v57 = v40 + 1;
              }

              else
              {
                v57 = v40;
              }

              if (v47)
              {
                LODWORD(v40) = v56;
              }

              else
              {
                LODWORD(v40) = v57;
              }
            }

            v58 = selfCopy->_maximumUnitCount;
            if (v58 >= v40 && v45 == 0)
            {
              goto LABEL_89;
            }

            v60 = *(v76 + v42);
            if (v42)
            {
              if (v58 < v40)
              {
                break;
              }
            }

            if (!v60)
            {
              goto LABEL_86;
            }

LABEL_87:
            --v46;
            if (v42-- <= 0)
            {
              goto LABEL_89;
            }
          }

          if (*v46 == 16 && *(v46 - 1) == 4096)
          {
            v61 = *(v76 + v42);
            v62 = 7;
          }

          else
          {
            v63 = [v71 rangeOfUnit:? inUnit:? forDate:?];
            v62 = v63 + v64;
            v61 = *(v76 + v42);
          }

          v65 = 2 * v61;
          if ((v61 & 0x4000000000000000) != 0)
          {
            v65 = -2 * v61;
          }

          if (v61 > 0)
          {
            v66 = 1;
          }

          else
          {
            v66 = -1;
          }

          if (v65 >= v62)
          {
            v45 = v66;
          }

          else
          {
            v45 = 0;
          }

          *(v76 + v42) = 0;
          LODWORD(v40) = v40 - (v60 != 0);
LABEL_86:
          allowedUnits &= ~*v46;
          goto LABEL_87;
        }
      }
    }

LABEL_89:
    for (i = 0; i != 56; i += 8)
    {
      [v24 setValue:*(v76 + i) forComponent:*(v78 + i)];
    }

    _Block_object_dispose(v74, 8);
    units = unitsCopy;
  }

  *units = allowedUnits;
  return v24;
}

uint64_t __99__NSDateComponentsFormatter__canonicalizedDateComponents_withCalendar_usedUnits_withReferenceDate___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) valueForComponent:a2];
  *(*(a1 + 48) + 8 * *(*(*(a1 + 40) + 8) + 24)) = result;
  *(*(a1 + 56) + 8 * (*(*(*(a1 + 40) + 8) + 24))++) = a2;
  return result;
}

uint64_t __57__NSDateComponentsFormatter__calendarOrCanonicalCalendar__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEE8]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  _MergedGlobals_5_0 = v1;
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];

  return [v1 setLocale:v2];
}

- (id)_calendarFromDateComponents:(id)components
{
  result = [components calendar];
  if (!result)
  {

    return [(NSDateComponentsFormatter *)self _calendarOrCanonicalCalendar];
  }

  return result;
}

- (NSString)stringFromDate:(NSDate *)startDate toDate:(NSDate *)endDate
{
  if (!startDate)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSDateComponentsFormatter.m" description:318, @"Invalid parameter not satisfying: %@", @"startDate != nil"];
    if (endDate)
    {
      goto LABEL_3;
    }

LABEL_13:
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSDateComponentsFormatter.m" description:319, @"Invalid parameter not satisfying: %@", @"endDate != nil"];
    goto LABEL_3;
  }

  if (!endDate)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (!_NSIsNSDate() || !_NSIsNSDate())
  {
    return 0;
  }

  _calendarOrCanonicalCalendar = [(NSDateComponentsFormatter *)self _calendarOrCanonicalCalendar];
  if (self->_allowedUnits)
  {
    allowedUnits = self->_allowedUnits;
  }

  else
  {
    allowedUnits = 4348;
  }

  v10 = [_calendarOrCanonicalCalendar components:allowedUnits fromDate:startDate toDate:endDate options:0];

  return [(NSDateComponentsFormatter *)self stringForObjectValue:v10 withReferenceDate:startDate];
}

- (void)_ensureUnitFormatterWithLocale_alreadyLocked:(id)locked
{
  unitFormatter = self->_unitFormatter;
  if (!unitFormatter)
  {
    v6 = objc_alloc_init(NSNumberFormatter);
    self->_unitFormatter = v6;
    [(NSNumberFormatter *)v6 setFormatterBehavior:1040];
    [(NSNumberFormatter *)self->_unitFormatter setPaddingCharacter:@"0"];
    [(NSNumberFormatter *)self->_unitFormatter setMinimumFractionDigits:0];
    [(NSNumberFormatter *)self->_unitFormatter setUsesGroupingSeparator:1];
    [(NSNumberFormatter *)self->_unitFormatter setRoundingMode:1];
    unitFormatter = self->_unitFormatter;
  }

  if (self->_unitsStyle == 4)
  {
    v7 = 5;
  }

  else
  {
    v7 = 1;
  }

  [(NSNumberFormatter *)unitFormatter setNumberStyle:v7];
  if (self->_allowsFractionalUnits)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  [(NSNumberFormatter *)self->_unitFormatter setMaximumFractionDigits:v8];
  v9 = self->_unitFormatter;

  [(NSNumberFormatter *)v9 setLocale:locked];
}

- (void)_ensureUnitFormatterWithLocale:(id)locale
{
  os_unfair_lock_lock(&self->_lock);
  [(NSDateComponentsFormatter *)self _ensureUnitFormatterWithLocale_alreadyLocked:locale];

  os_unfair_lock_unlock(&self->_lock);
}

+ (NSString)localizedStringFromDateComponents:(NSDateComponents *)components unitsStyle:(NSDateComponentsFormatterUnitsStyle)unitsStyle
{
  v6 = objc_alloc_init(self);
  [v6 setUnitsStyle:unitsStyle];
  v7 = [v6 stringFromDateComponents:components];

  return v7;
}

- (NSString)stringFromTimeInterval:(NSTimeInterval)ti
{
  if ((*&ti & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSDateComponentsFormatter.m" description:484, @"Invalid parameter not satisfying: %@", @"isfinite(timeInterval) && !isnan(timeInterval)"];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setSecond:ti];
  [v5 setMinute:0];
  [v5 setHour:0];
  [v5 setDay:0];
  [v5 setWeekOfMonth:0];
  [v5 setMonth:0];
  [v5 setYear:0];
  v6 = [(NSDateComponentsFormatter *)self stringForObjectValue:v5];

  return v6;
}

- (NSString)stringFromDateComponents:(NSDateComponents *)components
{
  if (!components)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSDateComponentsFormatter.m" description:499, @"Invalid parameter not satisfying: %@", @"components != nil"];
  }

  return [(NSDateComponentsFormatter *)self stringForObjectValue:components];
}

- (id)stringForObjectValue:(id)value withReferenceDate:(id)date
{
  v140 = *MEMORY[0x1E69E9840];
  if (!value || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  context = objc_autoreleasePoolPush();
  v7 = [(NSDateComponentsFormatter *)self _calendarFromDateComponents:value];
  locale = [v7 locale];
  if (!locale)
  {
    locale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  }

  if (![objc_msgSend(locale "localeIdentifier")])
  {
    locale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  }

  v98 = locale;
  localeIdentifier = [locale localeIdentifier];
  [localeIdentifier UTF8String];
  zeroFormattingBehavior = self->_zeroFormattingBehavior;
  if (zeroFormattingBehavior == 1)
  {
    v9 = 14;
    if (!self->_unitsStyle)
    {
      v9 = 2;
    }

    LODWORD(zeroFormattingBehavior) = v9;
  }

  v110 = 0;
  selfCopy = self;
  v10 = [(NSDateComponentsFormatter *)self _canonicalizedDateComponents:value withCalendar:v7 usedUnits:&v110 withReferenceDate:date];
  v139 = 0;
  memset(v138, 0, sizeof(v138));
  memset_pattern16(__b, &unk_1813F7BC0, 0x38uLL);
  v108[0] = 0;
  v108[1] = v108;
  v108[2] = 0x2020000000;
  v109 = 0;
  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __68__NSDateComponentsFormatter_stringForObjectValue_withReferenceDate___block_invoke;
  v107[3] = &unk_1E69F5290;
  v107[4] = v10;
  v107[5] = v108;
  v107[6] = __b;
  v107[7] = v138;
  forEachUnit(v110, v107);
  if ((zeroFormattingBehavior & 2) != 0)
  {
    for (i = 0; i != 7; ++i)
    {
      v12 = __b[i];
      if (v12 != 0x8000000000000000)
      {
        if (v12)
        {
          break;
        }

        __b[i] = 0x8000000000000000;
        *(v138 + i * 8) = 0;
      }
    }
  }

  if ((zeroFormattingBehavior & 8) != 0)
  {
    for (j = 6; j != -1; --j)
    {
      v14 = __b[j];
      if (v14 != 0x8000000000000000)
      {
        if (v14)
        {
          break;
        }

        __b[j] = 0x8000000000000000;
        *(v138 + j * 8) = 0;
      }
    }
  }

  v15 = v135 + 1;
  if ((zeroFormattingBehavior & 4) != 0)
  {
    for (k = 0; k != 7; ++k)
    {
      if (__b[k] != 0x8000000000000000)
      {
        break;
      }
    }

    for (m = 6; m != -1; --m)
    {
      if (__b[m] != 0x8000000000000000)
      {
        break;
      }
    }

    if (k < m)
    {
      v18 = m - k;
      v19 = v138 + k;
      v20 = &__b[k];
      do
      {
        if (!*v20)
        {
          *v20 = 0x8000000000000000;
          *v19 = 0;
        }

        ++v19;
        ++v20;
        --v18;
      }

      while (v18);
    }
  }

  v21 = 0;
  unitsStyle = selfCopy->_unitsStyle;
  while (!*(v138 + v21))
  {
    v21 += 8;
    if (v21 == 56)
    {
      *&v117 = 0;
      *(&v117 + 1) = &v117;
      v118 = 0x2020000000uLL;
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __68__NSDateComponentsFormatter_stringForObjectValue_withReferenceDate___block_invoke_2;
      v106[3] = &unk_1E69F52B8;
      v106[4] = v10;
      v106[5] = &v117;
      forEachUnit(v110, v106);
      *&v138[0] = *(*(&v117 + 1) + 24);
      __b[0] = 0;
      _Block_object_dispose(&v117, 8);
      break;
    }
  }

  if (unitsStyle)
  {
    v102 = 0x8000000000000000;
    v103 = 0x8000000000000000;
    v101 = 0x8000000000000000;
    v23 = locale;
  }

  else
  {
    v25 = 0;
    v101 = 0x8000000000000000;
    v102 = 0x8000000000000000;
    v103 = 0x8000000000000000;
    v23 = locale;
    do
    {
      v26 = *(v138 + v25 * 8);
      switch(v26)
      {
        case 32:
          v103 = __b[v25];
          break;
        case 64:
          v102 = __b[v25];
          break;
        case 128:
          v101 = __b[v25];
          break;
      }

      ++v25;
    }

    while (v25 != 7);
  }

  v27 = 0;
  v28 = 0;
  v136 = 0;
  memset(v135, 0, sizeof(v135));
  v134 = 0;
  memset(v133, 0, sizeof(v133));
  do
  {
    v29 = *(v138 + v27 * 8);
    if (v29)
    {
      *(v135 + v28) = v29;
      *(v133 + v28++) = __b[v27];
      *(v138 + v27 * 8) = 0;
    }

    ++v27;
  }

  while (v27 != 7);
  if (v28 >= 2)
  {
    v30 = v28 - 1;
    v31 = v133 + 1;
    do
    {
      v32 = *v31;
      if (*v31 < 0)
      {
        v32 = -v32;
      }

      *v31++ = v32;
      --v30;
    }

    while (v30);
  }

  if (unitsStyle)
  {
    v105 = 0;
    v33 = 0;
    if (!v28)
    {
      goto LABEL_152;
    }

LABEL_111:
    v60 = 0uLL;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v61 = v28 - 2;
    if (v28 == 2)
    {
      if (!v105)
      {
        icuStyleFromNSStyle(unitsStyle);
        ListPattern = uatmufmt_getListPattern();
        v33 = 0;
        if (ListPattern < 1)
        {
          goto LABEL_152;
        }

        v33 = [(NSString *)[NSMutableString alloc] initWithCharacters:&v117 length:ListPattern];
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        os_unfair_lock_lock(&selfCopy->_lock);
        if ([(NSDateComponentsFormatter *)selfCopy _updateFormatterCacheIfNeeded_locked:localeIdentifier unitsStyle:unitsStyle])
        {
          icuUnitFromNSUnit(*(&v135[0] + 1));
          v67 = uatmufmt_format();
          os_unfair_lock_unlock(&selfCopy->_lock);
          v91 = [(NSString *)v33 rangeOfString:@"{1}"];
          [(NSMutableString *)v33 replaceCharactersInRange:v91 withCharacters:v92 length:&v117, v67];
          v15 = v135;
          v93 = selfCopy;
        }

        else
        {
          v93 = selfCopy;
          os_unfair_lock_unlock(&selfCopy->_lock);
          v33 = 0;
        }

        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        os_unfair_lock_lock(v93 + 22);
        if ([(os_unfair_lock_s *)v93 _updateFormatterCacheIfNeeded_locked:localeIdentifier unitsStyle:unitsStyle])
        {
          icuUnitFromNSUnit(*v15);
          v94 = uatmufmt_format();
          os_unfair_lock_unlock(&selfCopy->_lock);
          v95 = [(NSString *)v33 rangeOfString:@"{0}"];
          [(NSMutableString *)v33 replaceCharactersInRange:v95 withCharacters:v96 length:&v117, v94];
          goto LABEL_152;
        }

        os_unfair_lock_unlock(&selfCopy->_lock);
        goto LABEL_89;
      }
    }

    else if (v28 == 1)
    {
      memset(&v111[8], 0, 128);
      if (!v105)
      {
        v105 = [(NSString *)NSMutableString stringWithString:@"{0}"];
        v60 = 0uLL;
      }

      v111[6] = v60;
      v111[7] = v60;
      v111[4] = v60;
      v111[5] = v60;
      v111[2] = v60;
      v111[3] = v60;
      v111[0] = v60;
      v111[1] = v60;
      os_unfair_lock_lock(&selfCopy->_lock);
      if ([(NSDateComponentsFormatter *)selfCopy _updateFormatterCacheIfNeeded_locked:localeIdentifier unitsStyle:unitsStyle])
      {
        icuUnitFromNSUnit(*&v135[0]);
        v62 = uatmufmt_format();
        os_unfair_lock_unlock(&selfCopy->_lock);
        v63 = [(NSString *)v105 rangeOfString:@"{0}"];
        [(NSMutableString *)v105 replaceCharactersInRange:v63 withCharacters:v64 length:v111, v62];
      }

      else
      {
        os_unfair_lock_unlock(&selfCopy->_lock);
        v105 = 0;
      }

LABEL_151:
      v33 = v105;
      goto LABEL_152;
    }

    icuStyleFromNSStyle(unitsStyle);
    v65 = uatmufmt_getListPattern();
    v33 = 0;
    if (v65 < 1)
    {
      goto LABEL_152;
    }

    if (v105)
    {
      [(NSMutableString *)v105 replaceOccurrencesOfString:@"{0}" withString:[NSString stringWithCharacters:v65 length:?], 0, 0, [(NSString *)v105 length]];
    }

    else
    {
      v105 = [(NSString *)[NSMutableString alloc] initWithCharacters:&v117 length:v65];
    }

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    os_unfair_lock_lock(&selfCopy->_lock);
    if ([(NSDateComponentsFormatter *)selfCopy _updateFormatterCacheIfNeeded_locked:localeIdentifier unitsStyle:unitsStyle])
    {
      icuUnitFromNSUnit(*(v135 + v28 - 1));
      v68 = uatmufmt_format();
      os_unfair_lock_unlock(&selfCopy->_lock);
      v71 = [(NSString *)v105 rangeOfString:@"{1}"];
      [(NSMutableString *)v105 replaceCharactersInRange:v71 withCharacters:v72 length:&v117, v68];
    }

    else
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
      v105 = 0;
      v61 = v28 - 1;
    }

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    os_unfair_lock_lock(&selfCopy->_lock);
    if ([(NSDateComponentsFormatter *)selfCopy _updateFormatterCacheIfNeeded_locked:localeIdentifier unitsStyle:unitsStyle])
    {
      icuUnitFromNSUnit(*(v135 + v61));
      v73 = uatmufmt_format();
      os_unfair_lock_unlock(&selfCopy->_lock);
      --v61;
      v74 = [(NSString *)v105 rangeOfString:@"{0}"];
      [(NSMutableString *)v105 replaceCharactersInRange:v74 withCharacters:v75 length:&v117, v73];
    }

    else
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
      v105 = 0;
    }

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    if ((v61 & 0x80000000) != 0)
    {
      goto LABEL_151;
    }

    v76 = v61 + 1;
    v33 = v105;
    while (1)
    {
      icuStyleFromNSStyle(unitsStyle);
      --v76;
      v77 = uatmufmt_getListPattern();
      if (v77 < 1)
      {
        break;
      }

      v78 = [(NSMutableString *)v33 copy];
      [(NSMutableString *)v33 replaceCharactersInRange:0 withCharacters:[(NSString *)v33 length] length:&v117, v77];
      [(NSMutableString *)v33 replaceOccurrencesOfString:@"{1}" withString:v78 options:0 range:0, [(NSString *)v33 length]];

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      os_unfair_lock_lock(&selfCopy->_lock);
      if ([(NSDateComponentsFormatter *)selfCopy _updateFormatterCacheIfNeeded_locked:localeIdentifier unitsStyle:unitsStyle])
      {
        icuUnitFromNSUnit(*(v135 + v61));
        v79 = uatmufmt_format();
        os_unfair_lock_unlock(&selfCopy->_lock);
        --v61;
        v80 = [(NSString *)v33 rangeOfString:@"{0}"];
        [(NSMutableString *)v33 replaceCharactersInRange:v80 withCharacters:v81 length:&v117, v79];
      }

      else
      {
        os_unfair_lock_unlock(&selfCopy->_lock);
        v33 = 0;
      }

      if (v76 <= 0)
      {
        goto LABEL_152;
      }
    }

LABEL_89:
    v33 = 0;
    goto LABEL_152;
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  [(NSDateComponentsFormatter *)selfCopy _ensureUnitFormatterWithLocale_alreadyLocked:v23];
  v34 = [(NSNumberFormatter *)selfCopy->_unitFormatter copy];
  v35 = v34;
  if ((zeroFormattingBehavior & 0x10000) != 0)
  {
    [v34 setMinimumIntegerDigits:2];
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v36 = v101 == 0x8000000000000000 || v102 == 0x8000000000000000;
  v37 = !v36;
  if (!v36 && v103 != 0x8000000000000000)
  {
    v38 = v102;
    if (v101 >= 0)
    {
      v39 = v101;
    }

    else
    {
      v39 = -v101;
    }

    if (v102 < 0)
    {
      v38 = -v102;
    }

    v101 = v39;
    v102 = v38;
    v40 = -3;
    goto LABEL_88;
  }

  if (v37)
  {
    v41 = v101;
    if (v101 < 0)
    {
      v41 = -v101;
    }

    v101 = v41;
LABEL_87:
    v40 = -2;
LABEL_88:
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    LODWORD(v111[0]) = 0;
    TimePattern = uatmufmt_getTimePattern();
    if (SLODWORD(v111[0]) > 0)
    {
      goto LABEL_89;
    }

    v44 = TimePattern;
    v105 = +[(NSString *)NSMutableString];
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v45 = [NSDateFormatter _componentsFromFormatString:[NSString stringWithCharacters:&v117 length:v44]];
    v46 = [v45 countByEnumeratingWithState:&v113 objects:v112 count:16];
    v28 += v40;
    if (v46)
    {
      v47 = *v114;
      v48 = *MEMORY[0x1E695D910];
      v49 = *MEMORY[0x1E695D900];
      do
      {
        for (n = 0; n != v46; ++n)
        {
          if (*v114 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v51 = *(*(&v113 + 1) + 8 * n);
          v52 = [v51 objectForKey:v48];
          if (([objc_msgSend(v51 objectForKey:{v49), "BOOLValue"}] & 1) == 0)
          {
            v53 = [v52 length];
            v54 = 2;
            if (v53 > 2)
            {
              v54 = v53;
            }

            if ((zeroFormattingBehavior & 0x10000) != 0)
            {
              v55 = v54;
            }

            else
            {
              v55 = v53;
            }

            [v35 setMinimumIntegerDigits:v55];
            v56 = [v52 hasPrefix:@"h"];
            v57 = v103;
            if (v56 & 1) != 0 || (v58 = [v52 hasPrefix:@"m"], v57 = v102, (v58) || (v59 = objc_msgSend(v52, "hasPrefix:", @"s"), v57 = v101, v59))
            {
              v52 = [v35 stringFromNumber:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v57)}];
            }
          }

          [(NSMutableString *)v105 appendString:v52];
        }

        v46 = [v45 countByEnumeratingWithState:&v113 objects:v112 count:16];
      }

      while (v46);
    }

    v15 = v135 + 1;
    goto LABEL_108;
  }

  if (v102 != 0x8000000000000000 && v103 != 0x8000000000000000)
  {
    v42 = v102;
    if (v102 < 0)
    {
      v42 = -v102;
    }

    v102 = v42;
    goto LABEL_87;
  }

  v105 = 0;
  v70 = v103 == 0x8000000000000000 && v102 == 0x8000000000000000 && v101 == 0x8000000000000000;
  if (v70 || v28 != 1)
  {
LABEL_108:
    v33 = v105;
    if (!v28)
    {
      goto LABEL_152;
    }

    [(NSMutableString *)v105 insertString:@"{0} " atIndex:0];
    goto LABEL_110;
  }

  if (selfCopy->_includesTimeRemainingPhrase || selfCopy->_includesApproximationPhrase)
  {
    v105 = 0;
    v28 = 1;
    [0 insertString:@"{0} " atIndex:0];
LABEL_110:
    unitsStyle = 1;
    goto LABEL_111;
  }

  v87 = [NSNumber alloc];
  v88 = v101;
  if (v102 != 0x8000000000000000)
  {
    v88 = v102;
  }

  if (v103 == 0x8000000000000000)
  {
    v89 = v88;
  }

  else
  {
    v89 = v103;
  }

  v90 = [(NSNumber *)v87 initWithInteger:v89];
  v33 = [objc_msgSend(v35 stringFromNumber:{v90), "mutableCopy"}];

LABEL_152:
  _Block_object_dispose(v108, 8);
  if ([(NSString *)v33 length])
  {
    includesTimeRemainingPhrase = selfCopy->_includesTimeRemainingPhrase;
    if (selfCopy->_includesApproximationPhrase)
    {
      v83 = [NSString alloc];
      v84 = _NSFoundationBundle();
      if (includesTimeRemainingPhrase)
      {
        v85 = -[NSString initWithFormat:locale:](v83, "initWithFormat:locale:", [v84 localizedStringForKey:@"About %@ remaining" value:&stru_1EEEFDF90 table:@"DurationFormatting"], v98, v33);
      }

      else
      {
        v85 = -[NSString initWithFormat:locale:](v83, "initWithFormat:locale:", [v84 localizedStringForKey:@"About %@" value:&stru_1EEEFDF90 table:@"DurationFormatting"], v98, v33);
      }

      goto LABEL_160;
    }

    if (selfCopy->_includesTimeRemainingPhrase)
    {
      v85 = -[NSString initWithFormat:locale:]([NSString alloc], "initWithFormat:locale:", [_NSFoundationBundle() localizedStringForKey:@"%@ remaining" value:&stru_1EEEFDF90 table:@"DurationFormatting"], v98, v33);
LABEL_160:
      v33 = v85;
      goto LABEL_161;
    }
  }

  v86 = v33;
LABEL_161:
  objc_autoreleasePoolPop(context);
  return v33;
}

uint64_t __68__NSDateComponentsFormatter_stringForObjectValue_withReferenceDate___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) valueForComponent:a2];
  *(*(a1 + 48) + 8 * *(*(*(a1 + 40) + 8) + 24)) = result;
  *(*(a1 + 56) + 8 * (*(*(*(a1 + 40) + 8) + 24))++) = a2;
  return result;
}

uint64_t __68__NSDateComponentsFormatter_stringForObjectValue_withReferenceDate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) valueForComponent:a2];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return result;
}

- (void)setAllowedUnits:(NSCalendarUnit)allowedUnits
{
  os_unfair_lock_lock(&self->_lock);
  self->_allowedUnits = allowedUnits;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMaximumUnitCount:(NSInteger)maximumUnitCount
{
  os_unfair_lock_lock(&self->_lock);
  self->_maximumUnitCount = maximumUnitCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSInteger)maximumUnitCount
{
  os_unfair_lock_lock(&self->_lock);
  maximumUnitCount = self->_maximumUnitCount;
  os_unfair_lock_unlock(&self->_lock);
  return maximumUnitCount;
}

- (void)setAllowsFractionalUnits:(BOOL)allowsFractionalUnits
{
  os_unfair_lock_lock(&self->_lock);
  self->_allowsFractionalUnits = allowsFractionalUnits;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)allowsFractionalUnits
{
  os_unfair_lock_lock(&self->_lock);
  allowsFractionalUnits = self->_allowsFractionalUnits;
  os_unfair_lock_unlock(&self->_lock);
  return allowsFractionalUnits;
}

- (void)setCollapsesLargestUnit:(BOOL)collapsesLargestUnit
{
  os_unfair_lock_lock(&self->_lock);
  self->_collapsesLargestUnit = collapsesLargestUnit;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)collapsesLargestUnit
{
  os_unfair_lock_lock(&self->_lock);
  collapsesLargestUnit = self->_collapsesLargestUnit;
  os_unfair_lock_unlock(&self->_lock);
  return collapsesLargestUnit;
}

- (NSCalendar)calendar
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_calendar;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCalendar:(NSCalendar *)calendar
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_calendar;
  if (v5 != calendar)
  {
    self->_calendar = [(NSCalendar *)calendar copy];
  }

  [(NSDateComponentsFormatter *)self _flushFormatterCache_locked];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUnitsStyle:(NSDateComponentsFormatterUnitsStyle)unitsStyle
{
  if (unitsStyle >= (NSDateComponentsFormatterUnitsStyleSpellOut|NSDateComponentsFormatterUnitsStyleShort))
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSDateComponentsFormatter.m" description:914, @"Invalid parameter not satisfying: %@", @"unitsStyle == NSDateComponentsFormatterUnitsStyleSpellOut || unitsStyle == NSDateComponentsFormatterUnitsStyleFull || unitsStyle == NSDateComponentsFormatterUnitsStyleShort || unitsStyle == NSDateComponentsFormatterUnitsStyleAbbreviated || unitsStyle == NSDateComponentsFormatterUnitsStylePositional || unitsStyle == NSDateComponentsFormatterUnitsStyleBrief"];
  }

  os_unfair_lock_lock(&self->_lock);
  self->_unitsStyle = unitsStyle;
  [(NSDateComponentsFormatter *)self _flushFormatterCache_locked];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setZeroFormattingBehavior:(NSDateComponentsFormatterZeroFormattingBehavior)zeroFormattingBehavior
{
  os_unfair_lock_lock(&self->_lock);
  self->_zeroFormattingBehavior = zeroFormattingBehavior;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIncludesApproximationPhrase:(BOOL)includesApproximationPhrase
{
  os_unfair_lock_lock(&self->_lock);
  self->_includesApproximationPhrase = includesApproximationPhrase;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)includesApproximationPhrase
{
  os_unfair_lock_lock(&self->_lock);
  includesApproximationPhrase = self->_includesApproximationPhrase;
  os_unfair_lock_unlock(&self->_lock);
  return includesApproximationPhrase;
}

- (void)setIncludesTimeRemainingPhrase:(BOOL)includesTimeRemainingPhrase
{
  os_unfair_lock_lock(&self->_lock);
  self->_includesTimeRemainingPhrase = includesTimeRemainingPhrase;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)includesTimeRemainingPhrase
{
  os_unfair_lock_lock(&self->_lock);
  includesTimeRemainingPhrase = self->_includesTimeRemainingPhrase;
  os_unfair_lock_unlock(&self->_lock);
  return includesTimeRemainingPhrase;
}

- (void)setFormattingContext:(NSFormattingContext)formattingContext
{
  os_unfair_lock_lock(&self->_lock);
  self->_formattingContext = formattingContext;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSFormattingContext)formattingContext
{
  os_unfair_lock_lock(&self->_lock);
  formattingContext = self->_formattingContext;
  os_unfair_lock_unlock(&self->_lock);
  return formattingContext;
}

- (NSDate)referenceDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_referenceDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setReferenceDate:(NSDate *)referenceDate
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_referenceDate;
  if (v5 != referenceDate)
  {
    self->_referenceDate = [(NSDate *)referenceDate copy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)getObjectValue:(id *)obj forString:(NSString *)string errorDescription:(NSString *)error
{
  if (getObjectValue_forString_errorDescription__onceToken != -1)
  {
    dispatch_once(&getObjectValue_forString_errorDescription__onceToken, &__block_literal_global_78);
  }

  return 0;
}

- (BOOL)_mayDecorateAttributedStringForObjectValue:(id)value
{
  v10 = *MEMORY[0x1E69E9840];
  if (value && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = NSDateComponentsFormatter;
    return [(NSFormatter *)&v9 _mayDecorateAttributedStringForObjectValue:value];
  }

  else
  {
    v5 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v5, sel_attributedStringForObjectValue_withDefaultAttributes_);
    v7 = objc_opt_class();
    return MethodImplementation != class_getMethodImplementation(v7, sel_attributedStringForObjectValue_withDefaultAttributes_);
  }
}

- (NSDateComponentsFormatter)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDateComponentsFormatter cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v8.receiver = self;
  v8.super_class = NSDateComponentsFormatter;
  v5 = [(NSFormatter *)&v8 initWithCoder:coder];
  v6 = v5;
  if (v5)
  {
    [(NSDateComponentsFormatter *)v5 _NSDateComponentsFormatter_commonInit];
    v6->_allowedUnits = [coder decodeIntegerForKey:@"NS.allowedUnits"];
    v6->_allowsFractionalUnits = [coder decodeBoolForKey:@"NS.allowsFractionalUnits"];
    v6->_calendar = [objc_msgSend(coder decodeObjectForKey:{@"NS.calendar", "copy"}];
    v6->_collapsesLargestUnit = [coder decodeBoolForKey:@"NS.collapsesLargestUnit"];
    v6->_includesApproximationPhrase = [coder decodeBoolForKey:@"NS.includesApproximationPhrase"];
    v6->_includesTimeRemainingPhrase = [coder decodeBoolForKey:@"NS.includesTimeRemainingPhrase"];
    v6->_maximumUnitCount = [coder decodeIntegerForKey:@"NS.maximumUnitCount"];
    v6->_unitsStyle = [coder decodeIntegerForKey:@"NS.unitsStyle"];
    v6->_zeroFormattingBehavior = [coder decodeInt32ForKey:@"NS.zeroFormattingBehavior"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDateComponentsFormatter cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  os_unfair_lock_lock(&self->_lock);
  v7.receiver = self;
  v7.super_class = NSDateComponentsFormatter;
  [(NSFormatter *)&v7 encodeWithCoder:coder];
  [coder encodeInteger:self->_allowedUnits forKey:@"NS.allowedUnits"];
  if (self->_allowsFractionalUnits)
  {
    [coder encodeBool:1 forKey:@"NS.allowsFractionalUnits"];
  }

  [coder encodeObject:self->_calendar forKey:@"NS.calendar"];
  if (self->_collapsesLargestUnit)
  {
    [coder encodeBool:1 forKey:@"NS.collapsesLargestUnit"];
  }

  if (self->_includesApproximationPhrase)
  {
    [coder encodeBool:1 forKey:@"NS.includesApproximationPhrase"];
  }

  if (self->_includesTimeRemainingPhrase)
  {
    [coder encodeBool:1 forKey:@"NS.includesTimeRemainingPhrase"];
  }

  maximumUnitCount = self->_maximumUnitCount;
  if (maximumUnitCount)
  {
    [coder encodeInteger:maximumUnitCount forKey:@"NS.maximumUnitCount"];
  }

  [coder encodeInteger:self->_unitsStyle forKey:@"NS.unitsStyle"];
  zeroFormattingBehavior = self->_zeroFormattingBehavior;
  if (zeroFormattingBehavior != 1)
  {
    [coder encodeInt32:zeroFormattingBehavior forKey:@"NS.zeroFormattingBehavior"];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setAllowedUnits:self->_allowedUnits];
  [v5 setAllowsFractionalUnits:self->_allowsFractionalUnits];
  [v5 setCalendar:self->_calendar];
  [v5 setCollapsesLargestUnit:self->_collapsesLargestUnit];
  [v5 setIncludesApproximationPhrase:self->_includesApproximationPhrase];
  [v5 setIncludesTimeRemainingPhrase:self->_includesTimeRemainingPhrase];
  [v5 setMaximumUnitCount:self->_maximumUnitCount];
  [v5 setUnitsStyle:self->_unitsStyle];
  [v5 setZeroFormattingBehavior:self->_zeroFormattingBehavior];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)receiveObservedValue:(id)value
{
  v8 = *MEMORY[0x1E69E9840];
  if (value)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSObservationFormatterSupport.m" description:29, @"Invalid parameter not satisfying: %@", @"!value || [value isKindOfClass:STATIC_CLASS_REF(NSDateComponents)]"];
    }

    v6.receiver = self;
    v6.super_class = NSDateComponentsFormatter;
    [(NSDateComponentsFormatter *)&v6 receiveObservedValue:[(NSDateComponentsFormatter *)self stringFromDateComponents:value]];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NSDateComponentsFormatter;
    [(NSDateComponentsFormatter *)&v7 receiveObservedValue:0];
  }
}

@end