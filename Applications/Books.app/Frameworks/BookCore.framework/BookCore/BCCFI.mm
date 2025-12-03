@interface BCCFI
+ (BCCFI)cfiWithString:(id)string error:(id *)error;
+ (BOOL)isFragmentEpubCFIFunction:(id)function;
+ (id)_cfiLocationFromHeadOf:(id)of toTailOf:(id)tailOf;
+ (id)_cfiLocationFromTailOf:(id)of toHeadOf:(id)headOf;
+ (id)deserializeCFIFromDictionary:(id)dictionary;
+ (id)maximumCFI;
+ (id)minimumCFI;
+ (id)pageLocationForString:(id)string error:(id *)error;
+ (id)stringByEscapingString:(id)string;
+ (id)substringByUnescapingString:(id)string inRange:(_NSRange)range;
+ (id)unknownCFI;
+ (id)upsellCFI;
- (BCCFI)cfiWithAdjustedSpineIndex:(int64_t)index error:(id *)error;
- (BCCFI)cfiWithSpineIndexAdjustedUsingAssertionBlock:(id)block;
- (BCCFI)initWithCFI:(id)i error:(id *)error;
- (BCCFI)initWithCoder:(id)coder;
- (BCCFI)initWithLocationDictionary:(id)dictionary;
- (BCCFI)initWithSteps:(BCCFIStep *)steps startStepsPtr:(BCCFIStep *)ptr endStepsPtr:(BCCFIStep *)stepsPtr stepsEnd:(BCCFIStep *)end;
- (BOOL)_subtractStep:(const BCCFIStep *)step fromStep:(BCCFIStep *)fromStep;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPageCFI;
- (BOOL)parseCFI:(id)i error:(id *)error;
- (BOOL)rangeIntersectsCFI:(id)i;
- (NSString)manifestId;
- (NSString)redactedString;
- (const)endStepAtIndex:(unint64_t)index;
- (id)_simplifiedVersion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)ensureRange;
- (id)generateCFI;
- (id)headCFI;
- (id)intersectWithRangeFromHeadOf:(id)of toTailOf:(id)tailOf;
- (id)rangeToCFI:(id)i;
- (id)rebaseCFIWithHead:(id)head;
- (id)serializeLocationToDictionary;
- (id)tailCFI;
- (id)unionWithCFI:(id)i;
- (int64_t)compare:(id)compare;
- (int64_t)compareCFI:(id)i;
- (unint64_t)characterCountIfComputable;
- (unint64_t)hash;
- (unint64_t)spineIndex;
- (void)_copyInto:(id)into;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCCFI

- (NSString)redactedString
{
  string = [(BCCFI *)self string];
  bc_redactedCFIString = [string bc_redactedCFIString];

  return bc_redactedCFIString;
}

- (BOOL)isPageCFI
{
  if ([(BCCFI *)self pageIndexOffset]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return ![(BCCFI *)self isUnknownCFI];
  }
}

+ (id)pageLocationForString:(id)string error:(id *)error
{
  v4 = [BCCFI cfiWithString:string error:error];
  [v4 _setPageIndexOffset:0];

  return v4;
}

+ (BCCFI)cfiWithString:(id)string error:(id *)error
{
  stringCopy = string;
  v7 = [[self alloc] initWithCFI:stringCopy error:error];

  return v7;
}

+ (id)deserializeCFIFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKEpubCFILocation"])
  {
    v5 = [[BCCFI alloc] initWithLocationDictionary:dictionaryCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)unknownCFI
{
  if (qword_342790 != -1)
  {
    sub_1E8E00();
  }

  v3 = qword_342788;

  return v3;
}

+ (id)upsellCFI
{
  if (qword_3427A0 != -1)
  {
    sub_1E8E14();
  }

  v3 = qword_342798;

  return v3;
}

+ (id)minimumCFI
{
  if (qword_3427B0 != -1)
  {
    sub_1E8E28();
  }

  v3 = qword_3427A8;

  return v3;
}

+ (id)maximumCFI
{
  if (qword_3427C0 != -1)
  {
    sub_1E8E3C();
  }

  v3 = qword_3427B8;

  return v3;
}

- (BCCFI)initWithCFI:(id)i error:(id *)error
{
  iCopy = i;
  v12.receiver = self;
  v12.super_class = BCCFI;
  v7 = [(BCCFI *)&v12 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  if ([(BCCFI *)v7 parseCFI:iCopy error:error])
  {
    v8->_pageIndexOffset = 0x7FFFFFFFFFFFFFFFLL;
LABEL_4:
    v9 = v8;
    goto LABEL_8;
  }

  v10 = BCReadingStatisticsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1E8E50(iCopy, v10);
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (BCCFI)initWithLocationDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:@"cfi"];
  v5 = [(BCCFI *)self initWithCFI:v4 error:0];

  return v5;
}

- (BCCFI)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cfi"];
  v6 = [(BCCFI *)self initWithCFI:v5 error:0];

  if (v6 && [coderCopy containsValueForKey:@"pageIndexOffset"])
  {
    v6->_pageIndexOffset = [coderCopy decodeIntegerForKey:@"pageIndexOffset"];
  }

  return v6;
}

