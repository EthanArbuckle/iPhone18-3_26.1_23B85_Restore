@interface _SFFeatureAvailability
+ (BOOL)_isEligibleForDomain:(unint64_t)a3;
@end

@implementation _SFFeatureAvailability

+ (BOOL)_isEligibleForDomain:(unint64_t)a3
{
  domain_answer = os_eligibility_get_domain_answer();
  v4 = WBS_LOG_CHANNEL_PREFIXViewService();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (domain_answer)
  {
    if (v5)
    {
      [(_SFFeatureAvailability *)domain_answer _isEligibleForDomain:v4];
LABEL_6:
      LOBYTE(v5) = 0;
    }
  }

  else if (v5)
  {
    [_SFFeatureAvailability _isEligibleForDomain:v4];
    goto LABEL_6;
  }

  return v5;
}

+ (void)_isEligibleForDomain:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Error when determining eligibility, error (%d)", v2, 8u);
}

@end