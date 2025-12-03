@interface _MBImmutableServiceAccountProperties
- (id)_deriveNewAccountPropertiesFromACAccount:(id)account;
- (id)_initWithPersona:(id)persona accountIdentifier:(id)identifier dsid:(id)dsid altDSID:(id)d serviceURL:(id)l chunkStoreURL:(id)rL options:(unint64_t)options;
@end

@implementation _MBImmutableServiceAccountProperties

- (id)_initWithPersona:(id)persona accountIdentifier:(id)identifier dsid:(id)dsid altDSID:(id)d serviceURL:(id)l chunkStoreURL:(id)rL options:(unint64_t)options
{
  personaCopy = persona;
  identifierCopy = identifier;
  dsidCopy = dsid;
  dCopy = d;
  lCopy = l;
  rLCopy = rL;
  if (!personaCopy)
  {
    sub_13850();
  }

  v19 = rLCopy;
  v28.receiver = self;
  v28.super_class = _MBImmutableServiceAccountProperties;
  v20 = [(_MBImmutableServiceAccountProperties *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_persona, persona);
    objc_storeStrong(&v21->_accountIdentifier, identifier);
    objc_storeStrong(&v21->_dsid, dsid);
    objc_storeStrong(&v21->_altDSID, d);
    objc_storeStrong(&v21->_serviceURL, l);
    objc_storeStrong(&v21->_chunkStoreURL, rL);
    v29 = 0;
    if ([personaCopy getBooleanValueForKey:@"EnableBackupOnCellular" keyExists:&v29])
    {
      v22 = 1;
    }

    else
    {
      v22 = v29 == 0;
    }

    v23 = 512;
    if (!v22)
    {
      v23 = 0;
    }

    v21->_options = v23 | options & 0xFFFFFFFFFFFFFDFFLL;
  }

  return v21;
}

- (id)_deriveNewAccountPropertiesFromACAccount:(id)account
{
  options = self->_options;
  accountCopy = account;
  v6 = [MBServiceAccount _optionsFromACAccount:accountCopy currentOptions:options];
  persona = self->_persona;
  v26 = 0;
  if ([(MBPersona *)persona getBooleanValueForKey:@"EnableBackupOnCellular" keyExists:&v26])
  {
    v8 = 1;
  }

  else
  {
    v8 = v26 == 0;
  }

  v9 = 512;
  if (!v8)
  {
    v9 = 0;
  }

  v25 = v9 | v6 & 0xFFFFFFFFFFFFFDFFLL;
  identifier = [accountCopy identifier];
  aa_personID = [accountCopy aa_personID];
  aa_altDSID = [accountCopy aa_altDSID];
  v12 = [accountCopy propertiesForDataclass:kAccountDataclassBackup];
  v13 = [v12 objectForKeyedSubscript:@"url"];
  v14 = [NSURL URLWithString:v13];

  username = [accountCopy username];
  v16 = [v14 _URLByInsertingUser:username];

  v17 = [accountCopy propertiesForDataclass:kAccountDataclassContent];
  v18 = [v17 objectForKeyedSubscript:@"url"];
  v19 = [NSURL URLWithString:v18];

  username2 = [accountCopy username];

  v21 = [v19 _URLByInsertingUser:username2];

  v22 = [objc_alloc(objc_opt_class()) _initWithPersona:self->_persona accountIdentifier:identifier dsid:aa_personID altDSID:aa_altDSID serviceURL:v16 chunkStoreURL:v21 options:v25];

  return v22;
}

@end