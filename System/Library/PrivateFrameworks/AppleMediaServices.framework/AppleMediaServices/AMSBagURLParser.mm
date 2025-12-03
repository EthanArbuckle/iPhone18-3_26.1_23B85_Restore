@interface AMSBagURLParser
+ (_NSRange)_rangeOfTemplateInURLString:(id)string;
+ (_NSRange)_rangeofSubstringWithOpeningTag:(id)tag closingTag:(id)closingTag inString:(id)string;
+ (id)URLBySubstitutingVariablesInURLString:(id)string usingBlock:(id)block;
+ (id)URLBySubstitutingVariablesInURLString:(id)string usingPromiseBlock:(id)block;
+ (id)_URLBySubstitutingVariablesInURLString:(id)string range:(_NSRange)range usingPromiseBlock:(id)block;
+ (id)_firstVariableInTemplate:(id)template includeTags:(BOOL)tags;
@end

@implementation AMSBagURLParser

+ (id)URLBySubstitutingVariablesInURLString:(id)string usingPromiseBlock:(id)block
{
  blockCopy = block;
  stringCopy = string;
  v8 = [self _rangeOfTemplateInURLString:stringCopy];
  v10 = [self _URLBySubstitutingVariablesInURLString:stringCopy range:v8 usingPromiseBlock:{v9, blockCopy}];

  return v10;
}

+ (id)_URLBySubstitutingVariablesInURLString:(id)string range:(_NSRange)range usingPromiseBlock:(id)block
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  blockCopy = block;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
    if (v11)
    {
      v12 = [AMSPromise promiseWithResult:v11];
    }

    else
    {
      stringCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSURL initializer returned nil. URL string = %@", stringCopy];
      v19 = AMSError(2, @"Failed to create URL from URL string", stringCopy, 0);
      v12 = [AMSPromise promiseWithError:v19];
    }
  }

  else
  {
    v13 = [stringCopy substringWithRange:{location, length}];
    v11 = [self _firstVariableInTemplate:v13 includeTags:0];
    v14 = +[AMSOptional optionalWithNil];
    v15 = [AMSPromise promiseWithResult:v14];

    if (v11)
    {
      v16 = blockCopy[2](blockCopy, v11);

      v15 = v16;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __82__AMSBagURLParser__URLBySubstitutingVariablesInURLString_range_usingPromiseBlock___block_invoke;
    v21[3] = &unk_1E73B4C58;
    selfCopy = self;
    v26 = location;
    v27 = length;
    v22 = stringCopy;
    v23 = v13;
    v24 = blockCopy;
    v17 = v13;
    v12 = [v15 continueWithBlock:v21];
  }

  return v12;
}

