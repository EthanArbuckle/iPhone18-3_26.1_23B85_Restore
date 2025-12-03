@interface FPErrorRedactionHelper
- (FPErrorRedactionHelper)initWithError:(id)error depth:(unint64_t)depth;
- (id)parseErrorIntoStringRedacted:(BOOL)redacted;
@end

@implementation FPErrorRedactionHelper

- (FPErrorRedactionHelper)initWithError:(id)error depth:(unint64_t)depth
{
  objc_storeStrong(&self->_error, error);
  self->_depth = depth;
  return self;
}

- (id)parseErrorIntoStringRedacted:(BOOL)redacted
{
  redactedCopy = redacted;
  string = [MEMORY[0x1E696AD60] string];
  domain = [(NSError *)self->_error domain];
  if ([domain isEqualToString:@"NSFileProviderErrorDomain"])
  {
    v7 = @"FP";
  }

  else if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v7 = @"Cocoa";
  }

  else
  {
    if (![domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      goto LABEL_8;
    }

    v7 = @"POSIX";
  }

  domain = v7;
LABEL_8:
  [string appendFormat:@"NSError: %@ %li ", domain, -[NSError code](self->_error, "code")];
  userInfo = [(NSError *)self->_error userInfo];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A278]];
  if (v9)
  {
    localizedDescription = v9;
    goto LABEL_11;
  }

  localizedDescription = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695E620]];
  if (localizedDescription)
  {
LABEL_11:
    if (![localizedDescription hasPrefix:@"Error Domain="])
    {
      goto LABEL_15;
    }
  }

  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  if (v11)
  {
    localizedDescription = v11;
  }

  else
  {
    localizedDescription = [(NSError *)self->_error localizedDescription];
    if (!localizedDescription)
    {
      goto LABEL_19;
    }
  }

LABEL_15:
  if (redactedCopy)
  {
    v12 = @"<private>";
  }

  else
  {
    v26 = localizedDescription;
    v12 = @"%@";
  }

  [string appendFormat:v12, v26];
LABEL_19:
  if (!userInfo)
  {
    goto LABEL_40;
  }

  if (self->_depth > 1)
  {
    [string appendString:@" UserInfo={(omitted)}"];
    goto LABEL_40;
  }

  [string appendString:@" UserInfo={"];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__30;
  v40 = __Block_byref_object_dispose__30;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __55__FPErrorRedactionHelper_parseErrorIntoStringRedacted___block_invoke;
  v27[3] = &unk_1E793ECF8;
  v29 = &v36;
  v31 = redactedCopy;
  v13 = string;
  v28 = v13;
  v30 = &v32;
  [userInfo enumerateKeysAndObjectsUsingBlock:v27];
  if (v33[3])
  {
    if (![v13 hasSuffix:{@", "}])
    {
      goto LABEL_27;
    }

    v14 = [v13 length] - 2;
    v15 = @"} ";
    v16 = 2;
  }

  else
  {
    v17 = [v13 length];
    v18 = [@" UserInfo={" length];
    v16 = [@" UserInfo={" length];
    v14 = v17 - v18;
    v15 = @" ";
  }

  [v13 replaceCharactersInRange:v14 withString:{v16, v15}];
LABEL_27:
  v19 = v37;
  if (v37[5])
  {
    ++v33[3];
    v20 = v19[5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [FPErrorRedactionHelper alloc];
      v22 = [(FPErrorRedactionHelper *)v21 initWithError:v37[5] depth:self->_depth + 1];
      v23 = v22;
      if (redactedCopy)
      {
        [(FPErrorRedactionHelper *)v22 redactedDescription];
      }

      else
      {
        [(FPErrorRedactionHelper *)v22 description];
      }
      v24 = ;
      [v13 appendFormat:@"Underlying={%@}", v24];

      goto LABEL_36;
    }

    if (!redactedCopy)
    {
      v23 = [v37[5] description];
      [v13 appendFormat:@"Underlying={%@}", v23];
LABEL_36:

      goto LABEL_37;
    }

    [v13 appendFormat:@"Underlying={<private>}"];
  }

LABEL_37:
  if (v33[3])
  {
    [v13 appendString:@"}"];
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

LABEL_40:

  return string;
}

void __55__FPErrorRedactionHelper_parseErrorIntoStringRedacted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (([v16 isEqual:*MEMORY[0x1E696A278]] & 1) == 0 && (objc_msgSend(v16, "isEqual:", *MEMORY[0x1E696A578]) & 1) == 0 && (objc_msgSend(v16, "isEqual:", *MEMORY[0x1E695E620]) & 1) == 0)
  {
    if ([v16 isEqual:*MEMORY[0x1E696AA08]])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      goto LABEL_19;
    }

    if (*(a1 + 56))
    {
      v6 = *(a1 + 32);
      v7 = @"<private>=<private>, ";
LABEL_17:
      [v6 appendFormat:v7, v14, v15];
      goto LABEL_18;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 isFileURL])
    {
      v8 = *(a1 + 32);
      v9 = [v5 fp_shortDescription];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v11 = v16;
      if ((isKindOfClass & 1) == 0 || ([v16 isEqual:*MEMORY[0x1E696A998]] & 1) == 0 && (v12 = objc_msgSend(v16, "isEqual:", *MEMORY[0x1E696A368]), v11 = v16, !v12))
      {
        v6 = *(a1 + 32);
        v14 = v11;
        v15 = v5;
        v7 = @"%@=%@, ";
        goto LABEL_17;
      }

      v8 = *(a1 + 32);
      v9 = [v5 fp_obfuscatedPath];
    }

    v13 = v9;
    [v8 appendFormat:@"%@=%@, ", v16, v9];

LABEL_18:
    ++*(*(*(a1 + 48) + 8) + 24);
  }

LABEL_19:
}

@end