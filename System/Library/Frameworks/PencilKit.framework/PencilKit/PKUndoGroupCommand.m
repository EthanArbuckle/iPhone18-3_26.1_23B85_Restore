@interface PKUndoGroupCommand
- (PKUndoGroupCommand)initWithDrawingUUID:(id)a3 actionName:(id)a4 commands:(id)a5;
- (id)invertedInDrawing:(id)a3;
- (void)applyToDrawing:(id)a3;
@end

@implementation PKUndoGroupCommand

- (PKUndoGroupCommand)initWithDrawingUUID:(id)a3 actionName:(id)a4 commands:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = PKUndoGroupCommand;
  v9 = [(PKUndoCommand *)&v13 initWithDrawingUUID:a3 actionName:a4];
  if (v9)
  {
    v10 = [v8 copy];
    commands = v9->_commands;
    v9->_commands = v10;
  }

  return v9;
}

- (id)invertedInDrawing:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(PKUndoGroupCommand *)self commands];
  v7 = [v6 reverseObjectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) invertedInDrawing:v4];
        [v5 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = [PKUndoGroupCommand alloc];
  v14 = [(PKUndoCommand *)self drawingUUID];
  v15 = [(PKUndoCommand *)self actionName];
  v16 = [(PKUndoGroupCommand *)v13 initWithDrawingUUID:v14 actionName:v15 commands:v5];

  return v16;
}

- (void)applyToDrawing:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(PKUndoGroupCommand *)self commands];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) applyToDrawing:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end