id __82__AMSBagURLParser__URLBySubstitutingVariablesInURLString_range_usingPromiseBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a2 value];
  v8 = *(a1 + 32);
  if (v6)
  {
    v9 = +[AMSLogConfig sharedBagConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = v13;
      if (v11)
      {
        v3 = AMSLogKey();
        [v12 stringWithFormat:@"%@: [%@] ", v14, v3];
      }

      else
      {
        [v12 stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      v16 = AMSLogableError(v6);
      *buf = 138543618;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get value for variable. Placeholder will be removed from URL string. error = %{public}@", buf, 0x16u);
      if (v11)
      {

        v15 = v3;
      }
    }
  }

  if (v7)
  {
    v17 = [v8 stringByReplacingOccurrencesOfString:@"{" withString:&stru_1F071BA78 options:0 range:{*(a1 + 64), *(a1 + 72)}];

    v18 = [v17 stringByReplacingOccurrencesOfString:@"}" withString:&stru_1F071BA78 options:0 range:{*(a1 + 64), *(a1 + 72) - 1}];

    v8 = [*(a1 + 56) _firstVariableInTemplate:*(a1 + 40) includeTags:1];
    v19 = [v18 stringByReplacingOccurrencesOfString:v8 withString:v7 options:0 range:{*(a1 + 64), *(a1 + 72) - 2}];
  }

  else
  {
    v19 = [v8 stringByReplacingOccurrencesOfString:*(a1 + 40) withString:&stru_1F071BA78 options:0 range:{*(a1 + 64), *(a1 + 72)}];
  }

  v20 = [*(a1 + 56) _rangeOfTemplateInURLString:v19];
  v22 = [*(a1 + 56) _URLBySubstitutingVariablesInURLString:v19 range:v20 usingPromiseBlock:{v21, *(a1 + 48)}];

  return v22;
}

+ (id)URLBySubstitutingVariablesInURLString:(id)string usingBlock:(id)block
{
  v38 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  blockCopy = block;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __68__AMSBagURLParser_URLBySubstitutingVariablesInURLString_usingBlock___block_invoke;
  v32[3] = &unk_1E73B4C80;
  v8 = blockCopy;
  v33 = v8;
  v9 = [self URLBySubstitutingVariablesInURLString:stringCopy usingPromiseBlock:v32];
  v31 = 0;
  v10 = [v9 resultWithError:&v31];
  v11 = v31;

  if (v11)
  {
    v12 = +[AMSUnitTests isRunningUnitTests];
    v13 = +[AMSLogConfig sharedBagConfig];
    defaultCenter = v13;
    if (v12)
    {
      if (!v13)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v16 = AMSLogKey();
        v17 = MEMORY[0x1E696AEC0];
        v18 = objc_opt_class();
        v19 = v18;
        if (v16)
        {
          self = AMSLogKey();
          [v17 stringWithFormat:@"%@: [%@] ", v19, self];
        }

        else
        {
          [v17 stringWithFormat:@"%@: ", v18];
        }
        selfCopy = ;
        v27 = AMSLogableError(v11);
        *buf = 138543618;
        v35 = selfCopy;
        v36 = 2114;
        v37 = v27;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Unexpected error occurred when substituting values into template URL string. Defaulting to original string with no substitution. error = %{public}@", buf, 0x16u);
        if (v16)
        {

          selfCopy = self;
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject2 = +[AMSLogConfig sharedBagConfig];
      [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
    }

    else
    {
      if (!v13)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
      {
        v22 = AMSLogKey();
        v23 = MEMORY[0x1E696AEC0];
        v24 = objc_opt_class();
        v25 = v24;
        if (v22)
        {
          self = AMSLogKey();
          [v23 stringWithFormat:@"%@: [%@] ", v25, self];
        }

        else
        {
          [v23 stringWithFormat:@"%@: ", v24];
        }
        selfCopy2 = ;
        v28 = AMSLogableError(v11);
        *buf = 138543618;
        v35 = selfCopy2;
        v36 = 2114;
        v37 = v28;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Unexpected error occurred when substituting values into template URL string. Defaulting to original string with no substitution. error = %{public}@", buf, 0x16u);
        if (v22)
        {

          selfCopy2 = self;
        }
      }
    }

    v29 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];

    v10 = v29;
  }

  return v10;
}

id __68__AMSBagURLParser_URLBySubstitutingVariablesInURLString_usingBlock___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [[AMSOptional alloc] initWithValue:v1];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

+ (id)_firstVariableInTemplate:(id)template includeTags:(BOOL)tags
{
  templateCopy = template;
  v7 = [self _rangeofSubstringWithOpeningTag:@"$" closingTag:@"$" inString:templateCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = [templateCopy substringWithRange:{v7, v8}];
    v9 = v10;
    if (!tags)
    {
      v11 = [v10 stringByReplacingOccurrencesOfString:@"$" withString:&stru_1F071BA78];

      v9 = v11;
    }
  }

  return v9;
}

+ (_NSRange)_rangeofSubstringWithOpeningTag:(id)tag closingTag:(id)closingTag inString:(id)string
{
  closingTagCopy = closingTag;
  stringCopy = string;
  v9 = [stringCopy rangeOfString:tag];
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v12 = v9;
    v13 = [stringCopy rangeOfString:closingTagCopy options:0 range:{v9 + 1, objc_msgSend(stringCopy, "length") - (v9 + 1)}];
    v14 = v13 != 0x7FFFFFFFFFFFFFFFLL && v13 > v12;
    if (v14)
    {
      v10 = v12;
    }

    if (v14)
    {
      v11 = v13 - v12 + 1;
    }

    else
    {
      v11 = 0;
    }
  }

  v15 = v10;
  v16 = v11;
  result.length = v16;
  result.location = v15;
  return result;
}

+ (_NSRange)_rangeOfTemplateInURLString:(id)string
{
  v3 = [self _rangeofSubstringWithOpeningTag:@"{" closingTag:@"}" inString:string];
  result.length = v4;
  result.location = v3;
  return result;
}

@end