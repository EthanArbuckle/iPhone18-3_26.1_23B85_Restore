@interface NSError(AppleMediaServices_Project)
- (id)ams_errorByCombiningWithUnderlyingError:()AppleMediaServices_Project;
- (id)ams_multipleUnderlyingErrors;
@end

@implementation NSError(AppleMediaServices_Project)

- (id)ams_errorByCombiningWithUnderlyingError:()AppleMediaServices_Project
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([self ams_hasDomain:@"AMSErrorDomain" code:15])
  {
    v10[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

    v6 = [self ams_errorByAddingToMultipleUnderlyingErrors:v5];
  }

  else
  {
    v9[0] = self;
    v9[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

    v6 = AMSErrorWithMultipleUnderlyingErrors(15, 0, 0, v5);
  }

  v7 = v6;

  return v7;
}

- (id)ams_multipleUnderlyingErrors
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A750]];

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