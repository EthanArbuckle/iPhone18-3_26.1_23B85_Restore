@interface HKSignedClinicalDataIssuer
+ (id)makeIssuerForIdentifier:(id)identifier label:(id)label isWellKnown:(BOOL)known usingRegistry:(id)registry;
+ (id)titleForTitle:(id)title identifier:(id)identifier;
- (id)asCodableIssuerWithSyncIdentity:(id)identity;
@end

@implementation HKSignedClinicalDataIssuer

+ (id)makeIssuerForIdentifier:(id)identifier label:(id)label isWellKnown:(BOOL)known usingRegistry:(id)registry
{
  knownCopy = known;
  identifierCopy = identifier;
  labelCopy = label;
  registryCopy = registry;
  if (knownCopy)
  {
    v13 = [NSURL URLWithString:identifierCopy];
    v14 = [v13 URLByAppendingPathComponent:@".well-known/jwks.json"];
  }

  else
  {
    v14 = 0;
  }

  v15 = [registryCopy titleForIssuerWithIdentifier:identifierCopy];
  v16 = v15;
  if (labelCopy && !v15)
  {
    v16 = labelCopy;
  }

  v17 = [self titleForTitle:v16 identifier:identifierCopy];
  v18 = [[HKSignedClinicalDataIssuer alloc] initWithIdentifier:identifierCopy title:v17 subtitle:0 wellKnownURL:v14];

  return v18;
}

+ (id)titleForTitle:(id)title identifier:(id)identifier
{
  titleCopy = title;
  identifierCopy = identifier;
  if ([titleCopy length])
  {
    v7 = titleCopy;
  }

  else
  {
    v8 = [HKSignedClinicalDataUtilities preferredRecordIssuerDisplayNameWithIssuerIdentifier:identifierCopy];
    if ([v8 length])
    {
      v7 = v8;
    }

    else
    {
      v9 = [NSURL URLWithString:identifierCopy];
      host = [v9 host];
      v11 = host;
      if (host)
      {
        v12 = host;
      }

      else
      {
        v12 = identifierCopy;
      }

      v7 = v12;
    }
  }

  return v7;
}

- (id)asCodableIssuerWithSyncIdentity:(id)identity
{
  identityCopy = identity;
  identifier = [(HKSignedClinicalDataIssuer *)self identifier];
  v6 = [HDSignedClinicalDataIssuerEntity newCompatibleCodableSignedClinicalDataIssuerWithIdentifier:identifier];

  title = [(HKSignedClinicalDataIssuer *)self title];
  [v6 setTitle:title];

  subtitle = [(HKSignedClinicalDataIssuer *)self subtitle];
  [v6 setSubtitle:subtitle];

  wellKnownURL = [(HKSignedClinicalDataIssuer *)self wellKnownURL];
  absoluteString = [wellKnownURL absoluteString];
  [v6 setWellKnownURL:absoluteString];

  [v6 setSyncIdentity:identityCopy];

  return v6;
}

@end