- (BCCFI)initWithSteps:(BCCFIStep *)steps startStepsPtr:(BCCFIStep *)ptr endStepsPtr:(BCCFIStep *)stepsPtr stepsEnd:(BCCFIStep *)end
{
  v15.receiver = self;
  v15.super_class = BCCFI;
  v10 = [(BCCFI *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_steps = steps;
    v10->_startStepsPtr = ptr;
    v10->_endStepsPtr = stepsPtr;
    v10->_stepsEnd = end;
    v10->_pageIndexOffset = 0x7FFFFFFFFFFFFFFFLL;
    generateCFI = [(BCCFI *)v10 generateCFI];
    string = v11->_string;
    v11->_string = generateCFI;
  }

  return v11;
}

- (void)dealloc
{
  steps = self->_steps;
  if (steps < self->_stepsEnd)
  {
    do
    {
      freeCFIStep(steps++);
    }

    while (steps < self->_stepsEnd);
    steps = self->_steps;
  }

  if (steps)
  {
    free(steps);
  }

  v4.receiver = self;
  v4.super_class = BCCFI;
  [(BCCFI *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(BCCFI *)self _copyInto:v4];
  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  string = [(BCCFI *)self string];
  v6 = string;
  if (self->_pageIndexOffset == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [NSString stringWithFormat:@"<%@: %p '%@'%@>", v4, self, string, &stru_2D2930];
  }

  else
  {
    v8 = [NSString stringWithFormat:@" pageOffset:%lu", self->_pageIndexOffset];
    v7 = [NSString stringWithFormat:@"<%@: %p '%@'%@>", v4, self, v6, v8];
  }

  return v7;
}

- (id)debugDescription
{
  generateCFI = [(BCCFI *)self generateCFI];
  string = [(BCCFI *)self string];
  v5 = [string isEqualToString:generateCFI];

  v6 = &stru_2D2930;
  if ((v5 & 1) == 0)
  {
    v6 = [NSString stringWithFormat:@" (generated: '%@')", generateCFI];
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  string2 = [(BCCFI *)self string];
  v10 = string2;
  if (self->_pageIndexOffset == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [NSString stringWithFormat:@"<%@: %p '%@'%@%@>", v8, self, string2, v6, &stru_2D2930];
  }

  else
  {
    v12 = [NSString stringWithFormat:@" pageOffset:%lu", self->_pageIndexOffset];
    v11 = [NSString stringWithFormat:@"<%@: %p '%@'%@%@>", v8, self, v10, v6, v12];
  }

  return v11;
}

- (id)serializeLocationToDictionary
{
  string = [(BCCFI *)self string];
  v3 = [NSDictionary dictionaryWithObjectsAndKeys:@"BCCFI", @"class", string, @"cfi", 0];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  string = [(BCCFI *)self string];
  [coderCopy encodeObject:string forKey:@"cfi"];

  if (self->_pageIndexOffset != 0x7FFFFFFFFFFFFFFFLL)
  {
    [coderCopy encodeInteger:-[BCCFI pageIndexOffset](self forKey:{"pageIndexOffset"), @"pageIndexOffset"}];
  }
}

- (unint64_t)spineIndex
{
  numberOfStartSteps = [(BCCFI *)self numberOfStartSteps];
  if (numberOfStartSteps < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = numberOfStartSteps;
  v5 = 1;
  while (1)
  {
    v6 = [(BCCFI *)self startStepAtIndex:v5];
    if (v6->var0 == 1)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  var0 = v6->var1.var0.var0;
  if (var0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return (var0 >> 1) - 1;
  }
}

- (NSString)manifestId
{
  numberOfStartSteps = [(BCCFI *)self numberOfStartSteps];
  if (numberOfStartSteps < 2)
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    v4 = numberOfStartSteps;
    v5 = 1;
    while (1)
    {
      v6 = [(BCCFI *)self startStepAtIndex:v5];
      if (v6->var0 == 2)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }

    v7 = v6->var1.var1.var0;
  }

  return v7;
}

- (const)endStepAtIndex:(unint64_t)index
{
  startStepsPtr = self->_startStepsPtr;
  result = &self->_steps[index];
  if (result >= startStepsPtr)
  {
    return &self->_endStepsPtr[index - [(BCCFI *)self numberOfCommonSteps]];
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(BCCFI *)self compare:equalCopy]== 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  steps = self->_steps;
  stepsEnd = self->_stepsEnd;
  v4 = ((self->_endStepsPtr - self->_startStepsPtr) << 15) + ((self->_startStepsPtr - steps) << 21) + ((stepsEnd - self->_endStepsPtr) << 9);
  while (steps < stepsEnd)
  {
    var0 = steps->var0;
    if (steps->var0 == 5)
    {
      v4 += steps->var1.var0.var0 << 8;
    }

    else if (var0 == 4)
    {
      v4 += 0x10000;
    }

    else if (var0 == 1)
    {
      v4 += steps->var1.var0.var0;
    }

    ++steps;
  }

  pageIndexOffset = self->_pageIndexOffset;
  if (pageIndexOffset == 0x7FFFFFFFFFFFFFFFLL)
  {
    pageIndexOffset = 0;
  }

  return pageIndexOffset ^ v4;
}

- (int64_t)compareCFI:(id)i
{
  iCopy = i;
  v5 = sub_A4734(self, iCopy, 1, 1, 0, 0);
  if (!v5)
  {
    v5 = sub_A4734(self, iCopy, 0, 0, 0, 0);
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = [(BCCFI *)self compareCFI:compareCopy];
  if (!v5)
  {
    if (-[BCCFI pageIndexOffset](self, "pageIndexOffset") == 0x7FFFFFFFFFFFFFFFLL && [compareCopy pageIndexOffset] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      if ([(BCCFI *)self pageIndexOffset]== 0x7FFFFFFFFFFFFFFFLL)
      {
        pageIndexOffset = 0;
      }

      else
      {
        pageIndexOffset = [(BCCFI *)self pageIndexOffset];
      }

      if ([compareCopy pageIndexOffset] == 0x7FFFFFFFFFFFFFFFLL)
      {
        pageIndexOffset2 = 0;
      }

      else
      {
        pageIndexOffset2 = [compareCopy pageIndexOffset];
      }

      if (pageIndexOffset < pageIndexOffset2)
      {
        v5 = -1;
      }

      else
      {
        v5 = pageIndexOffset > pageIndexOffset2;
      }
    }
  }

  return v5;
}

- (id)intersectWithRangeFromHeadOf:(id)of toTailOf:(id)tailOf
{
  ofCopy = of;
  tailOfCopy = tailOf;
  v8 = sub_A4734(self, ofCopy, 0, 1, 0, 0);
  v9 = sub_A4734(self, tailOfCopy, 1, 0, 0, 0);
  v10 = 0;
  if (v8 != -1)
  {
    v11 = v9;
    if (v9 != 1)
    {
      if (v8)
      {
        if (!v9)
        {
LABEL_17:
          v15 = objc_opt_class();
          selfCopy = self;
          goto LABEL_18;
        }

        v12 = sub_A4734(self, ofCopy, 1, 1, 0, 0);
        v13 = sub_A4734(self, tailOfCopy, 0, 0, 0, 0);
        if (v12 <= 1 && (v13 + 1) <= 1)
        {
          selfCopy3 = [(BCCFI *)self copy];
LABEL_20:
          v10 = selfCopy3;
          goto LABEL_21;
        }

        if (v12 == -1 && v13 == 1)
        {
          v15 = objc_opt_class();
          selfCopy = ofCopy;
LABEL_18:
          selfCopy4 = tailOfCopy;
          goto LABEL_19;
        }

        if (v12 != -1)
        {
          if (v11 != -1)
          {
            v17 = BCReadingStatisticsLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v20 = 138412802;
              selfCopy2 = self;
              v22 = 2112;
              v23 = ofCopy;
              v24 = 2112;
              v25 = tailOfCopy;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Failure to intersect range. Case missing. %@ %@ %@", &v20, 0x20u);
            }

            selfCopy3 = self;
            goto LABEL_20;
          }

          goto LABEL_17;
        }
      }

      v15 = objc_opt_class();
      selfCopy = ofCopy;
      selfCopy4 = self;
LABEL_19:
      selfCopy3 = [v15 _cfiLocationFromHeadOf:selfCopy toTailOf:selfCopy4];
      goto LABEL_20;
    }
  }

LABEL_21:

  return v10;
}

- (id)unionWithCFI:(id)i
{
  iCopy = i;
  if (sub_A4734(self, iCopy, 1, 1, 0, 0) == -1)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = iCopy;
  }

  v6 = selfCopy;
  if (sub_A4734(self, iCopy, 0, 0, 0, 0) == -1)
  {
    selfCopy2 = iCopy;
  }

  else
  {
    selfCopy2 = self;
  }

  v8 = selfCopy2;
  v9 = [objc_opt_class() _cfiLocationFromHeadOf:v6 toTailOf:v8];

  return v9;
}

- (id)rangeToCFI:(id)i
{
  iCopy = i;
  v5 = [objc_opt_class() _cfiLocationFromTailOf:self toHeadOf:iCopy];

  return v5;
}

- (BOOL)rangeIntersectsCFI:(id)i
{
  iCopy = i;
  isRange = [(BCCFI *)self isRange];
  v6 = 0;
  if (iCopy && isRange)
  {
    v7 = [(BCCFI *)self intersectWithCFI:iCopy];
    v6 = v7 != 0;
  }

  return v6;
}

+ (BOOL)isFragmentEpubCFIFunction:(id)function
{
  functionCopy = function;
  if ([functionCopy hasPrefix:@"epubcfi("]
  {
    v4 = [functionCopy hasSuffix:@""]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)parseCFI:(id)i error:(id *)error
{
  iCopy = i;
  string = [(BCCFI *)self string];

  if (string)
  {
    sub_1E8EC8(v8, v9, v10, v11, v12, v13, v14, v15);
    if (iCopy)
    {
      goto LABEL_3;
    }

LABEL_200:
    sub_1E8F04(v8, v9, v10, v11, v12, v13, v14, v15);
    return 0;
  }

  if (!iCopy)
  {
    goto LABEL_200;
  }

LABEL_3:
  if ([iCopy isEqualToString:@"epubcfi_unknownlocation"] || objc_msgSend(iCopy, "isEqualToString:", @"epubcfi_upselllocation"))
  {
    [(BCCFI *)self setString:iCopy];

    return 1;
  }

  if (([objc_opt_class() isFragmentEpubCFIFunction:iCopy] & 1) == 0)
  {
    sub_A60BC(error, -1, @"CFI was not of the form epubCFI(...)", v18, v19, v20, v21, v22, v153);

    return 0;
  }

  v23 = [iCopy substringWithRange:{8, objc_msgSend(iCopy, "length") - 9}];
  v24 = [NSScanner scannerWithString:v23];

  [v24 setCharactersToBeSkipped:0];
  v173 = [NSCharacterSet characterSetWithCharactersInString:@"/[^:~@!, "]);
  v25 = [NSCharacterSet characterSetWithCharactersInString:@"^]"];
  v180 = 0;
  v181[0] = 0;
  v179 = 0;
  if (([v24 isAtEnd] & 1) == 0)
  {
    v59 = v181;
    do
    {
      [v24 scanUpToCharactersFromSet:v173 intoString:0];
      if ([v24 isAtEnd])
      {
        break;
      }

      string2 = [v24 string];
      v61 = [string2 characterAtIndex:{objc_msgSend(v24, "scanLocation")}];

      [v24 setScanLocation:{objc_msgSend(v24, "scanLocation") + 1}];
      if (v61 <= 90)
      {
        if (v61 == 44)
        {
          if (v59 == v181)
          {
            v59 = &v180;
          }

          else
          {
            if (v59 != &v180)
            {
              break;
            }

            v59 = &v179;
          }

          continue;
        }

        if (v61 == 41)
        {
          break;
        }
      }

      else
      {
        if (v61 == 94)
        {
          if ([v24 isAtEnd])
          {
            break;
          }

          [v24 setScanLocation:{objc_msgSend(v24, "scanLocation") + 1}];
          continue;
        }

        if (v61 == 91 && ([v24 isAtEnd] & 1) == 0)
        {
          do
          {
            [v24 scanUpToCharactersFromSet:v25 intoString:0];
            if ([v24 isAtEnd])
            {
              break;
            }

            string3 = [v24 string];
            v63 = [string3 characterAtIndex:{objc_msgSend(v24, "scanLocation")}];

            [v24 setScanLocation:{objc_msgSend(v24, "scanLocation") + 1}];
            if (v63 != 94)
            {
              break;
            }

            if (([v24 isAtEnd] & 1) == 0)
            {
              [v24 setScanLocation:{objc_msgSend(v24, "scanLocation") + 1}];
            }
          }

          while (![v24 isAtEnd]);
        }
      }

      ++*v59;
    }

    while (![v24 isAtEnd]);
  }

  v26 = v180 + v181[0] + v179;
  if (v26 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v180 + v181[0] + v179;
  }

  v28 = malloc_type_calloc(v27, 0x20uLL, 0x10E204035D40BE2uLL);
  self->_startStepsPtr = 0;
  p_startStepsPtr = &self->_startStepsPtr;
  self->_steps = v28;
  self->_endStepsPtr = 0;
  self->_stepsEnd = &v28[v26];
  [v24 setScanLocation:0];
  v178 = 0;
  v30 = [NSCharacterSet characterSetWithCharactersInString:@"^[](), ="];;

  scanLocation = [v24 scanLocation];
  if (([v24 scanString:@"/" intoString:0] & 1) == 0 || (objc_msgSend(v24, "scanInteger:", &v178) & 1) == 0)
  {
    goto LABEL_185;
  }

  if (v178 < 2 || (v178 & 1) != 0)
  {
    v64 = @"First child must be a node";
    errorCopy2 = error;
    v66 = scanLocation;
LABEL_65:
    sub_A60BC(errorCopy2, v66, v64, v32, v33, v34, v35, v36, v153);
    goto LABEL_187;
  }

  v171 = v28;
  v37 = v178;
  steps = self->_steps;
  steps->var0 = 1;
  v166 = v26;
  v167 = v37;
  steps->var1.var0.var0 = v37;
  if ([v24 isAtEnd])
  {
    v165 = 0;
    v39 = 0;
    v172 = 1;
    goto LABEL_18;
  }

  v39 = 0;
  v164 = v30;
  v165 = 0;
  v67 = 0;
  v162 = 0;
  v163 = 0;
  v172 = 1;
  v168 = 1;
LABEL_67:
  string4 = [v24 string];
  v69 = [string4 characterAtIndex:{objc_msgSend(v24, "scanLocation")}];

  scanLocation2 = [v24 scanLocation];
  [v24 setScanLocation:{objc_msgSend(v24, "scanLocation") + 1}];
  if (v69 == 44)
  {
    if (*p_startStepsPtr)
    {
      if (self->_endStepsPtr)
      {
        sub_A61DC(v24, -1, error);
      }

      else
      {
        v171 += v172;
        v172 = 0;
        self->_endStepsPtr = v171;
        v167 = v162;
        v67 = v163;
        v168 = HIDWORD(v163);
      }
    }

    else
    {
      v171 += v172;
      v172 = 0;
      *p_startStepsPtr = v171;
      v163 = __PAIR64__(v168, v67);
      v162 = v167;
    }

    goto LABEL_181;
  }

  if (v69 == 41)
  {
    goto LABEL_185;
  }

  if (([v173 characterIsMember:v69] & 1) == 0)
  {
    v148 = v24;
    v149 = -1;
    goto LABEL_186;
  }

  if (v69 <= 63)
  {
    if (v69 == 33)
    {
      if (v67)
      {
        v64 = @"Indirection not allowed after terminating step";
        goto LABEL_218;
      }

      if (v168 - 3 >= 0xFFFFFFFE && (v167 & 1) != 0)
      {
        v64 = @"Indirection not allowed after text node";
        goto LABEL_218;
      }

      v67 = 0;
      v83 = &v171[v172];
      v84 = v172 + 1;
      memset(&v181[1], 0, 28);
      v168 = 4;
      v83->var0 = 4;
      v85 = *&v181[1];
      *&v83->var1.var6.var1 = *(&v181[2] + 4);
      *(&v83->var0 + 1) = v85;
      goto LABEL_110;
    }

    if (v69 != 47)
    {
      if (v69 != 58)
      {
        goto LABEL_181;
      }

      if (v168 - 3 <= 0xFFFFFFFD)
      {
        v64 = @"Character offset terminating step only allowed after child node step";
        goto LABEL_218;
      }

      if ([v24 scanInteger:&v178])
      {
        v71 = v178;
        if ((v178 & 0x8000000000000000) == 0)
        {
          v72 = &v171[v172];
          v168 = 5;
          v72->var0 = 5;
          v72->var1.var0.var0 = v71;
          ++v165;
          v67 = 1;
          ++v172;
          goto LABEL_181;
        }

        v64 = @"Character offset must be a non-negative integer";
        goto LABEL_218;
      }

      goto LABEL_185;
    }

    if (v67)
    {
      v64 = @"Child node step not allowed after a terminating step";
      goto LABEL_218;
    }

    if (v168 - 3 >= 0xFFFFFFFE && (v167 & 1) != 0)
    {
      v64 = @"Child node step not allowed after text node";
      goto LABEL_218;
    }

    if ([v24 scanInteger:&v178])
    {
      if (v178 <= 0)
      {
        v64 = @"Child node index must be a positive number";
        goto LABEL_218;
      }

      v67 = 0;
      v109 = v178;
      v110 = &v171[v172];
      v84 = v172 + 1;
      v168 = 1;
      v110->var0 = 1;
      v167 = v109;
      v110->var1.var0.var0 = v109;
      v39 += v178 & 1;
LABEL_110:
      v172 = v84;
      goto LABEL_181;
    }

LABEL_185:
    v148 = v24;
    v149 = 0;
LABEL_186:
    sub_A61DC(v148, v149, error);
    goto LABEL_187;
  }

  if (v69 == 64)
  {
    if (v168 > 6 || ((1 << v168) & 0x46) == 0)
    {
      v64 = @"Spatial offset terminating step only allowed after child node step or temporal offset terminating step";
LABEL_218:
      errorCopy2 = error;
      v66 = scanLocation2;
      goto LABEL_65;
    }

    v176 = 0uLL;
    v177 = 0;
    if (([v24 scanDecimal:&v176] & 1) == 0)
    {
      goto LABEL_185;
    }

    v158 = v39;
    v174 = v176;
    v175 = v177;
    v86 = [NSDecimalNumber decimalNumberWithDecimal:&v174];
    v87 = +[NSDecimalNumber zero];
    v169 = v86;
    if ([v86 compare:v87] == -1)
    {
    }

    else
    {
      v88 = [NSDecimalNumber decimalNumberWithMantissa:100 exponent:0 isNegative:0];
      v89 = [v86 compare:v88];

      v127 = v89 == &dword_0 + 1;
      v30 = v164;
      if (!v127)
      {
        scanLocation3 = [v24 scanLocation];
        if ([v24 scanString:@":" intoString:0] & 1) != 0 && (objc_msgSend(v24, "scanDecimal:", &v176))
        {
          v96 = scanLocation3;
          v174 = v176;
          v175 = v177;
          v97 = [NSDecimalNumber decimalNumberWithDecimal:&v174];
          v98 = +[NSDecimalNumber zero];
          if ([v97 compare:v98] == -1)
          {
          }

          else
          {
            v99 = [NSDecimalNumber decimalNumberWithMantissa:100 exponent:0 isNegative:0];
            v100 = [v97 compare:v99];

            v127 = v100 == &dword_0 + 1;
            v30 = v164;
            if (!v127)
            {
              v106 = &v171[v172];
              v107 = v169;
              v108 = v97;
              v168 = 7;
              v106->var0 = 7;
              v106->var1.var0.var0 = v107;
              v106->var1.var1.var1 = v108;

              v67 = 1;
              ++v172;
LABEL_180:
              v39 = v158;
              goto LABEL_181;
            }
          }

          sub_A60BC(error, v96, @"Temporal offset parameter must be a number between 0 and 100", v101, v102, v103, v104, v105, v153);

          goto LABEL_187;
        }

        sub_A61DC(v24, 0, error);
LABEL_210:

        goto LABEL_187;
      }
    }

    sub_A60BC(error, scanLocation2, @"Temporal offset parameter must be a number between 0 and 100", v90, v91, v92, v93, v94, v153);
    goto LABEL_210;
  }

  if (v69 == 91)
  {
    if (v168 == 1)
    {
      if (v167)
      {
        v64 = @"ID assertion cannot follow a text node";
        goto LABEL_218;
      }
    }

    else if (v168 != 5)
    {
      v64 = @"Assertion only allowed after child step or character offset step";
      goto LABEL_218;
    }

    v155 = v67;
    v158 = v39;
    scanLocation4 = [v24 scanLocation];
    v156 = 0;
    v160 = 0;
    v161 = 0;
    v159 = 0;
    v157 = 0;
    while (1)
    {
      if ([v24 isAtEnd])
      {
        goto LABEL_159;
      }

      [v24 scanUpToCharactersFromSet:v30 intoString:0];
      if ([v24 isAtEnd])
      {
        goto LABEL_159;
      }

      string5 = [v24 string];
      v118 = [string5 characterAtIndex:{objc_msgSend(v24, "scanLocation")}];

      [v24 setScanLocation:{objc_msgSend(v24, "scanLocation") + 1}];
      if (v118 == 94)
      {
        break;
      }

      v119 = 0;
      if (v118 > 60)
      {
        if (v118 == 61)
        {
          if (!v161)
          {
            goto LABEL_183;
          }

          scanLocation5 = [v24 scanLocation];
          string6 = [v24 string];
          v133 = [string6 rangeOfString:@" " options:0 range:{scanLocation4, &scanLocation5[~scanLocation4]}];

          if (v133 != 0x7FFFFFFFFFFFFFFFLL)
          {
            sub_A60BC(error, v133, @"Unexpected space found in key of assertion parameter list", v134, v135, v136, v137, v138, v153);

            v119 = 1;
            v30 = v164;
            goto LABEL_165;
          }

          string7 = [v24 string];
          v140 = [BCCFI substringByUnescapingString:string7 inRange:scanLocation4, &scanLocation5[~scanLocation4]];

          scanLocation4 = [v24 scanLocation];
          v119 = 0;
          v159 = v140;
          v30 = v164;
          goto LABEL_154;
        }

        if (v118 == 93)
        {
LABEL_128:
          string8 = [v24 string];
          v121 = +[BCCFI substringByUnescapingString:inRange:](BCCFI, "substringByUnescapingString:inRange:", string8, scanLocation4, [v24 scanLocation] + ~scanLocation4);

          if (v161)
          {
            if (!v159)
            {
              sub_A60BC(error, scanLocation4, @"Assertion found with keyless value", v122, v123, v124, v125, v126, v153);
              v159 = 0;
              v119 = 1;
              v30 = v164;
LABEL_153:

              goto LABEL_154;
            }

            [v161 setObject:v121 forKey:v159];

            v30 = v164;
            v159 = 0;
            if (v118 == 93)
            {
              goto LABEL_152;
            }

            goto LABEL_157;
          }

          if (v160)
          {
            v30 = v164;
            if (v168 == 1)
            {
              goto LABEL_151;
            }

            v141 = v121;
            if (v157)
            {
              goto LABEL_151;
            }
          }

          else
          {
            v141 = v157;
            v160 = v121;
            v30 = v164;
          }

          v142 = v121;
          v157 = v141;
LABEL_151:
          if (v118 == 93)
          {
LABEL_152:
            v119 = 15;
            v156 = 1;
            goto LABEL_153;
          }

          v161 = +[NSMutableDictionary dictionary];
LABEL_157:
          scanLocation4 = [v24 scanLocation];

LABEL_121:
          v119 = 0;
        }
      }

      else
      {
        if (v118 == 44)
        {
          v127 = v168 != 1 && v160 == 0;
          v128 = v127;
          if (!v161 && (v128 & 1) == 0)
          {
LABEL_183:
            sub_A61DC(v24, -1, error);
            v119 = 1;
            goto LABEL_165;
          }

          string9 = [v24 string];
          v130 = +[BCCFI substringByUnescapingString:inRange:](BCCFI, "substringByUnescapingString:inRange:", string9, scanLocation4, [v24 scanLocation] + ~scanLocation4);

          scanLocation4 = [v24 scanLocation];
          v119 = 0;
          v160 = v130;
          goto LABEL_154;
        }

        if (v118 == 59)
        {
          goto LABEL_128;
        }
      }

LABEL_154:
      if (v119)
      {
        if (v119 != 15)
        {

LABEL_165:
          v67 = v155;
          goto LABEL_177;
        }

LABEL_159:
        v67 = v155;
        if (v156)
        {
          v143 = &v171[v172];
          v144 = [v160 copy];
          if (v168 == 1)
          {
            if ([v161 count])
            {
              v146 = [v161 copy];
              v168 = 2;
              v143->var0 = 2;
              v143->var1.var0.var0 = v144;
              v143->var1.var1.var1 = v146;
            }

            else
            {
              v168 = 2;
              v143->var0 = 2;
              v143->var1.var0.var0 = v144;
              v143->var1.var1.var1 = 0;
            }
          }

          else
          {
            v170 = [v157 length];
            if (v170)
            {
              v154 = [v157 copy];
              v145 = v154;
            }

            else
            {
              v145 = 0;
            }

            if ([v161 count])
            {
              v147 = [v161 copy];
              v143->var0 = 3;
              v143->var1.var0.var0 = v144;
              v143->var1.var1.var1 = v145;
              v143->var1.var2.var2 = v147;
            }

            else
            {
              v143->var0 = 3;
              v143->var1.var0.var0 = v144;
              v143->var1.var1.var1 = v145;
              v143->var1.var2.var2 = 0;
            }

            v30 = v164;
            if (v170)
            {
            }

            v168 = 3;
          }

          ++v172;
          v119 = 0;
        }

        else
        {
          sub_A60BC(error, -1, @"Encountered end of string while parsing CFI assertion", v112, v113, v114, v115, v116, v153);

          v119 = 1;
        }

LABEL_177:

        if (!v119)
        {
          goto LABEL_180;
        }

        v127 = v119 == 10;
        v39 = v158;
        if (!v127)
        {
LABEL_187:
          v16 = 0;
          goto LABEL_188;
        }

LABEL_181:
        if ([v24 isAtEnd])
        {
LABEL_18:
          v40 = &v171[v172];
          self->_stepsEnd = v40;
          endStepsPtr = self->_endStepsPtr;
          if (!endStepsPtr)
          {
            self->_endStepsPtr = v40;
            endStepsPtr = &v171[v172];
          }

          if (!*p_startStepsPtr)
          {
            *p_startStepsPtr = endStepsPtr;
          }

          v42 = v39 - v165;
          if (v39 > v165)
          {
            v43 = v42 + v166;
            if (v42 + v166 <= 1)
            {
              v44 = 1;
            }

            else
            {
              v44 = v42 + v166;
            }

            v45 = malloc_type_calloc(v44, 0x20uLL, 0x10E204035D40BE2uLL);
            v46 = v45;
            if (v166 < 1)
            {
              v51 = 0;
              v49 = 0;
            }

            else
            {
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v50 = v166;
              v51 = 0;
              v52 = 1;
              do
              {
                v53 = &v45[v48];
                v54 = &self->_steps[v47];
                v55 = *&v54->var1.var6.var1;
                *&v53->var0 = *&v54->var0;
                *&v53->var1.var6.var1 = v55;
                v56 = self->_steps;
                v57 = &v56[v47];
                if (&v56[v47] == self->_startStepsPtr)
                {
                  v51 = &v45[v48];
                }

                if (v57 == self->_endStepsPtr)
                {
                  v49 = &v45[v48];
                }

                if (v57->var0 == 1 && (v57->var1.var0.var0 & 1) != 0 && (v52 >= v166 || v56[v47 + 1].var0 != 5))
                {
                  v58 = &v45[++v48];
                  v58->var0 = 5;
                  *(&v58->var0 + 1) = 0;
                  *(&v58->var1.var6.var1 + 4) = 0;
                  *(&v58->var1.var3 + 4) = 0;
                  *(&v58->var1.var6 + 5) = 0;
                }

                ++v48;
                ++v47;
                ++v52;
                --v50;
              }

              while (v50);
            }

            free(self->_steps);
            if (v49)
            {
              v150 = v49;
            }

            else
            {
              v150 = &v46[v43];
            }

            self->_endStepsPtr = v150;
            self->_stepsEnd = &v46[v43];
            if (v51)
            {
              v151 = v51;
            }

            else
            {
              v151 = v150;
            }

            self->_steps = v46;
            self->_startStepsPtr = v151;
            generateCFI = [(BCCFI *)self generateCFI];

            iCopy = generateCFI;
          }

          [(BCCFI *)self setString:iCopy];
          v16 = 1;
          goto LABEL_188;
        }

        goto LABEL_67;
      }
    }

    if ([v24 isAtEnd])
    {
      goto LABEL_159;
    }

    [v24 setScanLocation:{objc_msgSend(v24, "scanLocation") + 1}];
    goto LABEL_121;
  }

  if (v69 != 126)
  {
    goto LABEL_181;
  }

  if (v168 - 3 <= 0xFFFFFFFD)
  {
    v64 = @"Temporal offset terminating step only allowed after child node step";
    goto LABEL_218;
  }

  v176 = 0uLL;
  v177 = 0;
  if (([v24 scanDecimal:&v176] & 1) == 0)
  {
    goto LABEL_185;
  }

  v174 = v176;
  v175 = v177;
  v73 = [NSDecimalNumber decimalNumberWithDecimal:&v174];
  v74 = +[NSDecimalNumber zero];
  v75 = [v73 compare:v74];

  if (v75 != -1)
  {
    v81 = &v171[v172];
    v82 = v73;
    v168 = 6;
    v81->var0 = 6;
    v81->var1.var0.var0 = v82;

    v67 = 1;
    ++v172;
    v30 = v164;
    goto LABEL_181;
  }

  sub_A60BC(error, scanLocation2, @"Temporal offset must be a non-negative number", v76, v77, v78, v79, v80, v153);

  v16 = 0;
  v30 = v164;
LABEL_188:

  return v16;
}

- (id)generateCFI
{
  v3 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"epubcfi(");
  sub_A634C(v3, self->_steps, self->_startStepsPtr);
  if (self->_stepsEnd > self->_startStepsPtr)
  {
    [v3 appendString:{@", "}];
    sub_A634C(v3, self->_startStepsPtr, self->_endStepsPtr);
    [v3 appendString:{@", "}];
    sub_A634C(v3, self->_endStepsPtr, self->_stepsEnd);
  }

  [v3 appendString:@""]);

  return v3;
}

+ (id)stringByEscapingString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = [NSCharacterSet characterSetWithCharactersInString:@"^[](), ="];;
    v5 = [stringCopy rangeOfCharacterFromSet:v4 options:2];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = stringCopy;
    }

    else
    {
      v8 = v5;
      v9 = v6;
      v10 = malloc_type_malloc(4 * ([stringCopy length] - (v8 + v6)) + 2 * v8, 0x1000040BDFB0063uLL);
      if (v8)
      {
        [stringCopy getCharacters:v10 range:{0, v8}];
      }

      v11 = v8;
      do
      {
        v12 = v11 + 1;
        v10[v11] = 94;
        v13 = [stringCopy length];
        v14 = [stringCopy rangeOfCharacterFromSet:v4 options:2 range:{v8 + v9, objc_msgSend(stringCopy, "length") - (v8 + v9)}];
        v15 = v14;
        v9 = v16;
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v13;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - v8;
        [stringCopy getCharacters:&v10[v12] range:{v8, v17 - v8}];
        v11 = (v18 + v12);
        v8 = v15;
      }

      while (v15 != 0x7FFFFFFFFFFFFFFFLL);
      v7 = [[NSString alloc] initWithCharactersNoCopy:v10 length:v11 freeWhenDone:1];
      if (!v7)
      {
        free(v10);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)substringByUnescapingString:(id)string inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v7 = stringCopy;
  if (stringCopy)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    theString = stringCopy;
    v38 = location;
    v39 = length;
    CharactersPtr = CFStringGetCharactersPtr(stringCopy);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
    }

    v40 = 0;
    v41 = 0;
    v37 = CStringPtr;
    v10 = malloc_type_malloc(2 * length, 0x1000040BDFB0063uLL);
    if (length)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 64;
      while (1)
      {
        v16 = v13 >= 4 ? 4 : v13;
        if ((v13 & 0x8000000000000000) == 0)
        {
          v17 = v39;
          if (v39 > v13)
          {
            break;
          }
        }

        v19 = 0;
LABEL_17:
        v10[v14++] = v19;
LABEL_18:
        ++v13;
        --v11;
        ++v15;
        if (length == v13)
        {
          goto LABEL_33;
        }
      }

      if (CharactersPtr)
      {
        v18 = &CharactersPtr[v38];
      }

      else
      {
        if (v37)
        {
          v19 = v37[v38 + v13];
LABEL_22:
          if (v19 == 94)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        if (v41 <= v13 || v12 > v13)
        {
          v20 = -v16;
          v21 = v16 + v11;
          v22 = v15 - v16;
          v23 = v13 + v20;
          v24 = v23 + 64;
          if (v23 + 64 >= v39)
          {
            v24 = v39;
          }

          v40 = v23;
          v41 = v24;
          if (v39 >= v22)
          {
            v17 = v22;
          }

          v43.location = v23 + v38;
          v43.length = v17 + v21;
          CFStringGetCharacters(theString, v43, &v27);
          v12 = v40;
        }

        v18 = &v27 - v12;
      }

      v19 = v18[v13];
      goto LABEL_22;
    }

    v14 = 0;
LABEL_33:
    v25 = [NSString alloc];
    v9 = [v25 initWithCharactersNoCopy:v10 length:v14 freeWhenDone:{1, v27, v28, v29, v30, v31, v32, v33, v34}];
    if (!v9)
    {
      free(v10);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)rebaseCFIWithHead:(id)head
{
  headCopy = head;
  selfCopy = self;
  v6 = selfCopy;
  if (headCopy)
  {
    p_isa = [(BCCFI *)selfCopy _simplifiedVersion];
    _simplifiedVersion = [headCopy _simplifiedVersion];
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    sub_A4734(p_isa, _simplifiedVersion, 1, 1, &v29, 0);
    sub_A4734(p_isa, _simplifiedVersion, 0, 1, &v28, 0);
    v9 = 0;
    v10 = p_isa[1];
    if (v10 < p_isa[3])
    {
      v11 = 0;
      v9 = 0;
      v12 = 0;
      v13 = 0;
      v14 = _simplifiedVersion[1];
      v15 = v29;
      do
      {
        if (v14 >= _simplifiedVersion[3] || v12 > v15)
        {
          break;
        }

        if (v11)
        {
          if (v13)
          {
            if (!v10)
            {
              break;
            }

            if (*v10 == 1)
            {
              if (!v14 || *v14 != 1)
              {
                break;
              }
            }

            else if (*v10 != 5 || !v14 || *v14 != 5)
            {
              break;
            }

            if (![(BCCFI *)v6 _subtractStep:v14 fromStep:v10, v28])
            {
              v26 = BCReadingStatisticsLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v31 = _simplifiedVersion;
                v32 = 2112;
                v33 = p_isa;
                _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Failed to subtract %@ from %@.", buf, 0x16u);
              }

              break;
            }

            v13 = 1;
            v15 = v29;
          }

          else
          {
            v13 = *v10 == 1;
          }

          v11 = 1;
        }

        else
        {
          v11 = *v10 == 4;
        }

        if (v12 <= v15 && *v10 != 5 && v10 < p_isa[2])
        {
          ++v9;
        }

        ++v12;
        v10 += 8;
        v14 += 8;
      }

      while (v10 < p_isa[3]);
    }

    v17 = p_isa[1];
    v18 = p_isa[4];
    if (v17 < v18)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = _simplifiedVersion[1];
      do
      {
        if (v22 >= _simplifiedVersion[3] || v20 > v28)
        {
          break;
        }

        if (v17 == p_isa[2])
        {
          v17 = p_isa[3];
          if (!v19)
          {
LABEL_46:
            v19 = *v17 == 4;
            goto LABEL_54;
          }
        }

        else if (!v19)
        {
          goto LABEL_46;
        }

        if (v21)
        {
          if (v20 >= v9)
          {
            if (v20 >= v28)
            {
              if (!v17)
              {
                break;
              }

              if (*v17 == 1)
              {
                if (!v22 || *v22 != 1)
                {
                  break;
                }
              }

              else if (*v17 != 5 || !v22 || *v22 != 5)
              {
                break;
              }
            }

            if (![(BCCFI *)v6 _subtractStep:v22 fromStep:v17, v28])
            {
              v27 = BCReadingStatisticsLog();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v31 = _simplifiedVersion;
                v32 = 2112;
                v33 = p_isa;
                _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Failed to subtract %@ from %@.", buf, 0x16u);
              }

              break;
            }

            v18 = p_isa[4];
          }

          v21 = 1;
        }

        else
        {
          v21 = *v17 == 1;
        }

        v19 = 1;
LABEL_54:
        ++v20;
        v17 += 8;
        v22 += 8;
      }

      while (v17 < v18);
    }

    generateCFI = [p_isa generateCFI];
    [p_isa setString:generateCFI];
  }

  else
  {
    p_isa = &selfCopy->super.isa;
  }

  return p_isa;
}

