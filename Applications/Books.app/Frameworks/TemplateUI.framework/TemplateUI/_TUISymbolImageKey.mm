@interface _TUISymbolImageKey
- (BOOL)isEqual:(id)a3;
- (_TUISymbolImageKey)initWithName:(id)a3 configuration:(id)a4 style:(unint64_t)a5 contentsScale:(double)a6 layoutDirection:(unint64_t)a7 renderingMode:(unint64_t)a8;
@end

@implementation _TUISymbolImageKey

- (_TUISymbolImageKey)initWithName:(id)a3 configuration:(id)a4 style:(unint64_t)a5 contentsScale:(double)a6 layoutDirection:(unint64_t)a7 renderingMode:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v22.receiver = self;
  v22.super_class = _TUISymbolImageKey;
  v16 = [(_TUISymbolImageKey *)&v22 init];
  if (v16)
  {
    v17 = [v14 copy];
    name = v16->_name;
    v16->_name = v17;

    v19 = [v15 copy];
    configuration = v16->_configuration;
    v16->_configuration = v19;

    v16->_style = a5;
    v16->_contentsScale = a6;
    v16->_layoutDirection = a7;
    v16->_renderingMode = a8;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = v4 && (v5 = objc_opt_class(), v5 == objc_opt_class()) && [v4[1] isEqualToString:self->_name] && objc_msgSend(v4[2], "isEqualToConfiguration:", self->_configuration) && v4[3] == self->_style && *(v4 + 4) == self->_contentsScale && v4[5] == self->_layoutDirection && v4[6] == self->_renderingMode;

  return v6;
}

@end