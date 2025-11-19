@interface MFFilterTriageInteraction
+ (id)interactionWithMessageListItem:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 messageList:(id)a6 delegate:(id)a7;
- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4;
@end

@implementation MFFilterTriageInteraction

+ (id)interactionWithMessageListItem:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 messageList:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v19 = v12;
  v15 = [NSArray arrayWithObjects:&v19 count:1];
  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS___MFFilterTriageInteraction;
  v16 = objc_msgSendSuper2(&v18, "interactionWithMessageListItems:undoManager:origin:actor:", v15, 0, a4, a5);

  [v16 setMessageList:v13];
  [v16 setDelegate:v14];

  return v16;
}

- (void)_performInteractionAfterPreparation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v5 = [(MFTriageInteraction *)self delegate];
  [v5 filterUIWithFilterInteraction:self];

  if (v6)
  {
    v6[2](v6, self, 1);
  }
}

@end