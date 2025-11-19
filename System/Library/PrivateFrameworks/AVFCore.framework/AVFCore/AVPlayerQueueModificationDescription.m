@interface AVPlayerQueueModificationDescription
+ (id)modificationForInsertingItem:(id)a3 afterItem:(id)a4;
+ (id)modificationForRemovingItem:(id)a3;
- (AVPlayerQueueModificationDescription)init;
- (AVPlayerQueueModificationDescription)initWithModificationType:(int64_t)a3 item:(id)a4 afterItem:(id)a5;
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

+ (id)modificationForInsertingItem:(id)a3 afterItem:(id)a4
{
  v4 = [[a1 alloc] initWithModificationType:0 item:a3 afterItem:a4];

  return v4;
}

+ (id)modificationForRemovingItem:(id)a3
{
  v3 = [[a1 alloc] initWithModificationType:1 item:a3 afterItem:0];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPlayerQueueModificationDescription;
  [(AVPlayerQueueModificationDescription *)&v3 dealloc];
}

- (AVPlayerQueueModificationDescription)initWithModificationType:(int64_t)a3 item:(id)a4 afterItem:(id)a5
{
  v11.receiver = self;
  v11.super_class = AVPlayerQueueModificationDescription;
  v8 = [(AVPlayerQueueModificationDescription *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_modificationType = a3;
    v8->_item = a4;
    v9->_afterItem = a5;
  }

  return v9;
}

@end