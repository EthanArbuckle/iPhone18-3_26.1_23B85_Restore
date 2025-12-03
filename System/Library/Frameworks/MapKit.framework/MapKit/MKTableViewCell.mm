@interface MKTableViewCell
- (CGRect)_separatorFrame;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setSeparatorStyle:(int64_t)mapkit_separatorStyleOverride;
- (void)set_mapkit_forceSeparatorFrameToCGRectZero:(BOOL)zero;
@end

@implementation MKTableViewCell

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v6.receiver = self;
  v6.super_class = MKTableViewCell;
  [(MKTableViewCell *)&v6 setSemanticContentAttribute:?];
  contentView = [(MKTableViewCell *)self contentView];
  [contentView setSemanticContentAttribute:attribute];
}

- (CGRect)_separatorFrame
{
  if (self->__mapkit_forceSeparatorFrameToCGRectZero)
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v9 = v2;
    v10 = v3;
    v8.receiver = self;
    v8.super_class = MKTableViewCell;
    [(MKTableViewCell *)&v8 _separatorFrame];
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setSeparatorStyle:(int64_t)mapkit_separatorStyleOverride
{
  if (self->__mapkit_separatorStyleOverrideEnabled)
  {
    mapkit_separatorStyleOverride = self->__mapkit_separatorStyleOverride;
  }

  v6 = v3;
  v7 = v4;
  v5.receiver = self;
  v5.super_class = MKTableViewCell;
  [(MKTableViewCell *)&v5 setSeparatorStyle:mapkit_separatorStyleOverride];
}

- (void)set_mapkit_forceSeparatorFrameToCGRectZero:(BOOL)zero
{
  if (self->__mapkit_forceSeparatorFrameToCGRectZero != zero)
  {
    self->__mapkit_forceSeparatorFrameToCGRectZero = zero;
    separatorStyle = [(MKTableViewCell *)self separatorStyle];
    [(MKTableViewCell *)self setSeparatorStyle:(separatorStyle + 1) % 3];

    [(MKTableViewCell *)self setSeparatorStyle:separatorStyle];
  }
}

@end