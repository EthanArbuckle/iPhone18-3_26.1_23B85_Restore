@interface MDLMeshBufferView
- (MDLMeshBufferView)init;
- (MDLMeshBufferView)initWithBufferViewNoCopy:(id)copy type:(unint64_t)type;
@end

@implementation MDLMeshBufferView

- (MDLMeshBufferView)initWithBufferViewNoCopy:(id)copy type:(unint64_t)type
{
  copyCopy = copy;
  v13.receiver = self;
  v13.super_class = MDLMeshBufferView;
  v7 = [(MDLMeshBufferView *)&v13 init];
  if (v7)
  {
    v8 = *(copyCopy + 5);
    v9 = objc_opt_self();
    LOBYTE(v8) = objc_opt_isKindOfClass();

    if (v8)
    {
      objc_storeStrong(&v7->_allocator, *(copyCopy + 5));
    }

    v7->super._writable = 0;
    v7->super._offset = *(copyCopy + 3);
    v7->_type = type;
    v10 = *(copyCopy + 2);
    v7->super._data = *(copyCopy + 1);
    v7->super._length = v10;
    v7->super._regionIndex = *(copyCopy + 4);
    v11 = v7;
  }

  return v7;
}

- (MDLMeshBufferView)init
{
  v7.receiver = self;
  v7.super_class = MDLMeshBufferView;
  v2 = [(MDLMeshBufferView *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->super._writable = 0;
    allocator = v2->_allocator;
    v2->_allocator = 0;

    v3->super._data = 0;
    v3->super._length = 0;
    v3->_type = -1;
    *&v3->super._offset = xmmword_239F9AD60;
    v5 = v3;
  }

  return v3;
}

@end