- (BCCFI)cfiWithAdjustedSpineIndex:(int64_t)index error:(id *)error
{
  v7 = [(BCCFI *)self copy];
  v8 = v7;
  v9 = v7[1];
  v10 = v7[2];
  if (v9 < v10)
  {
    v11 = 0;
    do
    {
      if (*v9 == 1)
      {
        v12 = *(v9 + 8);
        if ((v12 & 1) == 0 && ++v11 == 2)
        {
          if (v12 + index < 0)
          {

            if (error)
            {
              v21 = NSLocalizedDescriptionKey;
              string = [(BCCFI *)self string];
              index = [NSString stringWithFormat:@"Invalid offset. Offsetting {%@} by %ld would produce a negative spine index.", string, index];
              v22 = index;
              v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
              *error = [NSError errorWithDomain:@"BKEpubCFIErrorDomain" code:2 userInfo:v19];
            }

            v8 = 0;
            break;
          }

          *(v9 + 8) = v12 + 2 * index;
          v10 = v7[2];
          v11 = 2;
        }
      }

      else if (*v9 == 4)
      {
        goto LABEL_14;
      }

      v9 += 32;
    }

    while (v9 < v10);
  }

  v13 = BCReadingStatisticsLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "ERROR: No indirection available in CFI so unable to offset spine element.", buf, 2u);
  }

  v8 = 0;
