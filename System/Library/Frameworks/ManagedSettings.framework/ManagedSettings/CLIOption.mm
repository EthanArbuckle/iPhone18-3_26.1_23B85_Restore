@interface CLIOption
+ (void)registerOptionWithShortName:(id)name longName:(id)longName parameterCount:(unint64_t)count shortDescription:(id)description longDescription:(id)longDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)nameSummaryString;
- (unint64_t)hash;
- (void)_finalize;
- (void)register;
- (void)setShortName:(id)name;
@end

@implementation CLIOption

- (void)_finalize
{
  shortName = [(CLIOption *)self shortName];
  longName = shortName;
  if (!shortName)
  {
    longName = self->_longName;
  }

  objc_storeStrong(&self->_canonicalName, longName);

  if (!self->_canonicalName)
  {
    sub_100007394();
  }
}

- (void)register
{
  [(CLIOption *)self _finalize];
  if (qword_1000115E0 != -1)
  {
    sub_100007400();
  }

  v3 = qword_1000115D8;

  [v3 _registerOption:self];
}

+ (void)registerOptionWithShortName:(id)name longName:(id)longName parameterCount:(unint64_t)count shortDescription:(id)description longDescription:(id)longDescription
{
  longDescriptionCopy = longDescription;
  descriptionCopy = description;
  longNameCopy = longName;
  nameCopy = name;
  v15 = objc_opt_new();
  [v15 setShortName:nameCopy];

  [v15 setLongName:longNameCopy];
  [v15 setParameterCount:count];
  [v15 setShortEnglishDescription:descriptionCopy];

  [v15 setLongEnglishDescription:longDescriptionCopy];
  [v15 register];
}

- (unint64_t)hash
{
  p_canonicalName = &self->_canonicalName;
  canonicalName = self->_canonicalName;
  if (canonicalName)
  {
  }

  else
  {
    v8[1] = v2;
    v9 = v3;
    sub_100007414(a2, self, p_canonicalName, v8);
    canonicalName = v8[0];
  }

  return [(NSString *)canonicalName hash];
}

- (void)setShortName:(id)name
{
  nameCopy = name;
  v8 = nameCopy;
  if (nameCopy)
  {
    v5 = [nameCopy length] == 1;
    nameCopy = v8;
    if (!v5)
    {
      sub_1000074A4();
      nameCopy = v8;
    }
  }

  v6 = [nameCopy copy];
  shortName = self->_shortName;
  self->_shortName = v6;
}

- (id)nameSummaryString
{
  if (self->_parameterCount == 1)
  {
    v3 = @" <argument>";
  }

  else
  {
    v3 = &stru_10000C7F0;
  }

  result = v3;
  v5 = result;
  shortName = self->_shortName;
  longName = self->_longName;
  if (shortName)
  {
    if (longName)
    {
      [NSString stringWithFormat:@"[-%@ | --%@]%@", shortName, self->_longName, result];
    }

    else
    {
      [NSString stringWithFormat:@"-%@%@", self->_shortName, result, v9];
    }
  }

  else
  {
    if (!longName)
    {
      __break(1u);
      return result;
    }

    [NSString stringWithFormat:@"--%@%@", self->_longName, result, v9];
  }
  v8 = ;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_shortName copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_longName copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v5[4] = self->_parameterCount;
  v10 = [(NSString *)self->_shortEnglishDescription copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_longEnglishDescription copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSString *)self->_canonicalName copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

@end