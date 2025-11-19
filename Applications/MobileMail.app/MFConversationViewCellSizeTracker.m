@interface MFConversationViewCellSizeTracker
+ (id)log;
- (CGSize)displaySizeForCellWithItemID:(id)a3;
- (CGSize)intrinsicSizeForCellWithItemID:(id)a3;
- (MFConversationViewCellSizeTracker)init;
- (MFConversationViewCellSizeTrackerDelegate)delegate;
- (id)intrinsicSizesForCellsWithItemIDs:(id)a3;
- (void)setIntrinsicSize:(CGSize)a3 forCellWithItemID:(id)a4;
@end

@implementation MFConversationViewCellSizeTracker

- (MFConversationViewCellSizeTracker)init
{
  v6.receiver = self;
  v6.super_class = MFConversationViewCellSizeTracker;
  v2 = [(MFConversationViewCellSizeTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    intrinsicCellSizes = v2->_intrinsicCellSizes;
    v2->_intrinsicCellSizes = v3;
  }

  return v2;
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C4C90;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD4D0 != -1)
  {
    dispatch_once(&qword_1006DD4D0, block);
  }

  v2 = qword_1006DD4C8;

  return v2;
}

- (CGSize)displaySizeForCellWithItemID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained defaultCellSizeForTracker:self];
  v7 = v6;
  v9 = v8;
  v10 = [WeakRetained conversationViewCellSizeTracker:self expansionStatusForMessageWithItemID:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v10 != 3)
  {
    if (v10 == 2)
    {
      [WeakRetained defaultSemiExpandedHeightForTracker:self];
      v13 = v12;
      goto LABEL_11;
    }

    v13 = v9;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  [(MFConversationViewCellSizeTracker *)self intrinsicSizeForCellWithItemID:v4];
  if (CGSizeZero.height == v15 && CGSizeZero.width == v14)
  {
    v13 = v9;
  }

  else
  {
    v13 = v15;
  }

LABEL_11:
  if ([WeakRetained isDisplayingSingleMessageForTracker:self])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([WeakRetained isQuickReplyForTracker:self])
      {
        [WeakRetained quickReplyHeightForTracker:self];
        v18 = v13 + v17;
        v19 = v9 - v17;
        if (v18 <= v9)
        {
          v9 = v19;
        }

        else
        {
          v9 = v13;
        }
      }

      else if (v13 >= v9)
      {
        v9 = v13;
      }

      [WeakRetained initialScrollOffsetForTracker:self];
      if (v9 + v20 >= 0.0)
      {
        v13 = v9 + v20;
      }

      else
      {
        v13 = v9;
      }
    }
  }

  v21 = v7;
  v22 = v13;
  result.height = v22;
  result.width = v21;
  return result;
}

- (CGSize)intrinsicSizeForCellWithItemID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_intrinsicCellSizes objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    [v3 CGSizeValue];
    width = v5;
    height = v7;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)intrinsicSizesForCellsWithItemIDs:(id)a3
{
  v4 = a3;
  intrinsicCellSizes = self->_intrinsicCellSizes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained defaultCellSizeForTracker:self];
  v7 = [NSValue valueWithCGSize:?];
  v8 = [(NSMutableDictionary *)intrinsicCellSizes objectsForKeys:v4 notFoundMarker:v7];

  return v8;
}

- (void)setIntrinsicSize:(CGSize)a3 forCellWithItemID:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  v7 = [NSValue valueWithCGSize:width, height];
  [(NSMutableDictionary *)self->_intrinsicCellSizes setObject:v7 forKey:v8];
}

- (MFConversationViewCellSizeTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end