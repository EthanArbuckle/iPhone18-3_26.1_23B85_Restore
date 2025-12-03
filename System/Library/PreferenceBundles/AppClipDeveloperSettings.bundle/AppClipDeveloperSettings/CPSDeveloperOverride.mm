@interface CPSDeveloperOverride
- (id)valueForSpecifier:(id)specifier;
- (void)setValue:(id)value forSpecifier:(id)specifier;
@end

@implementation CPSDeveloperOverride

- (id)valueForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"URL_OVERRIDE"])
  {
    invocationURL = [(CPSDeveloperOverride *)self invocationURL];
LABEL_15:
    v9 = invocationURL;
    goto LABEL_16;
  }

  if ([identifier isEqualToString:@"URL_OVERRIDE_CLIP_BUNDLE_ID"])
  {
    invocationURL = [(CPSDeveloperOverride *)self clipBundleID];
    goto LABEL_15;
  }

  if ([identifier isEqualToString:@"ABR_TITLE"])
  {
    invocationURL = [(CPSDeveloperOverride *)self title];
    goto LABEL_15;
  }

  if ([identifier isEqualToString:@"ABR_SUBTITLE"])
  {
    invocationURL = [(CPSDeveloperOverride *)self subtitle];
    goto LABEL_15;
  }

  if ([identifier isEqualToString:@"ABR_VERB"])
  {
    action = [(CPSDeveloperOverride *)self action];
    v8 = @"open";
    if (action == &dword_0 + 2)
    {
      v8 = @"play";
    }

    if (action == &dword_0 + 1)
    {
      v8 = @"view";
    }

    invocationURL = v8;
    goto LABEL_15;
  }

  v11 = +[NSAssertionHandler currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"CPSDeveloperOverrideExtras.m" lineNumber:39 description:@"Invalid specifier to value mapping."];

  v9 = 0;
LABEL_16:

  return v9;
}

- (void)setValue:(id)value forSpecifier:(id)specifier
{
  valueCopy = value;
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"URL_OVERRIDE"])
  {
    [(CPSDeveloperOverride *)self setInvocationURL:valueCopy];
  }

  else if ([identifier isEqualToString:@"URL_OVERRIDE_CLIP_BUNDLE_ID"])
  {
    [(CPSDeveloperOverride *)self setClipBundleID:valueCopy];
  }

  else if ([identifier isEqualToString:@"ABR_TITLE"])
  {
    [(CPSDeveloperOverride *)self setTitle:valueCopy];
  }

  else if ([identifier isEqualToString:@"ABR_SUBTITLE"])
  {
    [(CPSDeveloperOverride *)self setSubtitle:valueCopy];
  }

  else if ([identifier isEqualToString:@"ABR_VERB"])
  {
    v8 = valueCopy;
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