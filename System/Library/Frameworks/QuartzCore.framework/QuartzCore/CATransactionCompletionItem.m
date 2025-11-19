@interface CATransactionCompletionItem
+ (id)completionItem;
- (CATransactionCompletionItem)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CATransactionCompletionItem

+ (id)completionItem
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (CATransactionCompletionItem)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CATransactionCompletionItem;
  result = [(CATransactionCompletionItem *)&v6 init];
  if (result)
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (v3)
    {
      v4 = (v3 + 104);
      while (1)
      {
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        v5 = v4[1];
        if (v5)
        {
          atomic_fetch_add(v5, 1u);
          result->_priv = v5;
          break;
        }
      }
    }

    if (!result->_priv)
    {

      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(CATransactionCompletionItem *)self invalidate];
  v3.receiver = self;
  v3.super_class = CATransactionCompletionItem;
  [(CATransactionCompletionItem *)&v3 dealloc];
}

- (void)invalidate
{
  priv = self->_priv;
  if (priv)
  {
    CA::Transaction::Continuation::unref(priv);
    self->_priv = 0;
  }
}

@end