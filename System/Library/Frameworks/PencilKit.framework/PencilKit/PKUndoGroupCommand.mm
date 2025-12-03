@interface PKUndoGroupCommand
- (PKUndoGroupCommand)initWithDrawingUUID:(id)d actionName:(id)name commands:(id)commands;
- (id)invertedInDrawing:(id)drawing;
- (void)applyToDrawing:(id)drawing;
@end

@implementation PKUndoGroupCommand

- (PKUndoGroupCommand)initWithDrawingUUID:(id)d actionName:(id)name commands:(id)commands
{
  commandsCopy = commands;
  v13.receiver = self;
  v13.super_class = PKUndoGroupCommand;
  v9 = [(PKUndoCommand *)&v13 initWithDrawingUUID:d actionName:name];
  if (v9)
  {
    v10 = [commandsCopy copy];
    commands = v9->_commands;
    v9->_commands = v10;
  }

  return v9;
}

- (id)invertedInDrawing:(id)drawing
{
  v23 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  commands = [(PKUndoGroupCommand *)self commands];
  reverseObjectEnumerator = [commands reverseObjectEnumerator];

  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) invertedInDrawing:drawingCopy];
        [v5 addObject:v12];
      }

      v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = [PKUndoGroupCommand alloc];
  drawingUUID = [(PKUndoCommand *)self drawingUUID];
  actionName = [(PKUndoCommand *)self actionName];
  v16 = [(PKUndoGroupCommand *)v13 initWithDrawingUUID:drawingUUID actionName:actionName commands:v5];

  return v16;
}

- (void)applyToDrawing:(id)drawing
{
  v15 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  commands = [(PKUndoGroupCommand *)self commands];
  v6 = [commands countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(commands);
        }

        [*(*(&v10 + 1) + 8 * v9++) applyToDrawing:drawingCopy];
      }

      while (v7 != v9);
      v7 = [commands countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end