@interface AVTAvatarAttributeEditorSectionCoordinator
- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate;
- (AVTAvatarAttributeEditorSectionCoordinator)init;
- (BOOL)isCoordinatingForSectionController:(id)controller;
- (void)addSectionController:(id)controller;
- (void)attributeEditorSectionController:(id)controller didDeleteSectionItems:(id)items;
- (void)attributeEditorSectionController:(id)controller didSelectSectionItem:(id)item;
- (void)attributeEditorSectionController:(id)controller didUpdateSectionItem:(id)item;
- (void)attributeEditorSectionControllerNeedsLayoutUpdate:(id)update;
- (void)removeSectionController:(id)controller;
@end

@implementation AVTAvatarAttributeEditorSectionCoordinator

- (AVTAvatarAttributeEditorSectionCoordinator)init
{
  v6.receiver = self;
  v6.super_class = AVTAvatarAttributeEditorSectionCoordinator;
  v2 = [(AVTAvatarAttributeEditorSectionCoordinator *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sectionControllers = v2->_sectionControllers;
    v2->_sectionControllers = dictionary;
  }

  return v2;
}

- (BOOL)isCoordinatingForSectionController:(id)controller
{
  controllerCopy = controller;
  sectionControllers = [(AVTAvatarAttributeEditorSectionCoordinator *)self sectionControllers];
  section = [controllerCopy section];

  identifier = [section identifier];
  v8 = [sectionControllers objectForKeyedSubscript:identifier];
  v9 = v8 != 0;

  return v9;
}

- (void)addSectionController:(id)controller
{
  controllerCopy = controller;
  if (![(AVTAvatarAttributeEditorSectionCoordinator *)self isCoordinatingForSectionController:?])
  {
    [controllerCopy setDelegate:self];
    sectionControllers = [(AVTAvatarAttributeEditorSectionCoordinator *)self sectionControllers];
    section = [controllerCopy section];
    identifier = [section identifier];
    [sectionControllers setObject:controllerCopy forKeyedSubscript:identifier];
  }
}

- (void)removeSectionController:(id)controller
{
  controllerCopy = controller;
  if ([(AVTAvatarAttributeEditorSectionCoordinator *)self isCoordinatingForSectionController:?])
  {
    sectionControllers = [(AVTAvatarAttributeEditorSectionCoordinator *)self sectionControllers];
    section = [controllerCopy section];
    identifier = [section identifier];
    [sectionControllers setObject:0 forKeyedSubscript:identifier];
  }
}

- (void)attributeEditorSectionController:(id)controller didDeleteSectionItems:(id)items
{
  itemsCopy = items;
  controllerCopy = controller;
  delegate = [(AVTAvatarAttributeEditorSectionCoordinator *)self delegate];
  [delegate attributeEditorSectionController:controllerCopy didDeleteSectionItems:itemsCopy];
}

- (void)attributeEditorSectionController:(id)controller didSelectSectionItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  delegate = [(AVTAvatarAttributeEditorSectionCoordinator *)self delegate];
  [delegate attributeEditorSectionController:controllerCopy didSelectSectionItem:itemCopy];
}

- (void)attributeEditorSectionController:(id)controller didUpdateSectionItem:(id)item
{
  v22 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  itemCopy = item;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  sectionControllers = [(AVTAvatarAttributeEditorSectionCoordinator *)self sectionControllers];
  allValues = [sectionControllers allValues];

  v10 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if (v14 != controllerCopy)
        {
          section = [controllerCopy section];
          [v14 attributeSection:section didChangeValueForSectionItem:itemCopy];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  delegate = [(AVTAvatarAttributeEditorSectionCoordinator *)self delegate];
  [delegate attributeEditorSectionController:controllerCopy didUpdateSectionItem:itemCopy];
}

- (void)attributeEditorSectionControllerNeedsLayoutUpdate:(id)update
{
  updateCopy = update;
  delegate = [(AVTAvatarAttributeEditorSectionCoordinator *)self delegate];
  [delegate attributeEditorSectionControllerNeedsLayoutUpdate:updateCopy];
}

- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end