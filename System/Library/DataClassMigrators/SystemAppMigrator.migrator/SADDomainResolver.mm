@interface SADDomainResolver
- (id)eligibilityForDomain:(unint64_t)domain error:(id *)error;
@end

@implementation SADDomainResolver

- (id)eligibilityForDomain:(unint64_t)domain error:(id *)error
{
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    if (error)
    {
      v7 = domain_answer;
      strerror(domain_answer);
      v9 = _CreateError("[SADDomainResolver eligibilityForDomain:error:]", 134, NSPOSIXErrorDomain, v7, 0, 0, @"Failed to read eligibility for %llu with error: %s", v8, domain);
      v10 = v9;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [NSNumber numberWithUnsignedLongLong:0];
  }

  return v11;
}

@end