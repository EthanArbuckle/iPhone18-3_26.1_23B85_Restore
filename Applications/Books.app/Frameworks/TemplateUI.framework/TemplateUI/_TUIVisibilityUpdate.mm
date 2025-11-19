@interface _TUIVisibilityUpdate
- (_TUIVisibilityUpdate)initWithTime:(double)a3 flags:(unint64_t)a4 block:(id)a5;
@end

@implementation _TUIVisibilityUpdate

- (_TUIVisibilityUpdate)initWithTime:(double)a3 flags:(unint64_t)a4 block:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = _TUIVisibilityUpdate;
  v9 = [(_TUIVisibilityUpdate *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_time = a3;
    v9->_flags = a4;
    v11 = [v8 copy];
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

@end