LABEL_14:
  generateCFI = [v8 generateCFI];
  v15 = [BCCFI cfiWithString:generateCFI error:error];

  return v15;
}

- (BCCFI)cfiWithSpineIndexAdjustedUsingAssertionBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  stepsEnd = selfCopy->_stepsEnd;
  v7 = &selfCopy->_steps[1];
  while (v7 < stepsEnd)
  {
    v8 = *v7;
    v7 += 32;
    if (v8 == 1)
    {
      if (v7 < stepsEnd && *v7 == 2)
      {
        v9 = *(v7 - 24);
        v10 = blockCopy[2](blockCopy, v9, *(v7 + 8));
        if (v10 != 0x7FFFFFFFFFFFFFFFLL && v9 != v10)
        {
          v12 = [(BCCFI *)selfCopy cfiWithAdjustedSpineIndex:v10 error:0];

          selfCopy = v12;
        }
      }

      break;
    }
  }

  return selfCopy;
}

- (id)headCFI
{
  v3 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"epubcfi(");
  for (i = self->_steps; i < self->_endStepsPtr; ++i)
  {
    sub_A6FDC(v3, i);
  }

  [v3 appendString:@""]);
  v11 = 0;
  v5 = [BCCFI cfiWithString:v3 error:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Failed to create CFI. %@", buf, 0xCu);
    }
  }

  if (!v5)
  {
    v8 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(BCCFI *)self description];
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Failed to create head CFI from %@", buf, 0xCu);
    }
  }

  return v5;
}

