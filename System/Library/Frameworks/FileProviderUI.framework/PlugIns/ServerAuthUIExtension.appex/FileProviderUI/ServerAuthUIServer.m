@interface ServerAuthUIServer
- (BOOL)isEqual:(id)a3;
- (ServerAuthUIServer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ServerAuthUIServer

- (ServerAuthUIServer)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ServerAuthUIServer;
  v5 = [(ServerAuthUIServer *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ServerAuthUIServer *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(ServerAuthUIServer *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];

  v7 = [(ServerAuthUIServer *)self url];
  [v4 encodeObject:v7 forKey:@"url"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    identifier = self->_identifier;
    v7 = [v5 identifier];
    if ([(NSString *)identifier isEqual:v7])
    {
      displayName = self->_displayName;
      v9 = [v5 displayName];
      if ([(NSString *)displayName isEqual:v9])
      {
        url = self->_url;
        v11 = [v5 url];
        v12 = [(NSURL *)url isEqual:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end