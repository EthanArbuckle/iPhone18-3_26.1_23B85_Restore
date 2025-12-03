@interface ACActivityProminenceListener
- (ACActivityProminenceListener)init;
- (id)listenForActivityProminence:(id)prominence withHandler:(id)handler;
@end

@implementation ACActivityProminenceListener

- (ACActivityProminenceListener)init
{
  v6.receiver = self;
  v6.super_class = ACActivityProminenceListener;
  v2 = [(ACActivityProminenceListener *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC11ActivityKit35ActivityProminenceObservationClient);
    client = v2->_client;
    v2->_client = v3;
  }

  return v2;
}

- (id)listenForActivityProminence:(id)prominence withHandler:(id)handler
{
  handlerCopy = handler;
  client = self->_client;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__ACActivityProminenceListener_listenForActivityProminence_withHandler___block_invoke;
  v17[3] = &unk_1E76B6998;
  v18 = handlerCopy;
  v8 = handlerCopy;
  prominenceCopy = prominence;
  v10 = [(ActivityProminenceObservationClient *)client listenForActivityProminenceWithActivityIdentifier:prominenceCopy handler:v17];
  v11 = objc_alloc(MEMORY[0x1E698E778]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__ACActivityProminenceListener_listenForActivityProminence_withHandler___block_invoke_2;
  v15[3] = &unk_1E76B6970;
  v16 = v10;
  v12 = v10;
  v13 = [v11 initWithIdentifier:@"ACActivityProminenceListener" forReason:prominenceCopy invalidationBlock:v15];

  return v13;
}

uint64_t __72__ACActivityProminenceListener_listenForActivityProminence_withHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end