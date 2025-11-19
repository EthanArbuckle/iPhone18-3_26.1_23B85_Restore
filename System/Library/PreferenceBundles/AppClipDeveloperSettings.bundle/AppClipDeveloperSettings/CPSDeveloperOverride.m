@interface CPSDeveloperOverride
- (id)valueForSpecifier:(id)a3;
- (void)setValue:(id)a3 forSpecifier:(id)a4;
@end

@implementation CPSDeveloperOverride

- (id)valueForSpecifier:(id)a3
{
  v5 = [a3 identifier];
  if ([v5 isEqualToString:@"URL_OVERRIDE"])
  {
    v6 = [(CPSDeveloperOverride *)self invocationURL];
LABEL_15:
    v9 = v6;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"URL_OVERRIDE_CLIP_BUNDLE_ID"])
  {
    v6 = [(CPSDeveloperOverride *)self clipBundleID];
    goto LABEL_15;
  }

  if ([v5 isEqualToString:@"ABR_TITLE"])
  {
    v6 = [(CPSDeveloperOverride *)self title];
    goto LABEL_15;
  }

  if ([v5 isEqualToString:@"ABR_SUBTITLE"])
  {
    v6 = [(CPSDeveloperOverride *)self subtitle];
    goto LABEL_15;
  }

  if ([v5 isEqualToString:@"ABR_VERB"])
  {
    v7 = [(CPSDeveloperOverride *)self action];
    v8 = @"open";
    if (v7 == &dword_0 + 2)
    {
      v8 = @"play";
    }

    if (v7 == &dword_0 + 1)
    {
      v8 = @"view";
    }

    v6 = v8;
    goto LABEL_15;
  }

  v11 = +[NSAssertionHandler currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"CPSDeveloperOverrideExtras.m" lineNumber:39 description:@"Invalid specifier to value mapping."];

  v9 = 0;
LABEL_16:

  return v9;
}

- (void)setValue:(id)a3 forSpecifier:(id)a4
{
  v11 = a3;
  v7 = [a4 identifier];
  if ([v7 isEqualToString:@"URL_OVERRIDE"])
  {
    [(CPSDeveloperOverride *)self setInvocationURL:v11];
  }

  else if ([v7 isEqualToString:@"URL_OVERRIDE_CLIP_BUNDLE_ID"])
  {
    [(CPSDeveloperOverride *)self setClipBundleID:v11];
  }

  else if ([v7 isEqualToString:@"ABR_TITLE"])
  {
    [(CPSDeveloperOverride *)self setTitle:v11];
  }

  else if ([v7 isEqualToString:@"ABR_SUBTITLE"])
  {
    [(CPSDeveloperOverride *)self setSubtitle:v11];
  }

  else if ([v7 isEqualToString:@"ABR_VERB"])
  {
    v8 = v11;
    if ([v8 isEqualToString:@"view"])
    {
      v9 = 1;
    }

    else if ([v8 isEqualToString:@"play"])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    [(CPSDeveloperOverride *)self setAction:v9];
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"CPSDeveloperOverrideExtras.m" lineNumber:57 description:@"Invalid specifier to value mapping."];
  }
}

@end