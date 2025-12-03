@interface MFFlagChangeTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor reason:(int64_t)reason;
+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor reason:(int64_t)reason;
+ (id)interactionWithQuery:(id)query undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor reason:(int64_t)reason;
- (BOOL)flagState;
@end

@implementation MFFlagChangeTriageInteraction

+ (id)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor reason:(int64_t)reason
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___MFFlagChangeTriageInteraction;
  v8 = objc_msgSendSuper2(&v10, "interactionWithMessageListItemSelection:undoManager:origin:actor:", selection, manager, origin, actor);
  [v8 setReason:reason];

  return v8;
}

+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor reason:(int64_t)reason
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___MFFlagChangeTriageInteraction;
  v8 = objc_msgSendSuper2(&v10, "interactionWithMessageListItems:undoManager:origin:actor:", items, manager, origin, actor);
  [v8 setReason:reason];

  return v8;
}

+ (id)interactionWithQuery:(id)query undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor reason:(int64_t)reason
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___MFFlagChangeTriageInteraction;
  v8 = objc_msgSendSuper2(&v10, "interactionWithQuery:undoManager:origin:actor:", query, manager, origin, actor);
  [v8 setReason:reason];

  return v8;
}

- (BOOL)flagState
{
  triageAction = [(MFTriageInteraction *)self triageAction];
  flagState = [triageAction flagState];

  return flagState;
}

@end