- (id)tailCFI
{
  v3 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"epubcfi(");
  for (i = self->_steps; i < self->_startStepsPtr; ++i)
  {
    sub_A6FDC(v3, i);
  }

  for (j = self->_endStepsPtr; j < self->_stepsEnd; ++j)
  {
    sub_A6FDC(v3, j);
  }

  [v3 appendString:@""]);
  v12 = 0;
  v6 = [BCCFI cfiWithString:v3 error:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Failed to create CFI. %@", buf, 0xCu);
    }
  }

  if (!v6)
  {
    v9 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(BCCFI *)self description];
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Failed to create tail CFI from %@", buf, 0xCu);
    }
  }

  return v6;
}

- (id)ensureRange
{
  selfCopy = self;
  if ([(BCCFI *)selfCopy isRange])
  {
    goto LABEL_17;
  }

  v3 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"epubcfi(");
  steps = selfCopy->_steps;
  v5 = @"/1,:0,:1";
  if (steps >= selfCopy->_startStepsPtr)
  {
    goto LABEL_15;
  }

  v6 = 0;
  while (1)
  {
    v7 = *steps;
    if (*steps > 3)
    {
      break;
    }

    if (v7 == 1)
    {
      sub_A6FDC(v3, steps);
      v6 |= *(steps + 8);
      goto LABEL_12;
    }

    if (v7 != 2)
    {
      goto LABEL_12;
    }

LABEL_9:
    sub_A6FDC(v3, steps);
LABEL_12:
    steps += 32;
    if (steps >= selfCopy->_startStepsPtr)
    {
      if (v6)
      {
        v5 = @",:0,:1";
      }

      goto LABEL_15;
    }
  }

  if (v7 == 4)
  {
    goto LABEL_9;
  }

  if (v7 != 5)
  {
    goto LABEL_12;
  }

  [v3 appendString:{@", "}];
  sub_A6FDC(v3, steps);
  [v3 appendString:{@", "}];
  v10 = *(steps + 16);
  v11[0] = *steps;
  v11[1] = v10;
  *(&v11[0] + 1) = *(steps + 8) + 1;
  sub_A6FDC(v3, v11);
  if (v6)
  {
    goto LABEL_16;
  }

  v5 = @"/1,:0,:1";
