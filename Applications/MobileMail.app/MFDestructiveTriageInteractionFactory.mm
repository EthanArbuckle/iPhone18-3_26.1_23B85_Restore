@interface MFDestructiveTriageInteractionFactory
+ (Class)interactionClassForMSDeleteOrArchive:(unint64_t)archive;
+ (id)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor deleteOrArchive:(unint64_t)archive;
+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor deleteOrArchive:(unint64_t)archive;
@end

@implementation MFDestructiveTriageInteractionFactory

+ (id)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor deleteOrArchive:(unint64_t)archive
{
  selectionCopy = selection;
  managerCopy = manager;
  v14 = [objc_msgSend(self interactionClassForMSDeleteOrArchive:{archive), "interactionWithMessageListItemSelection:undoManager:origin:actor:", selectionCopy, managerCopy, origin, actor}];

  return v14;
}

+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor deleteOrArchive:(unint64_t)archive
{
  itemsCopy = items;
  managerCopy = manager;
  v14 = [objc_msgSend(self interactionClassForMSDeleteOrArchive:{archive), "interactionWithMessageListItems:undoManager:origin:actor:", itemsCopy, managerCopy, origin, actor}];

  return v14;
}

+ (Class)interactionClassForMSDeleteOrArchive:(unint64_t)archive
{
  if (archive > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

@end