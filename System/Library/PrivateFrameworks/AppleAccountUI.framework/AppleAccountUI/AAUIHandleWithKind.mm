@interface AAUIHandleWithKind
- (AAUIHandleWithKind)initWithHandle:(id)handle kind:(unint64_t)kind;
@end

@implementation AAUIHandleWithKind

- (AAUIHandleWithKind)initWithHandle:(id)handle kind:(unint64_t)kind
{
  handleCopy = handle;
  v11.receiver = self;
  v11.super_class = AAUIHandleWithKind;
  v8 = [(AAUIHandleWithKind *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_handle, handle);
    v9->_kind = kind;
  }

  return v9;
}

@end