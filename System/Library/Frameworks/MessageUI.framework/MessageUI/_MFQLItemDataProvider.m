@interface _MFQLItemDataProvider
- (_MFQLItemDataProvider)initWithData:(id)a3 contentType:(id)a4 previewTitle:(id)a5;
@end

@implementation _MFQLItemDataProvider

- (_MFQLItemDataProvider)initWithData:(id)a3 contentType:(id)a4 previewTitle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _MFQLItemDataProvider;
  v11 = [(_MFQLItemDataProvider *)&v19 init];
  if (v11)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v12 = getQLItemClass_softClass;
    v24 = getQLItemClass_softClass;
    if (!getQLItemClass_softClass)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __getQLItemClass_block_invoke;
      v20[3] = &unk_1E806CA38;
      v20[4] = &v21;
      __getQLItemClass_block_invoke(v20);
      v12 = v22[3];
    }

    v13 = v12;
    _Block_object_dispose(&v21, 8);
    v14 = [[v12 alloc] initWithDataProvider:v11 contentType:v9 previewTitle:v10];
    item = v11->_item;
    v11->_item = v14;

    v16 = [v8 copy];
    data = v11->_data;
    v11->_data = v16;
  }

  return v11;
}

@end