@interface UNNotification
+ (UNNotification)notificationWithRequest:(id)a3 date:(id)a4;
+ (UNNotification)notificationWithRequest:(id)a3 date:(id)a4 sourceIdentifier:(id)a5 intentIdentifiers:(id)a6;
- (BOOL)isEqual:(id)a3;
- (UNNotification)initWithCoder:(id)a3;
- (UNNotification)initWithNotificationRequest:(id)a3 date:(id)a4 sourceIdentifier:(id)a5 intentIdentifiers:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotification

+ (UNNotification)notificationWithRequest:(id)a3 date:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithNotificationRequest:v6 date:v5 sourceIdentifier:&stru_1F308F460 intentIdentifiers:MEMORY[0x1E695E0F0]];

  return v7;
}

+ (UNNotification)notificationWithRequest:(id)a3 date:(id)a4 sourceIdentifier:(id)a5 intentIdentifiers:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_alloc(objc_opt_class()) initWithNotificationRequest:v12 date:v11 sourceIdentifier:v10 intentIdentifiers:v9];

  return v13;
}

- (UNNotification)initWithNotificationRequest:(id)a3 date:(id)a4 sourceIdentifier:(id)a5 intentIdentifiers:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = UNNotification;
  v14 = [(UNNotification *)&v25 init];
  if (v14)
  {
    v15 = [v11 copy];
    date = v14->_date;
    v14->_date = v15;

    v17 = [v10 copy];
    request = v14->_request;
    v14->_request = v17;

    v19 = [v12 copy];
    sourceIdentifier = v14->_sourceIdentifier;
    v14->_sourceIdentifier = v19;

    v21 = [v13 copy];
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
  v3 = [(UNNotification *)self date];
  v4 = [v3 hash];
  v5 = [(UNNotification *)self request];
  v6 = [v5 hash] ^ v4;
  v7 = [(UNNotification *)self sourceIdentifier];
  v8 = [v7 hash];
  v9 = [(UNNotification *)self intentIdentifiers];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UNNotification *)self date];
    v6 = [v4 date];
    if (UNEqualObjects(v5, v6))
    {
      v7 = [(UNNotification *)self request];
      v8 = [v4 request];
      if (UNEqualObjects(v7, v8))
      {
        v9 = [(UNNotification *)self intentIdentifiers];
        v10 = [v4 intentIdentifiers];
        if (UNEqualObjects(v9, v10))
        {
          v11 = [(UNNotification *)self sourceIdentifier];
          v12 = [v4 sourceIdentifier];
          v13 = UNEqualObjects(v11, v12);
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
  v5 = [(UNNotification *)self sourceIdentifier];
  v6 = [(UNNotification *)self date];
  v7 = [(UNNotification *)self request];
  v8 = [(UNNotification *)self intentIdentifiers];
  v9 = [v3 stringWithFormat:@"<%@: %p source: %@ date: %@, request: %@, intents: %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNNotification *)self date];
  [v4 encodeObject:v5 forKey:@"date"];

  v6 = [(UNNotification *)self request];
  [v4 encodeObject:v6 forKey:@"request"];

  v7 = [(UNNotification *)self sourceIdentifier];
  [v4 encodeObject:v7 forKey:@"sourceIdentifier"];

  v8 = [(UNNotification *)self intentIdentifiers];
  [v4 encodeObject:v8 forKey:@"intentIdentifiers"];
}

- (UNNotification)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"request"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
  v8 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"intentIdentifiers"];

  v12 = [(UNNotification *)self initWithNotificationRequest:v6 date:v5 sourceIdentifier:v7 intentIdentifiers:v11];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

@end