@interface _TUIVisibilityUpdate
- (_TUIVisibilityUpdate)initWithTime:(double)time flags:(unint64_t)flags block:(id)block;
@end

@implementation _TUIVisibilityUpdate

- (_TUIVisibilityUpdate)initWithTime:(double)time flags:(unint64_t)flags block:(id)block
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = _TUIVisibilityUpdate;
  v9 = [(_TUIVisibilityUpdate *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_time = time;
    v9->_flags = flags;
    v11 = [blockCopy copy];
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

@end