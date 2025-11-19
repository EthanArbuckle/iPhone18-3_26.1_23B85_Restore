@interface APOneshotObserverAdapter
- (APOneshotObserverAdapter)initWithController:(id)a3 completionHandler:(id)a4;
@end

@implementation APOneshotObserverAdapter

- (APOneshotObserverAdapter)initWithController:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = APOneshotObserverAdapter;
  v9 = [(APOneshotObserverAdapter *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_controller, a3);
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy_;
    v21[4] = __Block_byref_object_dispose_;
    v11 = v10;
    v22 = v11;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __65__APOneshotObserverAdapter_initWithController_completionHandler___block_invoke;
    v18 = &unk_1E7A41EE8;
    v19 = v8;
    v20 = v21;
    v12 = [&v15 copy];
    completion = v11->_completion;
    v11->_completion = v12;

    [v7 registerObserver:{v11, v15, v16, v17, v18}];
    _Block_object_dispose(v21, 8);
  }

  return v10;
}

void __65__APOneshotObserverAdapter_initWithController_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

@end