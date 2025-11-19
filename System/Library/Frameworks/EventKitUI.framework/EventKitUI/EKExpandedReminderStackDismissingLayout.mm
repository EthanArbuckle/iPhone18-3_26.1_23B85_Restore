@interface EKExpandedReminderStackDismissingLayout
- (EKExpandedReminderStackDismissingLayout)initWithDelegate:(id)a3 completionHandler:(id)a4;
- (id)_animationForReusableView:(id)a3 toLayoutAttributes:(id)a4 type:(unint64_t)a5;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
@end

@implementation EKExpandedReminderStackDismissingLayout

- (EKExpandedReminderStackDismissingLayout)initWithDelegate:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = EKExpandedReminderStackDismissingLayout;
  v7 = [(EKExpandedReminderStackLayout *)&v13 initWithDelegate:a3];
  if (v7)
  {
    v8 = dispatch_group_create();
    animationDispatchGroup = v7->_animationDispatchGroup;
    v7->_animationDispatchGroup = v8;

    v10 = _Block_copy(v6);
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v10;

    v7->_executedCompletionHandler = 0;
  }

  return v7;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v7.receiver = self;
  v7.super_class = EKExpandedReminderStackDismissingLayout;
  v4 = a3;
  v5 = [(EKExpandedReminderStackDismissingLayout *)&v7 layoutAttributesForItemAtIndexPath:v4];
  [(EKExpandedReminderStackLayout *)self prepareCellAnimationWithLayoutAttributes:v5 indexPath:v4, v7.receiver, v7.super_class];

  return v5;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = EKExpandedReminderStackDismissingLayout;
  v5 = [(EKExpandedReminderStackDismissingLayout *)&v7 layoutAttributesForSupplementaryViewOfKind:a3 atIndexPath:a4];
  [(EKExpandedReminderStackLayout *)self prepareHeaderAnimationWithLayoutAttributes:v5];

  return v5;
}

- (id)_animationForReusableView:(id)a3 toLayoutAttributes:(id)a4 type:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__EKExpandedReminderStackDismissingLayout__animationForReusableView_toLayoutAttributes_type___block_invoke;
  v14[3] = &unk_1E8441E18;
  v17 = isKindOfClass & 1;
  v14[4] = self;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  v12 = _Block_copy(v14);

  return v12;
}

void __93__EKExpandedReminderStackDismissingLayout__animationForReusableView_toLayoutAttributes_type___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(*(a1 + 32) + 528));
  v4 = *(a1 + 32);
  v5 = *(v4 + 528);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__EKExpandedReminderStackDismissingLayout__animationForReusableView_toLayoutAttributes_type___block_invoke_2;
  block[3] = &unk_1E843EC60;
  block[4] = v4;
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], block);
  v6 = [MEMORY[0x1E69DD278] expandingStackedRemindersSpringAnimator];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__EKExpandedReminderStackDismissingLayout__animationForReusableView_toLayoutAttributes_type___block_invoke_3;
  v14[3] = &unk_1E843FBC8;
  v17 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  [v6 addAnimations:v14];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __93__EKExpandedReminderStackDismissingLayout__animationForReusableView_toLayoutAttributes_type___block_invoke_4;
  v11 = &unk_1E8441DF0;
  v12 = *(a1 + 32);
  v13 = v3;
  v7 = v3;
  [v6 addCompletion:&v8];
  [v6 startAnimation];
}

uint64_t __93__EKExpandedReminderStackDismissingLayout__animationForReusableView_toLayoutAttributes_type___block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 544) & 1) == 0)
  {
    *(v1 + 544) = 1;
    return (*(*(*(result + 32) + 536) + 16))();
  }

  return result;
}

uint64_t __93__EKExpandedReminderStackDismissingLayout__animationForReusableView_toLayoutAttributes_type___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  if (v2 == 1)
  {
    [v3 frame];
    v4 = *(a1 + 32);

    return [v4 setFrame:?];
  }

  else
  {
    if (v3)
    {
      [v3 transform];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
    }

    v6 = *(a1 + 32);
    v7[0] = v8;
    v7[1] = v9;
    v7[2] = v10;
    [v6 setTransform:v7];
    [*(a1 + 40) alpha];
    return [*(a1 + 32) setAlpha:?];
  }
}

uint64_t __93__EKExpandedReminderStackDismissingLayout__animationForReusableView_toLayoutAttributes_type___block_invoke_4(uint64_t a1)
{
  dispatch_group_leave(*(*(a1 + 32) + 528));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end