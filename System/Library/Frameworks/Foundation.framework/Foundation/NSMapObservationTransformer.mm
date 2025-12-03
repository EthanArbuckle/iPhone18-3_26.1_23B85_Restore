@interface NSMapObservationTransformer
- (NSMapObservationTransformer)initWithBlock:(id)block tag:(int)tag;
- (void)_receiveBox:(id)box;
- (void)dealloc;
@end

@implementation NSMapObservationTransformer

- (NSMapObservationTransformer)initWithBlock:(id)block tag:(int)tag
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSMapObservationTransformer;
  v6 = [(NSMapObservationTransformer *)&v8 init];
  if (v6)
  {
    v6->_block = [block copy];
    v6->_tag = tag;
  }

  return v6;
}

- (void)_receiveBox:(id)box
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  tag = self->_tag;
  if (*(box + 6) == tag && tag != 3)
  {
    v7 = (*(self->_block + 2))();
    v8 = *(box + 6);
    if (v8 == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [box setError:v7];
        goto LABEL_11;
      }

      v8 = *(box + 6);
    }

    if (v8 == 1)
    {
      [box setValue:v7];
    }
  }

LABEL_11:
  v9.receiver = self;
  v9.super_class = NSMapObservationTransformer;
  [(NSMapObservationTransformer *)&v9 _receiveBox:box];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSMapObservationTransformer;
  [(NSObservationSource *)&v3 dealloc];
}

@end