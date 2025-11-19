@interface EKRecurrenceIdentifier
+ (BOOL)_splitIdentifier:(id)a3 intoLocalUID:(id *)a4 recurrenceDate:(id *)a5;
+ (const)_dateFormatStripTime:(BOOL)a3 stripTimeZone:(BOOL)a4;
+ (id)localUIDForIdentifierString:(id)a3;
+ (id)recurrenceIdentifierWithLocalUID:(id)a3 recurrenceDate:(id)a4;
+ (id)recurrenceIdentifierWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)identifierString;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation EKRecurrenceIdentifier

- (NSString)identifierString
{
  identifierString = self->_identifierString;
  if (!identifierString)
  {
    v4 = objc_opt_class();
    v5 = [(EKRecurrenceIdentifier *)self recurrenceDate];
    v6 = [(EKRecurrenceIdentifier *)self localUID];
    v7 = [v4 _recurrenceIdentifierWithRecurrenceDate:v5 localUID:v6 stripTime:0 stripTimeZone:0];
    v8 = self->_identifierString;
    self->_identifierString = v7;

    identifierString = self->_identifierString;
  }

  return identifierString;
}

+ (id)recurrenceIdentifierWithLocalUID:(id)a3 recurrenceDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = objc_opt_new();
    [v7 setLocalUID:v5];
    [v7 setRecurrenceDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)recurrenceIdentifierWithString:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setIdentifierString:v4];
  v13 = 0;
  v14 = 0;
  v6 = [a1 _splitIdentifier:v4 intoLocalUID:&v14 recurrenceDate:&v13];

  v7 = v14;
  v8 = v13;
  if (v6)
  {
    [v5 setLocalUID:v7];
    [v5 setRecurrenceDate:v8];
  }

  v9 = [v5 localUID];
  if (v9)
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

+ (id)localUIDForIdentifierString:(id)a3
{
  v8 = 0;
  v3 = [a1 _splitIdentifier:a3 intoLocalUID:&v8 recurrenceDate:0];
  v4 = v8;
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    v6 = v4;
  }

  return v6;
}

+ (const)_dateFormatStripTime:(BOOL)a3 stripTimeZone:(BOOL)a4
{
  if (!a4 || a3)
  {
    v4 = "%Y%m%d";
  }

  else
  {
    v4 = "%Y%m%dT%H%M%S";
  }

  if (a3 || a4)
  {
    return v4;
  }

  else
  {
    return "%Y%m%dT%H%M%SZ";
  }
}

+ (BOOL)_splitIdentifier:(id)a3 intoLocalUID:(id *)a4 recurrenceDate:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (!(a4 | a5))
  {
    goto LABEL_15;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (![v8 length])
  {
    v15 = 0;
    goto LABEL_16;
  }

  v10 = [v9 UTF8String];
  v11 = strchr(v10, 47);
  if (!v11 || (v12 = v11 - v10, v11 - v10 == -1))
  {
    if (a4)
    {
      v16 = v9;
      *a4 = v9;
    }

    goto LABEL_15;
  }

  if (!a4)
  {
    if (a5)
    {
      goto LABEL_18;
    }

LABEL_15:
    v15 = 1;
    goto LABEL_16;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11 + 1];
  *a4 = v13;
  if (!a5)
  {
    v14 = v13 == 0;
    goto LABEL_24;
  }

LABEL_18:
  strlcpy(&v20 - ((v12 + 16) & 0xFFFFFFFFFFFFFFF0), v10, v12 + 1);
  if (strcmp(&v20 - ((v12 + 16) & 0xFFFFFFFFFFFFFFF0), "(null)"))
  {
    strptime_l(&v20 - ((v12 + 16) & 0xFFFFFFFFFFFFFFF0), [a1 _dateFormatStripTime:0 stripTimeZone:{0, 0, 0, 0, 0, 0, 0, 0, v21}], &v20, 0);
    *a5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:timegm(&v20)];
  }

  if (!a4 || (v19 = *a4, v15 = *a4 != 0, v19))
  {
    v14 = *a5 == 0;
LABEL_24:
    v15 = !v14;
  }

LABEL_16:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EKRecurrenceIdentifier *)self localUID];
  [v4 setLocalUID:v5];

  v6 = [(EKRecurrenceIdentifier *)self recurrenceDate];
  [v4 setRecurrenceDate:v6];

  v7 = [(EKRecurrenceIdentifier *)self identifierString];
  [v4 setIdentifierString:v7];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(EKRecurrenceIdentifier *)self localUID];
  v4 = [v3 hash];
  v5 = [(EKRecurrenceIdentifier *)self recurrenceDate];
  v6 = v4 + 13 * [v5 hash];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self != v5)
    {
      v6 = [(EKRecurrenceIdentifier *)self localUID];
      v7 = [(EKRecurrenceIdentifier *)v5 localUID];
      if (![v6 isEqualToString:v7])
      {
        v11 = 0;
LABEL_14:

        goto LABEL_15;
      }

      v8 = [(EKRecurrenceIdentifier *)self recurrenceDate];
      if (v8 || ([(EKRecurrenceIdentifier *)v5 recurrenceDate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v9 = [(EKRecurrenceIdentifier *)self recurrenceDate];
        v10 = [(EKRecurrenceIdentifier *)v5 recurrenceDate];
        v11 = [v9 isEqual:v10];

        if (v8)
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