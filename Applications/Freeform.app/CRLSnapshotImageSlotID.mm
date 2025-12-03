@interface CRLSnapshotImageSlotID
+ (id)snapshotContext;
- (CRLSnapshotImageSlotID)initWithSize:(CGSize)size;
- (id)object;
- (void)dealloc;
- (void)p_teardown;
@end

@implementation CRLSnapshotImageSlotID

+ (id)snapshotContext
{
  if (qword_101A354B8 != -1)
  {
    sub_10138D788();
  }

  v3 = qword_101A354B0;

  return v3;
}

- (CRLSnapshotImageSlotID)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = CRLSnapshotImageSlotID;
  v5 = [(CRLSnapshotImageSlotID *)&v8 init];
  if (v5)
  {
    v6 = +[CRLSnapshotImageSlotID snapshotContext];
    v5->_value = [v6 createImageSlot:1 hasAlpha:{width, height}];
  }

  return v5;
}

- (void)dealloc
{
  [(CRLSnapshotImageSlotID *)self p_teardown];
  v3.receiver = self;
  v3.super_class = CRLSnapshotImageSlotID;
  [(CRLSnapshotImageSlotID *)&v3 dealloc];
}

- (void)p_teardown
{
  if (self->_value)
  {
    v3 = +[CRLSnapshotImageSlotID snapshotContext];
    [v3 deleteSlot:self->_value];
  }
}

- (id)object
{
  if (self->_value)
  {
    v3 = [CAContext objectForSlot:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end