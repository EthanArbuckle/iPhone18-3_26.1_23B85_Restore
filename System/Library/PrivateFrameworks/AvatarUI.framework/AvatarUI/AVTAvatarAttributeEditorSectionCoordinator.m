@interface AVTAvatarAttributeEditorSectionCoordinator
- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate;
- (AVTAvatarAttributeEditorSectionCoordinator)init;
- (BOOL)isCoordinatingForSectionController:(id)a3;
- (void)addSectionController:(id)a3;
- (void)attributeEditorSectionController:(id)a3 didDeleteSectionItems:(id)a4;
- (void)attributeEditorSectionController:(id)a3 didSelectSectionItem:(id)a4;
- (void)attributeEditorSectionController:(id)a3 didUpdateSectionItem:(id)a4;
- (void)attributeEditorSectionControllerNeedsLayoutUpdate:(id)a3;
- (void)removeSectionController:(id)a3;
@end

@implementation AVTAvatarAttributeEditorSectionCoordinator

- (AVTAvatarAttributeEditorSectionCoordinator)init
{
  v6.receiver = self;
  v6.super_class = AVTAvatarAttributeEditorSectionCoordinator;
  v2 = [(AVTAvatarAttributeEditorSectionCoordinator *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    sectionControllers = v2->_sectionControllers;
    v2->_sectionControllers = v3;
  }

  return v2;
}

- (BOOL)isCoordinatingForSectionController:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarAttributeEditorSectionCoordinator *)self sectionControllers];
  v6 = [v4 section];

  v7 = [v6 identifier];
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = v8 != 0;

  return v9;
}

- (void)addSectionController:(id)a3
{
  v7 = a3;
  if (![(AVTAvatarAttributeEditorSectionCoordinator *)self isCoordinatingForSectionController:?])
  {
    [v7 setDelegate:self];
    v4 = [(AVTAvatarAttributeEditorSectionCoordinator *)self sectionControllers];
    v5 = [v7 section];
    v6 = [v5 identifier];
    [v4 setObject:v7 forKeyedSubscript:v6];
  }
}

- (void)removeSectionController:(id)a3
{
  v7 = a3;
  if ([(AVTAvatarAttributeEditorSectionCoordinator *)self isCoordinatingForSectionController:?])
  {
    v4 = [(AVTAvatarAttributeEditorSectionCoordinator *)self sectionControllers];
    v5 = [v7 section];
    v6 = [v5 identifier];
    [v4 setObject:0 forKeyedSubscript:v6];
  }
}

- (void)attributeEditorSectionController:(id)a3 didDeleteSectionItems:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarAttributeEditorSectionCoordinator *)self delegate];
  [v8 attributeEditorSectionController:v7 didDeleteSectionItems:v6];
}

- (void)attributeEditorSectionController:(id)a3 didSelectSectionItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarAttributeEditorSectionCoordinator *)self delegate];
  [v8 attributeEditorSectionController:v7 didSelectSectionItem:v6];
}

- (void)attributeEditorSectionController:(id)a3 didUpdateSectionItem:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(AVTAvatarAttributeEditorSectionCoordinator *)self sectionControllers];
  v9 = [v8 allValues];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if (v14 != v6)
        {
          v15 = [v6 section];
          [v14 attributeSection:v15 didChangeValueForSectionItem:v7];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = [(AVTAvatarAttributeEditorSectionCoordinator *)self delegate];
  [v16 attributeEditorSectionController:v6 didUpdateSectionItem:v7];
}

- (void)attributeEditorSectionControllerNeedsLayoutUpdate:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarAttributeEditorSectionCoordinator *)self delegate];
  [v5 attributeEditorSectionControllerNeedsLayoutUpdate:v4];
}

- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end