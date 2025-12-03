@interface TUIShelfBox
- (void)onContainedModelsChanged;
@end

@implementation TUIShelfBox

- (void)onContainedModelsChanged
{
  v3 = objc_opt_new();
  [(TUIContainerBox *)self appendLayoutChildrenToArray:v3];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = v8;
        while (1)
        {
          if (objc_opt_respondsToSelector())
          {
            v10 = TUIProtocolCast(&OBJC_PROTOCOL___TUIModelWithRole, v9);
            if (v10)
            {
              break;
            }
          }

          parentModel = [(TUIBox *)v9 parentModel];

          role = 0;
          if (parentModel)
          {
            v9 = parentModel;
            if (parentModel != self)
            {
              continue;
            }
          }

          goto LABEL_13;
        }

        v13 = v10;
        role = [v10 role];

        parentModel = v9;
LABEL_13:
        v14 = [role isEqualToString:@"content"];
        v15 = &OBJC_IVAR___TUIShelfBox__content;
        if (v14 & 1) != 0 || (v16 = [role isEqualToString:@"content-background"], v15 = &OBJC_IVAR___TUIShelfBox__contentBackground, (v16) || (v17 = objc_msgSend(role, "isEqualToString:", @"background"), v15 = &OBJC_IVAR___TUIShelfBox__background, v17))
        {
          objc_storeStrong((&self->super.super.super.isa + *v15), v8);
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }
}

@end