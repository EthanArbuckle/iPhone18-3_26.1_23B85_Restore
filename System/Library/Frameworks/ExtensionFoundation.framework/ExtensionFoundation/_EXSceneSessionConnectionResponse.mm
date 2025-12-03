@interface _EXSceneSessionConnectionResponse
- (_EXSceneSessionConnectionResponse)init;
- (_EXSceneSessionConnectionResponse)initWithCoder:(id)coder;
@end

@implementation _EXSceneSessionConnectionResponse

- (_EXSceneSessionConnectionResponse)init
{
  v3.receiver = self;
  v3.super_class = _EXSceneSessionConnectionResponse;
  return [(_EXSceneSessionConnectionResponse *)&v3 init];
}

- (_EXSceneSessionConnectionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _EXSceneSessionConnectionResponse;
  v5 = [(_EXSceneSessionConnectionResponse *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scenenEndpoint"];
    sceneEndpoint = v5->_sceneEndpoint;
    v5->_sceneEndpoint = v6;
  }

  return v5;
}

@end