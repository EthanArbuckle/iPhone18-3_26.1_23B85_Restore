@interface EKUIAvailabilityParticipantList
+ (double)listWidthForCompact:(BOOL)a3 orientation:(int64_t)a4;
- (EKUIAvailabilityParticipantList)initWithParticipants:(id)a3 viewController:(id)a4;
- (void)layoutSubviews;
- (void)setBusyParticipants:(id)a3;
@end

@implementation EKUIAvailabilityParticipantList

- (EKUIAvailabilityParticipantList)initWithParticipants:(id)a3 viewController:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = EKUIAvailabilityParticipantList;
  v8 = [(EKUIAvailabilityParticipantList *)&v24 init];
  if (v8)
  {
    v9 = objc_opt_new();
    containers = v8->_containers;
    v8->_containers = v9;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          v17 = [EKUIParticipantContainer alloc];
          v18 = [(EKUIParticipantContainer *)v17 initWithParticipant:v16 viewController:v7, v20];
          [(NSMutableArray *)v8->_containers addObject:v18];
          [(EKUIAvailabilityParticipantList *)v8 addSubview:v18];
          [(EKUIAvailabilityParticipantList *)v8 setDirectionalLockEnabled:1];
          [(EKUIAvailabilityParticipantList *)v8 setShowsHorizontalScrollIndicator:0];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }
  }

  return v8;
}

- (void)setBusyParticipants:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_containers;
  v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v17 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v6 = v18;
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v7)
        {
          v20 = i;
          v8 = *v22;
          while (2)
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v22 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v21 + 1) + 8 * j);
              v11 = [v5 participant];
              v12 = [v11 UUID];
              v13 = [v10 participant];
              v14 = [v13 UUID];
              v15 = [v12 isEqualToString:v14];

              if (v15)
              {
                v7 = 1;
                goto LABEL_16;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }

LABEL_16:
          i = v20;
        }

        [v5 setBusy:v7];
      }

      v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = EKUIAvailabilityParticipantList;
  [(EKUIAvailabilityParticipantList *)&v5 layoutSubviews];
  containers = self->_containers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__EKUIAvailabilityParticipantList_layoutSubviews__block_invoke;
  v4[3] = &unk_1E84411E8;
  v4[4] = self;
  [(NSMutableArray *)containers enumerateObjectsWithOptions:0 usingBlock:v4];
}

void __49__EKUIAvailabilityParticipantList_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = v3[270] * a3;
  v5 = a2;
  [v3 frame];
  [v5 setFrame:{0.0, v4}];
}

+ (double)listWidthForCompact:(BOOL)a3 orientation:(int64_t)a4
{
  result = 168.0;
  if ((a4 - 3) < 2)
  {
    result = 336.0;
  }

  if (!a3)
  {
    return 240.0;
  }

  return result;
}

@end