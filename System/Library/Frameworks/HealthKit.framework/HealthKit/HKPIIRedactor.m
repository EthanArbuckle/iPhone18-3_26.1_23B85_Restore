@interface HKPIIRedactor
+ (id)_SSNRegularExpressionWithError:(id *)a3;
+ (id)_longNumberRegexWithError:(id *)a3;
+ (id)_redactFullWordRegexWithError:(id *)a3;
+ (id)redactorWithNames:(id)a3 error:(id *)a4;
- (HKPIIRedactor)initWithCoder:(id)a3;
- (id)redactedStringWithString:(id)a3 options:(unint64_t)a4 redactedCount:(unint64_t *)a5;
- (unint64_t)_redactDataDetectorTypesFromString:(id)a3 options:(unint64_t)a4;
- (unint64_t)_redactLongNumbersFromString:(id)a3;
- (unint64_t)_redactNamesFromString:(id)a3;
- (unint64_t)_redactSSNsFromString:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKPIIRedactor

+ (id)redactorWithNames:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(HKPIIRedactor);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:2104 error:a4];
  dataDetectorAll = v7->_dataDetectorAll;
  v7->_dataDetectorAll = v8;

  v10 = [(HKPIIRedactor *)v7 dataDetectorAll];

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:2072 error:a4];
  dataDetectorSkipLink = v7->_dataDetectorSkipLink;
  v7->_dataDetectorSkipLink = v11;

  v13 = [(HKPIIRedactor *)v7 dataDetectorSkipLink];

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:56 error:a4];
  dataDetectorSkipPhoneNumbers = v7->_dataDetectorSkipPhoneNumbers;
  v7->_dataDetectorSkipPhoneNumbers = v14;

  v16 = [(HKPIIRedactor *)v7 dataDetectorSkipPhoneNumbers];

  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:24 error:a4];
  dataDetectorSkipLinkSkipPhoneNumbers = v7->_dataDetectorSkipLinkSkipPhoneNumbers;
  v7->_dataDetectorSkipLinkSkipPhoneNumbers = v17;

  v19 = [(HKPIIRedactor *)v7 dataDetectorSkipLinkSkipPhoneNumbers];

  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
  names = v7->_names;
  v7->_names = v20;

  v22 = [a1 _redactFullWordRegexWithError:a4];
  fullWordRegex = v7->_fullWordRegex;
  v7->_fullWordRegex = v22;

  v24 = [(HKPIIRedactor *)v7 fullWordRegex];

  if (!v24)
  {
    goto LABEL_10;
  }

  v25 = [a1 _SSNRegularExpressionWithError:a4];
  SSNRegex = v7->_SSNRegex;
  v7->_SSNRegex = v25;

  v27 = [(HKPIIRedactor *)v7 SSNRegex];

  if (v27)
  {
    v28 = [a1 _longNumberRegexWithError:a4];
    longNumberRegex = v7->_longNumberRegex;
    v7->_longNumberRegex = v28;

    v30 = [(HKPIIRedactor *)v7 longNumberRegex];

    if (v30)
    {
      v30 = v7;
    }
  }

  else
  {
LABEL_10:
    v30 = 0;
  }

  return v30;
}

- (id)redactedStringWithString:(id)a3 options:(unint64_t)a4 redactedCount:(unint64_t *)a5
{
  v8 = [MEMORY[0x1E696AD60] stringWithString:a3];
  if (a4)
  {
    v9 = 0;
    if ((a4 & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = [(HKPIIRedactor *)self _redactDataDetectorTypesFromString:v8 options:a4];
  if ((a4 & 4) == 0)
  {
LABEL_5:
    v9 += [(HKPIIRedactor *)self _redactNamesFromString:v8];
  }

LABEL_6:
  if ((a4 & 2) != 0)
  {
    if ((a4 & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 += [(HKPIIRedactor *)self _redactSSNsFromString:v8];
    if ((a4 & 8) != 0)
    {
LABEL_8:
      if (!a5)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v9 += [(HKPIIRedactor *)self _redactLongNumbersFromString:v8];
  if (a5)
  {
LABEL_9:
    *a5 = v9;
  }

LABEL_10:

  return v8;
}

- (unint64_t)_redactDataDetectorTypesFromString:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = ~a4;
  v7 = a3;
  if ((v6 & 0x30) != 0)
  {
    if ((v4 & 0x10) != 0)
    {
      v8 = [(HKPIIRedactor *)self dataDetectorSkipLink];
    }

    else
    {
      if ((v4 & 0x20) != 0)
      {
        [(HKPIIRedactor *)self dataDetectorSkipPhoneNumbers];
      }

      else
      {
        [(HKPIIRedactor *)self dataDetectorAll];
      }
      v8 = ;
    }
  }

  else
  {
    v8 = [(HKPIIRedactor *)self dataDetectorSkipLinkSkipPhoneNumbers];
  }

  v9 = v8;
  v10 = [v8 replaceMatchesInString:v7 options:0 range:0 withTemplate:{objc_msgSend(v7, "length"), @"█████"}];

  return v10;
}

- (unint64_t)_redactSSNsFromString:(id)a3
{
  v4 = a3;
  v5 = [(HKPIIRedactor *)self SSNRegex];

  if (v5)
  {
    v6 = [(HKPIIRedactor *)self SSNRegex];
    v7 = [v6 replaceMatchesInString:v4 options:0 range:0 withTemplate:{objc_msgSend(v4, "length"), @"█████"}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_SSNRegularExpressionWithError:(id *)a3
{
  v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\b(?!219(?:-|)?09(?:-|)?9999|078(?:-|)?05(?:-|)?1120)(?!666|000|9\\d{2})\\d{3}(?:-|)?(?!00)\\d{2}(?:-|)?(?!0{4})\\d{4}\\b" options:64 error:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (unint64_t)_redactNamesFromString:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKPIIRedactor *)self names];

  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(HKPIIRedactor *)self names];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v7)
    {
      v13 = 0;
      goto LABEL_15;
    }

    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 length] >= 2)
        {
          v9 += [v4 replaceOccurrencesOfString:v12 withString:@"xxREPLACExx" options:385 range:{0, objc_msgSend(v4, "length")}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);

    if (v9)
    {
      v6 = [(HKPIIRedactor *)self fullWordRegex];
      v13 = [v6 replaceMatchesInString:v4 options:0 range:0 withTemplate:{objc_msgSend(v4, "length"), @"█████"}];
LABEL_15:

      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_16:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)_redactFullWordRegexWithError:(id *)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\\b(?:\\.|\\w)*%@(?:\\.|\\w)*\\b", @"xxREPLACExx"];
  v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v4 options:64 error:a3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (unint64_t)_redactLongNumbersFromString:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKPIIRedactor *)self longNumberRegex];

  if (v5)
  {
    v6 = objc_opt_new();
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v7 = [(HKPIIRedactor *)self longNumberRegex];
    v8 = [v4 length];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __46__HKPIIRedactor__redactLongNumbersFromString___block_invoke;
    v25[3] = &unk_1E737D448;
    v9 = v6;
    v26 = v9;
    v27 = &v28;
    [v7 enumerateMatchesInString:v4 options:0 range:0 usingBlock:{v8, v25}];

    v20 = v29[3];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v32 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v21 + 1) + 8 * v13) rangeValue];
          v16 = v15;
          v17 = [&stru_1F05FF230 stringByPaddingToLength:v15 withString:@"█" startingAtIndex:0];
          [v4 replaceCharactersInRange:v14 withString:{v16, v17}];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v32 count:16];
      }

      while (v11);
    }

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v20 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v20;
}

