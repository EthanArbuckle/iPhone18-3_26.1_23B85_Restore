@interface MDLMeshBufferView
- (MDLMeshBufferView)init;
- (MDLMeshBufferView)initWithBufferViewNoCopy:(id)a3 type:(unint64_t)a4;
@end

@implementation MDLMeshBufferView

- (MDLMeshBufferView)initWithBufferViewNoCopy:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = MDLMeshBufferView;
  v7 = [(MDLMeshBufferView *)&v13 init];
  if (v7)
  {
    v8 = *(v6 + 5);
    v9 = objc_opt_self();
    LOBYTE(v8) = objc_opt_isKindOfClass();

    if (v8)
    {
      objc_storeStrong(&v7->_allocator, *(v6 + 5));
    }

    v7->super._writable = 0;
    v7->super._offset = *(v6 + 3);
    v7->_type = a4;
    v10 = *(v6 + 2);
    v7->super._data = *(v6 + 1);
    v7->super._length = v10;
    v7->super._regionIndex = *(v6 + 4);
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