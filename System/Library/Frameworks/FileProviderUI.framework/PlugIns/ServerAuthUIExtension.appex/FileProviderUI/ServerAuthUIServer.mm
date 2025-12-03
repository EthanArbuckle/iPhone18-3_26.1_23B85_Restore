@interface ServerAuthUIServer
- (BOOL)isEqual:(id)equal;
- (ServerAuthUIServer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ServerAuthUIServer

- (ServerAuthUIServer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ServerAuthUIServer;
  v5 = [(ServerAuthUIServer *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(ServerAuthUIServer *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  displayName = [(ServerAuthUIServer *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  v7 = [(ServerAuthUIServer *)self url];
  [coderCopy encodeObject:v7 forKey:@"url"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = self->_identifier;
    identifier = [v5 identifier];
    if ([(NSString *)identifier isEqual:identifier])
    {
      displayName = self->_displayName;
      displayName = [v5 displayName];
      if ([(NSString *)displayName isEqual:displayName])
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