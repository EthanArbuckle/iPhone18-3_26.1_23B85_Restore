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
  domain = [self domain];
  v3 = [domain containsString:@".apple.com"];

  if (v3)
  {
    name = [self name];
    if ([name isEqualToString:@"itspod"])
    {
      value = [self value];
      v6 = [value isEqualToString:@"100"];

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
  expiresDate = [self expiresDate];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v3 = [expiresDate isEqualToDate:distantPast];

  return v3;
}

- (BOOL)ams_isExpired
{
  expiresDate = [self expiresDate];
  if (expiresDate)
  {
    expiresDate2 = [self expiresDate];
    v4 = [MEMORY[0x1E695DF00] now];
    v5 = [expiresDate2 compare:v4] != 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)ams_cookieByMarkingCookieAsDeleted:()AppleMediaServices
{
  properties = [a3 properties];
  v4 = [properties mutableCopy];

  [v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E695AAC8]];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [v4 setObject:distantPast forKeyedSubscript:*MEMORY[0x1E695AAD8]];

  v6 = [objc_alloc(objc_opt_class()) initWithProperties:v4];

  return v6;
}

- (uint64_t)_domainMatchesURL:()AppleMediaServices
{
  host = [a3 host];
  v5 = host;
  if (host && ([host hasPrefix:@"."] & 1) == 0)
  {
    v6 = [@"." stringByAppendingString:v5];

    v5 = v6;
  }

  lowercaseString = [v5 lowercaseString];
  domain = [self domain];
  lowercaseString2 = [domain lowercaseString];
  v10 = [lowercaseString hasSuffix:lowercaseString2];

  return v10;
}

- (uint64_t)_pathMatchesURL:()AppleMediaServices
{
  path = [a3 path];
  if (![(__CFString *)path length])
  {

    path = @"/";
  }

  path2 = [self path];
  if (([path2 isEqualToString:path] & 1) == 0)
  {
    path3 = [self path];
    v9 = [(__CFString *)path hasPrefix:path3];
    if (v9 && ([self path], v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "hasSuffix:", @"/") & 1) != 0))
    {
      v7 = 1;
    }

    else
    {
      path4 = [self path];
      if ([(__CFString *)path hasPrefix:path4])
      {
        path5 = [self path];
        v12 = -[__CFString substringFromIndex:](path, "substringFromIndex:", [path5 length]);
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
  if ([self isHTTPOnly])
  {
    ams_isHTTP = [v4 ams_isHTTP];
  }

  else
  {
    ams_isHTTP = 1;
  }

  return ams_isHTTP;
}

- (uint64_t)_secureOnlyMatchesURL:()AppleMediaServices
{
  v4 = a3;
  if ([self isSecure])
  {
    ams_isSecure = [v4 ams_isSecure];
  }

  else
  {
    ams_isSecure = 1;
  }

  return ams_isSecure;
}

- (uint64_t)ams_isEqualToCookie:()AppleMediaServices
{
  v5 = a3;
  domain = [self domain];
  domain2 = [v5 domain];
  if ([domain isEqualToString:domain2])
  {
    path = [self path];
    path2 = [v5 path];
    if (![path isEqualToString:path2])
    {
      v12 = 0;
LABEL_29:

      goto LABEL_30;
    }

    portList = [self portList];
    if (portList || ([v5 portList], (v59 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      portList2 = [self portList];
      portList3 = [v5 portList];
      if (![portList2 isEqual:portList3])
      {
        v12 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v58 = portList2;
      v61 = 1;
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    name = [self name];
    name2 = [v5 name];
    v60 = name;
    v15 = name;
    v16 = name2;
    if (![v15 isEqualToString:name2])
    {
      v12 = 0;
      goto LABEL_20;
    }

    v17 = portList3;
    value = [self value];
    value2 = [v5 value];
    v57 = value;
    v20 = value;
    v21 = value2;
    if (![v20 isEqualToString:value2] || (v56 = v16, v22 = objc_msgSend(self, "version"), v23 = v22 == objc_msgSend(v5, "version"), v16 = v56, !v23))
    {

      v12 = 0;
      if ((v61 & 1) == 0)
      {
LABEL_26:
        if (!portList)
        {
        }

        goto LABEL_29;
      }

      portList3 = v17;
      goto LABEL_24;
    }

    v55 = v21;
    [self expiresDate];
    v54 = portList3 = v17;
    if (v54 || ([v5 expiresDate], (v49 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v52 = v17;
      expiresDate = [self expiresDate];
      expiresDate2 = [v5 expiresDate];
      v51 = expiresDate;
      if (([expiresDate isEqual:expiresDate2] & 1) == 0)
      {

        if (!v54)
        {
        }

        v12 = 0;
        portList3 = v52;
        if ((v61 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_24:
        portList2 = v58;
        goto LABEL_25;
      }

      v48 = expiresDate2;
      v50 = 1;
      portList3 = v52;
    }

    else
    {
      v49 = 0;
      v50 = 0;
    }

    isSessionOnly = [self isSessionOnly];
    if (isSessionOnly != [v5 isSessionOnly] || (v28 = objc_msgSend(self, "isHTTPOnly"), v28 != objc_msgSend(v5, "isHTTPOnly")) || (v29 = objc_msgSend(self, "isSecure"), v29 != objc_msgSend(v5, "isSecure")))
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

    [self sameSitePolicy];
    v53 = v16 = v56;
    if (v53 || ([v5 sameSitePolicy], (v41 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      sameSitePolicy = [self sameSitePolicy];
      sameSitePolicy2 = [v5 sameSitePolicy];
      v47 = sameSitePolicy;
      if (![sameSitePolicy isEqual:sameSitePolicy2])
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

    comment = [self comment];
    if (comment || ([v5 comment], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      comment2 = [self comment];
      comment3 = [v5 comment];
      v43 = comment2;
      if (![comment2 isEqual:comment3])
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

    commentURL = [self commentURL];
    if (commentURL || ([v5 commentURL], (v37 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      commentURL2 = [self commentURL];
      commentURL3 = [v5 commentURL];
      v12 = [commentURL2 isEqual:commentURL3];

      if (commentURL)
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
      v35 = comment;
      if (!comment)
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
  domain = [self domain];
  domain2 = [v4 domain];
  if ([domain isEqualToString:domain2])
  {
    name = [self name];
    name2 = [v4 name];
    if ([name isEqualToString:name2])
    {
      path = [self path];
      path2 = [v4 path];
      v11 = [path isEqualToString:path2];
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
  if ([self _domainMatchesURL:v4] && objc_msgSend(self, "_pathMatchesURL:", v4) && objc_msgSend(self, "_secureOnlyMatchesURL:", v4))
  {
    v5 = [self _httpOnlyMatchesURL:v4];
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
  if (![self ams_isEquivalent:v4])
  {
LABEL_7:
    LOBYTE(v11) = 0;
    goto LABEL_9;
  }

  expiresDate = [self expiresDate];
  if (!expiresDate || (v6 = expiresDate, [v4 expiresDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7) || (objc_msgSend(self, "expiresDate"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "expiresDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "compare:", v9), v9, v8, (v10 + 1) >= 3))
  {
    if (([self ams_isExpired] & 1) == 0)
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
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"<NSHTTPCookie: %p {", self];
  name = [self name];
  [v2 appendFormat:@"\n  name = %@, ", name];

  domain = [self domain];
  [v2 appendFormat:@"\n  domain = %@, ", domain];

  path = [self path];
  [v2 appendFormat:@"\n  path = %@, ", path];

  expiresDate = [self expiresDate];
  [v2 appendFormat:@"\n  expires = %@, ", expiresDate];

  isSecure = [self isSecure];
  v8 = @"false";
  if (isSecure)
  {
    v8 = @"true";
  }

  [v2 appendFormat:@"\n  isSecure = %@, ", v8];
  value = [self value];
  v10 = AMSHashIfNeeded(value);
  [v2 appendFormat:@"\n  value = %@, ", v10];

  [v2 appendString:@"\n}>"];

  return v2;
}

@end