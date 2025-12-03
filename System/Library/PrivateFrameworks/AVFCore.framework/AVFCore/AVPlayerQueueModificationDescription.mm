@interface AVPlayerQueueModificationDescription
+ (id)modificationForInsertingItem:(id)item afterItem:(id)afterItem;
+ (id)modificationForRemovingItem:(id)item;
- (AVPlayerQueueModificationDescription)init;
- (AVPlayerQueueModificationDescription)initWithModificationType:(int64_t)type item:(id)item afterItem:(id)afterItem;
- (void)dealloc;
@end

@implementation AVPlayerQueueModificationDescription

- (AVPlayerQueueModificationDescription)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_modificationForInsertingItem_afterItem_);
  NSStringFromSelector(sel_modificationForRemovingItem_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ or %@ instead", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

+ (id)modificationForInsertingItem:(id)item afterItem:(id)afterItem
{
  v4 = [[self alloc] initWithModificationType:0 item:item afterItem:afterItem];

  return v4;
}

+ (id)modificationForRemovingItem:(id)item
{
  v3 = [[self alloc] initWithModificationType:1 item:item afterItem:0];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPlayerQueueModificationDescription;
  [(AVPlayerQueueModificationDescription *)&v3 dealloc];
}

- (AVPlayerQueueModificationDescription)initWithModificationType:(int64_t)type item:(id)item afterItem:(id)afterItem
{
  v11.receiver = self;
  v11.super_class = AVPlayerQueueModificationDescription;
  v8 = [(AVPlayerQueueModificationDescription *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_modificationType = type;
    v8->_item = item;
    v9->_afterItem = afterItem;
  }

  return v9;
}

@end