@interface HKSignedClinicalDataIssuer
+ (id)makeIssuerForIdentifier:(id)a3 label:(id)a4 isWellKnown:(BOOL)a5 usingRegistry:(id)a6;
+ (id)titleForTitle:(id)a3 identifier:(id)a4;
- (id)asCodableIssuerWithSyncIdentity:(id)a3;
@end

@implementation HKSignedClinicalDataIssuer

+ (id)makeIssuerForIdentifier:(id)a3 label:(id)a4 isWellKnown:(BOOL)a5 usingRegistry:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v7)
  {
    v13 = [NSURL URLWithString:v10];
    v14 = [v13 URLByAppendingPathComponent:@".well-known/jwks.json"];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v12 titleForIssuerWithIdentifier:v10];
  v16 = v15;
  if (v11 && !v15)
  {
    v16 = v11;
  }

  v17 = [a1 titleForTitle:v16 identifier:v10];
  v18 = [[HKSignedClinicalDataIssuer alloc] initWithIdentifier:v10 title:v17 subtitle:0 wellKnownURL:v14];

  return v18;
}

+ (id)titleForTitle:(id)a3 identifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = v5;
  }

  else
  {
    v8 = [HKSignedClinicalDataUtilities preferredRecordIssuerDisplayNameWithIssuerIdentifier:v6];
    if ([v8 length])
    {
      v7 = v8;
    }

    else
    {
      v9 = [NSURL URLWithString:v6];
      v10 = [v9 host];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v6;
      }

      v7 = v12;
    }
  }

  return v7;
}

- (id)asCodableIssuerWithSyncIdentity:(id)a3
{
  v4 = a3;
  v5 = [(HKSignedClinicalDataIssuer *)self identifier];
  v6 = [HDSignedClinicalDataIssuerEntity newCompatibleCodableSignedClinicalDataIssuerWithIdentifier:v5];

  v7 = [(HKSignedClinicalDataIssuer *)self title];
  [v6 setTitle:v7];

  v8 = [(HKSignedClinicalDataIssuer *)self subtitle];
  [v6 setSubtitle:v8];

  v9 = [(HKSignedClinicalDataIssuer *)self wellKnownURL];
  v10 = [v9 absoluteString];
  [v6 setWellKnownURL:v10];

  [v6 setSyncIdentity:v4];

  return v6;
}

@end