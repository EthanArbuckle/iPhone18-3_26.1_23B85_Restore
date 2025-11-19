@interface AUAudioUnitViewConfiguration
- (AUAudioUnitViewConfiguration)initWithCoder:(id)a3;
- (AUAudioUnitViewConfiguration)initWithWidth:(CGFloat)width height:(CGFloat)height hostHasController:(BOOL)hostHasController;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AUAudioUnitViewConfiguration

- (AUAudioUnitViewConfiguration)initWithWidth:(CGFloat)width height:(CGFloat)height hostHasController:(BOOL)hostHasController
{
  v9.receiver = self;
  v9.super_class = AUAudioUnitViewConfiguration;
  result = [(AUAudioUnitViewConfiguration *)&v9 init];
  if (result)
  {
    result->_width = width;
    result->_height = height;
    result->_hostHasController = hostHasController;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(AUAudioUnitViewConfiguration *)self width];
      v7 = v6;
      [(AUAudioUnitViewConfiguration *)v5 width];
      if (v7 == v8 && ([(AUAudioUnitViewConfiguration *)self height], v10 = v9, [(AUAudioUnitViewConfiguration *)v5 height], v10 == v11))
      {
        v12 = [(AUAudioUnitViewConfiguration *)self hostHasController];
        v13 = v12 ^ [(AUAudioUnitViewConfiguration *)v5 hostHasController]^ 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  width = self->_width;
  v5 = a3;
  [v5 encodeDouble:@"width" forKey:width];
  [v5 encodeDouble:@"height" forKey:self->_height];
  [v5 encodeBool:self->_hostHasController forKey:@"hostHasController"];
}

- (AUAudioUnitViewConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AUAudioUnitViewConfiguration;
  v5 = [(AUAudioUnitViewConfiguration *)&v9 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"width"];
    v5->_width = v6;
    [v4 decodeDoubleForKey:@"height"];
    v5->_height = v7;
    v5->_hostHasController = [v4 decodeBoolForKey:@"hostHasController"];
  }

  return v5;
}

@end