void __46__HKPIIRedactor__redactLongNumbersFromString___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 resultType] == 1024 && objc_msgSend(v9, "numberOfRanges") >= 2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      while (1)
      {
        v6 = [v9 rangeAtIndex:v4];
        if (v6 == 0x7FFFFFFFFFFFFFFFLL && !v5)
        {
          break;
        }

        v7 = *(a1 + 32);
        v8 = [MEMORY[0x1E696B098] valueWithRange:{v6, v5}];
        [v7 addObject:v8];

        ++v4;
        v3 = 1;
        if (v4 >= [v9 numberOfRanges])
        {
          goto LABEL_11;
        }
      }

      ++v4;
    }

    while (v4 < [v9 numberOfRanges]);
    if ((v3 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    ++*(*(*(a1 + 40) + 8) + 24);
  }

LABEL_12:
}

+ (id)_longNumberRegexWithError:(id *)a3
{
  v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(?:(?:\\d{2}(?:(\\d*)\\.(\\d+)))|(?:\\d\\.\\d(\\d+))|(?:\\d{2}(\\d+)))(?:[eE][-+]?(\\d+))?" options:0 error:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  dataDetectorAll = self->_dataDetectorAll;
  v5 = a3;
  [v5 encodeObject:dataDetectorAll forKey:@"DataDetectorAll"];
  [v5 encodeObject:self->_dataDetectorSkipLink forKey:@"DataDetectorSkipLink"];
  [v5 encodeObject:self->_dataDetectorSkipPhoneNumbers forKey:@"DataDetectorSkipPhoneNumbers"];
  [v5 encodeObject:self->_dataDetectorSkipLinkSkipPhoneNumbers forKey:@"DataDetectorSkipLinkSkipPhoneNumbers"];
  [v5 encodeObject:self->_names forKey:@"Names"];
  [v5 encodeObject:self->_fullWordRegex forKey:@"FullWordRegex"];
  [v5 encodeObject:self->_SSNRegex forKey:@"SSNRegex"];
  [v5 encodeObject:self->_longNumberRegex forKey:@"LongNumberRegex"];
}

- (HKPIIRedactor)initWithCoder:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = HKPIIRedactor;
  v5 = [(HKPIIRedactor *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataDetectorAll"];
    dataDetectorAll = v5->_dataDetectorAll;
    v5->_dataDetectorAll = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataDetectorSkipLink"];
    dataDetectorSkipLink = v5->_dataDetectorSkipLink;
    v5->_dataDetectorSkipLink = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataDetectorSkipPhoneNumbers"];
    dataDetectorSkipPhoneNumbers = v5->_dataDetectorSkipPhoneNumbers;
    v5->_dataDetectorSkipPhoneNumbers = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataDetectorSkipLinkSkipPhoneNumbers"];
    dataDetectorSkipLinkSkipPhoneNumbers = v5->_dataDetectorSkipLinkSkipPhoneNumbers;
    v5->_dataDetectorSkipLinkSkipPhoneNumbers = v12;

    v14 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"Names"];
    names = v5->_names;
    v5->_names = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FullWordRegex"];
    fullWordRegex = v5->_fullWordRegex;
    v5->_fullWordRegex = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSNRegex"];
    SSNRegex = v5->_SSNRegex;
    v5->_SSNRegex = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LongNumberRegex"];
    longNumberRegex = v5->_longNumberRegex;
    v5->_longNumberRegex = v23;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

@end