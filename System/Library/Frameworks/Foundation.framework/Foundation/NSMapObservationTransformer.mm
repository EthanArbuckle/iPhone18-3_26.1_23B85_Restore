@interface NSMapObservationTransformer
- (NSMapObservationTransformer)initWithBlock:(id)a3 tag:(int)a4;
- (void)_receiveBox:(id)a3;
- (void)dealloc;
@end

@implementation NSMapObservationTransformer

- (NSMapObservationTransformer)initWithBlock:(id)a3 tag:(int)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSMapObservationTransformer;
  v6 = [(NSMapObservationTransformer *)&v8 init];
  if (v6)
  {
    v6->_block = [a3 copy];
    v6->_tag = a4;
  }

  return v6;
}

- (void)_receiveBox:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  tag = self->_tag;
  if (*(a3 + 6) == tag && tag != 3)
  {
    v7 = (*(self->_block + 2))();
    v8 = *(a3 + 6);
    if (v8 == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a3 setError:v7];
        goto LABEL_11;
      }

      v8 = *(a3 + 6);
    }

    if (v8 == 1)
    {
      [a3 setValue:v7];
    }
  }

LABEL_11:
  v9.receiver = self;
  v9.super_class = NSMapObservationTransformer;
  [(NSMapObservationTransformer *)&v9 _receiveBox:a3];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSMapObservationTransformer;
  [(NSObservationSource *)&v3 dealloc];
}

@end