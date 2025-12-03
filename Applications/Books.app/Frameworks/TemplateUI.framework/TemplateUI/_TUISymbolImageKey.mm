@interface _TUISymbolImageKey
- (BOOL)isEqual:(id)equal;
- (_TUISymbolImageKey)initWithName:(id)name configuration:(id)configuration style:(unint64_t)style contentsScale:(double)scale layoutDirection:(unint64_t)direction renderingMode:(unint64_t)mode;
@end

@implementation _TUISymbolImageKey

- (_TUISymbolImageKey)initWithName:(id)name configuration:(id)configuration style:(unint64_t)style contentsScale:(double)scale layoutDirection:(unint64_t)direction renderingMode:(unint64_t)mode
{
  nameCopy = name;
  configurationCopy = configuration;
  v22.receiver = self;
  v22.super_class = _TUISymbolImageKey;
  v16 = [(_TUISymbolImageKey *)&v22 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v17;

    v19 = [configurationCopy copy];
    configuration = v16->_configuration;
    v16->_configuration = v19;

    v16->_style = style;
    v16->_contentsScale = scale;
    v16->_layoutDirection = direction;
    v16->_renderingMode = mode;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()) && [equalCopy[1] isEqualToString:self->_name] && objc_msgSend(equalCopy[2], "isEqualToConfiguration:", self->_configuration) && equalCopy[3] == self->_style && *(equalCopy + 4) == self->_contentsScale && equalCopy[5] == self->_layoutDirection && equalCopy[6] == self->_renderingMode;

  return v6;
}

@end