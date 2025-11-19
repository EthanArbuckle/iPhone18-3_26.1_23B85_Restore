@interface NSError(AppleMediaServices_Project)
- (id)ams_errorByCombiningWithUnderlyingError:()AppleMediaServices_Project;
- (id)ams_multipleUnderlyingErrors;
@end

@implementation NSError(AppleMediaServices_Project)

- (id)ams_errorByCombiningWithUnderlyingError:()AppleMediaServices_Project
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 ams_hasDomain:@"AMSErrorDomain" code:15])
  {
    v10[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

    v6 = [a1 ams_errorByAddingToMultipleUnderlyingErrors:v5];
  }

  else
  {
    v9[0] = a1;
    v9[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

    v6 = AMSErrorWithMultipleUnderlyingErrors(15, 0, 0, v5);
  }

  v7 = v6;

  return v7;
}

- (id)ams_multipleUnderlyingErrors
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E696A750]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end