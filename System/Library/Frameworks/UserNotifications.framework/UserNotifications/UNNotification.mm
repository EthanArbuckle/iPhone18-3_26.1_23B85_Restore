@interface UNNotification
+ (UNNotification)notificationWithRequest:(id)request date:(id)date;
+ (UNNotification)notificationWithRequest:(id)request date:(id)date sourceIdentifier:(id)identifier intentIdentifiers:(id)identifiers;
- (BOOL)isEqual:(id)equal;
- (UNNotification)initWithCoder:(id)coder;
- (UNNotification)initWithNotificationRequest:(id)request date:(id)date sourceIdentifier:(id)identifier intentIdentifiers:(id)identifiers;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotification

+ (UNNotification)notificationWithRequest:(id)request date:(id)date
{
  dateCopy = date;
  requestCopy = request;
  v7 = [objc_alloc(objc_opt_class()) initWithNotificationRequest:requestCopy date:dateCopy sourceIdentifier:&stru_1F308F460 intentIdentifiers:MEMORY[0x1E695E0F0]];

  return v7;
}

+ (UNNotification)notificationWithRequest:(id)request date:(id)date sourceIdentifier:(id)identifier intentIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  dateCopy = date;
  requestCopy = request;
  v13 = [objc_alloc(objc_opt_class()) initWithNotificationRequest:requestCopy date:dateCopy sourceIdentifier:identifierCopy intentIdentifiers:identifiersCopy];

  return v13;
}

- (UNNotification)initWithNotificationRequest:(id)request date:(id)date sourceIdentifier:(id)identifier intentIdentifiers:(id)identifiers
{
  requestCopy = request;
  dateCopy = date;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v25.receiver = self;
  v25.super_class = UNNotification;
  v14 = [(UNNotification *)&v25 init];
  if (v14)
  {
    v15 = [dateCopy copy];
    date = v14->_date;
    v14->_date = v15;

    v17 = [requestCopy copy];
    request = v14->_request;
    v14->_request = v17;

    v19 = [identifierCopy copy];
    sourceIdentifier = v14->_sourceIdentifier;
    v14->_sourceIdentifier = v19;

    v21 = [identifiersCopy copy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v14->_intentIdentifiers, v23);
  }

  return v14;
}

- (unint64_t)hash
{
  date = [(UNNotification *)self date];
  v4 = [date hash];
  request = [(UNNotification *)self request];
  v6 = [request hash] ^ v4;
  sourceIdentifier = [(UNNotification *)self sourceIdentifier];
  v8 = [sourceIdentifier hash];
  intentIdentifiers = [(UNNotification *)self intentIdentifiers];
  v10 = v8 ^ [intentIdentifiers hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    date = [(UNNotification *)self date];
    date2 = [equalCopy date];
    if (UNEqualObjects(date, date2))
    {
      request = [(UNNotification *)self request];
      request2 = [equalCopy request];
      if (UNEqualObjects(request, request2))
      {
        intentIdentifiers = [(UNNotification *)self intentIdentifiers];
        intentIdentifiers2 = [equalCopy intentIdentifiers];
        if (UNEqualObjects(intentIdentifiers, intentIdentifiers2))
        {
          sourceIdentifier = [(UNNotification *)self sourceIdentifier];
          sourceIdentifier2 = [equalCopy sourceIdentifier];
          v13 = UNEqualObjects(sourceIdentifier, sourceIdentifier2);
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  sourceIdentifier = [(UNNotification *)self sourceIdentifier];
  date = [(UNNotification *)self date];
  request = [(UNNotification *)self request];
  intentIdentifiers = [(UNNotification *)self intentIdentifiers];
  v9 = [v3 stringWithFormat:@"<%@: %p source: %@ date: %@, request: %@, intents: %@>", v4, self, sourceIdentifier, date, request, intentIdentifiers];;

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(UNNotification *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  request = [(UNNotification *)self request];
  [coderCopy encodeObject:request forKey:@"request"];

  sourceIdentifier = [(UNNotification *)self sourceIdentifier];
  [coderCopy encodeObject:sourceIdentifier forKey:@"sourceIdentifier"];

  intentIdentifiers = [(UNNotification *)self intentIdentifiers];
  [coderCopy encodeObject:intentIdentifiers forKey:@"intentIdentifiers"];
}

- (UNNotification)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
  v8 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"intentIdentifiers"];

  v12 = [(UNNotification *)self initWithNotificationRequest:v6 date:v5 sourceIdentifier:v7 intentIdentifiers:v11];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

@end