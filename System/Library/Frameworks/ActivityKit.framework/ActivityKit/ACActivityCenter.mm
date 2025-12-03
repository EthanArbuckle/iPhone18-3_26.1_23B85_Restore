@interface ACActivityCenter
- (ACActivityCenter)init;
- (id)observeActivitiesExceedingReducedPushBudgetWithHandler:(id)handler;
- (id)observeContentUpdatesWithHandler:(id)handler;
- (id)observeDescriptorsWithHandler:(id)handler;
@end

@implementation ACActivityCenter

- (ACActivityCenter)init
{
  v6.receiver = self;
  v6.super_class = ACActivityCenter;
  v2 = [(ACActivityCenter *)&v6 init];
  if (v2)
  {
    v3 = +[_TtC11ActivityKit24ActivityCenterObjcBridge shared];
    activityCenter = v2->_activityCenter;
    v2->_activityCenter = v3;
  }

  return v2;
}

- (id)observeDescriptorsWithHandler:(id)handler
{
  handlerCopy = handler;
  activityCenter = self->_activityCenter;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__ACActivityCenter_observeDescriptorsWithHandler___block_invoke;
  v13[3] = &unk_1E76B69C0;
  v6 = handlerCopy;
  v14 = v6;
  v7 = [(ActivityCenterObjcBridge *)activityCenter observeDescriptorsWithHandler:v13];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E698E778]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__ACActivityCenter_observeDescriptorsWithHandler___block_invoke_2;
    v11[3] = &unk_1E76B6970;
    v12 = v7;
    v9 = [v8 initWithIdentifier:@"ACActivityCenter" forReason:@"allDescriptor listener" invalidationBlock:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __50__ACActivityCenter_observeDescriptorsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 copy];
    (*(v2 + 16))(v2, v3);
  }
}

- (id)observeContentUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  activityCenter = self->_activityCenter;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__ACActivityCenter_observeContentUpdatesWithHandler___block_invoke;
  v13[3] = &unk_1E76B69E8;
  v6 = handlerCopy;
  v14 = v6;
  v7 = [(ActivityCenterObjcBridge *)activityCenter observeActivityContentUpdatesWithHandler:v13];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E698E778]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__ACActivityCenter_observeContentUpdatesWithHandler___block_invoke_2;
    v11[3] = &unk_1E76B6970;
    v12 = v7;
    v9 = [v8 initWithIdentifier:@"ACActivityCenter" forReason:@"activity content update observer" invalidationBlock:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __53__ACActivityCenter_observeContentUpdatesWithHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)observeActivitiesExceedingReducedPushBudgetWithHandler:(id)handler
{
  handlerCopy = handler;
  activityCenter = self->_activityCenter;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__ACActivityCenter_observeActivitiesExceedingReducedPushBudgetWithHandler___block_invoke;
  v13[3] = &unk_1E76B6A10;
  v6 = handlerCopy;
  v14 = v6;
  v7 = [(ActivityCenterObjcBridge *)activityCenter observeActivitiesExceedingReducedPushBudgetWithHandler:v13];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E698E778]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__ACActivityCenter_observeActivitiesExceedingReducedPushBudgetWithHandler___block_invoke_2;
    v11[3] = &unk_1E76B6970;
    v12 = v7;
    v9 = [v8 initWithIdentifier:@"ACActivityCenter" forReason:@"activities exceeding reduced push level listener" invalidationBlock:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __75__ACActivityCenter_observeActivitiesExceedingReducedPushBudgetWithHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end