LABEL_15:
  [v3 appendString:v5];
LABEL_16:
  [v3 appendString:@""]);
  v8 = [BCCFI cfiWithString:v3 error:0];

  selfCopy = v8;
LABEL_17:

  return selfCopy;
}

- (unint64_t)characterCountIfComputable
{
  if (![(BCCFI *)self isRange])
  {
    return 0;
  }

  startStepsPtr = self->_startStepsPtr;
  endStepsPtr = self->_endStepsPtr;
  if (startStepsPtr >= endStepsPtr)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  while (1)
  {
    var0 = startStepsPtr->var0;
    if (startStepsPtr->var0 <= 7u)
    {
      if (((1 << var0) & 0xD2) != 0)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      if (var0 == 5)
      {
        break;
      }
    }

    if (++startStepsPtr >= endStepsPtr)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v7 = startStepsPtr->var1.var0.var0;
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    stepsEnd = self->_stepsEnd;
    if (endStepsPtr < stepsEnd)
    {
      while (1)
      {
        v9 = endStepsPtr->var0;
        if (endStepsPtr->var0 <= 7u)
        {
          if (((1 << v9) & 0xD2) != 0)
          {
            return 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v9 == 5)
          {
            break;
          }
        }

        if (++endStepsPtr >= stepsEnd)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      v10 = endStepsPtr->var1.var0.var0;
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        return v10 - v7;
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)_copyInto:(id)into
{
  intoCopy = into;
  string = [(BCCFI *)self string];
  [intoCopy setString:string];

  v5 = self->_stepsEnd - self->_steps;
  v6 = malloc_type_malloc(v5, 0x10E204035D40BE2uLL);
  intoCopy[1] = v6;
  intoCopy[2] = &v6[(self->_startStepsPtr - self->_steps)];
  intoCopy[3] = &v6[(self->_endStepsPtr - self->_steps)];
  intoCopy[4] = &v6[(self->_stepsEnd - self->_steps)];
  intoCopy[6] = self->_pageIndexOffset;
  memmove(v6, self->_steps, v5);
  v7 = intoCopy[1];
  v8 = intoCopy[4];
  while (v7 < v8)
  {
    v9 = *v7;
    if (*v7 > 5)
    {
      if (v9 == 6)
      {
        v13 = *(v7 + 8);
      }

      else
      {
        if (v9 != 7)
        {
          goto LABEL_14;
        }

        CFRetain(*(v7 + 8));
        v13 = *(v7 + 16);
      }

      CFRetain(v13);
    }

    else
    {
      if (v9 == 2)
      {
        v14 = [*(v7 + 8) copy];
        *(v7 + 8) = v14;

        v12 = [*(v7 + 16) copy];
        *(v7 + 16) = v12;
      }

      else
      {
        if (v9 != 3)
        {
          goto LABEL_14;
        }

        v10 = [*(v7 + 8) copy];
        *(v7 + 8) = v10;

        v11 = [*(v7 + 16) copy];
        *(v7 + 16) = v11;

        v12 = [*(v7 + 24) copy];
        *(v7 + 24) = v12;
      }
    }

LABEL_14:
    v7 += 32;
  }
}

- (id)_simplifiedVersion
{
  v3 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"epubcfi(");
  steps = self->_steps;
  for (i = self->_startStepsPtr; steps < i; ++steps)
  {
    if (steps->var0 <= 5u && ((1 << steps->var0) & 0x32) != 0)
    {
      sub_A6FDC(v3, steps);
      i = self->_startStepsPtr;
    }
  }

  [v3 appendString:{@", "}];
  sub_A634C(v3, self->_startStepsPtr, self->_endStepsPtr);
  [v3 appendString:{@", "}];
  sub_A634C(v3, self->_endStepsPtr, self->_stepsEnd);
  [v3 appendString:@""]);
  v7 = [BCCFI cfiWithString:v3 error:0];

  return v7;
}

- (BOOL)_subtractStep:(const BCCFIStep *)step fromStep:(BCCFIStep *)fromStep
{
  var0 = fromStep->var0;
  if (fromStep->var0 != step->var0)
  {
    v13 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v24 = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v17 = "Unexpected state in %@ %@.";
LABEL_21:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v17, &v24, 0x16u);
    }

LABEL_22:

    return 0;
  }

  if (var0 == 5)
  {
    v18 = fromStep->var1.var0.var0;
    v19 = step->var1.var0.var0;
    if (v19 > v18)
    {
      v20 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Subtracting an offset that is too large.", &v24, 2u);
      }

      v19 = v18;
    }

    v21 = v18 - v19;
    goto LABEL_25;
  }

  if (var0 != 1)
  {
    v13 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v15 = NSStringFromClass(v22);
      v16 = NSStringFromSelector(a2);
      v24 = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v17 = "Unexpected step type in %@ %@.";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v8 = fromStep->var1.var0.var0;
  v9 = step->var1.var0.var0;
  if (v9 > v8)
  {
    v10 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Subtracting an index that is too large.", &v24, 2u);
    }

    v9 = v8;
  }

  v11 = v8 - v9;
  fromStep->var1.var0.var0 = v11;
  if (step->var0 == 1)
  {
    v12 = 1;
    if ((step->var1.var0.var0 & 1) == 0)
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 1;
  }

  v21 = v12 + v11;
