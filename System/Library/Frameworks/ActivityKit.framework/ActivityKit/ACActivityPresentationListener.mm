@interface ACActivityPresentationListener
- (ACActivityPresentationListener)init;
- (id)listenForActivityPresentation:(id)a3 presenterBundleIdentifier:(id)a4 withHandler:(id)a5;
@end

@implementation ACActivityPresentationListener

- (ACActivityPresentationListener)init
{
  v6.receiver = self;
  v6.super_class = ACActivityPresentationListener;
  v2 = [(ACActivityPresentationListener *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC11ActivityKit37ActivityPresentationObservationClient);
    client = v2->_client;
    v2->_client = v3;
  }

  return v2;
}

- (id)listenForActivityPresentation:(id)a3 presenterBundleIdentifier:(id)a4 withHandler:(id)a5
{
  v8 = a5;
  client = self->_client;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __102__ACActivityPresentationListener_listenForActivityPresentation_presenterBundleIdentifier_withHandler___block_invoke;
  v19[3] = &unk_1E76B6948;
  v20 = v8;
  v10 = v8;
  v11 = a3;
  v12 = [(ActivityPresentationObservationClient *)client listenForActivityPresentationWithActivityIdentifier:v11 presenterBundleIdentifier:a4 handler:v19];
  v13 = objc_alloc(MEMORY[0x1E698E778]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102__ACActivityPresentationListener_listenForActivityPresentation_presenterBundleIdentifier_withHandler___block_invoke_2;
  v17[3] = &unk_1E76B6970;
  v18 = v12;
  v14 = v12;
  v15 = [v13 initWithIdentifier:@"ACActivityPresentationListener" forReason:v11 invalidationBlock:v17];

  return v15;
}

uint64_t __102__ACActivityPresentationListener_listenForActivityPresentation_presenterBundleIdentifier_withHandler___block_invoke(uint64_t a1, unint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2 > 6)
    {
      v3 = 1;
    }

    else
    {
      v3 = qword_1A2D0A528[a2];
    }

    return (*(result + 16))(result, v3);
  }

  return result;
}

@end