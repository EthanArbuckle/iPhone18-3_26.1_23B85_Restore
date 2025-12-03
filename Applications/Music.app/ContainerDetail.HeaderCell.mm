@interface ContainerDetail.HeaderCell
- (CGRect)bounds;
- (_TtCV5Music15ContainerDetail10HeaderCell)initWithFrame:(CGRect)frame;
- (void)setBounds:(CGRect)bounds;
@end

@implementation ContainerDetail.HeaderCell

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = _s10HeaderCellCMa();
  [(ContainerDetail.HeaderCell *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9.receiver = self;
  v9.super_class = _s10HeaderCellCMa();
  v7 = v9.receiver;
  [(ContainerDetail.HeaderCell *)&v9 setBounds:x, y, width, height];
  v8 = *&v7[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock];
  if (v8)
  {

    v8(v7);

    sub_100020438(v8);
  }

  else
  {
  }
}

- (_TtCV5Music15ContainerDetail10HeaderCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock);
  *v7 = 0;
  v7[1] = 0;
  v8 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock);
  *v8 = 0;
  v8[1] = 0;
  v9 = self + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation;
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay) = 0;
  v11.receiver = self;
  v11.super_class = _s10HeaderCellCMa();
  return [(ContainerDetail.HeaderCell *)&v11 initWithFrame:x, y, width, height];
}

@end