LABEL_25:
  fromStep->var1.var0.var0 = v21;
  return 1;
}

+ (id)_cfiLocationFromHeadOf:(id)of toTailOf:(id)tailOf
{
  ofCopy = of;
  tailOfCopy = tailOf;
  v29 = 0;
  v30 = 0;
  sub_A4734(ofCopy, tailOfCopy, 1, 0, &v30, &v29);
  v7 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"epubcfi(");
  v9 = ofCopy[1];
  v8 = ofCopy[2];
  v10 = 0;
  if (v9 < v8 && v30 != 0)
  {
    do
    {
      sub_A6FDC(v7, v9);
      ++v10;
      v9 += 32;
      v8 = ofCopy[2];
    }

    while (v9 < v8 && v10 < v30);
  }

  v13 = ofCopy[3];
  while (v8 < v13)
  {
    if (v10 < v30)
    {
      sub_A6FDC(v7, v8);
      v13 = ofCopy[3];
    }

    ++v10;
    v8 += 32;
  }

  [v7 appendString:{@", "}];
  v15 = ofCopy[1];
  v14 = ofCopy[2];
  if (v15 >= v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      if (v16 >= v30)
      {
        sub_A6FDC(v7, v15);
        v14 = ofCopy[2];
      }

      ++v16;
      v15 += 32;
    }

    while (v15 < v14);
  }

  v17 = ofCopy[3];
  while (v14 < v17)
  {
    if (v16 >= v30)
    {
      sub_A6FDC(v7, v14);
      v17 = ofCopy[3];
    }

    ++v16;
    v14 += 32;
  }

  [v7 appendString:{@", "}];
  v19 = tailOfCopy[1];
  v18 = tailOfCopy[2];
  if (v19 >= v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    do
    {
      if (v20 >= v29)
      {
        sub_A6FDC(v7, v19);
        v18 = tailOfCopy[2];
      }

      ++v20;
      v19 += 32;
    }

    while (v19 < v18);
  }

  v22 = tailOfCopy[3];
  v21 = tailOfCopy[4];
  while (v22 < v21)
  {
    if (v20 >= v29)
    {
      sub_A6FDC(v7, v22);
      v21 = tailOfCopy[4];
    }

    ++v20;
    v22 += 32;
  }

  [v7 appendString:@""]);
  v28 = 0;
  v23 = [BCCFI cfiWithString:v7 error:&v28];
  v24 = v28;
  if (v24)
  {
    v25 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v24;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Failed to create CFI. %@", buf, 0xCu);
    }
  }

  if (!v23)
  {
    v26 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = ofCopy;
      v33 = 2112;
      v34 = tailOfCopy;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Failed to create CFI from %@ to %@", buf, 0x16u);
    }
  }

  return v23;
}

