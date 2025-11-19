@interface ACActivityQoSListener
- (ACActivityQoSListener)init;
- (id)listenForActivityQoS:(id)a3 withHandler:(id)a4;
@end

@implementation ACActivityQoSListener

- (ACActivityQoSListener)init
{
  v6.receiver = self;
  v6.super_class = ACActivityQoSListener;
  v2 = [(ACActivityQoSListener *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC11ActivityKit28ActivityQoSObservationClient);
    client = v2->_client;
    v2->_client = v3;
  }

  return v2;
}

- (id)listenForActivityQoS:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  client = self->_client;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__ACActivityQoSListener_listenForActivityQoS_withHandler___block_invoke;
  v17[3] = &unk_1E76B6948;
  v18 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(ActivityQoSObservationClient *)client listenForActivityQoSWithActivityIdentifier:v9 handler:v17];
  v11 = objc_alloc(MEMORY[0x1E698E778]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__ACActivityQoSListener_listenForActivityQoS_withHandler___block_invoke_2;
  v15[3] = &unk_1E76B6970;
  v16 = v10;
  v12 = v10;
  v13 = [v11 initWithIdentifier:@"ACActivityQoSListener" forReason:v9 invalidationBlock:v15];

  return v13;
}

uint64_t __58__ACActivityQoSListener_listenForActivityQoS_withHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

@end