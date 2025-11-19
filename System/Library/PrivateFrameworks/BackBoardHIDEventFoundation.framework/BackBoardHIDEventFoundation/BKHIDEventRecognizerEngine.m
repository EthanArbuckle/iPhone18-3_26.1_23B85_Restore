@interface BKHIDEventRecognizerEngine
- (BKHIDEventRecognizerEngine)init;
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
- (void)addRecognizer:(id)a3 recognitionBlock:(id)a4;
- (void)removeRecognizer:(id)a3;
@end

@implementation BKHIDEventRecognizerEngine

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = *a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_recognizers count])
  {
    v11 = [(NSMutableArray *)self->_recognizers copy];
    v12 = [(NSMutableArray *)self->_blocks copy];
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__BKHIDEventRecognizerEngine_processEvent_sender_dispatcher___block_invoke;
  v16[3] = &unk_2784F6F48;
  v19 = v10;
  v13 = v12;
  v17 = v13;
  v18 = &v20;
  [v11 enumerateObjectsUsingBlock:v16];
  v14 = v21[3];

  _Block_object_dispose(&v20, 8);
  return v14;
}

void __61__BKHIDEventRecognizerEngine_processEvent_sender_dispatcher___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = 0;
  if ([a2 processEvent:*(a1 + 48) shouldConsume:&v6] == 1)
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v5[2]();
  }

  if (v6 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)removeRecognizer:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableArray *)self->_recognizers indexOfObject:v4];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_recognizers removeObjectAtIndex:v5];
    [(NSMutableArray *)self->_blocks removeObjectAtIndex:v5];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addRecognizer:(id)a3 recognitionBlock:(id)a4
{
  v17 = a3;
  v7 = a4;
  if (v17)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"BKHIDEventRecognizerEngine.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"recognizer != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"BKHIDEventRecognizerEngine.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];

LABEL_3:
  os_unfair_lock_lock(&self->_lock);
  recognizers = self->_recognizers;
  if (!recognizers)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = self->_recognizers;
    self->_recognizers = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    blocks = self->_blocks;
    self->_blocks = v11;

    recognizers = self->_recognizers;
  }

  [(NSMutableArray *)recognizers addObject:v17];
  v13 = self->_blocks;
  v14 = MEMORY[0x223DF7D60](v7);
  [(NSMutableArray *)v13 addObject:v14];

  os_unfair_lock_unlock(&self->_lock);
}

- (BKHIDEventRecognizerEngine)init
{
  v3.receiver = self;
  v3.super_class = BKHIDEventRecognizerEngine;
  result = [(BKHIDEventRecognizerEngine *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end