+ (id)_cfiLocationFromTailOf:(id)of toHeadOf:(id)headOf
{
  ofCopy = of;
  headOfCopy = headOf;
  v29 = 0;
  v30 = 0;
  v7 = 0;
  if (sub_A4734(ofCopy, headOfCopy, 0, 1, &v30, &v29) != 1)
  {
    v8 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"epubcfi(");
    v9 = ofCopy[1];
    v10 = 0;
    if (v9 < ofCopy[2] && v30 != 0)
    {
      do
      {
        sub_A6FDC(v8, v9);
        ++v10;
        v9 += 32;
      }

      while (v9 < ofCopy[2] && v10 < v30);
    }

    v14 = ofCopy[3];
    v13 = ofCopy[4];
    while (v14 < v13)
    {
      if (v10 < v30)
      {
        sub_A6FDC(v8, v14);
        v13 = ofCopy[4];
      }

      ++v10;
      v14 += 32;
    }

    [v8 appendString:{@", "}];
    v16 = ofCopy[1];
    v15 = ofCopy[2];
    if (v16 >= v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      do
      {
        if (v17 >= v30)
        {
          sub_A6FDC(v8, v16);
          v15 = ofCopy[2];
        }

        ++v17;
        v16 += 32;
      }

      while (v16 < v15);
    }

    v19 = ofCopy[3];
    v18 = ofCopy[4];
    while (v19 < v18)
    {
      if (v17 >= v30)
      {
        sub_A6FDC(v8, v19);
        v18 = ofCopy[4];
      }

      ++v17;
      v19 += 32;
    }

    [v8 appendString:{@", "}];
    v21 = headOfCopy[1];
    v20 = headOfCopy[2];
    if (v21 >= v20)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        if (v22 >= v29)
        {
          sub_A6FDC(v8, v21);
          v20 = headOfCopy[2];
        }

        ++v22;
        v21 += 32;
      }

      while (v21 < v20);
    }

    v23 = headOfCopy[3];
    while (v20 < v23)
    {
      if (v22 >= v29)
      {
        sub_A6FDC(v8, v20);
        v23 = headOfCopy[3];
      }

      ++v22;
      v20 += 32;
    }

    [v8 appendString:@""]);
    v28 = 0;
    v7 = [BCCFI cfiWithString:v8 error:&v28];
    v24 = v28;
    if (v24)
    {
      v25 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v24;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Failed to create CFI. %@", buf, 0xCu);
      }
    }

    if (!v7)
    {
      v26 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = ofCopy;
        v33 = 2112;
        v34 = headOfCopy;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Failed to create CFI from %@ to %@", buf, 0x16u);
      }
    }
  }

  return v7;
}

@end