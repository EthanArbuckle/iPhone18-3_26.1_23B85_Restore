@interface NSHTTPCookie(AppleMediaServices)
+ (id)ams_cookieByMarkingCookieAsDeleted:()AppleMediaServices;
- (BOOL)ams_isExpired;
- (id)hashedDescription;
- (uint64_t)_domainMatchesURL:()AppleMediaServices;
- (uint64_t)_httpOnlyMatchesURL:()AppleMediaServices;
- (uint64_t)_pathMatchesURL:()AppleMediaServices;
- (uint64_t)_secureOnlyMatchesURL:()AppleMediaServices;
- (uint64_t)ams_isCookieValidForBag;
- (uint64_t)ams_isDeleted;
- (uint64_t)ams_isEqualToCookie:()AppleMediaServices;
- (uint64_t)ams_isEquivalent:()AppleMediaServices;
- (uint64_t)ams_matchesURL:()AppleMediaServices;
- (uint64_t)ams_shouldReplaceCookie:()AppleMediaServices;
@end

@implementation NSHTTPCookie(AppleMediaServices)

- (uint64_t)ams_isCookieValidForBag
{
  v2 = [a1 domain];
  v3 = [v2 containsString:@".apple.com"];

  if (v3)
  {
    v4 = [a1 name];
    if ([v4 isEqualToString:@"itspod"])
    {
      v5 = [a1 value];
      v6 = [v5 isEqualToString:@"100"];

      v7 = v6 ^ 1;
    }

    else
    {

      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (uint64_t)ams_isDeleted
{
  v1 = [a1 expiresDate];
  v2 = [MEMORY[0x1E695DF00] distantPast];
  v3 = [v1 isEqualToDate:v2];

  return v3;
}

- (BOOL)ams_isExpired
{
  v2 = [a1 expiresDate];
  if (v2)
  {
    v3 = [a1 expiresDate];
    v4 = [MEMORY[0x1E695DF00] now];
    v5 = [v3 compare:v4] != 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)ams_cookieByMarkingCookieAsDeleted:()AppleMediaServices
{
  v3 = [a3 properties];
  v4 = [v3 mutableCopy];

  [v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E695AAC8]];
  v5 = [MEMORY[0x1E695DF00] distantPast];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E695AAD8]];

  v6 = [objc_alloc(objc_opt_class()) initWithProperties:v4];

  return v6;
}

- (uint64_t)_domainMatchesURL:()AppleMediaServices
{
  v4 = [a3 host];
  v5 = v4;
  if (v4 && ([v4 hasPrefix:@"."] & 1) == 0)
  {
    v6 = [@"." stringByAppendingString:v5];

    v5 = v6;
  }

  v7 = [v5 lowercaseString];
  v8 = [a1 domain];
  v9 = [v8 lowercaseString];
  v10 = [v7 hasSuffix:v9];

  return v10;
}

- (uint64_t)_pathMatchesURL:()AppleMediaServices
{
  v5 = [a3 path];
  if (![(__CFString *)v5 length])
  {

    v5 = @"/";
  }

  v6 = [a1 path];
  if (([v6 isEqualToString:v5] & 1) == 0)
  {
    v8 = [a1 path];
    v9 = [(__CFString *)v5 hasPrefix:v8];
    if (v9 && ([a1 path], v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "hasSuffix:", @"/") & 1) != 0))
    {
      v7 = 1;
    }

    else
    {
      v10 = [a1 path];
      if ([(__CFString *)v5 hasPrefix:v10])
      {
        v11 = [a1 path];
        v12 = -[__CFString substringFromIndex:](v5, "substringFromIndex:", [v11 length]);
        v7 = [v12 hasPrefix:@"/"];

        if ((v9 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {

        v7 = 0;
        if (!v9)
        {
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v7 = 1;
LABEL_14:

  return v7;
}

- (uint64_t)_httpOnlyMatchesURL:()AppleMediaServices
{
  v4 = a3;
  if ([a1 isHTTPOnly])
  {
    v5 = [v4 ams_isHTTP];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (uint64_t)_secureOnlyMatchesURL:()AppleMediaServices
{
  v4 = a3;
  if ([a1 isSecure])
  {
    v5 = [v4 ams_isSecure];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (uint64_t)ams_isEqualToCookie:()AppleMediaServices
{
  v5 = a3;
  v6 = [a1 domain];
  v7 = [v5 domain];
  if ([v6 isEqualToString:v7])
  {
    v8 = [a1 path];
    v9 = [v5 path];
    if (![v8 isEqualToString:v9])
    {
      v12 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v10 = [a1 portList];
    if (v10 || ([v5 portList], (v59 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = [a1 portList];
      v3 = [v5 portList];
      if (![v11 isEqual:v3])
      {
        v12 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v58 = v11;
      v61 = 1;
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    v13 = [a1 name];
    v14 = [v5 name];
    v60 = v13;
    v15 = v13;
    v16 = v14;
    if (![v15 isEqualToString:v14])
    {
      v12 = 0;
      goto LABEL_20;
    }

    v17 = v3;
    v18 = [a1 value];
    v19 = [v5 value];
    v57 = v18;
    v20 = v18;
    v21 = v19;
    if (![v20 isEqualToString:v19] || (v56 = v16, v22 = objc_msgSend(a1, "version"), v23 = v22 == objc_msgSend(v5, "version"), v16 = v56, !v23))
    {

      v12 = 0;
      if ((v61 & 1) == 0)
      {
LABEL_26:
        if (!v10)
        {
        }

        goto LABEL_29;
      }

      v3 = v17;
      goto LABEL_24;
    }

    v55 = v21;
    [a1 expiresDate];
    v54 = v3 = v17;
    if (v54 || ([v5 expiresDate], (v49 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v52 = v17;
      v24 = [a1 expiresDate];
      v25 = [v5 expiresDate];
      v51 = v24;
      if (([v24 isEqual:v25] & 1) == 0)
      {

        if (!v54)
        {
        }

        v12 = 0;
        v3 = v52;
        if ((v61 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_24:
        v11 = v58;
        goto LABEL_25;
      }

      v48 = v25;
      v50 = 1;
      v3 = v52;
    }

    else
    {
      v49 = 0;
      v50 = 0;
    }

    v27 = [a1 isSessionOnly];
    if (v27 != [v5 isSessionOnly] || (v28 = objc_msgSend(a1, "isHTTPOnly"), v28 != objc_msgSend(v5, "isHTTPOnly")) || (v29 = objc_msgSend(a1, "isSecure"), v29 != objc_msgSend(v5, "isSecure")))
    {
      v12 = 0;
      v30 = v59;
      v16 = v56;
      if (v50)
      {
LABEL_40:
        v59 = v30;

LABEL_66:
        if (!v54)
        {
        }

LABEL_20:
        if (!v61)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }

LABEL_65:
      v59 = v30;
      goto LABEL_66;
    }

    [a1 sameSitePolicy];
    v53 = v16 = v56;
    if (v53 || ([v5 sameSitePolicy], (v41 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v31 = [a1 sameSitePolicy];
      v46 = [v5 sameSitePolicy];
      v47 = v31;
      if (![v31 isEqual:v46])
      {
        v12 = 0;
        goto LABEL_61;
      }

      v44 = 1;
    }

    else
    {
      v41 = 0;
      v44 = 0;
    }

    v45 = [a1 comment];
    if (v45 || ([v5 comment], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v32 = [a1 comment];
      v42 = [v5 comment];
      v43 = v32;
      if (![v32 isEqual:v42])
      {
        v12 = 0;
        goto LABEL_57;
      }

      v40 = 1;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v39 = [a1 commentURL];
    if (v39 || ([v5 commentURL], (v37 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v33 = [a1 commentURL];
      v34 = [v5 commentURL];
      v12 = [v33 isEqual:v34];

      if (v39)
      {

        v16 = v56;
        if ((v40 & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v37 = 0;
      v12 = 1;
    }

    v16 = v56;

    if ((v40 & 1) == 0)
    {
LABEL_58:
      v35 = v45;
      if (!v45)
      {

        v35 = 0;
      }

      if (!v44)
      {
LABEL_62:
        v36 = v53;
        if (!v53)
        {

          v36 = 0;
        }

        v30 = v59;
        if (v50)
        {
          goto LABEL_40;
        }

        goto LABEL_65;
      }

LABEL_61:

      goto LABEL_62;
    }

LABEL_57:

    goto LABEL_58;
  }

  v12 = 0;
LABEL_30:

  return v12;
}

- (uint64_t)ams_isEquivalent:()AppleMediaServices
{
  v4 = a3;
  v5 = [a1 domain];
  v6 = [v4 domain];
  if ([v5 isEqualToString:v6])
  {
    v7 = [a1 name];
    v8 = [v4 name];
    if ([v7 isEqualToString:v8])
    {
      v9 = [a1 path];
      v10 = [v4 path];
      v11 = [v9 isEqualToString:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)ams_matchesURL:()AppleMediaServices
{
  v4 = a3;
  if ([a1 _domainMatchesURL:v4] && objc_msgSend(a1, "_pathMatchesURL:", v4) && objc_msgSend(a1, "_secureOnlyMatchesURL:", v4))
  {
    v5 = [a1 _httpOnlyMatchesURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)ams_shouldReplaceCookie:()AppleMediaServices
{
  v4 = a3;
  if (![a1 ams_isEquivalent:v4])
  {
LABEL_7:
    LOBYTE(v11) = 0;
    goto LABEL_9;
  }

  v5 = [a1 expiresDate];
  if (!v5 || (v6 = v5, [v4 expiresDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7) || (objc_msgSend(a1, "expiresDate"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "expiresDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "compare:", v9), v9, v8, (v10 + 1) >= 3))
  {
    if (([a1 ams_isExpired] & 1) == 0)
    {
      LOBYTE(v11) = [v4 ams_isExpired];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v11 = 4u >> ((v10 + 1) & 7);
LABEL_9:

  return v11 & 1;
}

- (id)hashedDescription
{
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"<NSHTTPCookie: %p {", a1];
  v3 = [a1 name];
  [v2 appendFormat:@"\n  name = %@, ", v3];

  v4 = [a1 domain];
  [v2 appendFormat:@"\n  domain = %@, ", v4];

  v5 = [a1 path];
  [v2 appendFormat:@"\n  path = %@, ", v5];

  v6 = [a1 expiresDate];
  [v2 appendFormat:@"\n  expires = %@, ", v6];

  v7 = [a1 isSecure];
  v8 = @"false";
  if (v7)
  {
    v8 = @"true";
  }

  [v2 appendFormat:@"\n  isSecure = %@, ", v8];
  v9 = [a1 value];
  v10 = AMSHashIfNeeded(v9);
  [v2 appendFormat:@"\n  value = %@, ", v10];

  [v2 appendString:@"\n}>"];

  return v2;
}

@end