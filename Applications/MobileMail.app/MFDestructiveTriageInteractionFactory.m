@interface MFDestructiveTriageInteractionFactory
+ (Class)interactionClassForMSDeleteOrArchive:(unint64_t)a3;
+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 deleteOrArchive:(unint64_t)a7;
+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 deleteOrArchive:(unint64_t)a7;
@end

@implementation MFDestructiveTriageInteractionFactory

+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 deleteOrArchive:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [objc_msgSend(a1 interactionClassForMSDeleteOrArchive:{a7), "interactionWithMessageListItemSelection:undoManager:origin:actor:", v12, v13, a5, a6}];

  return v14;
}

+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 deleteOrArchive:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [objc_msgSend(a1 interactionClassForMSDeleteOrArchive:{a7), "interactionWithMessageListItems:undoManager:origin:actor:", v12, v13, a5, a6}];

  return v14;
}

+ (Class)interactionClassForMSDeleteOrArchive:(unint64_t)a3
{
  if (a3 > 2)
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