@interface _BSSqlitePreparedCompoundStatement
- (BOOL)executeWithBindings:(id)bindings resultRowHandler:(id)handler error:(id *)error;
@end

@implementation _BSSqlitePreparedCompoundStatement

- (BOOL)executeWithBindings:(id)bindings resultRowHandler:(id)handler error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  bindingsCopy = bindings;
  handlerCopy = handler;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_statements;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if (([*(*(&v16 + 1) + 8 * i) executeWithBindings:bindingsCopy resultRowHandler:handlerCopy error:{error, v16}] & 1) == 0)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  return v14;
}

@end