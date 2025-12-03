@interface TUIPointer
+ (TUIPointer)pointerWithRefId:(id)id style:(id)style;
- (TUIPointer)initWithRefId:(id)id style:(id)style;
@end

@implementation TUIPointer

- (TUIPointer)initWithRefId:(id)id style:(id)style
{
  idCopy = id;
  styleCopy = style;
  v12.receiver = self;
  v12.super_class = TUIPointer;
  v8 = [(TUIPointer *)&v12 init];
  if (v8)
  {
    v9 = [idCopy copy];
    refId = v8->_refId;
    v8->_refId = v9;

    objc_storeStrong(&v8->_style, style);
  }

  return v8;
}

+ (TUIPointer)pointerWithRefId:(id)id style:(id)style
{
  idCopy = id;
  styleCopy = style;
  if (idCopy && [idCopy length])
  {
    v8 = [[self alloc] initWithRefId:idCopy style:styleCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end