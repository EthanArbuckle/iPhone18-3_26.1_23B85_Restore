@interface HKPIIRedactor
+ (id)_SSNRegularExpressionWithError:(id *)error;
+ (id)_longNumberRegexWithError:(id *)error;
+ (id)_redactFullWordRegexWithError:(id *)error;
+ (id)redactorWithNames:(id)names error:(id *)error;
- (HKPIIRedactor)initWithCoder:(id)coder;
- (id)redactedStringWithString:(id)string options:(unint64_t)options redactedCount:(unint64_t *)count;
- (unint64_t)_redactDataDetectorTypesFromString:(id)string options:(unint64_t)options;
- (unint64_t)_redactLongNumbersFromString:(id)string;
- (unint64_t)_redactNamesFromString:(id)string;
- (unint64_t)_redactSSNsFromString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKPIIRedactor

+ (id)redactorWithNames:(id)names error:(id *)error
{
  namesCopy = names;
  v7 = objc_alloc_init(HKPIIRedactor);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:2104 error:error];
  dataDetectorAll = v7->_dataDetectorAll;
  v7->_dataDetectorAll = v8;

  dataDetectorAll = [(HKPIIRedactor *)v7 dataDetectorAll];

  if (!dataDetectorAll)
  {
    goto LABEL_10;
  }

  v11 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:2072 error:error];
  dataDetectorSkipLink = v7->_dataDetectorSkipLink;
  v7->_dataDetectorSkipLink = v11;

  dataDetectorSkipLink = [(HKPIIRedactor *)v7 dataDetectorSkipLink];

  if (!dataDetectorSkipLink)
  {
    goto LABEL_10;
  }

  v14 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:56 error:error];
  dataDetectorSkipPhoneNumbers = v7->_dataDetectorSkipPhoneNumbers;
  v7->_dataDetectorSkipPhoneNumbers = v14;

  dataDetectorSkipPhoneNumbers = [(HKPIIRedactor *)v7 dataDetectorSkipPhoneNumbers];

  if (!dataDetectorSkipPhoneNumbers)
  {
    goto LABEL_10;
  }

  v17 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:24 error:error];
  dataDetectorSkipLinkSkipPhoneNumbers = v7->_dataDetectorSkipLinkSkipPhoneNumbers;
  v7->_dataDetectorSkipLinkSkipPhoneNumbers = v17;

  dataDetectorSkipLinkSkipPhoneNumbers = [(HKPIIRedactor *)v7 dataDetectorSkipLinkSkipPhoneNumbers];

  if (!dataDetectorSkipLinkSkipPhoneNumbers)
  {
    goto LABEL_10;
  }

  v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:namesCopy];
  names = v7->_names;
  v7->_names = v20;

  v22 = [self _redactFullWordRegexWithError:error];
  fullWordRegex = v7->_fullWordRegex;
  v7->_fullWordRegex = v22;

  fullWordRegex = [(HKPIIRedactor *)v7 fullWordRegex];

  if (!fullWordRegex)
  {
    goto LABEL_10;
  }

  v25 = [self _SSNRegularExpressionWithError:error];
  SSNRegex = v7->_SSNRegex;
  v7->_SSNRegex = v25;

  sSNRegex = [(HKPIIRedactor *)v7 SSNRegex];

  if (sSNRegex)
  {
    v28 = [self _longNumberRegexWithError:error];
    longNumberRegex = v7->_longNumberRegex;
    v7->_longNumberRegex = v28;

    longNumberRegex = [(HKPIIRedactor *)v7 longNumberRegex];

    if (longNumberRegex)
    {
      longNumberRegex = v7;
    }
  }

  else
  {
LABEL_10:
    longNumberRegex = 0;
  }

  return longNumberRegex;
}

