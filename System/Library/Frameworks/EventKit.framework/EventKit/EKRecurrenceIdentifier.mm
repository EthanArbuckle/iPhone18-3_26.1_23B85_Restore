@interface EKRecurrenceIdentifier
+ (BOOL)_splitIdentifier:(id)identifier intoLocalUID:(id *)d recurrenceDate:(id *)date;
+ (const)_dateFormatStripTime:(BOOL)time stripTimeZone:(BOOL)zone;
+ (id)localUIDForIdentifierString:(id)string;
+ (id)recurrenceIdentifierWithLocalUID:(id)d recurrenceDate:(id)date;
+ (id)recurrenceIdentifierWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (NSString)identifierString;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation EKRecurrenceIdentifier

- (NSString)identifierString
{
  identifierString = self->_identifierString;
  if (!identifierString)
  {
    v4 = objc_opt_class();
    recurrenceDate = [(EKRecurrenceIdentifier *)self recurrenceDate];
    localUID = [(EKRecurrenceIdentifier *)self localUID];
    v7 = [v4 _recurrenceIdentifierWithRecurrenceDate:recurrenceDate localUID:localUID stripTime:0 stripTimeZone:0];
    v8 = self->_identifierString;
    self->_identifierString = v7;

    identifierString = self->_identifierString;
  }

  return identifierString;
}

+ (id)recurrenceIdentifierWithLocalUID:(id)d recurrenceDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  if ([dCopy length])
  {
    v7 = objc_opt_new();
    [v7 setLocalUID:dCopy];
    [v7 setRecurrenceDate:dateCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)recurrenceIdentifierWithString:(id)string
{
  stringCopy = string;
  v5 = objc_opt_new();
  [v5 setIdentifierString:stringCopy];
  v13 = 0;
  v14 = 0;
  v6 = [self _splitIdentifier:stringCopy intoLocalUID:&v14 recurrenceDate:&v13];

  v7 = v14;
  v8 = v13;
  if (v6)
  {
    [v5 setLocalUID:v7];
    [v5 setRecurrenceDate:v8];
  }

  localUID = [v5 localUID];
  if (localUID)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

+ (id)localUIDForIdentifierString:(id)string
{
  v8 = 0;
  v3 = [self _splitIdentifier:string intoLocalUID:&v8 recurrenceDate:0];
  v4 = v8;
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    v6 = v4;
  }

  return v6;
}

+ (const)_dateFormatStripTime:(BOOL)time stripTimeZone:(BOOL)zone
{
  if (!zone || time)
  {
    v4 = "%Y%m%d";
  }

  else
  {
    v4 = "%Y%m%dT%H%M%S";
  }

  if (time || zone)
  {
    return v4;
  }

  else
  {
    return "%Y%m%dT%H%M%SZ";
  }
}

+ (BOOL)_splitIdentifier:(id)identifier intoLocalUID:(id *)d recurrenceDate:(id *)date
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (!(d | date))
  {
    goto LABEL_15;
  }

  if (d)
  {
    *d = 0;
  }

  if (date)
  {
    *date = 0;
  }

  if (![identifierCopy length])
  {
    v15 = 0;
    goto LABEL_16;
  }

  uTF8String = [v9 UTF8String];
  v11 = strchr(uTF8String, 47);
  if (!v11 || (v12 = v11 - uTF8String, v11 - uTF8String == -1))
  {
    if (d)
    {
      v16 = v9;
      *d = v9;
    }

    goto LABEL_15;
  }

  if (!d)
  {
    if (date)
    {
      goto LABEL_18;
    }

LABEL_15:
    v15 = 1;
    goto LABEL_16;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11 + 1];
  *d = v13;
  if (!date)
  {
    v14 = v13 == 0;
    goto LABEL_24;
  }

LABEL_18:
  strlcpy(&v20 - ((v12 + 16) & 0xFFFFFFFFFFFFFFF0), uTF8String, v12 + 1);
  if (strcmp(&v20 - ((v12 + 16) & 0xFFFFFFFFFFFFFFF0), "(null)"))
  {
    strptime_l(&v20 - ((v12 + 16) & 0xFFFFFFFFFFFFFFF0), [self _dateFormatStripTime:0 stripTimeZone:{0, 0, 0, 0, 0, 0, 0, 0, v21}], &v20, 0);
    *date = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:timegm(&v20)];
  }

  if (!d || (v19 = *d, v15 = *d != 0, v19))
  {
    v14 = *date == 0;
LABEL_24:
    v15 = !v14;
  }

LABEL_16:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  localUID = [(EKRecurrenceIdentifier *)self localUID];
  [v4 setLocalUID:localUID];

  recurrenceDate = [(EKRecurrenceIdentifier *)self recurrenceDate];
  [v4 setRecurrenceDate:recurrenceDate];

  identifierString = [(EKRecurrenceIdentifier *)self identifierString];
  [v4 setIdentifierString:identifierString];

  return v4;
}

- (unint64_t)hash
{
  localUID = [(EKRecurrenceIdentifier *)self localUID];
  v4 = [localUID hash];
  recurrenceDate = [(EKRecurrenceIdentifier *)self recurrenceDate];
  v6 = v4 + 13 * [recurrenceDate hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self != equalCopy)
    {
      localUID = [(EKRecurrenceIdentifier *)self localUID];
      localUID2 = [(EKRecurrenceIdentifier *)equalCopy localUID];
      if (![localUID isEqualToString:localUID2])
      {
        v11 = 0;
LABEL_14:

        goto LABEL_15;
      }

      recurrenceDate = [(EKRecurrenceIdentifier *)self recurrenceDate];
      if (recurrenceDate || ([(EKRecurrenceIdentifier *)equalCopy recurrenceDate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        recurrenceDate2 = [(EKRecurrenceIdentifier *)self recurrenceDate];
        recurrenceDate3 = [(EKRecurrenceIdentifier *)equalCopy recurrenceDate];
        v11 = [recurrenceDate2 isEqual:recurrenceDate3];

        if (recurrenceDate)
        {
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
        v11 = 1;
      }

      goto LABEL_13;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_15:

  return v11;
}

@end