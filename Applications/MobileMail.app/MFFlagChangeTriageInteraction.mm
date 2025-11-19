@interface MFFlagChangeTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 reason:(int64_t)a7;
+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 reason:(int64_t)a7;
+ (id)interactionWithQuery:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 reason:(int64_t)a7;
- (BOOL)flagState;
@end

@implementation MFFlagChangeTriageInteraction

+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 reason:(int64_t)a7
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___MFFlagChangeTriageInteraction;
  v8 = objc_msgSendSuper2(&v10, "interactionWithMessageListItemSelection:undoManager:origin:actor:", a3, a4, a5, a6);
  [v8 setReason:a7];

  return v8;
}

+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 reason:(int64_t)a7
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___MFFlagChangeTriageInteraction;
  v8 = objc_msgSendSuper2(&v10, "interactionWithMessageListItems:undoManager:origin:actor:", a3, a4, a5, a6);
  [v8 setReason:a7];

  return v8;
}

+ (id)interactionWithQuery:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 reason:(int64_t)a7
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___MFFlagChangeTriageInteraction;
  v8 = objc_msgSendSuper2(&v10, "interactionWithQuery:undoManager:origin:actor:", a3, a4, a5, a6);
  [v8 setReason:a7];

  return v8;
}

- (BOOL)flagState
{
  v2 = [(MFTriageInteraction *)self triageAction];
  v3 = [v2 flagState];

  return v3;
}

@end