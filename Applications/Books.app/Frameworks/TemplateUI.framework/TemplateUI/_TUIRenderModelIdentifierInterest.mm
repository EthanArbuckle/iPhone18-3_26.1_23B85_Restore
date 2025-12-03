@interface _TUIRenderModelIdentifierInterest
- (_TUIRenderModelIdentifierInterest)initWithIndexes:(void *)indexes map:(id)map;
- (id).cxx_construct;
@end

@implementation _TUIRenderModelIdentifierInterest

- (_TUIRenderModelIdentifierInterest)initWithIndexes:(void *)indexes map:(id)map
{
  mapCopy = map;
  v11.receiver = self;
  v11.super_class = _TUIRenderModelIdentifierInterest;
  v8 = [(_TUIRenderModelIdentifierInterest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    sub_16C0C4(v8 + 1, indexes);
    objc_storeStrong(&v9->_map, map);
    [(_TUIRenderModelIdentifierMap *)v9->_map _retainIndexes:&v9->_indexes];
  }

  return v9;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end