- (id)redactedStringWithString:(id)string options:(unint64_t)options redactedCount:(unint64_t *)count
{
  v8 = [MEMORY[0x1E696AD60] stringWithString:string];
  if (options)
  {
    v9 = 0;
    if ((options & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = [(HKPIIRedactor *)self _redactDataDetectorTypesFromString:v8 options:options];
  if ((options & 4) == 0)
  {
LABEL_5:
    v9 += [(HKPIIRedactor *)self _redactNamesFromString:v8];
  }

LABEL_6:
  if ((options & 2) != 0)
  {
    if ((options & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 += [(HKPIIRedactor *)self _redactSSNsFromString:v8];
    if ((options & 8) != 0)
    {
LABEL_8:
      if (!count)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v9 += [(HKPIIRedactor *)self _redactLongNumbersFromString:v8];
  if (count)
  {
LABEL_9:
    *count = v9;
  }

LABEL_10:

  return v8;
}

- (unint64_t)_redactDataDetectorTypesFromString:(id)string options:(unint64_t)options
{
  optionsCopy = options;
  v6 = ~options;
  stringCopy = string;
  if ((v6 & 0x30) != 0)
  {
    if ((optionsCopy & 0x10) != 0)
    {
      dataDetectorSkipLink = [(HKPIIRedactor *)self dataDetectorSkipLink];
    }

    else
    {
      if ((optionsCopy & 0x20) != 0)
      {
        [(HKPIIRedactor *)self dataDetectorSkipPhoneNumbers];
      }

      else
      {
        [(HKPIIRedactor *)self dataDetectorAll];
      }
      dataDetectorSkipLink = ;
    }
  }

  else
  {
    dataDetectorSkipLink = [(HKPIIRedactor *)self dataDetectorSkipLinkSkipPhoneNumbers];
  }

  v9 = dataDetectorSkipLink;
  v10 = [dataDetectorSkipLink replaceMatchesInString:stringCopy options:0 range:0 withTemplate:{objc_msgSend(stringCopy, "length"), @"█████"}];

  return v10;
}

- (unint64_t)_redactSSNsFromString:(id)string
{
  stringCopy = string;
  sSNRegex = [(HKPIIRedactor *)self SSNRegex];

  if (sSNRegex)
  {
    sSNRegex2 = [(HKPIIRedactor *)self SSNRegex];
    v7 = [sSNRegex2 replaceMatchesInString:stringCopy options:0 range:0 withTemplate:{objc_msgSend(stringCopy, "length"), @"█████"}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_SSNRegularExpressionWithError:(id *)error
{
  v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\b(?!219(?:-|)?09(?:-|)?9999|078(?:-|)?05(?:-|)?1120)(?!666|000|9\\d{2})\\d{3}(?:-|)?(?!00)\\d{2}(?:-|)?(?!0{4})\\d{4}\\b" options:64 error:error];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (unint64_t)_redactNamesFromString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  names = [(HKPIIRedactor *)self names];

  if (names)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    names2 = [(HKPIIRedactor *)self names];
    v7 = [names2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(names2);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 length] >= 2)
        {
          v9 += [stringCopy replaceOccurrencesOfString:v12 withString:@"xxREPLACExx" options:385 range:{0, objc_msgSend(stringCopy, "length")}];
        }
      }

      v8 = [names2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);

    if (v9)
    {
      names2 = [(HKPIIRedactor *)self fullWordRegex];
      v13 = [names2 replaceMatchesInString:stringCopy options:0 range:0 withTemplate:{objc_msgSend(stringCopy, "length"), @"█████"}];
LABEL_15:

      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_16:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)_redactFullWordRegexWithError:(id *)error
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\\b(?:\\.|\\w)*%@(?:\\.|\\w)*\\b", @"xxREPLACExx"];
  v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v4 options:64 error:error];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (unint64_t)_redactLongNumbersFromString:(id)string
{
  v33 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  longNumberRegex = [(HKPIIRedactor *)self longNumberRegex];

  if (longNumberRegex)
  {
    v6 = objc_opt_new();
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    longNumberRegex2 = [(HKPIIRedactor *)self longNumberRegex];
    v8 = [stringCopy length];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __46__HKPIIRedactor__redactLongNumbersFromString___block_invoke;
    v25[3] = &unk_1E737D448;
    v9 = v6;
    v26 = v9;
    v27 = &v28;
    [longNumberRegex2 enumerateMatchesInString:stringCopy options:0 range:0 usingBlock:{v8, v25}];

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

          rangeValue = [*(*(&v21 + 1) + 8 * v13) rangeValue];
          v16 = v15;
          v17 = [&stru_1F05FF230 stringByPaddingToLength:v15 withString:@"█" startingAtIndex:0];
          [stringCopy replaceCharactersInRange:rangeValue withString:{v16, v17}];

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

+ (id)_longNumberRegexWithError:(id *)error
{
  v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(?:(?:\\d{2}(?:(\\d*)\\.(\\d+)))|(?:\\d\\.\\d(\\d+))|(?:\\d{2}(\\d+)))(?:[eE][-+]?(\\d+))?" options:0 error:error];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  dataDetectorAll = self->_dataDetectorAll;
  coderCopy = coder;
  [coderCopy encodeObject:dataDetectorAll forKey:@"DataDetectorAll"];
  [coderCopy encodeObject:self->_dataDetectorSkipLink forKey:@"DataDetectorSkipLink"];
  [coderCopy encodeObject:self->_dataDetectorSkipPhoneNumbers forKey:@"DataDetectorSkipPhoneNumbers"];
  [coderCopy encodeObject:self->_dataDetectorSkipLinkSkipPhoneNumbers forKey:@"DataDetectorSkipLinkSkipPhoneNumbers"];
  [coderCopy encodeObject:self->_names forKey:@"Names"];
  [coderCopy encodeObject:self->_fullWordRegex forKey:@"FullWordRegex"];
  [coderCopy encodeObject:self->_SSNRegex forKey:@"SSNRegex"];
  [coderCopy encodeObject:self->_longNumberRegex forKey:@"LongNumberRegex"];
}

- (HKPIIRedactor)initWithCoder:(id)coder
{
  v28[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = HKPIIRedactor;
  v5 = [(HKPIIRedactor *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataDetectorAll"];
    dataDetectorAll = v5->_dataDetectorAll;
    v5->_dataDetectorAll = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataDetectorSkipLink"];
    dataDetectorSkipLink = v5->_dataDetectorSkipLink;
    v5->_dataDetectorSkipLink = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataDetectorSkipPhoneNumbers"];
    dataDetectorSkipPhoneNumbers = v5->_dataDetectorSkipPhoneNumbers;
    v5->_dataDetectorSkipPhoneNumbers = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataDetectorSkipLinkSkipPhoneNumbers"];
    dataDetectorSkipLinkSkipPhoneNumbers = v5->_dataDetectorSkipLinkSkipPhoneNumbers;
    v5->_dataDetectorSkipLinkSkipPhoneNumbers = v12;

    v14 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"Names"];
    names = v5->_names;
    v5->_names = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FullWordRegex"];
    fullWordRegex = v5->_fullWordRegex;
    v5->_fullWordRegex = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSNRegex"];
    SSNRegex = v5->_SSNRegex;
    v5->_SSNRegex = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LongNumberRegex"];
    longNumberRegex = v5->_longNumberRegex;
    v5->_longNumberRegex = v23;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

@end