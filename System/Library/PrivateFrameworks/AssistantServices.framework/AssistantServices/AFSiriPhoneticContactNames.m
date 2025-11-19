@interface AFSiriPhoneticContactNames
- (id)spokenName;
@end

@implementation AFSiriPhoneticContactNames

- (id)spokenName
{
  if ([(NSString *)self->_givenName length]&& [(NSString *)self->_familyName length])
  {
    v3 = AFRingtoneLocalizedString(@"SPOKEN_CONTACT_FULL", self->_languageCode);
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    givenName = self->_givenName;
    v6 = [v4 initWithFormat:v3, givenName, self->_familyName];
  }

  else
  {
    v6 = 0;
  }

  if (![v6 length])
  {
    v7 = [(NSString *)self->_givenName copy];

    v6 = v7;
  }

  if (![v6 length])
  {
    v8 = [(NSString *)self->_familyName copy];

    v6 = v8;
  }

  if (![v6 length])
  {
    v9 = [(NSString *)self->_nickname copy];

    v6 = v9;
  }

  if (![v6 length])
  {
    v10 = [(NSString *)self->_middleName copy];

    v6 = v10;
  }

  if (![v6 length])
  {
    v11 = [(NSString *)self->_organizationName copy];

    v6 = v11;
  }

  if ([v6 length])
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

@end