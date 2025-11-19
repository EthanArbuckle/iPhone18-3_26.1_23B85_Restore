@interface NSDataDetector
+ (NSDataDetector)dataDetectorWithTypes:(NSTextCheckingTypes)checkingTypes error:(NSError *)error;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSDataDetector)initWithCoder:(id)a3;
- (NSDataDetector)initWithPattern:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (NSDataDetector)initWithTypes:(NSTextCheckingTypes)checkingTypes error:(NSError *)error;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateMatchesInString:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5 usingBlock:(id)a6;
@end

@implementation NSDataDetector

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  internal = self->super._internal;
  if (internal)
  {
    CFRelease(internal);
    self->super._internal = 0;
  }

  v4.receiver = self;
  v4.super_class = NSDataDetector;
  [(NSRegularExpression *)&v4 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

+ (NSDataDetector)dataDetectorWithTypes:(NSTextCheckingTypes)checkingTypes error:(NSError *)error
{
  v4 = [[a1 alloc] initWithTypes:checkingTypes error:error];

  return v4;
}

- (NSDataDetector)initWithTypes:(NSTextCheckingTypes)checkingTypes error:(NSError *)error
{
  v16 = *MEMORY[0x1E69E9840];
  if ((checkingTypes & 0x1838) == 0)
  {
    v14 = [NSString stringWithFormat:@"%@: no data detector types specified", _NSMethodExceptionProem(self, a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0]);
  }

  v15.receiver = self;
  v15.super_class = NSDataDetector;
  v7 = [(NSDataDetector *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_types = checkingTypes;
    qword_1ED440088 = _NSFaultInObject(&qword_1ED440088, 0, &__block_literal_global_73);
    [qword_1ED440088 lock];
    if ((_MergedGlobals_146 & 1) == 0)
    {
      v9 = dlopen([@"/System/Library/PrivateFrameworks/DataDetectorsCore.framework/DataDetectorsCore" fileSystemRepresentation], 256);
      qword_1ED440080 = v9;
      if (v9)
      {
        off_1ED440048 = dlsym(v9, "DDScannerCreate");
        off_1ED440090 = dlsym(qword_1ED440080, "DDScannerReset");
        off_1ED440058 = dlsym(qword_1ED440080, "DDScannerScanStringWithRange");
        off_1ED440050 = dlsym(qword_1ED440080, "DDScannerSetProgressReportingBlock");
        off_1ED440070 = dlsym(qword_1ED440080, "DDScannerCopyResults");
        off_1ED440068 = dlsym(qword_1ED440080, "DDScannerCopyResultsCheckOverlap");
        off_1ED440060 = dlsym(qword_1ED440080, "DDScannerCopyResultsWithOptions");
        off_1ED440098 = dlsym(qword_1ED440080, "DDResultGetType");
        off_1ED440078 = dlsym(qword_1ED440080, "DDResultGetRange");
        off_1ED4400A0 = dlsym(qword_1ED440080, "DDResultGetRangeForURLification");
        off_1ED4400A8 = dlsym(qword_1ED440080, "DDResultGetSubResults");
        off_1ED4400B0 = dlsym(qword_1ED440080, "DDResultGetValue");
        *&xmmword_1ED4400B8 = dlsym(qword_1ED440080, "DDResultCopyExtractedURL");
        *(&xmmword_1ED4400B8 + 1) = dlsym(qword_1ED440080, "DDResultCopyExtractedURLWithOptions");
        off_1ED4400C8 = dlsym(qword_1ED440080, "DDResultCopyExtractedDateFromReferenceDate");
        off_1ED4400D0 = dlsym(qword_1ED440080, "DDResultCopyExtractedStartDateEndDate");
        off_1ED4400D8 = dlsym(qword_1ED440080, "DDResultCopyPhoneValue");
      }

      v10 = 0;
      _MergedGlobals_146 = 1;
      if (off_1ED440048)
      {
        if (off_1ED440090)
        {
          if (off_1ED440058)
          {
            if (off_1ED440050)
            {
              v10 = 0;
              if (off_1ED440070 | off_1ED440068 | off_1ED440060)
              {
                if (off_1ED440098)
                {
                  if (off_1ED440078)
                  {
                    if (off_1ED4400A0)
                    {
                      if (off_1ED4400A8)
                      {
                        if (off_1ED4400B0)
                        {
                          v10 = 0;
                          if (xmmword_1ED4400B8 != 0)
                          {
                            if (off_1ED4400C8)
                            {
                              v10 = off_1ED4400D0 != 0;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      byte_1ED440041 = v10;
    }

    [qword_1ED440088 unlock];
    v11 = byte_1ED440041;
    if (byte_1ED440041)
    {
      v12 = off_1ED440048((checkingTypes & 0x1818) == 0, 1, error);
      v8->super._internal = v12;
      if (v12)
      {
        return v8;
      }
    }

    else if (v8->super._internal)
    {
      return v8;
    }

    if (error && (v11 & 1) == 0)
    {
      *error = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:256 userInfo:0];
    }

    [(NSDataDetector *)v8 dealloc];
    return 0;
  }

  return v8;
}

- (NSDataDetector)initWithPattern:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v6 = [NSString stringWithFormat:@"%@: Not valid for NSDataDetector", _NSMethodExceptionProem(self, a2)];

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0]);
}

- (void)encodeWithCoder:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSDataDetector *)self checkingTypes];
  if ([a3 allowsKeyedCoding])
  {

    [a3 encodeInt64:v4 forKey:@"NSCheckingTypes"];
  }

  else
  {
    v5[0] = v4;
    [a3 encodeValueOfObjCType:"Q" at:v5];
  }
}

- (NSDataDetector)initWithCoder:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([a3 allowsKeyedCoding])
  {
    v6 = [a3 decodeInt64ForKey:@"NSCheckingTypes"];
    return [(NSDataDetector *)self initWithTypes:v6 error:0];
  }

  v11[0] = 0;
  v7 = [a3 versionForClassName:@"NSDataDetector"];
  if (v7 == 1)
  {
    [a3 decodeValueOfObjCType:"Q" at:v11 size:8];
    v6 = v11[0];
    return [(NSDataDetector *)self initWithTypes:v6 error:0];
  }

  v9 = v7;
  v10 = _NSFullMethodName(self, a2);
  NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v10, 1, v9);
  [(NSDataDetector *)self dealloc];
  return 0;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSDataDetector *)self checkingTypes];
  return v5 == [a3 checkingTypes];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSDataDetector;
  return [NSString stringWithFormat:@"%@ 0x%llx", [(NSRegularExpression *)&v3 description], self->_types];
}

- (void)enumerateMatchesInString:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5 usingBlock:(id)a6
{
  length = a5.length;
  location = a5.location;
  v9 = a4;
  v81[1] = *MEMORY[0x1E69E9840];
  v13 = [a3 length];
  v61 = v9;
  v62 = [(NSDataDetector *)self checkingTypes];
  v76 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = location;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __68__NSDataDetector_enumerateMatchesInString_options_range_usingBlock___block_invoke;
  v65[3] = &unk_1E69F7790;
  v66 = (v9 & 4) != 0;
  v67 = v9 & 1;
  v65[4] = a6;
  v65[5] = &v68;
  v59 = a6;
  v65[6] = &v72;
  if (!a3)
  {
    v50 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v50);
  }

  if (v13 < length || location > v13 - length)
  {
    v51 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v51);
  }

  v14 = 0;
  v15 = self;
  internal = self->super._internal;
  v56 = v15;
  atomic_compare_exchange_strong(&v15->super._checkout, &v14, 1u);
  v58 = v14 == 0;
  if (v14)
  {
    internal = off_1ED440048((v62 & 0x1818) == 0, 1, 0);
  }

  if (internal)
  {
    v55 = v9 & 5;
    if ((v9 & 5) != 0)
    {
      off_1ED440050(internal, v65);
    }

    if (off_1ED440058(internal, a3, location, length))
    {
      v64 = 0;
      v60 = v9 & 4;
      v63 = location + length;
      while (1)
      {
        if (v76 & 1) != 0 || (v73[3])
        {
LABEL_110:
          v47 = 0;
          goto LABEL_115;
        }

        if (off_1ED440060)
        {
          v17 = off_1ED440060(internal, 3);
        }

        else if (off_1ED440068)
        {
          v17 = off_1ED440068(internal, 1);
        }

        else
        {
          if (!off_1ED440070)
          {
            goto LABEL_114;
          }

          v17 = off_1ED440070(internal);
        }

        v18 = v17;
        if (!v17)
        {
LABEL_114:
          v47 = 1;
          goto LABEL_115;
        }

        if (CFArrayGetCount(v17) < 1)
        {
          CFRelease(v18);
          goto LABEL_114;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v18, 0);
        v20 = off_1ED440078(ValueAtIndex);
        v22 = v20 + v21;
        v64 |= v63 == v20 + v21;
        if (!v60 || v20 <= v69[3])
        {
          v23 = off_1ED440078(ValueAtIndex);
          v25 = v24;
          v26 = off_1ED4400A0(ValueAtIndex);
          if (v26 != -1 && v27 >= 1)
          {
            v28 = v26 + v27 <= v23 + v25 ? v27 : v25;
            v29 = v26 + v27 <= v23 + v25 ? v26 : v23;
            if (v26 >= v23)
            {
              v25 = v28;
              v23 = v29;
            }
          }

          if (v23 >= location && v23 + v25 <= v63)
          {
            break;
          }
        }

LABEL_107:
        CFRelease(v18);
        if ((v76 & 1) == 0)
        {
          v69[3] = v22;
          if (v63 > v22)
          {
            if (off_1ED440058(internal, a3, v22, v63 - v22))
            {
              continue;
            }
          }
        }

        goto LABEL_110;
      }

      v30 = off_1ED440098(ValueAtIndex);
      if ((v62 & 0x20) != 0 && (!*(&xmmword_1ED4400B8 + 1) ? (cf = xmmword_1ED4400B8(ValueAtIndex)) : (cf = (*(&xmmword_1ED4400B8 + 1))(ValueAtIndex, 0)), cf))
      {
        if (([@"PhoneNumber" isEqualToString:v30] & 1) == 0 && (objc_msgSend(@"QuotedShortPhoneNumber", "isEqualToString:", v30) & 1) == 0 && (objc_msgSend(@"UnquotedShortPhoneNumber", "isEqualToString:", v30) & 1) == 0)
        {
          v33 = [MEMORY[0x1E695DFF8] URLWithString:cf];
          if (v33 || (v33 = [MEMORY[0x1E695DFF8] URLWithString:{CFURLCreateStringByAddingPercentEscapes(0, objc_msgSend(cf, "stringByReplacingPercentEscapesUsingEncoding:", 4), @"#", 0, 0x8000100u)}]) != 0)
          {
            v33 = [[NSLinkCheckingResult alloc] initWithRange:v23 URL:v25, v33];
          }

LABEL_98:
          CFRelease(cf);
LABEL_99:
          if (v33)
          {
            if (v64)
            {
              v45 = 4;
            }

            else
            {
              v45 = 0;
            }

            if ((v61 & 0x2000) != 0)
            {
              v46 = 0;
            }

            else
            {
              v46 = v33;
            }

            v59[2](v59, v46, v45, &v76);
          }

          goto LABEL_107;
        }

        v54 = 0;
      }

      else
      {
        cf = 0;
        v54 = 1;
      }

      if ((v62 & 0x10) != 0 && (([@"FullAddress" isEqualToString:v30] & 1) != 0 || objc_msgSend(@"SignatureBlock", "isEqualToString:", v30)))
      {
        v31 = [MEMORY[0x1E695DF90] dictionary];
        addAddressResultsToComponents(ValueAtIndex, v31);
        if ([v31 count])
        {
          v32 = [NSAddressCheckingResult alloc];
          goto LABEL_54;
        }

        goto LABEL_65;
      }

      if ((v62 & 0x1000) != 0 && [@"FlightInformation" isEqualToString:v30])
      {
        v31 = [MEMORY[0x1E695DF90] dictionary];
        addAddressResultsToComponents(ValueAtIndex, v31);
        if ([v31 count])
        {
          v32 = [NSTransitInformationCheckingResult alloc];
LABEL_54:
          v33 = [(NSAddressCheckingResult *)v32 initWithRange:v23 components:v25 underlyingResult:v31, ValueAtIndex];
          goto LABEL_97;
        }

        goto LABEL_65;
      }

      if ((v62 & 0x800) != 0 && [@"PhoneNumber" isEqualToString:v30])
      {
        v81[0] = 0;
        if (off_1ED4400D8 && off_1ED4400D8(ValueAtIndex, v81, 0) && v81[0] || (v34 = off_1ED4400B0(ValueAtIndex), (v81[0] = v34) != 0) && (CFRetain(v34), v81[0]))
        {
          TypeID = CFStringGetTypeID();
          if (TypeID == CFGetTypeID(v81[0]))
          {
            v36 = [NSPhoneNumberCheckingResult alloc];
            v33 = [(NSPhoneNumberCheckingResult *)v36 initWithRange:v23 phoneNumber:v25 underlyingResult:v81[0], ValueAtIndex];
          }

          else
          {
            v33 = 0;
          }

          v44 = v81[0];
          if (v81[0])
          {
LABEL_96:
            CFRelease(v44);
          }

LABEL_97:
          if (v54)
          {
            goto LABEL_99;
          }

          goto LABEL_98;
        }
      }

      else if ((v62 & 8) != 0 && (([@"Date" isEqualToString:v30] & 1) != 0 || (objc_msgSend(@"Time", "isEqualToString:", v30) & 1) != 0 || (objc_msgSend(@"DateTime", "isEqualToString:", v30) & 1) != 0 || (objc_msgSend(@"DateDuration", "isEqualToString:", v30) & 1) != 0 || (objc_msgSend(@"TimeDuration", "isEqualToString:", v30) & 1) != 0 || objc_msgSend(@"Timestamp", "isEqualToString:", v30)))
      {
        v80 = 0;
        v81[0] = 0;
        v78 = 0;
        v79 = 0;
        v53 = [MEMORY[0x1E695DF00] date];
        v37 = [MEMORY[0x1E695DFE8] defaultTimeZone];
        v77 = 0;
        [v30 rangeOfString:@"Duration"];
        if (!v38 || !off_1ED4400D0(ValueAtIndex, v81, &v79, &v80, &v78, &v77, v53, v37))
        {
          off_1ED4400C8(ValueAtIndex, v53, v37, &v77, v81, &v79);
        }

        v39 = v81[0];
        v40 = 0.0;
        if (v81[0] && v80)
        {
          v41 = MEMORY[0x1865CDCB0]();
          v40 = v41 - MEMORY[0x1865CDCB0](v81[0]);
          v39 = v81[0];
        }

        if (v39)
        {
          v42 = [NSDateCheckingResult alloc];
          if (v79)
          {
            v43 = v79;
          }

          else
          {
            v43 = v78;
          }

          LOWORD(v52) = v77 == 0;
          v33 = [(NSDateCheckingResult *)v42 initWithRange:v23 date:v25 timeZone:v81[0] duration:v43 referenceDate:v53 underlyingResult:ValueAtIndex timeIsSignificant:v40 timeIsApproximate:v52];
          if (v81[0])
          {
            CFRelease(v81[0]);
          }
        }

        else
        {
          v33 = 0;
        }

        if (v79)
        {
          CFRelease(v79);
        }

        if (v80)
        {
          CFRelease(v80);
        }

        v44 = v78;
        if (v78)
        {
          goto LABEL_96;
        }

        goto LABEL_97;
      }

LABEL_65:
      v33 = 0;
      goto LABEL_97;
    }

    v47 = 0;
    v64 = 0;
LABEL_115:
    if (v55)
    {
      off_1ED440050(internal, 0);
    }
  }

  else
  {
    v47 = 0;
    v64 = 0;
  }

  if ((v61 & 2) != 0 && (v76 & 1) == 0 && (v73[3] & 1) == 0)
  {
    v48 = 2;
    if (v64)
    {
      v48 = 6;
    }

    if (v47)
    {
      v49 = v48 | 0x10;
    }

    else
    {
      v49 = v48;
    }

    v59[2](v59, 0, v49, &v76);
  }

  if (internal)
  {
    if (v58)
    {
      off_1ED440090(internal);
      atomic_fetch_and(&v56->super._checkout, 0);
    }

    else
    {
      CFRelease(internal);
    }
  }

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
}

uint64_t __68__NSDataDetector_enumerateMatchesInString_options_range_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == 1 && *(*(*(a1 + 40) + 8) + 24) < a2 >> 32)
  {
    return 0;
  }

  v2 = 1;
  if (*(a1 + 57) == 1)
  {
    (*(*(a1 + 32) + 16))();
  }

  return v2;
}

@end