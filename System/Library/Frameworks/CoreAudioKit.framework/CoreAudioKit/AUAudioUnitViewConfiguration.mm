@interface AUAudioUnitViewConfiguration
- (AUAudioUnitViewConfiguration)initWithCoder:(id)coder;
- (AUAudioUnitViewConfiguration)initWithWidth:(CGFloat)width height:(CGFloat)height hostHasController:(BOOL)hostHasController;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(AUAudioUnitViewConfiguration *)self width];
      v7 = v6;
      [(AUAudioUnitViewConfiguration *)v5 width];
      if (v7 == v8 && ([(AUAudioUnitViewConfiguration *)self height], v10 = v9, [(AUAudioUnitViewConfiguration *)v5 height], v10 == v11))
      {
        hostHasController = [(AUAudioUnitViewConfiguration *)self hostHasController];
        v13 = hostHasController ^ [(AUAudioUnitViewConfiguration *)v5 hostHasController]^ 1;
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

- (void)encodeWithCoder:(id)coder
{
  width = self->_width;
  coderCopy = coder;
  [coderCopy encodeDouble:@"width" forKey:width];
  [coderCopy encodeDouble:@"height" forKey:self->_height];
  [coderCopy encodeBool:self->_hostHasController forKey:@"hostHasController"];
}

- (AUAudioUnitViewConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AUAudioUnitViewConfiguration;
  v5 = [(AUAudioUnitViewConfiguration *)&v9 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"width"];
    v5->_width = v6;
    [coderCopy decodeDoubleForKey:@"height"];
    v5->_height = v7;
    v5->_hostHasController = [coderCopy decodeBoolForKey:@"hostHasController"];
  }

  return v5;
}

@end