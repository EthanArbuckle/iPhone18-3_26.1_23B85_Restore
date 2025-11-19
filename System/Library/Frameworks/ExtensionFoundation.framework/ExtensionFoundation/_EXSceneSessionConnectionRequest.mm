@interface _EXSceneSessionConnectionRequest
- (_EXSceneSessionConnectionRequest)init;
- (_EXSceneSessionConnectionRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _EXSceneSessionConnectionRequest

- (_EXSceneSessionConnectionRequest)init
{
  v3.receiver = self;
  v3.super_class = _EXSceneSessionConnectionRequest;
  return [(_EXSceneSessionConnectionRequest *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  hostEndpoint = self->_hostEndpoint;
  if (hostEndpoint)
  {
    [v5 encodeObject:hostEndpoint forKey:@"hostEndpoint"];
  }

  [v5 encodeObject:self->_parameters forKey:@"parameters"];
}

- (_EXSceneSessionConnectionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _EXSceneSessionConnectionRequest;
  v5 = [(_EXSceneSessionConnectionRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hostEndpoint"];
    hostEndpoint = v5->_hostEndpoint;
    v5->_hostEndpoint = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v10;
  }

  return v5;
}

@end